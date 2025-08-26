render:
	uv run rendercv render pradanaadn_CV.yaml

release:
	git tag $tag
	git push origin $tag