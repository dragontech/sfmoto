helpers do

end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

ready do
  sprockets.append_path 'vendor'
end

activate :livereload

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
  activate :relative_assets
  # activate :favicon_maker,
  # :favicon_maker_base_image => "favicon_base.svg"
end

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.host   = "www.sfmoto.ro"
  deploy.user   = "mihai"
  deploy.path   = "/srv/www/sfmoto.ro/current/public_html"
  # Optional Settings
  deploy.port  = 60000
  deploy.clean = true
  deploy.build_before = true
end
