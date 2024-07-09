# syntax=docker/dockerfile:1
FROM ruby:3.0
RUN apt update
RUN apt remove cmdtest
RUN apt remove yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq
RUN apt-get install -y nodejs postgresql-client yarn

ARG CACHEBUST=1
ADD ./* /usr/src/
WORKDIR /usr/src/app
COPY Gemfile /usr/src/app/Gemfile
COPY Gemfile.lock /usr/src/app/Gemfile.lock
COPY yarn.lock /usr/src/app/yarn.lock
COPY package.json /usr/src/app/package.json
COPY .rubocop.yml /usr/src/app/.rubocop.yml
COPY ./app/assets/images/* /usr/src/assets/images/
RUN yarn install
RUN bundle install
RUN gem install sass
#RUN yarn build

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]