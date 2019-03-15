FROM ruby:2.4.1

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nodejs -y
RUN gem install rails

#ENV RAILS_VERSION=5.0.1
#ENV RAILS_ENV=development

RUN mkdir -p /opt/app

ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN pwd
ONBUILD RUN rake db:migrate --trace
ONBUILD RUN rake db:seed --trace
ONBUILD RUN  echo "end ft-rails"
#docker build -t ft-rails:on-build .

#docker run --name jmoussu -dit --rm ft-rails:on-build ## Maybe no need 
