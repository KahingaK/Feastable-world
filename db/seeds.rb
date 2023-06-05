# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# USERS
user1 = User.create(name: 'Ivan', username: 'kahinga', email: 'ikahinga@gmail.com', password: 'password', gender: 'Male')
user2 = User.create(name: 'Zamil', username: 'zaiky09', email: 'zam@gmail.com', password: '123456', gender: 'Male')

# RECIPES
recipe1 = Recipe.create(title:'Spicy Arrabiata Penne', description:'Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.In a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil.Drain the pasta and add it to the sauce. Garnish with Parmigiano-Reggiano flakes and more basil and serve warm.', ingredients:'penne rigate,olive oil,garlic,chopped tomatoes,red chile flakes,italian seasoning,basil,Parmigiano-Reggiano', image_url:'https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg', user_id:1)
recipe2 = Recipe.create(title:'Salmon Avocado Salad', description:'Season the salmon, then rub with oil. Mix the dressing ingredients together. Halve, stone, peel and slice the avocados. Halve and quarter the cucumber lengthways, then cut into slices. Divide salad, avocado and cucumber between four plates, then drizzle with half the dressing.Heat a non-stick pan. Add the salmon and fry for 3-4 mins on each side until crisp but still moist inside. Put a salmon fillet on top of each salad and drizzle over the remaining dressing. Serve warm.', ingredients:'Salmon,Avocado,Cucumber,Spinach,Mint,Lime,Honey,Olive Oil', image_url:'https://www.themealdb.com/images/media/meals/1549542994.jpg', user_id:1)
recipe3 = Recipe.create(title:'French Omelette', description:'Get everything ready. Warm a 20cm (measured across the top) non-stick frying pan on a medium heat. Crack the eggs into a bowl and beat them with a fork so they break up and mix, but not as completely as you would for scrambled egg. With the heat on medium-hot, drop one knob of butter into the pan. It should bubble and sizzle, but not brown. Season the eggs with the Parmesan and a little salt and pepper, and pour into the pan.Let the eggs bubble slightly for a couple of seconds, then take a wooden fork or spatula and gently draw the mixture in from the sides of the pan a few times, so it gathers in folds in the centre. Leave for a few seconds, then stir again to lightly combine uncooked egg with cooked. Leave briefly again, and when partly cooked, stir a bit faster, stopping while there is some barely cooked egg left. With the pan flat on the heat, shake it back and forth a few times to settle the mixture. It should slide easily in the pan and look soft and moist on top. A quick burst of heat will brown the underside.Grip the handle underneath. Tilt the pan down away from you and let the omelette fall to the edge. Fold the side nearest to you over by a third with your fork, and keep it rolling over, so the omelette tips onto a plate or fold it in half, if that is easier. For a neat finish, cover the omelette with a piece of kitchen paper and plump it up a bit with your fingers. Rub the other knob of butter over to glaze. Serve immediately.', ingredients:'Eggs,Butter,Parmesan,Tarragon,Parsley,Chives,Gruyère', image_url:'https://www.themealdb.com/images/media/meals/yvpuuy1511797244.jpg', user_id:2)
recipe4 = Recipe.create(title:'Ful Medames', description:'As the cooking time varies depending on the quality and age of the beans, it is good to cook them in advance and to reheat them when you are ready to serve. Cook the drained beans in a fresh portion of unsalted water in a large saucepan with the lid on until tender, adding water to keep them covered, and salt when the beans have softened. They take 2 to 2 1/2 hours of gentle simmering. When the beans are soft, let the liquid reduce. It is usual to take out a ladle or two of the beans and to mash them with some of the cooking liquid, then stir this back into the beans. This is to thicken the sauce.Serve the beans in soup bowls sprinkled with chopped parsley and accompanied by Arab bread.\r\nPass round the dressing ingredients for everyone to help themselves: a bottle of extra-virgin olive oil, the quartered lemons, salt and pepper, a little saucer with the crushed garlic, one with chili-pepper flakes, and one with ground cumin.\r\nThe beans are eaten gently crushed with the fork, so that they absorb the dressing.Optional Garnishes.Peel hard-boiled eggs, 1 per person, to cut up in the bowl with the beans.Top the beans with a chopped cucumber-and-tomato salad and thinly sliced mild onions or scallions. Otherwise, pass round a good bunch of scallions and quartered tomatoes and cucumbers cut into sticks.Serve with tahina cream sauce or salad, with pickles and sliced onions soaked in vinegar for 30 minutes.Another way of serving ful medames is smothered in a garlicky tomato sauce.In Syria and Lebanon, they eat ful medames with yogurt or feta cheese, olives, and small cucumbers.Variations.A traditional way of thickening the sauce is to throw a handful of red lentils (1/4 cup) into the water at the start of the cooking.In Iraq, large brown beans are used instead of the small Egyptian ones, in a dish called badkila, which is also sold for breakfast in the street.', ingredients:'Broad Beans,Parsley,Olive Oil,Lemons,Garlic Clove,Cumin', image_url:'https://www.themealdb.com/images/media/meals/lvn2d51598732465.jpg', user_id:2)
recipe5 = Recipe.create(title:'Chocolate Caramel Crispy', description:'Grease and line a 20 x 20cm/8\ x 8\ baking tin with parchment paper.Put the mars bars and butter in a heat proof bowl and place over a pan of barely simmering water. Mixing with a whisk, melt until the mixture is smooth.Pour over the rice krispies in a mixing bowl and mix until all the ingredients are evenly combined. Press evenly into the prepare baking tin and set aside.\r\nMelt the milk chocolate in the microwave or over a pan of barely simmering water.Spread the melted chocolate over the rice krispie mixture and leave to set in a cool place. Once set slice into squares and serve!', ingredients:'Mars Bar,Butter,Rice Krispies,Milk Chocolate', image_url:'https://www.themealdb.com/images/media/meals/1550442508.jpg', user_id:1)

# TAGS
tag1 = Tag.create(name:'Pasta')
tag2 = Tag.create(name:'Chicken')
tag3 = Tag.create(name:'Beef')
tag4 = Tag.create(name:'SeaFood')
tag5 = Tag.create(name:'Vegetarian')
tag6 = Tag.create(name:'Salad')
tag7 = Tag.create(name:'Snack')


# RECIPE-TAGS
RecipeTag.create(recipe: recipe1, tag: tag1)
RecipeTag.create(recipe: recipe1, tag: tag5)
RecipeTag.create(recipe: recipe2, tag: tag5)
RecipeTag.create(recipe: recipe2, tag: tag6)
RecipeTag.create(recipe: recipe4, tag: tag5)
RecipeTag.create(recipe: recipe5, tag: tag7)


# REVIEWS
review1 = Review.create(rating: 4, comment: "Amazing salad. The Avacados are a really good touch. Delicious", user_id:1 , recipe_id: 2)
review2 = Review.create(rating: 5, comment: "Quite a heavy meal. Large portions.Great taste.", user_id:2 , recipe_id: 1)
review3 = Review.create(rating: 4, comment: "Sweet.Great for people with a sweet tooth.", user_id:1 , recipe_id: 5)
review4 = Review.create(rating: 2, comment: "To spicy for my tastebuds.", user_id:1 , recipe_id: 1)
review5 = Review.create(rating: 5, comment: "Great for breakfast.", user_id:2 , recipe_id: 4)
