class AddAssocToRants < ActiveRecord::Migration
  def change
    change_table :rants do |t|
      t.belongs_to :user
    end
  end
end
