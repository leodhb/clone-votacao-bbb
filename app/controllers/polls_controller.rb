# frozen_string_literal: true

class PollsController < ApplicationController
  before_action :set_poll_options, only: %i[index ranking]

  def index; end

  def vote
    @poll_option = PollOption.find(params[:poll_option_id])
    @poll_option.increment!(:votes)

    respond_to do |format|
      format.turbo_stream { render :vote }
    end
  end

  def ranking
    @poll_options.order(:votes)

    respond_to do |format|
      format.turbo_stream { render :ranking }
    end
  end

  def set_poll_options
    @poll = Poll.where(finished_at: nil).last
    @poll_options = @poll.poll_options.order(:name)
  end
end
