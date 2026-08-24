#!/bin/bash
# 个人网站更新脚本
# 用法: ./update.sh "本次修改说明"
# 示例: ./update.sh "更新了项目作品"

cd "$(dirname "$0")"

# 提交说明（可选参数，默认值）
MSG="${1:-更新网站内容}"

# 确保 gh 可用
export PATH="$HOME/.local/bin:$PATH"

echo "📦 检查变更..."
git add -A

if git diff --cached --quiet; then
  echo "⚠️  没有检测到任何修改，无需更新。"
  exit 0
fi

echo "📝 提交变更: $MSG"
git commit -m "$MSG"

echo "🚀 推送到 GitHub..."
if git push origin main; then
  echo ""
  echo "✅ 更新完成！"
  echo "🔗 网站地址: https://jiaoyun-wang.github.io/personal-website/"
  echo "⏱️  更新内容通常在 1 分钟内自动生效（GitHub Pages 自动部署）"
else
  echo ""
  echo "❌ 推送失败（可能是网络问题）。"
  echo "🔄 本地提交已保存，网络恢复后重试："
  echo "   cd \"$(pwd)\" && git push origin main"
  exit 1
fi
