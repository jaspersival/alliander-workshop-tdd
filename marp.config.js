module.exports = {
   allowLocalFiles: true, // Allow local file access
  themeSet: './themes',
  html: true,
  jpegQuality: 100,
  inputDir: './slides',
  outputDir: './slides',  // Directory for the generated slides
  engine: ({ marp }) => marp.use(require('@kazumatu981/markdown-it-kroki'), {
        entrypoint: "https://kroki.io",
  }).use(require('@kazumatu981/markdown-it-nested-container'))
      .use(require('marp-hide-slides/hide-slides-plugin'))

}
