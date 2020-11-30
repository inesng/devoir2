FROM python:3.8.2
COPY manager manager

RUN pip3 install psycopg2
RUN wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh -P /
RUN chmod +x /wait-for-it.sh
CMD ["python", "-m","manager"]
ENTRYPOINT ["/wait-for-it.sh", "db:5432", "--"]
