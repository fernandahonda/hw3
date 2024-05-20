class EntriesController < ApplicationController
  def index
    @place = Place.find_by({"id" => params["place_id"]})
    @entries = Entry.where({"place_id" => params["place_id"]})
  end

  def new
    # render view with new entry form
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  def create
    # start with a new item
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = Date.today
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/places/" + params["place_id"]
  end

end
