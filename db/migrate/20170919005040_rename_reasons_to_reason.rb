class RenameReasonsToReason < ActiveRecord::Migration[5.1]
  def change
    rename_column :appointments, :reasons, :reason
  end
end
