FROM ruby:3.0.0

# Install 
RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \        
                       nodejs

WORKDIR /ror

# Add Gemfile
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

# Install Gemfile's bundle
RUN bundle install

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
