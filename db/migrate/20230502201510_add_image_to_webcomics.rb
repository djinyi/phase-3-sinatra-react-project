class AddImageToWebcomics < ActiveRecord::Migration[6.1]
  def change
    add_column :webcomics, :image, :string
  end
end
