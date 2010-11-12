class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title, :null => false
      t.string :body, :null => false
      t.string :state, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end

