SITE := farcaster-manifesto.orbiter.website
DEPLOY_DIR := deploy

.PHONY: deploy

deploy:
	cp index.html $(DEPLOY_DIR)/index.html
	git add -A
	git commit -m "deploy: update manifesto"
	git push origin main
	orbiter update $(DEPLOY_DIR) -d $(SITE)
