# 个人网站（Personal Website）

一个支持 **中文 / English / 日本語** 三语切换的国际化个人网站，采用浅色现代设计，已部署到 GitHub Pages。

---

## 🔗 快速入口

| 项目 | 链接 |
|------|------|
| **在线网站** | https://jiaoyun-wang.github.io/personal-website/ |
| **GitHub 仓库** | https://github.com/Jiaoyun-Wang/personal-website |
| **GitHub 账号** | Jiaoyun-Wang |

> 网站链接**永久不变**，每次更新后自动同步最新内容（GitHub Pages 自动部署）。

---

## 🚀 如何更新网站

修改 `index.html` 后，在终端执行：

```bash
cd "AI Tools/personal-website"
./update.sh "本次修改说明"
```

**示例：**

```bash
./update.sh "更新了个人简介和项目作品"
```

脚本会自动完成四步：
1. 📦 检查文件变更
2. 📝 提交变更（自动记录版本日志）
3. 🚀 推送到 GitHub
4. ✅ 自动部署（约 1 分钟后刷新链接即可看到新内容）

> 如果运行 `./update.sh` 提示没有修改，说明文件未保存或没有实际变更。

**不带说明直接运行**（使用默认说明"更新网站内容"）：

```bash
./update.sh
```

---

## 📋 版本日志（提交历史）

查看完整日志：

```bash
cd "AI Tools/personal-website"
git log
```

当前历史：

```
ffa3251 添加更新脚本
d55040b 初始提交：个人网站（三语切换 + 浅色国际化设计）
```

---

## 💡 小提示

- **回滚到旧版本**：
  ```bash
  cd "AI Tools/personal-website"
  git log --oneline              # 查看提交 ID
  git checkout <提交ID> -- .      # 恢复该版本的文件
  ./update.sh "回滚到旧版本"
  ```

- **查看本地改动状态**：`git status`
- **查看具体改动内容**：`git diff`
- **本地预览网站**：直接用浏览器打开 `index.html`，或运行 `open index.html`

---

## 🛠️ 环境配置（已完成，无需重复操作）

以下环境已在本机配置好，重装系统或换电脑时需重新配置：

| 项目 | 状态 | 说明 |
|------|------|------|
| Git | ✅ 已安装 | 版本 2.50.1 |
| GitHub CLI (`gh`) | ✅ 已安装 | 路径 `~/.local/bin/gh`，已加入 PATH |
| GitHub 登录 | ✅ 已登录 | 账号 Jiaoyun-Wang |
| git 用户名 | ✅ | JiaoyunWang |
| git 邮箱 | ✅ | 101029823+Jiaoyun-Wang@users.noreply.github.com |

**如换电脑或登录失效，重新配置命令：**

```bash
# 1. 安装 gh（macOS arm64，下载后解压到 ~/.local/bin）
curl -sL -o /tmp/gh.zip https://github.com/cli/cli/releases/latest/download/gh_$(curl -s https://api.github.com/repos/cli/cli/releases/latest | grep -o '"tag_name": "v[^"]*"' | cut -d'"' -f4 | sed 's/v//')_macOS_arm64.zip
# 解压后把 bin/gh 复制到 ~/.local/bin/ 并 chmod +x

# 2. 加入 PATH（写入 ~/.zshrc）
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc

# 3. 登录 GitHub
gh auth login

# 4. 配置 git 身份
git config --global user.name "JiaoyunWang"
git config --global user.email "101029823+Jiaoyun-Wang@users.noreply.github.com"

# 5. 克隆项目（换电脑时）
git clone https://github.com/Jiaoyun-Wang/personal-website.git
```

---

## 📂 项目结构

```
personal-website/
├── index.html      # 网站主文件（含全部 HTML/CSS/JS）
├── update.sh       # 一键更新脚本
├── .gitignore      # 忽略文件配置
└── README.md       # 本文件
```

---

## 🎨 网站功能

- 🌐 三语切换（中文 / English / 日本語），自动记忆语言选择
- 🎨 浅色国际化设计风格
- ✨ 滚动显现动画、技能进度条、数字滚动统计
- 📱 响应式设计（适配手机 / 平板 / 桌面）

**修改多语言文案**：编辑 `index.html`，找到 `<script>` 内的 `translations` 对象（约在文件后 1/3 处），按语言键值修改即可。
