class SynapseauthController < ApplicationController
  skip_before_action :verify_authenticity_token, :check_xhr

  def index
    return_msg = {"auth": {"success": false}};
    inputData = JSON.parse request.body.read;

    if(inputData['user'].present? && inputData['user']['id'].present? && inputData['user']['password'].present?)
      authUser = User.find_by_username(inputData['user']['id'].split(":")[0][1..-1].downcase);
      if(authUser.present? && authUser.confirm_password?(inputData['user']['password']) && authUser.trust_level >= 1)
        return_msg = {"auth": {"success": true, "mxid": inputData['user']['id'], "profile": {"display_name": authUser.username}}};
      end
    end

    render json: return_msg;
  end
end
