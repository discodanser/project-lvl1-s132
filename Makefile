install:
	touch .npmignore
	echo "node_modules\ndist\n*.log" > .gitignore
	npm i

start:
	npm run babel-node -- src/bin/brain-games.js

build: lint
	npm run build

b:
	npm run build

lint:
	npm run eslint src

publish:
	npm publish
