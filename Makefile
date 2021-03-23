configure:
	chmod +x ./scripts/*
	./scripts/configure.sh
	./scripts/package.sh

install:
	./scripts/install.sh

uninstall:
	./scripts/uninstall.sh

clean:
	./scripts/clean.sh