.PHONY: setup setup-lms run-lms run-router test-all

setup:
	@echo "Setting up monorepo environment..."

setup-lms:
	python3 -m venv prototypes/ols-001-lms-rag-tutor/venv
	prototypes/ols-001-lms-rag-tutor/venv/bin/pip install -r prototypes/ols-001-lms-rag-tutor/requirements.txt

run-lms:
	prototypes/ols-001-lms-rag-tutor/venv/bin/python prototypes/ols-001-lms-rag-tutor/app/main.py

run-router:
	python3 prototypes/ols-009-multi-llm-router/app/main.py

test-all:
	@echo "Running tests across all projects..."
