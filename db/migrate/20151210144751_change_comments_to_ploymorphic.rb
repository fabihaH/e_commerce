class ChangeCommentsToPloymorphic < ActiveRecord::Migration
  def up
    remove_index :comments, :profile_id
    remove_column :comments, :profile_id
    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
  end

  def down
    remove_index :comments, :commentable_type
    remove_column :comments, :commentable_id

    add_column :comments, :profile_id, :integer
    #add_index :comments, :profile_id, :integer
  end
end
