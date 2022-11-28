class UserResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  self.devise_password_optional = true
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :email, as: :text
  field :name, as: :text
  field :password, as: :password, name: "User Password", required: false, except_on: :forms, help: 'You may verify the password strength <a href="http://www.passwordmeter.com/" target="_blank">here</a>.'
  field :password_confirmation, as: :password, name: "Password confirmation", required: false, only_on: :new
  # add fields here
end
