import Config
config :nx, :default_backend, EXLA.Backend
# Client can also be set to :cuda / :rocm
config :nx, :default_defn_options, [compiler: EXLA, client: :host]
