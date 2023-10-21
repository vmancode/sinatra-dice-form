require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:elephant)
end


get("/process_roll") do
  pp params

  @num_dice = params.fetch("dice").to_i
  @num_side = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    @rolls.push(rand(1..@num_side))
  end

  erb(:results)


  end
