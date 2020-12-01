# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Post.new
p1.title = "title1"
p1.content = "content1"
p1.category = Category.first
p1.save

p2 = Post.new
p2.title = "title2"
p2.content = "content2"
p2.category = Category.first
p2.save

# category
c1 = Category.first
puts c1.posts
