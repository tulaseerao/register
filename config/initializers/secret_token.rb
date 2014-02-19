# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Register::Application.config.secret_key_base = '42f822dd4fdf09fa0663ef8c8dac9260dfc309b782a44c41db778d02f28fb2387f0e514076ff6db986df8d7c64590dc56517d32764fc86db53ef10460c958355'
