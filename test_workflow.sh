#!/bin/bash
# Simple test to validate workflow configuration

set -e

echo "🧪 Testing workflow configuration..."

# Test 1: Validate YAML syntax
echo "✅ Testing YAML syntax..."
python3 -c "import yaml; yaml.safe_load(open('.github/workflows/release.yml')); print('✅ Workflow YAML is valid')"

# Test 2: Check required files exist
echo "✅ Testing required files..."
for file in "pradanaadn_CV.yaml" "pyproject.toml"; do
    if [ -f "$file" ]; then
        echo "✅ $file exists"
    else
        echo "❌ $file missing"
        exit 1
    fi
done

# Test 3: Check rendercv can be imported
echo "✅ Testing RenderCV installation..."
if command -v uv >/dev/null 2>&1; then
    uv run python -c "import rendercv; print('✅ RenderCV can be imported')"
else
    echo "⚠️  uv not installed, skipping RenderCV test"
fi

echo "🎉 All tests passed! The workflow should work correctly."