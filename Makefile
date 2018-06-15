all:
	@bin/help.sh

help:
	@bin/help.sh

deps:
	chmod -R +x bin/
	@bin/deps.sh

bw:
	@bin/build-and-watch.sh

rebuild:
	@bin/rebuild.sh

build:
	@bin/build.sh

watch:
	@bin/watch.sh

clean:
	@bin/clean.sh




template:
	@bin/template.sh

scaffold:
	@bin/scaffold.sh