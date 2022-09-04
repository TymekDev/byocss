# byocss: bring your own CSS - a Hugo theme

[byocss](https://sr.ht/~tymek/byocss) is a batteries excluded [Hugo](https://gohugo.io) theme.
It provides semantic HTML\* layout without any styling.
If you know CSS and want to heavily customize a theme without building it from scratch, then byocss is for you!

\* Only one CSS class and two IDs are used throughout byocss! IDs also double down as anchors for sections.

## Quickstart
```sh
git submodule add https://git.sr.ht/~tymek/byocss themes/byocss
hugo server --theme byocss
```

<div class="alert alert-warning">
<strong>Note:</strong> byocss utilizes <a href="https://sass-lang.com/">SCSS</a>.
This requires an extended installation of Hugo, please refer to <a href="https://gohugo.io/troubleshooting/faq/#i-get--this-feature-is-not-available-in-your-current-hugo-version">Hugo FAQ</a> for installation instructions.
</div>

## Customization
First and foremost, you are going to need to style your site with CSS or SCSS.
Every page part linked below has a _Selectors for Styling_ section to get you started.
The entry point for styling is `assets/main.scss` - this does not change regardless of whether you use CSS or SCSS (CSS is valid SCSS).

Every page consists of up to five parts.
Parts don't necessarily translate to `<body>` tag children, as parts can be overridden to your liking.

- [Navbar](https://man.sr.ht/~tymek/byocss/navbar.md) - `layouts/partials/navbar.html` partial
- [Header](https://man.sr.ht/~tymek/byocss/header.md) - `"header"` block
- [Main](https://man.sr.ht/~tymek/byocss/main.md) - `"main"` block
- [Entries](https://man.sr.ht/~tymek/byocss/entries.md) - `"entries"` block (for home page keep in mind [mainSections](https://gohugo.io/functions/where/#mainsections) setting)
- [Terms](https://man.sr.ht/~tymek/byocss/terms.md) - `"terms"` block (found only on taxonomy page, mutually exclusive with entries)
- [Footer](https://man.sr.ht/~tymek/byocss/footer.md) - `layouts/partials/footer.html` partial

Partials are overridden by creating a respective file `layouts/partials/` directory for your site.
Blocks are overridden by defining a block for a given page kind in its respective file.
Most likely the files you might want to meddle with for block overriding are:

- Home - `layouts/index.html`
- Section - `layouts/_default/list.html`
- Taxonomy - `layouts/_default/terms.html`
- Page - `layouts/_default/single.html`
- 404 page - `layouts/404.html`

If you would like to override a specific section, then you can read up on Hugo's [lookup order](https://gohugo.io/templates/lookup-order/).

## Showcase
_[Get in touch](#contact-and-contributing) to have your site listed here!_

- [My personal website - tymek.dev](https://tymek.dev)

## Contact and Contributing
If you want to submit a feature request or a bug report, then do so via [SourceHut todo](https://todo.sr.ht/~tymek/byocss) or [GitHub issue](https://github.com/TymekDev/byocss/issues).
If you would like to contribute, then [patches](https://lists.sr.ht/~tymek/byocss)\* and [pull requests](https://github.com/TymekDev/byocss/pulls) are welcome! 
Note: it is a good practice to raise a ticket before sending a patch or a pull request.

\* New to the mailing list workflow? SourceHut has [a write up for you](https://man.sr.ht/lists.sr.ht/#new-to-mailing-lists)!

Otherwise, if you are feeling lost and need help, you see an improvement for [byocss wiki](https://man.sr.ht/~tymek/byocss/), or you want to have your site showcased, then send an email to [byocss mailing list](https://lists.sr.ht/~tymek/byocss).
