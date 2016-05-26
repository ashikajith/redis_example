class Category
  include Mongoid::Document
  field :name, type: String
  field :desc, type: String
  field :page_title, type: String

  after_save :clear_cache

  def clear_cache
    $redis.del "categories"
  end

end
