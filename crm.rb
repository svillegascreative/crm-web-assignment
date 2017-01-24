require "sinatra"

get "/" do
  @crm_app_name = "sylvia's CRM"
  erb :index
end

get "/contacts" do
  erb :contacts
end
