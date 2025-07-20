install:
	pip install -r requirements.txt

test:
	pytest -v

lint:
	pylint hello.py test_hello.py --disable=R,C 


format:
	black hello.py test_hello.py

all: install lint test format
