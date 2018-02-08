class Test2 < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :sex, :text
  end
end
