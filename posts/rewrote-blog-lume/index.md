---
title: "Rewrote blog with lume... nice!"
date: 2023-01-06T14:43:42-07:00
draft: false
tags:
- ssg
- deno
- software
---

In honor of 2022's front-end web trends of eschewing everything old
from SPAs to React to even Node itself, I got my feet wet by rebuilding
this blog with [Lume](https://lume.land).

<!--more-->

## Research

Front-end web application frameworks
 * Server-side rendering (Next.js, Remix)
 * No Virtual DOM (Svelte, Solid)
 * Islands architecture and hydration (Astro, Isles)
 * Partial hydration (Marko, Qwik)

[Deno](https://deno.land), an alternative to Node, may by Node's creator.

SSG $\subset$ SSR $\subset$ web app.
Prefer SSG since it is trivial to deploy (no backends/edge functions)
and most performant.

[Lume](https://lume.land) is a SSG written in Deno.

## From Hugo to Lume

* Same file-based routing and frontmatter format for posts
* References are easier to get right thanks to [`base_path`](https://lume.land/plugins/base_path/#description), but is this healthy in the long run?
* Change templating language, markdown code blocks
* `<!--more-->` [used to delimit above/below fold](https://github.com/lumeland/theme-simple-blog/blob/54cbf14c9be2cd0df1fbf9771bb3b3501395ec34/plugins.ts#L39) content on main page
* Pain: override blog base layout to insert KaTeX headers

## Performance

Before

<!-- ![](/img/rewrote-blog-lume/before.webp){ style="display: block; margin: 0 auto" } -->
![](/img/rewrote-blog-lume/before.webp)
 

After

![](/img/rewrote-blog-lume/after.webp)
 

## Suggestions

 * Make it easier to globally enable KaTex, or find another solution for inline math.