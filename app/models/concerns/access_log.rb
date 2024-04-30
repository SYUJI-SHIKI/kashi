class AccessLog
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :price, :string
  attribute :image, :string

  class << self
    def all
      AccessLogApi.search
    end
  end

end