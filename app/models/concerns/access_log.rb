class AccessLog
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :id, :integer
  attribute :name, :string
  attribute :price, :string
  attribute :image, :string
  attribute :regist, :string

  class << self
    def all
      AccessLogApi.search
    end
  end

end