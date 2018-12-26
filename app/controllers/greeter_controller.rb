class GreeterController < ApplicationController
  def hello
    random_names = ["Susan", "Cathy", "Jimmy", "Dave", "Tiffany"]
    @name = random_names.sample
    @time = Time.now
    @times_visited ||= 0
    @times_visited += 1
  end
  def goodbye
    random_names = ["Susan", "Cathy", "Jimmy", "Dave", "Tiffany"]
    @name = random_names.sample
    @time = Time.now
  end
end
