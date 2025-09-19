class Quote < ApplicationRecord
    belongs_to :company
    
    validates :name, presence: true

    default_scope { order(created_at: :desc) }

    broadcasts_to ->(quote) { [quote.company, "quotes"] }, inserts_by: :prepend
end
