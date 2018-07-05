# Feynman's Blog

My personal blog built as a static site.

## Setting up

You will need [Hugo](https://gohugo.io/getting-started/installing/).

We maintain a customized theme as a git submodule, so you will need to
```
git submodule init
git submodule update
```

## Workflow

To preview (including drafts and future posts) while writing:
```
hugo server -D -F --disableFastRender --noHTTPCache --ignoreCache
```

To minimize caching issues while developing layouts:
```
hugo server -D --disableFastRender --noHTTPCache --ignoreCache
```

To deploy the changes:
```
./deploy.sh
```
