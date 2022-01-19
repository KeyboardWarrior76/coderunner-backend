class CreateExecutionResults < ActiveRecord::Migration[6.0]
  def change
    create_table :execution_results do |t|
      t.jsonb :stdout
      t.jsonb :return
      t.text :error
      t.float :run_time

      t.timestamps
    end
  end
end
