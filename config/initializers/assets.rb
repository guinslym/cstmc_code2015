# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( mixitup.css )
Rails.application.config.assets.precompile += %w( main.js )
Rails.application.config.assets.precompile += %w( mixitup.js )
Rails.application.config.assets.precompile += %w( elevatezoom.js )
Rails.application.config.assets.precompile += %w( modernizer.js )
Rails.application.config.assets.precompile += %w( cody.css )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
