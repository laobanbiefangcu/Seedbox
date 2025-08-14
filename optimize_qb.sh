#!/bin/bash

# qBittorrent 内存优化脚本
# 用途：优化 qBittorrent 内存占用并重启服务

CONFIG_FILE="/home/admin/.config/qBittorrent/qBittorrent.conf"

echo "========================================="
echo "   qBittorrent 内存优化脚本"
echo "========================================="

# 检查配置文件是否存在
if [ ! -f "$CONFIG_FILE" ]; then
    echo "错误：配置文件不存在：$CONFIG_FILE"
    exit 1
fi

# 备份原配置
echo "1. 备份原配置文件..."
cp "$CONFIG_FILE" "${CONFIG_FILE}.backup.$(date +%Y%m%d_%H%M%S)"

# 获取当前内存信息
echo "2. 当前系统内存状态："
free -h

# 应用优化配置
echo "3. 应用内存优化配置..."

# 磁盘缓存优化 (512MB - 平衡性能和内存)
sed -i 's/Downloads\\DiskWriteCacheSize=.*/Downloads\\DiskWriteCacheSize=512/' "$CONFIG_FILE"
echo "   - 磁盘缓存设置为 512MB"

# 发送缓冲区优化
sed -i 's/Session\\SendBufferLowWatermark=.*/Session\\SendBufferLowWatermark=512/' "$CONFIG_FILE"
sed -i 's/Session\\SendBufferWatermark=.*/Session\\SendBufferWatermark=2048/' "$CONFIG_FILE"
sed -i 's/Session\\SendBufferWatermarkFactor=.*/Session\\SendBufferWatermarkFactor=150/' "$CONFIG_FILE"
echo "   - 发送缓冲区已优化"

# 异步IO线程数优化（根据CPU核心数调整）
CPU_CORES=$(nproc)
if [ $CPU_CORES -gt 4 ]; then
    ASYNC_IO_THREADS=8
else
    ASYNC_IO_THREADS=4
fi
sed -i "s/Session\\AsyncIOThreadsCount=.*/Session\\AsyncIOThreadsCount=$ASYNC_IO_THREADS/" "$CONFIG_FILE"
echo "   - 异步IO线程设置为 $ASYNC_IO_THREADS"

# 查找并终止 qBittorrent 进程
echo "4. 停止 qBittorrent..."
QBT_PID=$(ps aux | grep -i "[q]bittorrent-nox" | awk '{print $2}')
if [ -n "$QBT_PID" ]; then
    kill $QBT_PID
    echo "   - 已停止进程 PID: $QBT_PID"
    sleep 3
else
    echo "   - qBittorrent 未运行"
fi

# 重新启动 qBittorrent
echo "5. 启动 qBittorrent..."
su admin -c "/usr/bin/qbittorrent-nox -d"
sleep 3

# 验证是否启动成功
NEW_PID=$(ps aux | grep -i "[q]bittorrent-nox" | awk '{print $2}')
if [ -n "$NEW_PID" ]; then
    echo "   - qBittorrent 已启动，PID: $NEW_PID"
    
    # 显示优化后的内存状态
    echo ""
    echo "6. 优化后的内存状态："
    free -h
    
    # 显示进程内存占用
    echo ""
    echo "7. qBittorrent 进程信息："
    ps aux | grep -i "[q]bittorrent-nox" | awk '{printf "   内存占用: %.1f%%  虚拟内存: %s  物理内存: %s\n", $4, $5, $6}'
    
    echo ""
    echo "========================================="
    echo "✅ 优化完成！"
    echo ""
    echo "当前配置："
    echo "  - 磁盘缓存: 512MB"
    echo "  - 发送缓冲区: 优化"
    echo "  - 异步IO线程: $ASYNC_IO_THREADS"
    echo ""
    echo "如需调整缓存大小，可编辑脚本中的 DiskWriteCacheSize 值"
    echo "建议范围: 256-768MB"
    echo "========================================="
else
    echo "❌ 错误：qBittorrent 启动失败！"
    exit 1
fi