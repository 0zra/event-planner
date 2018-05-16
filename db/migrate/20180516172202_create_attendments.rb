class CreateAttendments < ActiveRecord::Migration[5.1]
  def change
    create_table :attendments do |t|

      t.timestamps
    end
  end
end
