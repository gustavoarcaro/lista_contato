class Contact < ApplicationRecord

validates :name, presence: true, length: { maximum: 58}
validates :phone, presence: true

belongs_to :user

end
