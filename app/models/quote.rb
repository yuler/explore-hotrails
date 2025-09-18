class Quote < ApplicationRecord
    validates :name, presence: true

    default_scope { order(created_at: :desc) }
end
