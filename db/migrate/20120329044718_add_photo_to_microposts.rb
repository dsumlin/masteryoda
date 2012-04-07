class AddPhotoToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :photo_file_name, :string

    add_column :microposts, :photo_content_type, :string

    add_column :microposts, :photo_file_size, :integer

  end
end
