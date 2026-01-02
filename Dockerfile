FROM ruby:3.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client
RUN mkdir /tecklog
WORKDIR /tecklog
ADD Gemfile /tecklog/Gemfile
ADD Gemfile.lock /tecklog/Gemfile.lock
RUN bundle install
ADD . /tecklog

CMD ["rails", "server", "-b", "0.0.0.0"]

