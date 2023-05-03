class AddIntroductionToUsers < ActiveRecord::Migration[6.1]
  def change
    # 自己紹介文を保存するカラム（追加）
    add_column :users, :introduction, :text
  end
end
