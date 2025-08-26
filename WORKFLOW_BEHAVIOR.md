# Workflow Behavior Summary

## What happens when the workflow triggers:

### 1. On Push to Main Branch 📄
- ✅ **Workflow triggers automatically**
- 🔄 Builds the CV from source (renders PDF, HTML, MD)
- 📦 Uploads CV files as GitHub artifacts (available for 30 days)
- 💡 **Perfect for testing changes before creating a release**

### 2. On Tag Push (v-* or v-ds-*) 🏷️
- ✅ **Workflow triggers automatically**
- 🔄 Builds the CV from source
- 🚀 **Creates a GitHub Release** with PDF attached
- 📋 Uses CV content as release notes
- 💡 **Use this for official releases**

### 3. Manual Trigger 🎯
- ✅ **Go to Actions → "Build CV and Create Releases" → "Run workflow"**
- 🔄 Builds the CV from source
- 📦 Uploads CV files as artifacts
- 💡 **Great for testing without pushing code**

## Examples:

```bash
# This will trigger the workflow and upload artifacts:
git add .
git commit -m "Update CV"
git push origin main

# This will trigger the workflow and create a release:
git tag v-1.0.0
git push origin v-1.0.0

# This will trigger the workflow and create a "Data Scientist" release:
git tag v-ds-1.0.0 
git push origin v-ds-1.0.0
```

## Problem Solved! ✅

**Before:** Workflow only triggered on specific tag pushes
**After:** Workflow triggers on main pushes, tag pushes, AND manual triggers

The user can now see their workflow running on every push to main branch!