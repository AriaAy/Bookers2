class RenameOpiniColumnToBooks < ActiveRecord::Migration[6.1]
  
  def change
    # booksテーブルのカラム名opiniをbodyに変更
    rename_column :books, :opini, :body
  end
  
end
