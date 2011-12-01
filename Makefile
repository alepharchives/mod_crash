REBAR = ./rebar
TOUCH = touch

all: deps compile

deps: get-deps compile-deps

compile: 
	@$(REBAR) compile skip_deps=true

clean: 
	@$(REBAR) clean

release: deps compile
	@rm -fr release/crash
	@$(REBAR) generate

run: release
	release/crash/bin/crash console

get-deps:
	@$(REBAR) get-deps

compile-deps:
	@$(REBAR) compile

