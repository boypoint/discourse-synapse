# name: discourse-synapse
# about: Login 
# version: 0.0.1
# authors: Sebastian Hädrich
# url: https://github.com/boypoint/discourse-synapse

after_initialize do
  module ::DiscourseSynapse
	  puts PostCreator.inspect
  end
end
 
