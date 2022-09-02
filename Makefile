.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

start: ## Start the dev server 
	bin/bridgetown start 

build: ## build the production version 
	BRIDGETOWN_ENV=production bundle exec bridgetown build


clean: ## clean the project 
	bundle exec bridgetown clean 
	yarn clean


setup: ## setup dependencies 
	bundle install 
	yarn install 



clobber: ## remove all installed packaged and builds 
	bundle exec bridgetown clean 
	rm -rf output 
	rm -rf node_modules 


publish: 
	git add src/_posts
	git commit -m "publishing new post"
	git push origin main
