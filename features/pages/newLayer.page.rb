class NewLayerPage < SitePrism::Page

    set_url "/portal/dashboard/newLayer"

    element :nameInput, :id, "inputName"
    element :keywordsInput, :xpath,"//*[@id='keywordsSelect']/div/div[1]/input"
    element :descriptionInput, :id,"inputDescription"
    element :referenceInput, :id,"inputReference"

    element :sendZip, :xpath, "//*[@id='app']/section/div/div/main/div/div/div/div[1]/div/div/form/div[2]/button"

    element :error, :xpath, "/html/body/div[3]/i[1]"

    def name(value)
        @name = value
    end

    def keywords(value)
        @keywords = value
    end

    def description(value)
        @description = value
    end

    def reference(value)
        @reference = value
    end
    
    def sendForm
        puts(@name, @keywords, @description, @reference)
        attach_file('Upload', File.absolute_path('./features/static/test.zip'))
        nameInput.set(@name)
        keywordsInput.set(@keywords)
        descriptionInput.set(@description)
        referenceInput.set(@reference)
        sendZip.click
    end

    def checkForm
        expect(error).to be_truthy
    end
end


