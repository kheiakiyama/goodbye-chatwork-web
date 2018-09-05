FROM ruby:2.4

WORKDIR /usr/src/app
ADD Gemfile /usr/src/app/
RUN bundle install

ADD . /usr/src/app

ENV PORT 80
EXPOSE 80

COPY docker-entrypoint.sh /
RUN chmod 755 /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
