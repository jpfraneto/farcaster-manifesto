SITE := farcaster-manifesto.orbiter.website
DEPLOY_DIR := deploy

.PHONY: build deploy

build:
	./build.sh

deploy: build
	cp index.html $(DEPLOY_DIR)/index.html
	git add -A
	git commit -m "deploy: update manifesto"
	git push origin main
	orbiter update $(DEPLOY_DIR) -d $(SITE)
