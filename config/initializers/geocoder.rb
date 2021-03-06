require 'redis'

REDIS = Redis.connect(url: ENV['REDISTOGO_URL'])

Geocoder.configure(
  # Geocoding options
  timeout: 10,                 # geocoding service timeout (secs)
  lookup: :google,            # name of geocoding service (symbol)
  # ip_lookup: :freegeoip,      # name of IP address geocoding service (symbol)
  language: :en,              # ISO-639 language code
  # use_https: false,           # use HTTPS for lookup requests? (if supported)
  # http_proxy: nil,            # HTTP proxy server (user:pass@host:port)
  # https_proxy: nil,           # HTTPS proxy server (user:pass@host:port)
  api_key: 'AIzaSyCqTDP7tm0YNYp8wsQdkzGXz88OBQ_WVR0',               # API key for geocoding service
  # cache: nil,                 # cache object (must respond to #[], #[]=, and #del)
  # cache_prefix: 'geocoder:',  # prefix (string) to use for all cache keys

  # Exceptions that should not be rescued by default
  # (if you want to implement custom error handling);
  # supports SocketError and Timeout::Error
  # always_raise: [],
  # cache: REDIS,
  # always_raise: [
  #   Geocoder::OverQueryLimitError,
  #   Geocoder::RequestDenied,
  #   Geocoder::InvalidRequest,
  #   Geocoder::InvalidApiKey
  # ]

  # Calculation options
  units: :mi,                 # :km for kilometers or :mi for miles
  # distances: :linear          # :spherical or :linear
)