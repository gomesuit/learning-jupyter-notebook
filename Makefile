init:
	pyenv exec \
		pip install --upgrade pip
	pyenv exec \
		pip install pipenv
	pyenv exec \
		pipenv install

run:
	pyenv exec \
		pipenv run \
		jupyter notebook
