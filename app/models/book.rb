class Book < ApplicationRecord
  
  # userモデルをアソシエージョン
  belongs_to :user
  
end
