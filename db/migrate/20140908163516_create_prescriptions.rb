class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :patients_id, null: false
      t.string :medication_name, null: false
    end
  end
end
