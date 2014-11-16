class PagesController < ApplicationController
  before_action :set_page, :only => [:show]  

  def show
    if @file
      send_data @file.raw_data, type: "image/png"
      return
    end

    if @page && @page.escaped_url_path != params[:url]

      redirect_to "/pages/#{@page.escaped_url_path}"
      return
    end
  end

  private

  def set_page
    @wiki = Gollum::Wiki.new(Rails.root.join("wiki-data"), :base_path => "/pages")

    params[:url] ||= "Home"

    if params[:format]
      @file = @wiki.file(params[:url]+"."+params[:format])
    else
      @page = @wiki.page(params[:url].split("/").last)
    end
  end
end
