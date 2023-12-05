class HomePage < SitePrism::Page
    set_url "/portal/explore"
    element :navBarHome, :id, "navbarCollapse"
    element :loginIcon, :xpath, "//*[@id='navbarCollapse']/div[1]/div/button/div/div/div"
    element :canvasLegend, :xpath, "//*[@id='app']/section/div/section/div/section[2]/p[1]/img"
    element :contentSlider, :id, "contentSlider"

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

end