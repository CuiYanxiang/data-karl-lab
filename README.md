# 数据卡尔实验室 - 技术博客

## 🎯 博客简介
**数据卡尔实验室**是卡尔（大数据架构师，技术创业者）的技术博客，专注于：
- Spark/Flink/ClickHouse等大数据技术深度优化
- 金融数据分析系统设计与实现
- 一人公司技术创业实践分享
- 技术工具和开源项目

## 🚀 技术栈
- **静态生成器**: Hugo (Go语言，极速生成)
- **主题**: PaperMod (专业、简洁、响应式)
- **部署**: GitHub Pages + GitHub Actions
- **域名**: karl-tech.com (计划中)

## 📁 项目结构
```
data-karl-lab/
├── archetypes/           # 内容模板
├── content/              # 博客内容
│   ├── posts/           # 技术文章
│   ├── categories/      # 分类页面
│   └── about.md        # 关于页面
├── layouts/             # 布局文件（自定义）
├── static/              # 静态资源
│   ├── images/         # 博客图片
│   ├── css/           # 自定义样式
│   └── js/            # JavaScript文件
├── themes/             # 主题（PaperMod）
├── config.toml         # 配置文件
├── .github/workflows/  # GitHub Actions
└── README.md           # 项目说明
```

## 🚀 快速开始

### 本地开发
```bash
# 安装Hugo
brew install hugo  # macOS
# 或
sudo apt-get install hugo  # Ubuntu

# 克隆项目
git clone https://github.com/CuiYanxiang/data-karl-lab.git
cd data-karl-lab

# 启动本地服务器
hugo server -D
# 访问 http://localhost:1313
```

### 新建文章
```bash
hugo new posts/your-article-title.md
```

### 构建发布
```bash
# 生成静态文件
hugo --minify

# 文件将生成在public/目录
```

## 📝 内容规范

### 文章Front Matter
```yaml
---
title: "文章标题"
date: 2026-03-15T10:00:00+08:00
draft: false
description: "文章摘要"
tags: ["标签1", "标签2"]
categories: ["分类"]
series: ["系列名称"]  # 可选
keywords: ["关键词1", "关键词2"]  # SEO优化
---
```

### 图片使用规范
- 图片存储在 `static/images/` 目录
- 使用相对路径引用：`![](/images/filename.jpg)`
- 建议尺寸：文章图片宽度不超过1200px

## 🎨 自定义主题

### 修改配置
编辑 `config.toml` 文件：
```toml
[params]
  # 网站信息
  title = "数据卡尔实验室"
  description = "大数据技术专家卡尔的技术博客"
  
  # 社交媒体
  github = "CuiYanxiang"
  twitter = "你的Twitter"
  linkedin = "你的LinkedIn"
  
  # 功能开关
  search = true
  math = true  # 数学公式支持
```

### 自定义样式
在 `static/css/custom.css` 中添加自定义CSS：
```css
/* 自定义颜色主题 */
:root {
  --primary-color: #2563eb;
  --secondary-color: #059669;
}

/* 自定义代码块样式 */
pre code {
  border-left: 4px solid var(--primary-color);
}
```

## 📈 部署流程

### 自动部署
本项目使用GitHub Actions自动部署到GitHub Pages。每次推送到 `main` 分支时自动构建并部署。

### 手动部署
```bash
# 构建静态文件
hugo --minify

# 部署到GitHub Pages
cd public
git add .
git commit -m "更新博客"
git push origin gh-pages
```

## 🤝 贡献指南

### 提交文章
1. Fork本仓库
2. 创建文章：`hugo new posts/your-article.md`
3. 编辑文章内容
4. 提交Pull Request

### 问题反馈
- 在GitHub Issues中报告问题
- 或通过邮件联系：karl@karl-tech.com

## 📊 统计分析

### 访问统计
- **Google Analytics**: 已集成
- **百度统计**: 可选配置
- **Clarity**: 用户行为分析

### SEO优化
- 自动生成sitemap.xml
- 支持Open Graph和Twitter Cards
- 结构化数据标记

## 📞 联系信息

- **博客**: https://cuiyanxiang.github.io/data-karl-lab/
- **GitHub**: https://github.com/CuiYanxiang
- **邮箱**: karl@karl-tech.com
- **微信**: KarlTech2026

## 📄 许可证

本博客内容采用 [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) 许可证。
代码部分采用 MIT 许可证。

---

**数据卡尔实验室 - 用技术创造价值** 🚀# data-karl-lab
