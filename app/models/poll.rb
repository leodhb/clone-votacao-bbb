# frozen_string_literal: true

class Poll < ApplicationRecord
    has_many: :poll_options
end
