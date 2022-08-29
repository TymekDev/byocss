---
title: "Terms (byocss)"
---

Terms are a specific being that appears only on [taxonomy pages](https://gohugo.io/content-management/taxonomies).
Terms are exclusive with [entries](entries.md).

# Customization
[By default][0], terms are listed alphabetically in an ordered list.
Currently [byocss](https://sr.ht/~tymek/byocss) does not support fine-tuned customization.
Therefore, if you want to make any adjustments, then the entire section has to be redefined using `terms` block as shown below

[0]: https://git.sr.ht/~tymek/byocss/tree/197ccf83270b6dfeaa83df764ff0f532c2737b16/item/layouts/_default/baseof.html#L44-54

```
{{- define "terms" }}
  {{/* Your implementation goes here */}}
{{- end }}
```

# Selectors for Styling
- `#terms` - entire `<section>` tag
- `#terms ol` - terms list
- `#terms ol li` - terms list's elements
- `#terms ol li a` - term link
