FROM klakegg/hugo:0.101.0-ext-ubuntu

RUN apt update && apt upgrade -y

RUN gem install bundler
RUN bundle init