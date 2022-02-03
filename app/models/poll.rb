# frozen_string_literal: true

class Poll < ApplicationRecord
    has_many :poll_options

    def all_votes
        poll_options.sum(:votes)
    end
end
