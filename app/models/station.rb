class Station < ApplicationRecord
    belongs_to :rent, optional: true
end