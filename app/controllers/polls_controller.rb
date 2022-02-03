# frozen_string_literal: true

class PollsController < ApplicationController
  def index
    @poll = Poll.where(finished_at: nil).last
    @poll_options = @poll.poll_options.order(:name)
  end
end
