FROM python:3.6.1
MAINTAINER Kouki Saito <dan.addr.skd@gmail.com>

RUN groupadd -r dockeruser && useradd -r -g dockeruser dockeruser
WORKDIR /app
COPY ./setup.py setup.py
RUN python setup.py develop
COPY ./folio.py /app

USER dockeruser
CMD ["python", "-u", "folio.py"]

