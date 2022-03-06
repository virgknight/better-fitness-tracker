# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BodyPart.destroy_all

biceps = BodyPart.create!(name: "biceps", category: "Upper body");
triceps = BodyPart.create!(name: "triceps", category: "Upper body");
chest = BodyPart.create!(name: "chest", category: "Upper body");
shoulders = BodyPart.create!(name: "shoulders", category: "Upper body");
lats = BodyPart.create!(name: "lats", category: "Upper body");
traps = BodyPart.create!(name: "traps", category: "Upper body");
abs = BodyPart.create!(name: "abs", category: "Core");
glutes = BodyPart.create!(name: "glutes", category: "Lower body");
quads = BodyPart.create!(name: "quads", category: "Lower body");
hamstrings = BodyPart.create!(name: "hamstrings", category: "Lower body");
calves = BodyPart.create!(name: "calves", category: "Lower body");