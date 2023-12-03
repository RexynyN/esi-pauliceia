class HomePage < SitePrism::Page
    element :userName, :id, "global-nav"
    element :navBarHome, :id, "navbarCollapse"
    element :myIcon, :xpath, "ember31"

    def checkLoginSuccessful
        expect(navBarHome.text).to be_truthy
        # expect(navBarHome.text).to eql "Inicio"
        # expect(myIcon.text).to eql "Eu"
        
    end

    def checkNavMapSuccessful
        expect(navBarHome.text).to be_truthy
    end

end