FROM python:3

LABEL Kyle Pierce hi@kylepierce.co

# Install dependencies
RUN apt-get update && apt-get install -y \
  python-pip

WORKDIR /app/src

COPY requirements.txt .

RUN pip install -r requirements.txt
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]