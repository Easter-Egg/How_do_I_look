# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post = Post.new
post.pname = "김태우"
post.content = "안녕하세요"
post.pwd = "1234"
post.save

post = Post.new
post.pname = "김태우2"
post.content = "안녕하세요2"
post.pwd = "12342"
post.save

post = Con12like.new
post.count = 0
post.save