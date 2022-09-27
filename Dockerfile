FROM python:3.11-rc-alpine
RUN apk update && apk add git
WORKDIR /usr/src/app
ENV PYTHONDONTWRITEBYTECODE 1 \
    PYTHONUNBUFFERED 1 \
    PORT 8000
COPY ./requirements.txt /usr/src/app
RUN pip install -r requirements.txt
COPY . /usr/src/app
EXPOSE 8000
CMD ["gunicorn", "--bind", "0.0.0.0:"$PORT, "oc_lettings_site.wsgi"]
#CMD ["gunicorn", "oc_lettings_site.wsgi"]