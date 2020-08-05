
pipenv lock -r > requirements.txt

docker build -t kylepierce/pandas-docker-example

Add nb-clean to keep the notebook outputs off github

pipenv run nb-clean configure-git