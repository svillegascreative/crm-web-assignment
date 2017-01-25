require_relative "contact"
require "sinatra"

# @@crm_app_name = "sylvia's CRM"  <----- In case you want to reuse a variable on several routes

get "/" do
  erb :index
end

get "/contacts" do
  erb :contacts
end

get "/contacts/new" do
  erb :new_contact
end

post "/contacts" do
  Contact.create(params[:first_name], params[:last_name], params[:email], params[:note])
  redirect to('/contacts')
end

get "/contacts/:id" do
  @contact = Contact.find(params[:id].to_i)
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

get '/contacts/:id/edit' do
  @contact = Contact.find(params[:id].to_i)
  if @contact
    erb :edit_contact
  else
    raise Sinatra::NotFound
  end
end
