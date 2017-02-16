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

  User has many meals
  meal has many foods
  user has many foods through meals


nested meal example
{
  :meal => {
    :meal_time => "Breakfast",
    :meal_attributes => {
      "0" => {
        :food_name => "Chickfila 4 Count Chicken Minis",
        :serving_size => "1 container (4 count)",
        :num_servings => 1,
        :calories => 370,
        :fat => 14,
        :saturated_fat => 4,
        :polunsaturated_fat => 0,
        :monounsaturated_fat => 0,
        :trans_fat => 0,
        :cholesterol => 55,
        :sodium => 900,
        :potassium => 0,
        :carbs => 40,
        :fiber => 2,
        :sugars => 8,
        :protein => 20,
        :vitamin_a => 2,
        :vitamin_c => 0,
        :calcium => 0,
        :iron => 30
      },
      "1" => {
        :food_name => "Chickfila Hashbrowns",
        :serving_size => "1 container",
        :num_servings => 1,
        :calories => 240,
        :fat => 15,
        :saturated_fat => 2.5,
        :polunsaturated_fat => 0,
        :monounsaturated_fat => 0,
        :trans_fat => 0,
        :cholesterol => ,
        :sodium => 400,
        :potassium => 0,
        :carbs => 25,
        :fiber => 2,
        :sugars => 0,
        :protein => 2,
        :vitamin_a => 0,
        :vitamin_c => 2,
        :calcium => 2,
        :iron => 30
      },
    }
  }

}

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

# Controllers

Workouts controller
  
  def new
  end

  def create
  end

  def show
    - planning to use a partial for the show page so that the same information can be displayed on the "profile" page.
  end

  def edit
  end

  def update
  end

  def destroy
  end

end