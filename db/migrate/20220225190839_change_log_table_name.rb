class ChangeLogTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :log_ids, :log_entries
  end
end
