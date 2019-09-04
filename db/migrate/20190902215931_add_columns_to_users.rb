class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :occupation, :string
    add_column :users, :job_description, :string
    add_column :users, :skills, :string
    add_column :users, :years_of_experience, :integer
    add_column :users, :image, :string
  end
end
