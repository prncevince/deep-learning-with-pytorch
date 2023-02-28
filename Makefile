.PHONY: docs docs-preview conda-env-export conda-env-create

docs:
	nbdev_docs

docs-preview:
	python -m http.server -d _docs

conda-env-create:
	conda env create -f dl-pytorch.yml

conda-env-export:
	conda env export -n dl-pytorch > dl-pytorch.yml