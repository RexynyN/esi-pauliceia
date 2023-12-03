class LoginPage < SitePrism::Page

    set_url ""
    element :emailField, :id, "session_key"
    element :passwordField, :id, "session_password"
    element :loginButton, :xpath, "//*[@id='main-content']/section[1]/div/div/form/div[2]/button"

    def userLogin(email, pwd)
        emailField.set(email)
        passwordField.set(pwd)
        loginButton.click 
    end
end