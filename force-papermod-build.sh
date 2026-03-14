#!/bin/bash
# 强制PaperMod主题构建脚本

set -e

echo "=== 强制PaperMod主题构建 ==="

# 1. 强制删除可能存在的ananke主题残留
echo "步骤1: 清理主题残留..."
rm -rf themes/ananke 2>/dev/null || true
rm -rf themes/ananke-* 2>/dev/null || true

# 2. 确保PaperMod主题存在
echo "步骤2: 验证PaperMod主题..."
if [ ! -d "themes/PaperMod" ]; then
    echo "❌ PaperMod主题不存在，重新下载..."
    rm -rf themes/ 2>/dev/null || true
    mkdir -p themes
    cd themes
    wget -q https://github.com/adityatelange/hugo-PaperMod/archive/refs/heads/master.zip -O PaperMod.zip
    unzip -q PaperMod.zip
    mv hugo-PaperMod-master PaperMod
    rm -f PaperMod.zip
    cd ..
fi

# 3. 强制配置使用PaperMod
echo "步骤3: 强制配置PaperMod主题..."
sed -i 's/theme = ".*"/theme = "PaperMod"/' config.toml
sed -i 's/theme = "ananke"/theme = "PaperMod"/' config.toml 2>/dev/null || true

# 4. 验证配置
echo "步骤4: 验证配置..."
echo "当前主题配置:"
grep "theme =" config.toml

# 5. 强制构建测试
echo "步骤5: 构建测试..."
hugo --verbose --minify --baseURL "https://cuiyanxiang.github.io/data-karl-lab/"

echo "✅ 强制PaperMod构建完成"