FROM python:2
ARG inBuildNum
ENV build_id=$inBuildNum
ADD Dock.py $HOME/
ADD Config.json $HOME/
CMD python ./Dock.py $build_id