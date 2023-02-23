class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
    redirect to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
