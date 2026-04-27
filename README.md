# Personal Blog System 🚀

A modern, fast, and searchable blog system built with **MkDocs** and **Material Theme**. Designed to be easily maintained and automatically deployed to GitHub Pages.

## 🛠 Features
- **Instant Search**: Search through all blog posts in real-time.
- **Tagging System**: Organize content with custom tags.
- **Auto-Deployment**: Integrated with GitHub Actions for automated publishing.
- **Isolated Environments**: Separate scripts for local development and remote deployment.

## 🏁 Quick Start

To get this project running on your local machine, follow these steps:

### 1. Prerequisites
Ensure you have **Python 3.x** installed on your system. You can check it by running:
```bash
python3 --version
```

### 2. Clone and Run
Clone the repository and run the local setup script:
```bash
git clone https://github.com/keramiozsoy/blog.git
cd blog
chmod +x local.sh
./local.sh
```
This script will automatically create a virtual environment, install dependencies, and start the local server at `http://127.0.0.1:8000`.

## 📖 Development Workflow

- **Local Preview**: Run `./local.sh` to see your changes live.
- **Add Content**: Add new `.md` files to the `docs/blog/` directory and register them in `mkdocs.yml`.
- **Deploy to Production**: Use `./deploy.sh vX.X.X` to push changes and trigger a live deployment.

## 📜 Rules & Guidelines
For detailed information on deployment rules, link behaviors, and content structure, please refer to the [RULES.md](./RULES.md) file.

---
*Happy Blogging!*
