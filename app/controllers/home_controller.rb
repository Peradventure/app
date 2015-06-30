class HomeController < ApplicationController
  before_action :set_situation, only: [:show]

  require 'Situation'

  # GET /index
  def index
    @situation = Situation.find(params[:id] ? params[:id] : 1)
    @last_situation = @situation.id
    @choice_1 = @situation.choice_1 ? @situation.choice_1 : "new?oid=#{@situation.id}"
    @choice_2 = @situation.choice_2 ? @situation.choice_2 : "new?oid=#{@situation.id}"
    @choice_1_label = @situation.choice_1 ? @situation.choice_1_label : "Create '#{@situation.choice_1_label}'"
    @choice_2_label = @situation.choice_2 ? @situation.choice_2_label : "Create '#{@situation.choice_2_label}'"
  end

end
