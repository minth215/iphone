class Post < ActiveRecord::Base
  has_many :comments
  validates :title, presence: {message: "제목을 입력해 주세요."}
end
