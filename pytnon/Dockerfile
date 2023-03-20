FROM python:3.11.2-slim-buster
##FROM gcr.io/distroless/python3-debian11 - smallest
##FROM python:3.11.2 - biggest
WORKDIR /tmp
COPY main.py .
##EXPOSE 8080 0 it is only for inter-container communication
ENTRYPOINT ["python3", "./main.py"]
##CMD ["main.py"] - another variant to run this image FROM gcr.io/distroless/python3-debian11, which does not need to run python3 while using CMD
##can be in the followind sequence
#ENTRYPOINT [ "python3" ] - we cannot override the ENTRYPOINT instructions by adding command-line parameters to the docker run command
#CMD [ "main.py" ] -  if you add an argument to the command, you override the CMD command specified.
##https://devtron.ai/blog/cmd-and-entrypoint-differences
##OR
##ENTRYPOINT ["python3", "-u", "main.py"]

