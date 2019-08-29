FROM ruby:2.4.1
ENV https_proxy "https://naoyasu.watanabe:kaisen0029@proxy.toppan.co.jp:8088"
ENV http_proxy "http://naoyasu.watanabe:kaisen0029@proxy.toppan.co.jp:8088"
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
 