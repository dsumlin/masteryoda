class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :content
      t.string :user_id
 

      t.timestamps
    end
      add_index :blogposts, :user_id
  end
    
    def self.down
    drop_table :blogposts
    
end

    
    
end
