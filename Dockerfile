FROM ruby:2.4

WORKDIR /usr/src/app
ADD Gemfile /usr/src/app/
RUN bundle install

ADD . /usr/src/app

ENV PORT 80
EXPOSE 80

CMD ["foreman start"]
