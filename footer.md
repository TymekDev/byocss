---
title: Footer
---

[byocss](https://sr.ht/~tymek/byocss) does not come with a footer included.
If you wish to add one to your site, then you have to add `footer.html` partial to your site.
The partial should be located at `layouts/partials/footer.html`.

Since `footer.html` is a partial, it is possible to use shortcodes in the footer.
For example, `{{ site.Title }}`, `{{ site.Copyright }}`, or `{{ now.Format "2006" }}`.

## Examples
```html
<footer>
  <hr>
  <small>
    &copy; {{ now.Format "2006" }} {{ site.Title }}
    &middot;
    Powered by <a href="https://gohugo.io">Hugo</a>
    &middot;
    Themed by <a href="https://sr.ht/~tymek/byocss">byocss</a>
  </small>
</footer>
```

```html
<footer>
  <hr>
  <small>
    Copyright by John Doe. Licensed under <a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/">CC BY-NC-ND 4.0</a>.
  </small>
</footer>
```

```html
<footer>
  <hr>
  <small>
    Content licensed under <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0</a>. Site code licensed under <a rel="license" href="https://opensource.org/licenses/MIT">MIT</a>.
  </small>
</footer>
```
