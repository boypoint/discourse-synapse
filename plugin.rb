# name: discourse-synapse
# about: Login
# version: 1.0.3
# authors: Sebastian Hädrich, boypoint.de
# url: https://github.com/boypoint/discourse-synapse

after_initialize do
  load File.expand_path('../app/controllers/synapseAuth_controller.rb', __FILE__)

  Discourse::Application.routes.append do
    post '/_matrix-internal/identity/v1/check_credentials' => 'synapseauth#index'
  end

end
