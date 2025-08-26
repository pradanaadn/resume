# Resume

This repository contains my professional resume built with [RenderCV](https://github.com/sinaatalay/rendercv).

## Workflow Triggers

The GitHub Actions workflow will automatically trigger in the following cases:

### 1. **Push to main branch**
- Builds the CV and uploads it as an artifact
- Perfect for testing changes and development
- Artifacts are available for 30 days

### 2. **Push tags matching patterns**
- `v-*` (e.g., `v-1.0`, `v-2.1.0`) - Creates a standard release
- `v-ds-*` (e.g., `v-ds-1.0`) - Creates a "Data Scientist" release
- Creates a GitHub release with the PDF attached

### 3. **Manual trigger**
- Go to Actions tab → "Build CV and Create Releases" → "Run workflow"
- Useful for testing without pushing code

## Creating a Release

To create a new release:

```bash
# Create and push a tag
git tag v-1.0.0
git push origin v-1.0.0

# Or for a Data Scientist version
git tag v-ds-1.0.0
git push origin v-ds-1.0.0
```

## Building Locally

```bash
# Install dependencies
pip install uv
uv sync

# Render CV
uv run rendercv render pradanaadn_CV.yaml
```

The output files will be in the `rendercv_output` directory.
