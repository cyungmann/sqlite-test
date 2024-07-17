FROM centos:7
RUN mkdir /app
WORKDIR /app
COPY . .
RUN chmod a+x ./SqliteTest
ENTRYPOINT /app/SqliteTest
