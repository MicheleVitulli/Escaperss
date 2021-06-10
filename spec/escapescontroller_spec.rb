require 'rails_helper.rb'
describe EscapesController, type: :controller do
    fixtures :all

    
    #Normal User
    context "with user privileges" do
        before :each do
            user = users(:escaper)
            sign_in user
        end
        it "should not create escapes" do
            params = {:escape => {:Luogo => "Game Over", :Stanza => "Atlantide", :Descrizione => "null"}}
            get :create, :params => params
            esc = Escape.where(:Luogo => "Game Over", :Stanza => "Atlantide")
            expect(esc).to be_empty
        end
    end

    #Admin
    context "with admin privileges" do
        before :each do
            admin = users(:admin)
            sign_in admin
        end
        it "should  create escapes" do
            params = {:escape => {:Luogo => "Game Over", :Stanza => "Atlantide", :Descrizione => "null"}}
            get :create, :params => params
            esc = Escape.where(:Luogo => "Game Over", :Stanza => "Atlantide")
            expect(esc).not_to be_empty
        end
    end
    
end
