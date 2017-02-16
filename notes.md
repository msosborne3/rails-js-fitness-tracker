#Notes

Users who sign in/sign up/log out (devise)
Users can sign in with facebook (omniauth)

User includes devise attributes for logging in/out plus first_name, last_name, email, weight, height_inches, gender, age

profile page (user_path) will show user's journal

Journal includes a place to write down what workout happened for the day and optionally how many calories were burned.
Also includes food diary where you can log meals. Breakfast, lunch, dinner, snacks

  Workout needs to include a content, calories_burned, user_id
    Workout belongs_to a user; user has_many workouts

  Food diary needs to include meal (breakfast, lunch, dinner), nested attributes for names of food ites [name, serving size, number of servings, calories, fat, saturated_fat, polyunsaturated_fat, monounsaturated_fat, trans_fat, Cholesterol, Sodium, Potassium, Carbs, Fiber, Sugars, Protein, Vitamin A, Vitamin C, Calcium, Iron]


May add:
Community page will show "check in" posts from users
has a button to say "Good Job!" on posts.

posts belong_to user
user has_many posts
support belongs_to post, belongs_to user
post has_many support
user has_many support

post includes content, user_id
support includes user_id, post_id