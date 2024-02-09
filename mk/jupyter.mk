.PHONY: nb
nb:  ## Start Jupyter notebook
	cd book && \
		jupyter-lab

.PHONY: book
book:  ## compile jupyter book
	jb build book --all
	cp -r book/_build/html/* docs
