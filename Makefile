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

download-movielens:
	curl https://files.grouplens.org/datasets/movielens/ml-20m.zip \
		-o tmp/ml-20m.zip
	unzip tmp/ml-20m.zip -d tmp/
	cp tmp/ml-20m/* downloads/movie_lens/

download-100knock:
	curl https://www.shuwasystem.co.jp/support/download/6439/100knock-process-visualization.zip \
		-o tmp/100knock-process-visualization.zip
	unzip tmp/100knock-process-visualization.zip -d tmp/
	mv tmp/100knock-process-visualization downloas/100knock-process-visualization
