class EntryLog < ApplicationRecord
  belongs_to :account

  after_create_commit -> { broadcast_append_to account }
end
