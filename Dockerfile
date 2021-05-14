FROM ruby:2.7

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    nodejs \
    yarn \
    && rm -rf /var/lib/apt/lists/*

RUN yarn config set cache-folder /root/.yarn/

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY Gemfile* ./
COPY .ruby-version ./

ENV BUNDLE_PATH /gems

RUN bundle install

COPY . .

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
