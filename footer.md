---
title: "Footer (byocss)"
---

[byocss](https://sr.ht/~tymek/byocss) does not come with a footer included.
If you want to have one, then you have to add `footer.html` partial to your site.
This partial should be located at `layouts/partials/footer.html`.
See examples below to get inspired.

# Example 1

```html
<footer>
  <hr>
  <small>
    Copyright by John Doe. Licensed under <a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/">CC BY-NC-ND 4.0</a>.
  </small>
</footer>
```

# Example 2

```html
<footer>
  <hr>
  <small>
    Content licensed under <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0</a>. Site code licensed under <a rel="license" href="https://opensource.org/licenses/MIT">MIT</a>.
  </small>
</footer>
```

# Example 3

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

```css
footer {
  text-align: center;
}
```

# Example 4

```html
<footer>
  <hr>
  <ul>
    <li><a href="mailto:tymek.makowski@gmail.com">Email</a></li>
    <li><a href="https://github.com/TymekDev">GitHub</a></li>
    <li><a href="https://linkedin.com/in/tymoteusz-makowski">LinkedIn</a></li>
    <li><a href="https://sr.ht/~tymek">SourceHut</a></li>
    <li><a href="https://twitter.com/TymekDev">Twitter</a></li>
  </ul>
</footer>
```

```css
footer ul {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
  list-style-type: none;
  margin: 1rem 0;
  padding: 0;
}
```
