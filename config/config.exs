import Config

config :openai,
  api_key: System.get_env("OPENAI_API_KEY")