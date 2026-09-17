# Repository Guidelines

This project is a static website export, likely from Webflow. It consists of an `index.html` file and several asset directories containing minified CSS, chunked JavaScript, images, and fonts.

## Project Structure & Module Organization

- **`index.html`**: The main entry point of the website. It contains the HTML structure and references to assets.
- **`67ad72477c605912a4af72eb/`**: Primary assets directory.
  - **`css/`**: Contains minified Webflow-generated stylesheets.
  - **`js/`**: Contains chunked and minified JavaScript files (`webflow.*.js`).
  - **Images & Fonts**: Many assets are stored directly in this directory with hash-prefixed filenames (e.g., `67ad750fd694a0587c758cb4_...`).
- **`67b56e82f5f2d165f9ff12e4/`**: Secondary images directory.
- **`ajax/libs/` & `js/`**: Contain external and local dependencies, primarily jQuery.

## Build, Test, and Development Commands

This is a static site without a complex build system. There are no `package.json` scripts or task runners.
- **Development**: Open `index.html` directly in a browser or use a simple static file server (e.g., Live Server, `python -m http.server`).
- **Testing**: Manual visual verification in the browser is the primary testing method.

## Coding Style & Naming Conventions

- **HTML/CSS**: Follows Webflow's naming conventions. Many elements use `data-wf-page` or `data-w-id` attributes for Webflow interactions.
- **Assets**: Filenames are typically prefixed with unique hashes followed by descriptive names.
- **JavaScript**: Most logic is contained within minified Webflow chunks. Avoid direct modification of these files if possible; prefer adding custom scripts in `index.html` or new JS files.

## Commit Guidelines

- Use concise, descriptive commit messages (e.g., "Refactor HTML structure", "Update footer logo").
- Group related asset updates into a single commit.
