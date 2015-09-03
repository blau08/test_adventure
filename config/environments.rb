configure :production, :development do
	db = URI.parse(ENV['postgres://jbjucbkxuihwuy:-E-bxPgBaRHQcQc78jBcBiQR5g@ec2-54-235-151-252.compute-1.amazonaws.com:5432/d5qdigb5050cl5'] || 'postgres://localhost/app_development')
ActiveRecord::Base.establish_connection(
  adapter: db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  host: db.host,
  username: db.user,
  password: db.password,
  database: db.path[1..-1],
  encoding: 'utf8'
)
end
