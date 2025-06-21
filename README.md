# Typst Course Report Template for Nanjing University

[![Build Status](https://github.com/mq-yuan/clean-math-thesis/actions/workflows/build.yml/badge.svg)](https://github.com/mq-yuan/clean-math-thesis/actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-success.svg)](https://opensource.org/licenses/MIT)

A personal Typst template for course reports at Nanjing University. This template is a modification of the original [clean-math-thesis](https://github.com/sebaseb98/clean-math-thesis) template, adapted for general course report usage.

This template is designed for simple, efficient use and a clean, modern look. It retains many of the powerful features from the original, including:

- Pre-configured theorem environments via [great-theorems](https://typst.app/universe/package/great-theorems).
- Flexible equation numbering using [equate](https://typst.app/universe/package/equate) or [i-figured](https://typst.app/universe/package/i-figured/).
- Pseudocode support with [lovelace](https://typst.app/universe/package/lovelace).
- Headers managed by [hydra](https://typst.app/universe/package/hydra).

## Preview

The template is filled with dummy data to provide an impression of the final output. You can view the compiled PDF result here: [template/main.pdf](./template/main.pdf).

## How to Use

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/mq-yuan/clean-math-thesis.git](https://github.com/mq-yuan/clean-math-thesis.git)
    cd clean-math-thesis
    ```

2.  **Install Typst:**
    If you haven't already, [install Typst](https://github.com/typst/typst?tab=readme-ov-file#installation) on your system.

3.  **Edit `main.typ`:**
    The main configuration is done in `main.typ`. Open this file and modify the parameters within the `#show template.with(...)` block to match your report's details.

4.  **Write your content:**
    Add your content in the body of `main.typ` or include it from other `.typ` files (e.g., `chapters/chapter1.typ`).

5.  **Compile the document:**
    Run the following command in your terminal to compile the report into a PDF:
    ```bash
    typst compile template/main.typ
    ```
    The output will be `main.pdf` inside the `template` directory.

### Template Parameters

These are the main parameters you can set in `main.typ`:

**Report & Author Information:**
* `title`: The title of your course report.
* `author`: Your name.
* `student-id`: Your student ID number.
* `instructor`: The name of your course instructor or professor.
* `course-name`: The name of the course.
* `university`: The name of the university (pre-filled as "Nanjing University").
* `institute`: Your school or department.
* `deadline`: The submission deadline for the report.

**File Paths:**
* `uni-logo`: Path to the university logo, e.g., `image("logos/nju-logo.svg")`.
* `institute-logo`: Path to the institute or department logo.

**Formatting & Content:**
* `abstract`: The content for the abstract section.
* `citation-style`: The citation style to be used (e.g., `ieee`, `apa`).
* `body-font`: The main font for the body text.
* `cover-font`: The font used on the cover page.
* `equate-settings`: Settings for equation numbering. See the original README for details on switching between `equate` and `i-figured`.

**Colors:**
* `cover-color`: Color used for elements on the cover page.
* `heading-color`: Color for chapter and section headings.
* `link-color`: Color for hyperlinks and cross-references.

### Other Customizations

-   **Declaration:** The `declaration.typ` file should be modified to contain the academic integrity declaration required by your university or course.
-   **Chapters:** When adding new content files, remember to include them in `main.typ`.
-   **Theorem Styles:** You can change the colors and appearance of theorem environments in the `customization/` folder.

## Disclaimer

This is a personal template. While it aims for a professional look, there is no guarantee that it will be accepted by your department or instructor. Please verify that it fulfills all specific formatting requirements for your course report.

## Acknowledgements

-   This template is based on the excellent [clean-math-thesis](https://typst.app/universe/package/clean-math-thesis) template by Sebastian Eberle and Joshua Lampert.
-   The design was inspired by the [fau-book](https://github.com/FAU-AMMN/fau-book) LaTeX template.
-   Inspiration for the template structure was drawn from [modern-unito-thesis](https://typst.app/universe/package/modern-unito-thesis).
