class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
    #Long-hand form of declaring column
      t.column "first_name", :string, :limit => 25
    #Short-hand from of declaring column
    #We can omit the column because it is going to be column anyway
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40

    #Rails is automatically going to populate and update the column
    #with these names
    #  t.datetime "created_at"
    #  t.datetime "updated_at"
    #Short-hand of above
      t.timestamps
    end
  end

  def down
  	drop_table :users
  end
end
