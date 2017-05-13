class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :family_name, :string
    add_column :users, :family_name_kana, :string
    add_column :users, :first_name, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :birthday, :integer
    add_column :users, :age, :integer
    add_column :users, :nickname, :string
    add_column :users, :profile, :text
    add_column :users, :sex, :string
  end
end
