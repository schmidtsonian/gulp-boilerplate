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

clean-public:
	@bin/clean-public.sh




template:
	@bin/template.sh

remove-template:
	@bin/remove-template.sh

atom:
	@bin/atom.sh

scaffold:
	@bin/scaffold.sh