class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  # layout "layout_aplication", only: [:home]

  def index
  end

  def home
  end

  def contacto
  end

  def nosotros
  end
end
