.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

start: ## Start the dev server 
	bin/bridgetown start 

build: ## build the production version 
	BRIDGETOWN_ENV=production yarn deploy


clean: ## clean the project 
	yarn clean

setup: ## setup dependencies 
	bundle install 
	yarn install 

clobber: ## remove all installed packaged and builds 
	bundle exec bridgetown clean 
	rm -rf output 
	rm -rf node_modules 
