class AddUserRelation < ActiveRecord::Migration
  def up
  		#add to DB in rake db migrate
  	add_column :posts, :user_id, :integer
  	add_column :comments, :user_id, :integer
  	add_column :comments, :post_id, :integer
  end

  def down
  		#delete from database rake db:rollback

  end
end
