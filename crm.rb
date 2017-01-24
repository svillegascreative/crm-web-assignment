require_relative "contact"
require "sinatra"

# TEST
jose = Contact.create("Jose", "Bautista", "joeybats19@fake.email", "Flippin' bats for your playoff enjoyment!")
edwin = Contact.create("Edwin", "Encarnacion", "edwin@fake.email", "Walking the parrot...in Cleveland. So sad. :\(")
pillar = Contact.create("Kevin", "Pillar", "kevin.pillar@fake.email", "Catch all the things!")
tulo = Contact.create("Troy", "Tulowitzki", "tulo@fake.email", "Nothing gets by this guy!")
stro = Contact.create("Marcus", "Stroman", "stro@fake.email", "Welcome to the Stro-show! HDMH.")

get "/" do
  @crm_app_name = "sylvia's CRM"
  erb :index
end

get "/contacts" do
  erb :contacts
end

get "/contacts/new" do
  erb :new_contact
end
