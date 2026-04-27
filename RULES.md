# Blog System Core Rules

This document outlines the strict rules and architectural decisions for this specific blog system.

## 1. Technical Stack
- **Framework**: MkDocs with Material Theme.
- **Hosting**: GitHub Pages.
- **Automation**: GitHub Actions.

## 2. Environment Isolation (Local vs Remote)

Commands are strictly isolated to prevent accidental deployments.

### Local Environment (Development)
- **Command**: `./local.sh`
- **Purpose**: Start a local server with live-reload for testing changes.
- **Files**: Ignores `site/` and `venv/` via `.gitignore`.

### Remote Environment (Production)
- **Command**: `./deploy.sh <version>` (e.g., `./deploy.sh v1.0.1`)
- **Purpose**: Handle the entire deployment flow: commit, push to main, and push version tag.
- **Rules**: 
    - Only tags starting with `v` trigger deployment.
    - Max 2 deployments per 24 hours (enforced by GitHub Actions).

## 3. Link Behavior
- **Global Rule**: All external links (links pointing away from the blog domain) must open in a **new tab** (`target="_blank"`). This is implemented via `docs/javascripts/extra.js`.

## 4. Content Structure
- **Format**: Simplified. One introductory sentence, official website link, and a step-by-step learning path using official documentation.
- **Goal**: Enable users to follow official paths and earn certifications where applicable.

## 5. Repository Management
- **Branching**: Use feature branches for updates.
- **Merging**: Final changes are merged to `main`, but deployment only happens on tagging.
