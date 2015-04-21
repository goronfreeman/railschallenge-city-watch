class FixColumnNames < ActiveRecord::Migration
  def change
    rename_column :responders, :on_duty?, :on_duty
    rename_column :responders, :assigned?, :assigned
  end
end
