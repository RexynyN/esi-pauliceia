require 'securerandom'

class ProfilePage < SitePrism::Page
    set_url "/portal/dashboard/profile"
    element :nameInput, :id, "inputName"
    element :usernameInput, :xpath, "//*[@id='app']/section/div/div/div[2]/div/div/div/form/div/div[2]/div[3]/input"
    element :submitButton, :xpath,  "//*[@id='app']/section/div/div/div[2]/div/div/div/form/div/div[3]/div/a"
    
    def initialize()
        # Cria um hex aleatório para ser um placeholder e comparar os nomes
        @name = SecureRandom.hex 
        @username = SecureRandom.hex 
    end
    
    def testNameChanges
        self.nameChanger(@name, @username)
    end

    def nameChanger(name, user)
        nameInput.set(name)
        usernameInput.set(user)
        submitButton.click
    end

    def has_secret_value?
        nameInput.value == @name and usernameInput.value == @username
    end
end