FROM python:3.8

#ARG PYTHON_MAIN_FILE
# set work directory
RUN mkdir /main
# where your code lives
WORKDIR /main

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
# copy project
#COPY src/ /main/
COPY ./requirements.txt /main/
COPY ./app.py /main/app.py
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 8501
CMD streamlit run app.py
