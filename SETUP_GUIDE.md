# Blog System Setup and Usage Guide

This blog system is built using **MkDocs** and the **Material for MkDocs** theme. Everything is automated; all you need to do is add content and `git push`.

## System Features
1. **Search**: All content on the site is instantly searchable.
2. **Tagging**: You can add any tags you want to your posts.
3. **Automatic Deployment**: Your site is updated the moment you upload it to GitHub.

## How to Add a New Post?
1. Create a new `.md` file under the `docs/blog/` folder (e.g., `new-post.md`).
2. Add your tags at the top of the post in this format:
   ```markdown
   ---
   tags:
     - Technology
     - Daily
   ---
   ```
3. Add your new post to the `nav:` section in the `mkdocs.yml` file:
   ```yaml
   nav:
     - Blog:
         - My New Post: blog/new-post.md
   ```

## How to Search on the Site?
You can search by clicking the magnifying glass icon in the top right corner of the site or by pressing the `/` key on your keyboard.

## How Do Tags Work?
Tags belonging to each post appear at the top or bottom of the post. When you click a tag, all posts with that tag are listed. You can also go to the "Tags" page to see all tags collectively.

## Deployment (Going Live)
After making all changes, run these commands in the terminal sequentially:
```bash
git add .
git commit -m "Added new post"
git push origin main
```
After this process, GitHub Actions will run automatically and publish your site within a few minutes.

---
*Happy writing!*
