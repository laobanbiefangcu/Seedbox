# 🌟 Seedbox自動化部署系統 - 完整指南

<div align="center">

![Seedbox](https://img.shields.io/badge/Seedbox-🚀_自動化部署-brightgreen?style=for-the-badge&logo=ubuntu)
![Version](https://img.shields.io/badge/版本-v2.0-blue?style=for-the-badge)
![Platform](https://img.shields.io/badge/平台-Debian%20|%20Ubuntu-orange?style=for-the-badge&logo=linux)
![License](https://img.shields.io/badge/開源協議-MIT-green?style=for-the-badge)

**🎯 一鍵部署完整的高性能Seedbox環境**

*強大功能 • 極簡部署 • 專業優化*

[![⭐ Star項目](https://img.shields.io/badge/⭐_Star-支持項目-yellow?style=for-the-badge)](https://github.com/laobanbiefangcu/Seedbox)
[![📖 使用指南](https://img.shields.io/badge/📖_Wiki-使用指南-blue?style=for-the-badge)](#)

</div>

---

## 📋 目錄導航

- [✨ 系統特色](#-系統特色)
- [🎯 核心組件](#-核心組件)
- [⚡ 快速部署](#-快速部署)
- [🔧 詳細配置](#-詳細配置)
- [🚀 性能優化](#-性能優化)
- [📊 系統監控](#-系統監控)
- [🛠️ 維護管理](#️-維護管理)
- [❓ 故障排除](#-故障排除)
- [📞 技術支持](#-技術支持)

---

## ✨ 系統特色

<div align="center">
<table>
<tr>
<td align="center" width="25%">
<img src="https://img.shields.io/badge/🔥-性能優化-red?style=flat-square" alt="性能優化">
<br><strong>極致性能</strong>
<br><small>多層次系統優化<br>BBR擁塞控制算法</small>
</td>
<td align="center" width="25%">
<img src="https://img.shields.io/badge/🛡️-安全可靠-green?style=flat-square" alt="安全可靠">
<br><strong>安全可靠</strong>
<br><small>權限隔離<br>安全認證機制</small>
</td>
<td align="center" width="25%">
<img src="https://img.shields.io/badge/🎯-一鍵部署-blue?style=flat-square" alt="一鍵部署">
<br><strong>極簡部署</strong>
<br><small>完全自動化<br>智能錯誤處理</small>
</td>
<td align="center" width="25%">
<img src="https://img.shields.io/badge/📊-智能管理-purple?style=flat-square" alt="智能管理">
<br><strong>智能管理</strong>
<br><small>自動種子管理<br>Web界面控制</small>
</td>
</tr>
</table>
</div>

### 🆕 最新升級

- 🔥 **BBRv3 & BBRx** - 最新擁塞控制算法，提升網絡吞吐量
- 🎯 **智能優化引擎** - 自動檢測硬件配置並優化參數
- 📱 **現代化WebUI** - 支持qBittorrent 4.3.9最新版本
- 🤖 **autobrr集成** - 自動抓取種子，RSS訂閱管理
- 🔍 **vertex面板** - 可視化節點管理和監控
- ⚡ **虛擬化檢測** - 智能適配VPS和獨立服務器環境

---

## 🎯 核心組件

<div align="center">
<table>
<tr>
<th width="20%">🔧 核心服務</th>
<th width="20%">🚀 自動化工具</th>
<th width="20%">📊 管理面板</th>
<th width="20%">⚡ 性能優化</th>
<th width="20%">🛡️ 網絡優化</th>
</tr>
<tr>
<td>

**qBittorrent**
- 🌟 v4.3.9 最新版
- 🔧 自定義配置
- 💾 智能緩存管理
- 🌐 WebUI遠程控制

</td>
<td>

**autobrr**
- 🤖 自動種子抓取
- 📡 RSS訂閱管理
- 🎯 智能過濾規則
- 🔄 實時監控

**autoremove-torrents**
- 🗑️ 自動清理機制
- 📅 定時任務管理
- 📊 空間優化策略

</td>
<td>

**vertex**
- 📊 實時監控面板
- 🌐 節點狀態顯示
- 💻 系統資源監控
- 📈 性能圖表展示

</td>
<td>

**系統調優**
- 🔧 tuned性能配置
- 📊 磁盤調度優化
- 🔗 網絡環形緩衝區
- 📂 文件打開限制

**硬件適配**
- 💽 SSD/NVMe優化
- 🖥️ CPU線程調節
- 💾 內存使用優化

</td>
<td>

**BBR算法**
- 🚀 BBRv3 - 最新版本
- ⚡ BBRx - 定制優化
- 📊 TCP優化參數
- 🌐 網絡擁塞控制

**連接優化**
- 🔧 TSO關閉（虛擬化）
- 📊 TCP窗口調節
- ⚡ 初始擁塞窗口

</td>
</tr>
</table>
</div>

---

## ⚡ 快速部署

### 🚀 一鍵安裝

```bash
# 🌟 推薦方式 - 直接執行
bash <(wget -qO- https://raw.githubusercontent.com/laobanbiefangcu/Seedbox/main/Install.sh) \
  -u admin \
  -p yourpassword \
  -c 3072 \
  -q 4.3.9 \
  -l v1.2.20 \
  -b -v -r -3
```

### 📝 參數說明

<div align="center">
<table>
<tr>
<th width="15%">參數</th>
<th width="25%">說明</th>
<th width="30%">示例</th>
<th width="30%">備註</th>
</tr>
<tr>
<td><code>-u</code></td>
<td>🔑 用戶名稱</td>
<td><code>-u admin</code></td>
<td>Web界面登錄用戶名</td>
</tr>
<tr>
<td><code>-p</code></td>
<td>🔐 登錄密碼</td>
<td><code>-p secure123</code></td>
<td>建議使用強密碼</td>
</tr>
<tr>
<td><code>-c</code></td>
<td>💾 緩存大小(MiB)</td>
<td><code>-c 3072</code></td>
<td>建議為內存的1/4</td>
</tr>
<tr>
<td><code>-q</code></td>
<td>📦 qBittorrent版本</td>
<td><code>-q 4.3.9</code></td>
<td>支持多個版本選擇</td>
</tr>
<tr>
<td><code>-l</code></td>
<td>🔗 libtorrent版本</td>
<td><code>-l v1.2.20</code></td>
<td>需與qBT版本兼容</td>
</tr>
<tr>
<td><code>-b</code></td>
<td>🤖 安裝autobrr</td>
<td><code>-b</code></td>
<td>自動種子管理工具</td>
</tr>
<tr>
<td><code>-v</code></td>
<td>📊 安裝vertex面板</td>
<td><code>-v</code></td>
<td>可視化監控面板</td>
</tr>
<tr>
<td><code>-r</code></td>
<td>🗑️ 安裝autoremove</td>
<td><code>-r</code></td>
<td>自動清理種子工具</td>
</tr>
<tr>
<td><code>-3</code></td>
<td>🚀 啟用BBRv3</td>
<td><code>-3</code></td>
<td>最新TCP擁塞控制</td>
</tr>
<tr>
<td><code>-x</code></td>
<td>⚡ 啟用BBRx</td>
<td><code>-x</code></td>
<td>定制優化版BBR</td>
</tr>
<tr>
<td><code>-o</code></td>
<td>🔧 自定義端口</td>
<td><code>-o</code></td>
<td>交互式端口配置</td>
</tr>
</table>
</div>

### 🎯 使用示例

<details>
<summary>📋 <strong>不同場景的部署命令</strong></summary>

#### 🏠 家庭用戶 - 基礎配置
```bash
bash <(wget -qO- https://raw.githubusercontent.com/laobanbiefangcu/Seedbox/main/Install.sh) \
  -u homeuser -p mypassword -c 2048 -q 4.3.9 -l v1.2.20
```

#### 🏢 進階用戶 - 完整功能
```bash
bash <(wget -qO- https://raw.githubusercontent.com/laobanbiefangcu/Seedbox/main/Install.sh) \
  -u admin -p StrongPass123 -c 4096 -q 4.3.9 -l v1.2.20 -b -v -r -3
```

#### 🚀 性能優先 - 高端配置
```bash
bash <(wget -qO- https://raw.githubusercontent.com/laobanbiefangcu/Seedbox/main/Install.sh) \
  -u performance -p HighPerf456 -c 8192 -q 4.3.9 -l v1.2.20 -b -v -r -x -o
```

#### 🧪 測試環境 - 最小配置
```bash
bash <(wget -qO- https://raw.githubusercontent.com/laobanbiefangcu/Seedbox/main/Install.sh) \
  -u test -p test123 -c 1024 -q 4.3.9 -l v1.2.19
```

</details>

---

## 🔧 詳細配置

### 🖥️ 系統要求

<div align="center">
<table>
<tr>
<th width="25%">項目</th>
<th width="25%">最低要求</th>
<th width="25%">推薦配置</th>
<th width="25%">高性能配置</th>
</tr>
<tr>
<td><strong>💻 CPU</strong></td>
<td>1核心</td>
<td>2核心+</td>
<td>4核心+</td>
</tr>
<tr>
<td><strong>💾 內存</strong></td>
<td>1GB RAM</td>
<td>2GB+ RAM</td>
<td>4GB+ RAM</td>
</tr>
<tr>
<td><strong>💽 存儲</strong></td>
<td>20GB 可用空間</td>
<td>100GB+ SSD</td>
<td>500GB+ NVMe</td>
</tr>
<tr>
<td><strong>🌐 網絡</strong></td>
<td>100Mbps</td>
<td>1Gbps+</td>
<td>10Gbps+</td>
</tr>
</table>
</div>

### 🐧 支持的系統版本

<table>
<tr>
<td width="50%">

#### 📱 **Debian系列**
- ✅ Debian 10 (Buster)
- ✅ Debian 11 (Bullseye) 
- ✅ Debian 12 (Bookworm)
- ✅ Debian 13 (Trixie)

</td>
<td width="50%">

#### 🔶 **Ubuntu系列**
- ✅ Ubuntu 20.04 LTS (Focal)
- ✅ Ubuntu 22.04 LTS (Jammy)
- ✅ Ubuntu 23.04 (Lunar)
- ✅ Ubuntu 24.04 LTS (Noble)

</td>
</tr>
</table>

### 🏗️ 架構支持

<div align="center">
<table>
<tr>
<td align="center" width="50%">
<img src="https://img.shields.io/badge/x86__64-✅_完全支持-green?style=for-the-badge" alt="x86_64支持">
<br><strong>Intel/AMD 64位</strong>
<br><small>完整功能支持</small>
</td>
<td align="center" width="50%">
<img src="https://img.shields.io/badge/ARM64-✅_完全支持-green?style=for-the-badge" alt="ARM64支持">
<br><strong>ARM 64位</strong>
<br><small>樹莓派4/5等設備</small>
</td>
</tr>
</table>
</div>

---

## 🚀 性能優化

### 💾 緩存配置策略

<div align="center">
<table>
<tr>
<th width="20%">內存大小</th>
<th width="20%">推薦緩存(qBT 4.3.x)</th>
<th width="20%">推薦緩存(qBT 4.1.x)</th>
<th width="20%">理由</th>
<th width="20%">適用場景</th>
</tr>
<tr>
<td><strong>1-2GB</strong></td>
<td>128-256MB</td>
<td>256-512MB</td>
<td>避免內存溢出</td>
<td>🏠 家庭/輕度使用</td>
</tr>
<tr>
<td><strong>4GB</strong></td>
<td>512MB</td>
<td>1GB</td>
<td>平衡性能和穩定</td>
<td>🏢 中等負載</td>
</tr>
<tr>
<td><strong>8GB</strong></td>
<td>1GB</td>
<td>2GB</td>
<td>高性能配置</td>
<td>🚀 重度下載</td>
</tr>
<tr>
<td><strong>16GB+</strong></td>
<td>2GB</td>
<td>4GB</td>
<td>極致性能</td>
<td>💻 服務器級別</td>
</tr>
</table>
</div>

### ⚡ I/O優化配置

#### 📊 異步I/O線程調節

<details>
<summary>🔧 <strong>根據存儲類型優化線程數</strong></summary>

**💽 HDD機械硬盤**
```bash
# 默認配置 - 適合機械硬盤
Session\AsyncIOThreadsCount=4
```

**💾 SSD固態硬盤** 
```bash
# 中等性能配置
Session\AsyncIOThreadsCount=8
```

**🚀 NVMe超高速存儲**
```bash
# 高性能配置
Session\AsyncIOThreadsCount=16
```

**配置方法：**
1. **qBittorrent 4.3.x** - 在高級設置中直接修改
2. **qBittorrent 4.1.x** - 編輯配置文件:
   ```bash
   # 停止qBittorrent服務
   systemctl stop qbittorrent-$username
   
   # 編輯配置文件
   nano /home/$username/.config/qBittorrent/qBittorrent.conf
   
   # 在[BitTorrent]章節下添加
   Session\AsyncIOThreadsCount=8
   
   # 重啟服務
   systemctl start qbittorrent-$username
   ```

</details>

#### 📊 TCP緩衝區優化

<details>
<summary>🔧 <strong>針對不同I/O性能的緩衝區調節</strong></summary>

**💾 低I/O性能機器**
```bash
# qBittorrent配置
Session\SendBufferWatermark=5120
Session\SendBufferLowWatermark=1024
Session\SendBufferWatermarkFactor=150
```

**🚀 高I/O性能機器** 
```bash
# 保持默認值或適當提高
Session\SendBufferWatermark=10240
Session\SendBufferLowWatermark=2048
Session\SendBufferWatermarkFactor=200
```

</details>

### 🧠 CPU優化策略

#### ⚡ CPU指令周期節約

<details>
<summary>🔧 <strong>針對低性能CPU的優化</strong></summary>

**🐌 低性能CPU**
```bash
# 提高tick_interval來節約CPU周期
# 注意：qBittorrent暫不支持此配置
# 可在Deluge中通過ltconfig設置
tick_interval=250
```

**⚡ 高性能CPU**
```bash
# 使用默認值或更低的tick_interval
tick_interval=100
```

</details>

---

## 📊 系統監控

### 🖥️ 實時狀態監控

安裝完成後，您將獲得多個監控入口：

<div align="center">
<table>
<tr>
<th width="25%">服務</th>
<th width="25%">訪問地址</th>
<th width="25%">默認端口</th>
<th width="25%">功能</th>
</tr>
<tr>
<td><strong>🌟 qBittorrent</strong></td>
<td><code>http://您的IP:8080</code></td>
<td>8080</td>
<td>種子下載管理</td>
</tr>
<tr>
<td><strong>🤖 autobrr</strong></td>
<td><code>http://您的IP:7474</code></td>
<td>7474</td>
<td>自動種子抓取</td>
</tr>
<tr>
<td><strong>📊 vertex</strong></td>
<td><code>http://您的IP:9090</code></td>
<td>9090</td>
<td>系統監控面板</td>
</tr>
</table>
</div>

### 📈 性能監控指標

#### 🔍 關鍵性能指標監控

<details>
<summary>📊 <strong>重要監控指標說明</strong></summary>

**💾 內存使用率**
- 正常範圍：< 80%
- 警告範圍：80-90%
- 危險範圍：> 90%

**💽 磁盤I/O**
- 順序讀寫速度
- 隨機讀寫IOPS
- 磁盤使用率

**🌐 網絡流量**
- 上傳/下載速度
- 連接數統計
- 網絡延遲監控

**⚡ CPU使用率**
- 系統負載
- 進程CPU占用
- 溫度監控（如支持）

</details>

---

## 🛠️ 維護管理

### 🔧 日常維護命令

<details>
<summary>⚙️ <strong>常用管理命令</strong></summary>

#### 🚀 服務控制
```bash
# 查看服務狀態
systemctl status qbittorrent-$username

# 重啟qBittorrent
systemctl restart qbittorrent-$username

# 查看服務日志
journalctl -u qbittorrent-$username -f
```

#### 📊 性能監控
```bash
# 查看系統負載
htop

# 查看磁盤使用
df -h

# 查看內存使用
free -h

# 查看網絡連接
netstat -tulnp
```

#### 🧹 清理維護
```bash
# 清理系統日志
journalctl --vacuum-time=7d

# 清理包緩存
apt autoremove && apt autoclean

# 查看大文件
du -sh /* | sort -hr | head -10
```

</details>

### 🔄 更新升級

<details>
<summary>🆙 <strong>系統組件更新</strong></summary>

#### 🔄 qBittorrent更新
```bash
# 重新運行安裝腳本並指定新版本
bash <(wget -qO- https://raw.githubusercontent.com/laobanbiefangcu/Seedbox/main/Install.sh) \
  -u $username -p $password -c $cache -q 4.4.0 -l v1.2.21
```

#### 🤖 autobrr更新
```bash
# autobrr通常會自動更新，也可手動檢查
systemctl restart autobrr
```

#### 🐧 系統更新
```bash
# 更新系統包
apt update && apt upgrade -y

# 重啟系統（如需要）
reboot
```

</details>

---

## ❓ 故障排除

### 🚨 常見問題解決方案

<details>
<summary>❌ <strong>qBittorrent無法啟動</strong></summary>

**問題現象：**
- WebUI無法訪問
- 服務啟動失败

**解決步驟：**
1. **檢查服務狀態**
   ```bash
   systemctl status qbittorrent-$username
   ```

2. **查看錯誤日志**
   ```bash
   journalctl -u qbittorrent-$username -n 50
   ```

3. **檢查端口占用**
   ```bash
   netstat -tlnp | grep 8080
   ```

4. **重新配置**
   ```bash
   systemctl stop qbittorrent-$username
   rm -rf /home/$username/.config/qBittorrent
   systemctl start qbittorrent-$username
   ```

</details>

<details>
<summary>🌐 <strong>網絡連接問題</strong></summary>

**問題現象：**
- 下載速度慢
- 無法連接到tracker

**解決步驟：**
1. **檢查防火墻**
   ```bash
   ufw status
   ufw allow 45000  # qBittorrent監聽端口
   ```

2. **測試網絡連通性**
   ```bash
   ping 8.8.8.8
   curl -I http://www.google.com
   ```

3. **檢查BBR狀態**
   ```bash
   sysctl net.ipv4.tcp_congestion_control
   # 應該顯示 bbrv3 或 bbrx
   ```

4. **重啟網絡服務**
   ```bash
   systemctl restart networking
   # 或
   systemctl restart systemd-networkd
   ```

</details>

<details>
<summary>💾 <strong>磁盤空間不足</strong></summary>

**問題現象：**
- 下載停止
- 系統響應緩慢

**解決步驟：**
1. **檢查磁盤空間**
   ```bash
   df -h
   du -sh /home/$username/Downloads/* | sort -hr
   ```

2. **配置autoremove-torrents**
   ```bash
   nano /home/$username/.config.yml
   # 配置自動清理規則
   ```

3. **手動清理**
   ```bash
   # 清理已完成的種子
   find /home/$username/Downloads -name "*.torrent" -mtime +30 -delete
   ```

4. **移動數據到其他磁盤**
   ```bash
   mv /home/$username/Downloads /mnt/storage/
   ln -s /mnt/storage/Downloads /home/$username/Downloads
   ```

</details>

### 🔧 高級故障排除

<details>
<summary>⚙️ <strong>性能問題診斷</strong></summary>

#### 🐌 下載速度慢

**診斷步驟：**
```bash
# 1. 檢查網絡帶寬
speedtest-cli

# 2. 檢查連接數
netstat -an | grep :45000 | wc -l

# 3. 檢查CPU和內存
htop

# 4. 檢查磁盤I/O
iotop -a
```

**優化建議：**
- 調整緩存大小
- 增加連接數限制
- 優化磁盤調度算法
- 檢查防火墻規則

#### 💥 內存洩漏問題

**診斷和解決：**
```bash
# 監控內存使用
watch -n 5 'free -h && ps aux | grep qbittorrent'

# 重啟服務釋放內存
systemctl restart qbittorrent-$username

# 降低緩存大小
# 編輯qBittorrent配置，減少緩存值
```

</details>

---

## 🔒 安全配置

### 🛡️ 安全加固建議

<details>
<summary>🔐 <strong>系統安全配置</strong></summary>

#### 🚪 SSH安全配置
```bash
# 修改SSH默認端口
sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config

# 禁用root登錄
sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config

# 重啟SSH服務
systemctl restart sshd
```

#### 🔥 防火墻配置
```bash
# 啟用UFW防火墻
ufw enable

# 允許SSH（使用新端口）
ufw allow 2222

# 允許qBittorrent WebUI
ufw allow 8080

# 允許qBittorrent下載端口
ufw allow 45000

# 查看規則
ufw status verbose
```

#### 🔒 用戶權限管理
```bash
# 限制用戶權限
usermod -s /bin/bash $username
chown -R $username:$username /home/$username

# 設置適當的文件權限
chmod 755 /home/$username
chmod -R 644 /home/$username/.config
```

</details>

### 🔑 密碼安全

<details>
<summary>🔐 <strong>強密碼策略</strong></summary>

**密碼要求：**
- ✅ 至少12位字符
- ✅ 包含大小寫字母
- ✅ 包含數字和特殊字符
- ✅ 避免使用字典詞彙
- ✅ 定期更換密碼

**生成安全密碼：**
```bash
# 生成隨機強密碼
openssl rand -base64 16

# 或使用pwgen
pwgen -s 16 1
```

**修改qBittorrent密碼：**
```bash
# 停止服務
systemctl stop qbittorrent-$username

# 重新設置密碼（需要重新運行安裝腳本部分代碼）
# 或直接修改配置文件中的密碼哈希值
```

</details>

---

## 📈 高級優化

### 🚀 極致性能調優

<details>
<summary>⚡ <strong>系統內核參數優化</strong></summary>

系統已自動配置以下優化參數：

#### 🌐 網絡優化
```bash
# TCP緩衝區大小
net.core.rmem_max = 268435456
net.core.wmem_max = 268435456
net.ipv4.tcp_rmem = 4096 87380 268435456
net.ipv4.tcp_wmem = 4096 65536 268435456

# 連接數優化
net.core.somaxconn = 32768
net.core.netdev_max_backlog = 32768
net.ipv4.tcp_max_syn_backlog = 32768

# TCP優化
net.ipv4.tcp_no_metrics_save = 1
net.ipv4.tcp_moderate_rcvbuf = 1
net.ipv4.tcp_congestion_control = bbrv3  # 或 bbrx
```

#### 💽 文件系統優化
```bash
# 文件描述符限制
fs.file-max = 1048576
fs.nr_open = 1048576

# 虛擬內存優化
vm.swappiness = 1
vm.dirty_ratio = 5
vm.dirty_background_ratio = 2
```

</details>

<details>
<summary>💾 <strong>存儲優化策略</strong></summary>

#### 📊 文件系統選擇

**🏆 推薦：XFS文件系統**
```bash
# 格式化為XFS（警告：會刪除所有數據）
mkfs.xfs -f /dev/sdX1

# 優化掛載選項
mount -o noatime,nodiratime,largeio,inode64 /dev/sdX1 /mnt/downloads
```

**⚡ 替代：ext4優化掛載**
```bash
mount -o noatime,nodiratime,data=ordered /dev/sdX1 /mnt/downloads
```

#### 🔧 磁盤調度器優化
```bash
# SSD/NVMe使用noop或none
echo none > /sys/block/nvme0n1/queue/scheduler

# HDD使用deadline或mq-deadline  
echo mq-deadline > /sys/block/sda/queue/scheduler
```

</details>

### 🎯 場景化優化配置

<details>
<summary>🏠 <strong>家庭用戶優化</strong></summary>

**特點：**
- 💻 有限的硬件資源
- 🏠 家庭網絡環境
- ⏰ 非24小時運行

**優化配置：**
```bash
# 較保守的緩存設置
qb_cache=1024  # 1GB緩存

# 限制連接數避免影響其他設備
Max connections: 200
Max uploads: 50

# 節能設置
AsyncIOThreadsCount=4  # 適合HDD
```

</details>

<details>
<summary>🏢 <strong>服務器級優化</strong></summary>

**特點：**
- 💻 高性能硬件
- 🌐 企業級網絡
- ⚡ 7x24小時運行

**優化配置：**
```bash
# 激進的緩存設置
qb_cache=8192  # 8GB緩存

# 高連接數配置
Max connections: 2000
Max uploads: 500

# 高性能設置
AsyncIOThreadsCount=16  # 適合NVMe SSD
```

</details>

---

## 📚 參考資料

### 📖 官方文檔鏈接

<div align="center">
<table>
<tr>
<th width="25%">組件</th>
<th width="25%">官方網站</th>
<th width="25%">Github項目</th>
<th width="25%">文檔/Wiki</th>
</tr>
<tr>
<td><strong>qBittorrent</strong></td>
<td><a href="https://www.qbittorrent.org/">官網</a></td>
<td><a href="https://github.com/qbittorrent/qBittorrent">源碼</a></td>
<td><a href="https://github.com/qbittorrent/qBittorrent/wiki">Wiki</a></td>
</tr>
<tr>
<td><strong>autobrr</strong></td>
<td><a href="https://autobrr.com/">官網</a></td>
<td><a href="https://github.com/autobrr/autobrr">源碼</a></td>
<td><a href="https://autobrr.com/installation">安裝指南</a></td>
</tr>
<tr>
<td><strong>autoremove-torrents</strong></td>
<td>-</td>
<td><a href="https://github.com/jerrymakesjelly/autoremove-torrents">源碼</a></td>
<td><a href="https://autoremove-torrents.readthedocs.io/">文檔</a></td>
</tr>
</table>
</div>

### 🔗 相關項目致謝

本項目整合了以下優秀項目的成果：

- 📦 **qBittorrent編譯** - [userdocs/qbittorrent-nox-static](https://github.com/userdocs/qbittorrent-nox-static)
- 🔑 **密碼加密** - [KozakaiAya/libqbpasswd](https://github.com/KozakaiAya/libqbpasswd)
- 🚀 **BBR優化** - [KozakaiAya/TCP_BBR](https://github.com/KozakaiAya/TCP_BBR)
- ⚡ **系統優化** - [QuickBox社區](https://github.com/QuickBox)

---

## 📞 技術支持

<div align="center">

### 🛟 獲得幫助

<table>
<tr>
<td align="center" width="25%">
<img src="https://img.shields.io/badge/🐛-Bug_報告-red?style=for-the-badge" alt="Bug報告">
<br><strong>Bug報告</strong>
<br><a href="https://github.com/laobanbiefangcu/Seedbox/issues">提交Issue</a>
</td>
<td align="center" width="25%">
<img src="https://img.shields.io/badge/💡-功能建議-blue?style=for-the-badge" alt="功能建議">
<br><strong>功能建議</strong>
<br><a href="https://github.com/laobanbiefangcu/Seedbox/discussions">討論區</a>
</td>
<td align="center" width="25%">
<img src="https://img.shields.io/badge/📖-使用文檔-green?style=for-the-badge" alt="使用文檔">
<br><strong>使用文檔</strong>
<br><a href="https://github.com/laobanbiefangcu/Seedbox/wiki">查看Wiki</a>
</td>
<td align="center" width="25%">
<img src="https://img.shields.io/badge/⭐-支持項目-yellow?style=for-the-badge" alt="支持項目">
<br><strong>支持項目</strong>
<br><a href="https://github.com/laobanbiefangcu/Seedbox">給個Star</a>
</td>
</tr>
</table>

### 📞 聯繫方式

- 📧 **郵件支持**: [技術支持郵箱]
- 💬 **即時討論**: [Telegram群組]  
- 🐦 **項目動態**: [Twitter關注]
- 📱 **QQ交流群**: [群號]

### 🤝 參與貢獻

歡迎提交Pull Request來完善項目：

1. 🍴 Fork本項目
2. 🌿 創建feature分支
3. ✅ 提交代碼並測試
4. 📤 發起Pull Request

</div>

---

<div align="center">

### 🎉 感謝使用 Seedbox自動化部署系統

**🚀 讓高性能下載環境部署變得極其簡單**

*一次部署 • 長期受益 • 專業級性能*

[![Made with ❤️](https://img.shields.io/badge/Made_with-❤️-red?style=for-the-badge)](https://github.com/laobanbiefangcu/Seedbox)
[![Powered by Linux](https://img.shields.io/badge/Powered_by-🐧_Linux-blue?style=for-the-badge)](https://www.linux.org/)
[![Open Source](https://img.shields.io/badge/100%25-🔓_開源-green?style=for-the-badge)](https://opensource.org/)

---

**⚡ 極速部署 • 🛡️ 安全可靠 • 🎯 專業優化**

*© 2024 Seedbox Project. 基於MIT許可證開源.*

</div>