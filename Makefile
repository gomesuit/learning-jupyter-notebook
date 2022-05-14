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
		jupyter lab

download:
	curl https://files.grouplens.org/datasets/movielens/ml-20m.zip \
		-o tmp/ml-20m.zip
	unzip tmp/ml-20m.zip -d tmp/
	cp tmp/ml-20m/* downloads/
