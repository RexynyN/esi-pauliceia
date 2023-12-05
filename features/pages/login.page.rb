class LoginPage < SitePrism::Page
    set_url "/portal/login"
    element :emailField, :xpath, "//*[@id='app']/section/div/div/section/div[1]/div/form/div[1]/input"
    element :passwordField, :xpath, "//*[@id='app']/section/div/div/section/div[1]/div/form/div[2]/input"
    element :loginButton, :xpath, "//*[@id='app']/section/div/div/section/div[1]/div/form/div[3]/button"

    def userLogin(email, pwd)
        emailField.set(email)
        passwordField.set(pwd)
        loginButton.click 
    end
end 