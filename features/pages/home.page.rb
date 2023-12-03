class HomePage < SitePrism::Page
    element :userName, :id, "global-nav"
    element :navBarHome, :id, "navbarCollapse"
    element :myIcon, :xpath, "ember31"
    element :canvas, :xpath, "//*[@id='app']/section/div/section/div/div[6]/canvas"

    def checkLoginSuccessful
        expect(navBarHome.text).to be_truthy
        # expect(navBarHome.text).to eql "Inicio"
        # expect(myIcon.text).to eql "Eu"
        
    end

    def checkNavMapSuccessful
        expect(navBarHome.text).to be_truthy
    end

    def checkSearchPlaceSuccessful
        expect(canvas.text).to be_truthy
    end

end