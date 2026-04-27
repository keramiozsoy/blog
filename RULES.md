# Blog System Core Rules

This document outlines the strict rules and architectural decisions for this specific blog system.

## 1. Technical Stack
- **Framework**: MkDocs with Material Theme.
- **Hosting**: GitHub Pages.
- **Automation**: GitHub Actions.

## 2. Deployment Rules (Critical)
- **Triggers**: Deployment ONLY triggers when a tag starting with `v` is pushed (e.g., `git push origin v1.0.0`).
- **Rate Limit**: A maximum of **2 successful deployments** are allowed within any **24-hour window**.
- **Automated Releases**: Every successful tag-based deployment must create an official GitHub Release with generated notes.

## 3. Link Behavior
- **Global Rule**: All external links (links pointing away from the blog domain) must open in a **new tab** (`target="_blank"`). This is implemented via `docs/javascripts/extra.js`.

## 4. Content Structure
- **Format**: Simplified. One introductory sentence, official website link, and a step-by-step learning path using official documentation.
- **Goal**: Enable users to follow official paths and earn certifications where applicable.

## 5. Repository Management
- **Branching**: Use feature branches for updates.
- **Merging**: Final changes are merged to `main`, but deployment only happens on tagging.
