# make sure to change the version in vscode/package.json
VERSION = 1.1.0

.PHONY: sublime vscode

all: sublime vscode

$(shell mkdir -p bin)

# TODO: right now the packages are just the files; maybe add some
# accompanying documentation and stuff like that

sublime:
	@echo Building Sublime Text package
	@cp -r sublime bin/dtk-syntax
	@tar -cvz -f bin/dtk-syntax-${VERSION}-sublime.tar.gz -C bin dtk-syntax
	@rm -r bin/dtk-syntax

vscode:
	@echo Building Visual Studio Code package
	@cd vscode; vsce package --skip-license -o ../bin/dtk-syntax-${VERSION}-vscode.vsix

.PHONY: clean

clean:
	-@rm -r bin
