---
layout: post
title:  "Makefile Help"
date: 2022-08-31 01:01:01 -0700
categories: til blog 
tags: makefile
---


Not sure where I picked this up, but I always add a help command to my make files: 

#### Skeleton File

```
.PHONY: clean help lint setup start test

help: ## shows the help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clean: ## clean the project
  echo TODO 

lint: ## lint codebase
  echo TODO 

setup: ## install all deps and configure project
  echo TODO 

start: ## compile and run the server 
  echo TODO 

test: ## run the tests 
  echo TODO 
```


#### Output

```
> make 
clean                          clean the project
help                           shows the help
lint                           lint codebase
setup                          install all deps and configure project
start                          compile and run the server 
test                           run the tests 
```