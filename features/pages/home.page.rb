class HomePage < SitePrism::Page
    element :userName, :id, "global-nav"
    element :navBarHome, :xpath, "ember16"
    element :myIcon, :xpath, "ember31"

    def checkLoginSuccessful
        expect(userName.text).to be_truthy
        # expect(navBarHome.text).to eql "Inicio"
        # expect(myIcon.text).to eql "Eu"
        
    end

end