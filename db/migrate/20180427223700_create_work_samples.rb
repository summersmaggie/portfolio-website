class CreateWorkSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :work_samples do |t|
      t.column :title, :string
      t.column :body, :string
      t.column :category, :string
      t.column :date, :timestamp
    end
  end
end
