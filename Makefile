all:
	@bin/help.sh

help:
	@bin/help.sh

# Build
deps:
	chmod -R +x bin/
	@bin/build/deps.sh

bw:
	@bin/build/build-and-watch.sh

rebuild:
	@bin/build/rebuild.sh

build:
	@bin/build/build.sh

watch:
	@bin/build/watch.sh

clean:
	@bin/build/clean.sh

clean-public:
	@bin/build/clean-public.sh



# Scaffold
template:
	@bin/scaffold/template.sh

remove-template:
	@bin/scaffold/remove-template.sh

atom:
	@bin/scaffold/atom.sh

remove-atom:
	@bin/scaffold/remove-atom.sh

scaffold:
	@bin/scaffold/scaffold.sh