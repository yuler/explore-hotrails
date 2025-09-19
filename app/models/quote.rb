class Quote < ApplicationRecord
    validates :name, presence: true

    default_scope { order(created_at: :desc) }

    broadcasts_to ->(quote) { "quotes" }, inserts_by: :prepend
end
