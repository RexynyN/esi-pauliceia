class SearchPlacePage < SitePrism::Page

  set_url ""
  element :navMap, :xpath, "//*[@id='navbarCollapse']/ul/li[2]/a"
  element :closeModal, :xpath, "//*[@id='app']/section/div/section/div/section[3]/header/button/i"
  element :inputPlace, :xpath, "//*[@id='app']/section/div/section/div/section[1]/form/div/div[1]/div/input"
  element :buttonSearch, :xpath, "//*[@id='app']/section/div/section/div/section[1]/form/div/div[2]/button"
  

  def searchPlace(place)
    navMap.click()
    closeModal.click()
    inputPlace.set(place)
    buttonSearch.click()
  end

end