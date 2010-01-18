# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_myrestfulie-test_session',
  :secret      => 'b35bbb65122a64098b7f3c316571c6d1581690449f39bf3b820bd37e369a5bcfded6fd5e3f1901cb0aa77338c40ff1b290870acc74bd6c24f96916283e24ca55'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
