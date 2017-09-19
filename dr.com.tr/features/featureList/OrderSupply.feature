Feature: Order a book from website

  Scenario: Login the website
    When I go to website
    Then open the Login page
    And enter the username and password
    | *******|  *******  |
    And click the Login button

  Scenario: Search products on Product Search
    When I enter the keyword of product
     |  Keyword | Roman |
    And click the search button
   Then products should be shown on screen "Roman"

  Scenario: Choose a book and add to cart
    When Find specified book
      |  Name       | Tarih ve Roman  |
      |  Author     | Hülya Argunşah  |
      |  Publisher  | Kesit Yayınları |
#    And Add to cart
