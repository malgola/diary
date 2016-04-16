class EntriesController < ApplicationController


  def index
    @entries = Entry.all
    render 'index'
  end

  def show
    @entry = Entry.all.find(params['id'])
    render 'show'
  end

  def new
    render 'new'
  end

  def create
    entry_params = params["entry"].permit("title", "contents")
    entry = Entry.create(entry_params)
    # render(:text => entry.id.inspect)
   redirect_to(entry_path(entry))
  end

  def edit
    @entry = Entry.find(params["id"])
  end

  def update
    binding.pry
    entry_params = params["entry"].permit("title", "contents")
    entry = Entry.find(params["id"])
    entry.update(entry_params)
    redirect_to(entry_path(entry.id))
  end

end
