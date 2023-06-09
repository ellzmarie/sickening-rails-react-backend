# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Events.destroy_all

10.times do
Event.create(
  event_title: "Drag Storytime",
  image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.orilliamatters.com%2Flocal-news%2Fpopular-drag-queen-story-time-sashays-into-orillia-library-5468681&psig=AOvVaw2K_ZXerZGith4lm2mBv4bc&ust=1678696062139000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCIjbuqX81f0CFQAAAAAdAAAAABAF",
  description: "Sashay to the books!"
)

Event.create(
  event_title: "Drag Brunch",
  image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dragqueenentertainment.com%2Fevents%2Fbrunchisadragdb111322&psig=AOvVaw3y_gdcAY3PFmoHjmGIDFNt&ust=1678696377961000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLjTk7z91f0CFQAAAAAdAAAAABBO",
  description: "Brunch is a Drag!"
)

Event.create(
  event_title: "Drag Trivia",
  image: "https://www.postermywall.com/index.php/posterbuilder/copy/1c9fa6ce9cfa7d8afb2409d0d305c443",
  description: "Games + Fun + Prizes!"
)
end

# p "Created #{Events.count} events"