class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
