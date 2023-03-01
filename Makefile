.PHONY: docs docs-dev docs-preview conda-env-export conda-env-create

docs:
	nbdev_docs

docs-dev:
	nbdev_preview

docs-preview:
	python -m http.server -d _docs

conda-env-create:
	conda env create -f dl-pytorch.yml

conda-env-export:
	conda env export -n > dl-pytorch.yml
