# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

"Static HTML/CSS portfolio website deployed to AWS using S3 and CloudFront, provisioned with Terraform, and automated via GitHub Actions.


## Architecture

- **index.html** — single-page site with sections `#home`, `#about`, `#services`, `#courses`, `#book`, `#community`, `#contact`, plus a footer. Nav buttons use `onclick="goToSection(...)"` / `onclick="toggleMenu()"` handlers and the footer has a `#year` span, but no `<script>` defining these exists anywhere in the repo — this JS is currently missing/broken, not just unused.
- **style.css** (~1145 lines) — all styling for `index.html`, mobile-first with breakpoints at 900px, 768px, and 600px.
- **privacy.html** / **terms.html** — standalone pages with their own inline `<style>` blocks (not using `style.css`).
- **images/** — static assets referenced by the pages (logo, profile, course thumbnails, hero background).
Pure HTML5 and CSS3. No JavaScript. No build step. No framework.

## Commands

`terraform init`, `terraform plan`, `terraform apply`

## Conventions

    - All infrastructure changes go through Terraform — never modify AWS resources manually
    - No JavaScript in this project
    - CSS uses mobile-first approach with breakpoints at 900px, 768px, and 600px

## Safety

Never put secrets in this file. No API keys, passwords, or AWS credentials."

