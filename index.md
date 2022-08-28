---
title: "byocss: bring your own CSS - a Hugo theme"
---

[byocss](https://sr.ht/~tymek/byocss) is a batteries excluded [Hugo](https://gohugo.io) theme.
It provides semantic HTML layout without any styling.
If you know CSS and want to heavily customize a theme without building it from scratch, then byocss is for you.

# Quickstart
```sh
git submodule add https://git.sr.ht/~tymek/byocss themes/byocss
hugo server --theme byocss
```

<div class="alert alert-warning">
<strong>Note:</strong> byocss utilizes <a href="https://sass-lang.com/">SASS</a>.
This requires an extended installation of Hugo, please refer to <a href="https://gohugo.io/troubleshooting/faq/#i-get--this-feature-is-not-available-in-your-current-hugo-version">Hugo FAQ</a> for installation instructions.
</div>

# Customization
First and foremost, you are going to need to style your site with CSS.
Every page part linked in the table below has a _Selectors for Styling_ section to get you started.
The entry point for styling is `assets/main.scss` - this does not change if you use CSS over SCSS as the latter is superset of the former.

Every page consists of up to five parts.
Parts don't necessarily translate to `<body>` tag children, as parts can be overridden to your liking.

- [Navbar](navbar.md) - `layouts/partials/navbar.html` partial
- [Header](header.md) - `"header"` block
- [Main](main.md) - `"main"` block
- [Entries](entries.md) - `"entries"` block
- [Terms](terms.md) - `"terms"` block (found only on taxonomy page, exclusive with entries)
- [Footer](footer.md) - `layouts/partials/footer.html` partial

Partials are overridden by creating a respective file in your site.
Blocks are overridden by defining a block for given page kind in its respective file ([lookup order](https://gohugo.io/templates/lookup-order/)).
Most likely the files you might want to meddle with are:

- Home - `layouts/index.html`
- Section - `layouts/_default/list.html`
- Taxonomy - `layouts/_default/terms.html`
- Page - `layouts/_default/single.html`

# Showcase
_[Get in touch](#contact-and-contributing) to have your site listed here!_

- [My personal website - tymek.dev](https://tymek.dev)

# Contact and Contributing
If you want to submit a feature request or a bug report, then do so via [SourceHut todo](https://todo.sr.ht/~tymek/byocss) or [GitHub issue](https://github.com/TymekDev/byocss/issues).
If you would like to contribute, then [patches](https://lists.sr.ht/~tymek/byocss)\* and [pull requests](https://github.com/TymekDev/byocss/pulls) are welcome! 
Note: it is a good practice to raise a ticket before sending a patch or pull request.

\* New to mailing list workflow? SourceHut has [a write up for you](https://man.sr.ht/lists.sr.ht/#new-to-mailing-lists)!

Otherwise, if you are feeling lost and need help, you see an improvement for [byocss wiki](https://man.sr.ht/~tymek/byocss/), or you want to have your site showcased, then send an email to [byocss mailing list](https://lists.sr.ht/~tymek/byocss).
