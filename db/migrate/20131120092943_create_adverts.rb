class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :unit
      t.string :title
      t.text :description
      t.text :content
      t.boolean :draft, default: true
      t.boolean :archive, default: false
      t.boolean :admin_ads, default: false 

      t.timestamps
    end
  end
end
