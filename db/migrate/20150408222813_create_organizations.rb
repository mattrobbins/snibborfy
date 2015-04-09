class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :company_name
      
      t.timestamps null: false
    end
  end
end
