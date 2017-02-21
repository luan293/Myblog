# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.delete_all
Post.create(:title => 'bai1', :content => 'noi dung bai1', :img => 'img1')
Post.create(:title => 'bai2', :content => 'noi dung bai2', :img => 'img2')
Post.create(:title => 'bai3', :content => 'noi dung bai3', :img => 'img3')