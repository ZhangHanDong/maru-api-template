FROM elixir

ENV MIX_ENV prod

ENV APP_ROOT /var/www/demo
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

RUN mix local.hex --force && mix local.rebar --force

COPY mix.exs ./mix.exs
COPY mix.lock ./mix.lock
RUN mix deps.get

RUN mix deps.compile

COPY . .
CMD mix ecto.create

RUN mix compile

EXPOSE 8880
CMD mix run --no-halt
