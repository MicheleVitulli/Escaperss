require 'rails_helper.rb'
describe EscapesController, type: :controller do
    fixtures :all

    it "should return two escapes" do
        adm = users(:admin)
        sign_in adm
        get :index
        expect(assigns(:escapes).size).to eql(2)
    end

    #Normal User
    context "with user privileges" do
        before :each do
            user = users(:user_1)
            sing_in user
        end
        it "should not create escapes" do
            params = {:escape => {:Luogo => "Game Over", :Stanza => "Atlantide", :Descrizione => "null"}}
            get :create, :params => params
            esc = Escape.where(:Luogo => "Game Over")
            expect(esc).to be_empty
        end
    end

    #Admin
    context "with admin privileges" do
        before :each do
            admin = users(:admin)
            sing_in admin
        end
        it "should  create escapes" do
            params = {:escape => {:Luogo => "Game Over", :Stanza => "Atlantide", :Descrizione => "null"}}
            get :create, :params => params
            esc = Escape.where(:Luogo => "Game Over")
            expect(esc).not_to be_empty
        end
    end
    
end
