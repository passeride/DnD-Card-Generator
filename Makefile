##
# DnD Creator
#
# @file
# @version 0.1

pre-commit:
	pre-commit run --all-files
uv-sync:
	uv pip sync dev-requirements.txt
uv-compile:
	uv pip compile pyproject.toml -U --output-file requirements.txt --no-emit-index-url --generate-hashes  --no-annotate
	uv pip compile pyproject.toml -U --output-file dev-requirements.txt --extra dev --no-emit-index-url --generate-hashes  --no-annotate
test:
	python -m pytest --capture=no
test-debugger:
	python -m pytest --capture=no --pudb
ruff:
	python -m ruff check
ruff-fix:
	python -m ruff check --fix
doc:
	python -m pydoctor

# end
