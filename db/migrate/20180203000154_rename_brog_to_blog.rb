class RenameBrogToBlog < ActiveRecord::Migration[5.0]
  def change
    rename_column :blogposts, :broggenre_id , :bloggenre_id
  end
end
