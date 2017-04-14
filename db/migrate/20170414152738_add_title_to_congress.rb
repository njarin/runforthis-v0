class AddTitleToCongress < ActiveRecord::Migration
  def change
    add_column :congress_members, :title, :string
  end
end
