FROM ruby:2.7.0

WORKDIR /app

RUN curl -sL https://deb.nodesource.com/setup_15.x | bash - \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update  \
    && apt-get install -y nodejs yarn  \
    && rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock yarn.lock /app/

RUN bundle install \
 && yarn install

COPY . /app/

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]