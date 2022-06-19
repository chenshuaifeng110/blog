<p align="center"><a href="https://source.jonsam.site/" target="_blank" rel="noopener noreferrer"><img width="180" src="/docs/.vuepress/public/assets/img/logo.png" alt="logo"></a></p>

<h2 align="center">Fancy Front End</h2>

## 介绍

学习随笔

和优秀的代码对话，提升自己的思维能力和代码水平。

介绍
A simple starter to create note site using vuepress and github pages.

使用 vuepress 和 github pages 快速建立笔记静态站点的模板。

使用模板
点击 Use this template 创建您的仓库。或者您也可以先拉取代码：

mkdir my-note
cd my-note
degit jonsam-ng/fancy-note-starter
特性
支持 slidev 幻灯片，链接 /slides。
支持数学公式。
支持 PDF，<Pdf src="" />。
支持视频播放，<VideoPlayer src="" />。
支持 PWA。
支持复制版权声明。
优化 SEO，支持 sitemap 生成。
支持移动端扫码查看。
自动备份仓库到gitee。配置 .github/workflows/gitee-repos-mirror.yml 文件。
支持播放媒体标签，如哔哩哔哩。
快速上手
安装依赖并启动项目
npm i -g pnpm
pnpm i
pnpm dev
修改 docs/.vuepress/config/site.config.ts 文件中站点配置。

修改 logo 和 favicon，在 docs/.vuepress/public/img/ 目录覆盖 logo.png 和 favicon.ico。

根据 logo 生成 favicon，使用：Favicon Generator - Image to Favicon - favicon.io。将解压后文件移动到此目录。
使用 PPDuck 压缩图片。
修改 docs/.vuepress/config/nav.config.ts 文件配置顶部导航条。参见示例。

修改 docs/index.md 配置首页。

在 .github/workflows/ci.yml 中修改 GITHUB_TOKEN、CODING_TOKEN 为你的 GITHUB_TOKEN、CODING_TOKEN 变量名称。

修改 scripts/deploy.sh 文件中 user.name、user.email、githubUrl 配置(如果需要自定义域名需要去除 CNAME 行注释，并修改 CNAME 为您的域名)。

创建 github 仓库。初始化 git 并推送至 master 分支。

等待 github actions 完成后，在 Setting → Pages -> Source 中将分支改为 gh-pages。如果没有此分支，请检查上一步 git action 是否完成或者是否报错。

[可选]如果需要自定义域名，修改 docs/.vuepress/config/site.config.ts 中设置 useCustomDomainName 为 true，在 Setting → Pages -> Custom domain 修改为自已的自定义域名，前提是您已经在域名解析服务商那里将域名解析到 {{github_name}}.github.io（配置 NS 记录）。建议勾选 Enforce HTTPS。修改 package.json 中 buildSli 的 base 参数。

[可选]在 scripts/baiduPush.sh 配置百度推送。在 package.json 修改 scripts 里 baiduPush 脚本中域名为您的域名。

[可选]在 docs/.vuepress/config/baiduCode.ts 配置百度统计。

在 package.json 中修改 name 等配置。

在 docs/.vuepress/config/plugin.config.ts 中修改 vuepress-plugin-comment 评论插件的配置。

修改 README.MD 文件。

其余配置
vdoing 主题配置：主题配置 | vuepress-theme-vdoing
vuepress 配置：配置 | VuePress
slidev 配置：Slidev
Vscode 使用
安装插件 markdownlint 校验 markdown 格式。

安装插件 markdown-formatter 格式化 markdown 文档。

安装插件 Markdown Emoji 支持 Emoji。

安装插件 vscode all markdown 支持富文本、即时渲染模式等。

安装插件 Word Count CJK 支持即时显示文字字数。

安装插件 Markmap 以思维导图方式预览 markdown，生成思维导图。

安装插件 Draw.io Integration 实时作图，以 svg 引用文章。

示例
Fancy FE
Fancy ML
TODO
🐞 进入 slides 需要强制刷新，vue-router 无法 bypass。
支持 PWA。
许可证
MIT
