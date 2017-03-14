.PHONY: all
all:
	rm -rf .venv
	git clean -fdx
	virtualenv -p ~/.pyenv/versions/3.6.0/bin/python .venv
	.venv/bin/python setup.py install
	.venv/bin/python -c 'import MySQLdb'
