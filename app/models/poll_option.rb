# frozen_string_literal: true

class PollOption < ApplicationRecord
  belongs_to :poll

  def percentage
    (votes.to_f / poll.all_votes.to_f * 100.0).round(2)
  end
end
