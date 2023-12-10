class HomePage < SitePrism::Page
    set_url "/portal/explore"
    element :navBarHome, :id, "navbarCollapse"
    element :loginIcon, :xpath, "//*[@id='navbarCollapse']/div[1]/div/button/div/div/div"
    element :canvasLegend, :xpath, "//*[@id='app']/section/div/section/div/section[2]/p[1]/img"
    element :contentSlider, :id, "contentSlider"
    
    # inglês 
    element :layerI, :xpath, "//*[@id='app']/section/div/section/div/div[2]/section/div/span"
    element :addressI, :xpath, "//*[@id='app']/section/div/section/div/section[1]/header/h1"
    element :tooltipI, :xpath, "//*[@id='app']/section/div/section/div/div[2]/section/ul/section/div/div/div/div/span"
    element :contactI, :xpath, "//*[@id='navbarCollapse']/ul/li[5]/a"
    element :searchI, :xpath, "//*[@id='app']/section/div/section/div/section[1]/form/div/div[2]/button"
    element :button, :xpath, "//*[@id='navbarCollapse']/div[2]/i[2]"

    # mapa
    element :buttonLayer, :xpath, "//*[@id='app']/section/div/section/div/div[2]/p"
    element :check1, :xpath, "//*[@id='app']/section/div/section/div/div[2]/section/ul/section/section[2]/div[1]/div"
    element :check2, :xpath, "//*[@id='app']/section/div/section/div/div[2]/section/ul/section/section[2]/div[2]/div"
    
    def clickEnglish
        button.click
    end

    def clickMap
        buttonLayer.click
        if !find(:xpath, "//*[@id='app']/section/div/section/div/div[2]/section/ul/section/section[2]/div[1]/div/input").checked?
            check1.click
        end

        check2.click
    end

    def checkMapLoad
        expect(find(:xpath, "//*[@id='app']/section/div/section/div/div[2]/section/ul/section/section[2]/div[2]/div/input").checked?).to eql true
    end
    
    def checkMap
        expect(find(:xpath, "//*[@id='app']/section/div/section/div/div[2]/section/ul/section/section[2]/div[1]/div/input").checked?).to eql false 
    end

    def checkLoginSuccessful
        # Ícone do usuário do canto superior direito quando está logado
        expect(loginIcon).to be_truthy
    end

    def checkNavMapSuccessful
        # Slider que dá o range de datas
        expect(contentSlider).to be_truthy
    end

    def checkSearchPlaceSuccessful
        # Legenda do mapa, que é renderizado caso um item foi achado com sucesso
        expect(canvasLegend).to be_truthy
    end

    def checkEnglish
        expect(layerI.text).to eql "Layers"
        expect(addressI.text).to starting_with "Look for an Address:"
        expect(tooltipI.text).to eql "Add layers to the view on the map!"
        expect(contactI.text).to eql "Contact"
        expect(searchI.text).to eql "Search"
    end 

end