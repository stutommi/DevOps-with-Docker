FROM ruby:2.6.0

WORKDIR /usr/src/app
COPY . .
RUN gem install bundler
RUN bundle install
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN rails db:migrate
EXPOSE 3000
CMD rails s
