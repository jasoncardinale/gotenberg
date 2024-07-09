<p align="center">
    <img src="https://user-images.githubusercontent.com/8983173/130322857-185831e2-f041-46eb-a17f-0a69d066c4e5.png" alt="Gotenberg Logo" width="150" height="150" />
    <h3 align="center">Gotenberg</h3>
    <p align="center">A Docker-powered stateless API for PDF files</p>
    <p align="center"><a href="https://gotenberg.dev/docs/getting-started/introduction">Documentation</a> &#183; <a href="https://gotenberg.dev/docs/getting-started/installation#live-demo-">Live Demo</a> 🔥</p>
</p>

---

Gotenberg provides a developer-friendly API to interact with powerful tools like Chromium and LibreOffice for converting 
numerous document formats (HTML, Markdown, Word, Excel, etc.) into PDF files, and more!

## ConductorAI

This is a fork of the Gotenberg [repo](https://github.com/gotenberg/gotenberg) designed the minimize the number of vulnerabilities. We do this by removing the Chromium module (which was not needed for our particular use-case) and by building a distroless image.

In order to build and push an updated image, follow these steps

1. Check https://go.dev/dl/ for the latest `GOLANG_VERSION`
2. Check https://fonts.google.com/noto/specimen/Noto+Color+Emoji for the latest `NOTO_COLOR_EMOJI_VERSION`
3. Check https://gitlab.com/pdftk-java/pdftk/-/releases for the latest `PDFTK_VERSION`
4. Update those respective build arguments in `scripts/release.sh`
5. Then run
    ```
    bash script/release.sh <URL> <tag>
    ```

## Quick Start

Open a terminal and run the following command:

```
docker run --rm -p 3000:3000 gotenberg/gotenberg:8
```

Alternatively, using the historic Docker repository from our sponsor [TheCodingMachine](https://www.thecodingmachine.com):

```
docker run --rm -p 3000:3000 thecodingmachine/gotenberg:8
```

The API is now available on your host at http://localhost:3000.

Head to the [documentation](https://gotenberg.dev/docs/getting-started/introduction) to learn how to interact with it 🚀

## Sponsors

<p align="center">
    <a href="https://thecodingmachine.com">
        <img src="https://user-images.githubusercontent.com/8983173/130324668-9d6e7b35-53a3-49c7-a574-38190d2bd6b0.png" alt="TheCodingMachine Logo" width="333" height="163" />
    </a>
    <a href="https://zolsec.com?utm_source=gotenberg_github&utm_medium=website" target="_blank">
        <img src="https://github.com/gotenberg/gotenberg/assets/8983173/707ccc97-a79b-4dcb-8fc8-6827366e5be3" alt="Zolsec Logo" width="333" height="163" />
    </a>
</p>

Sponsorships help maintaining and improving Gotenberg - [become a sponsor](https://github.com/sponsors/gulien) ❤️

## Badges

[![Docker pulls](https://img.shields.io/docker/pulls/gotenberg/gotenberg)](https://hub.docker.com/r/gotenberg/gotenberg)
[![Docker pulls](https://img.shields.io/docker/pulls/thecodingmachine/gotenberg)](https://hub.docker.com/r/thecodingmachine/gotenberg)
[![Continuous Integration](https://github.com/gotenberg/gotenberg/actions/workflows/continuous_integration.yml/badge.svg)](https://github.com/gotenberg/gotenberg/actions/workflows/continuous_integration.yml)
[![Go Reference](https://pkg.go.dev/badge/github.com/gotenberg/gotenberg.svg)](https://pkg.go.dev/github.com/gotenberg/gotenberg/v8)
[![Codecov](https://codecov.io/gh/gotenberg/gotenberg/branch/main/graph/badge.svg)](https://codecov.io/gh/gotenberg/gotenberg)
