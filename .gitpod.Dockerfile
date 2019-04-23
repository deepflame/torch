FROM gitpod/workspace-postgres

# add your tools here
USER root
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
      dpkg -i erlang-solutions_1.0_all.deb && \
      rm erlang-solutions_1.0_all.deb
RUN apt-get update && apt-get install -y \
        esl-erlang \
        elixir \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*