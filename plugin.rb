# name: discourse-synapse
# about: Login
# version: 0.0.1
# authors: Sebastian Hädrich
# url: https://github.com/boypoint/discourse-synapse

after_initialize do
  load File.expand_path('../app/controllers/synapseAuth_controller.rb', __FILE__)

  Discourse::Application.routes.append do
    post '/_matrix-internal/identity/v1/check_credentials' => 'synapseauth#index'
  end

end
