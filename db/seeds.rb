["users", "posts", "comments", "likes"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
},{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
}, {
  username: "ed",
  email: "ed@gmail.com",
  password: "password",
  password_confirmation: "password"
}])

Post.create!([{
  caption: "Catching the train for Paddington today",
  image: "http://fillmurray.com/200/200",
  user_id: 2
  }, {
  caption: "Catching the train for Kings Cross today",
  image: "http://fillmurray/200/200",
  user_id: 3
  }, {
  caption: "Can't wait to get on a train",
  image: "http://fillmurray/200/200",
  user_id: 1
}])

Comment.create!([{
  body: "Have a nice train journey",
  user_id: 2,
  post_id: 1
}])

Like.create!([{
    user_id: 1,
    post_id: 1
}])

puts "Seeds file ran A OK!!"
