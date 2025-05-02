class Chat < ApplicationRecord
    belongs_to :sender, class_name: 'User'
    belongs_to :receiver, class_name: 'User'
  
    has_many :messages, dependent: :destroy

    validates :sender_id, presence: true
    validates :receiver_id, presence: true
    validate :different_sender_receiver
  
    private
  
    def different_sender_receiver
        if sender_id == receiver_id
            errors.add(:receiver_id, "must be different from sender")
        end
    end
end

  