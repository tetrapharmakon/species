BUNDLER_VER=2.3.25

.PHONY: setup serve build clean

setup:
	@./bin/setup

serve:
	@bundle _$(BUNDLER_VER)_ exec jekyll serve

build:
	@bundle _$(BUNDLER_VER)_ exec jekyll build

clean:
	rm -rf .antex-cache docs/ _site/ vendor/bundle
