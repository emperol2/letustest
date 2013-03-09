class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects, :id => true do |t|
      t.string :name
      t.string :url
      t.text :info

      t.timestamps
    end
  end
end
