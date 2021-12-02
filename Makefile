build:
	@hugo --gc --minify
	@git checkout gh-pages
	@cp -r public/* .
	@rm -rf public
	@git add .
	@git commit -m "Update: $$(date '+%Y-%m-%d %H:%M:%S')"
	@git push
	@git checkout master

start:
	@hugo server