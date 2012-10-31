class AddTitleBodyToPeople < ActiveRecord::Migration  
  def change
    add_column :people, :title, :string
    add_column :people, :body, :text

  end
end
