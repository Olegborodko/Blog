class CreatePublishes < ActiveRecord::Migration
  def change
    create_table :publishes do |t|
      t.string :title
      t.text :body
      t.string :user_name

      t.timestamps
    end
  end
end
