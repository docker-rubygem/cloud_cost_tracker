FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.2

RUN gem install cloud_cost_tracker --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cloud_cost_tracker"]
CMD ["--help"]
