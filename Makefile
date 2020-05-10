install_deps:
	pip install -U -r requirements.txt

all:
	pip install -U -r requirements.txt
	cd getiquality
	nbdev_build_lib
	cd ..

test:
	py.test

yapf:
	find . -type f -name "*.py" | xargs yapf -i
