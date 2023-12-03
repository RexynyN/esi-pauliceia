class NavPage < SitePrism::Page

  set_url ""
  element :navMap, :xpath, "//*[@id='navbarCollapse']/ul/li[2]/a"
  element :navTutorial, :xpath, "//*[@id=navbarCollapse']/ul/li[3]/a"

  def clickNavMap()
    navMap.click
  end

  def clickNavTutotial()
    navTutorial.click
  end

end