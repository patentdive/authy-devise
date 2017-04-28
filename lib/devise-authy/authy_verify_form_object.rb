module DeviseAuthy
  class AuthyVerifyFormObject
    include ActiveModel::Model
    attr_accessor(
      :token,
      :remember_device
    )
    validates :token, presence: true
  end
end
