FROM python:2

ADD Dock.py /

ADD Config.json /

RUN mkdir --parents /home/elad/JsonRes/f

RUN pip install pytest

CMD [ "python", "./Dock.py", "18" ]