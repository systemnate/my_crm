class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.text :body
      t.integer :time_spent
      t.string :client
      t.string :status
      t.string :product
      t.references :user, index: true

      t.timestamps
    end
  end
end
