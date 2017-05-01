class RegularController < ApplicationController
  def index
    raise Exception.new('Uh oh!')
  end
end
