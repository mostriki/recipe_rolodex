# _Recipe Box_

#### _An independent project exploring database basics in Ruby, 09.27.2017_

#### By _Riki Montgomery and Noah Gottlieb_

## Description

_Build an internal website to track recipes._

## Specs

| Description                                                            | Input                   | Output                                                                      |
|------------------------------------------------------------------------|-------------------------|-----------------------------------------------------------------------------|
| Category contains a string for tag.                                    |                         |                                                                             |
| Recipe contains a string for title and integer (1-10) for rating.      |                         |                                                                             |
| Instructions contains a string for step and an integer for id_recipes. |                         |                                                                             |
| Ingredients contains a string for name.                                |                         |                                                                             |
| Add a recipe with ingredients.                                         | Dawson's homemade curry | "Dawson's Homemade Curry"                                                   |
| Add a recipe with instructions.                                        | Dawson's homemade curry | "Dawson's Homemade Curry, Step 1: Pour a glass of wine for yourself."       |
| Tag recipes with different categories.                                 | Indian                  | Indian                                                                      |
| Update and delete tags.                                                | Indian                  | Vegan                                                                       |
| Update and delete recipes.                                             | Dawson's homemade curry | "Dawson's Homemade Curry, 7""Veronica's Salted Chocolate Chip Cookies"      |
| Rate recipes.                                                          | Dawson's homemade curry | "Dawson's Homemade Curry, 7"                                                |
| List my recipes by highest rated.                                      | 7, 10                   | "Veronica's Salted Chocolate Chip Cookies, 10" "Dawson's Homemade Curry, 7" |
| See all recipes that use a certain ingredient.                         | Butter                  | "Veronica's Salted Chocolate Chip Cookies"                                  |

## Setup/Installation Requirements

1. _`$ git clone` [...](...)_

2. _`$ cd volunteer_tracker/`_

3. _`$ ruby app.rb`_

4. _Open [http://localhost:4567/](http://localhost:4567/) in your favorite web browser._

5. _You can also try the app on [heroku](...)._

## Support and contact details

_If you have any updates or suggestions please contact me or make a contribution to my repository._

### License

MIT License

Copyright (c) 2017 Riki Montgomery and Noah Gottlieb
