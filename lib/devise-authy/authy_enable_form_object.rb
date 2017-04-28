module DeviseAuthy
  class AuthyEnableFormObject
    include ActiveModel::Model
    attr_accessor(
      :country_code,
      :cellphone
    )
    validates :country_code, presence: true
    validates :cellphone, presence: true
  end
end
