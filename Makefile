TESTS = $(shell find ./test/* -name 'test.*.coffee')

test:
	@echo 'Testing...'
	./node_modules/mocha/bin/mocha --compilers coffee:coffee-script/register $(TESTS)

test-cov:
	@echo 'Testing and Report...'
	./node_modules/mocha/bin/mocha && ./node_modules/.bin/istanbul report

test-watch:
	./node_modules/mocha/bin/mocha -w --compilers coffee:coffee-script/register $(TESTS)

.PHONY: test
