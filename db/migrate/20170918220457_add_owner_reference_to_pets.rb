class AddOwnerReferenceToPets < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :pets, :owner, index: true, foreign_key: true
  end
end
