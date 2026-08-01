.PHONY: setup setup-lms run-lms

setup:
	@echo "Setting up monorepo environment..."

setup-lms:
	python3 -m venv projects/01-lms-rag-tutor/venv
	projects/01-lms-rag-tutor/venv/bin/pip install -r projects/01-lms-rag-tutor/requirements.txt

run-lms:
	projects/01-lms-rag-tutor/venv/bin/python projects/01-lms-rag-tutor/app/main.py
