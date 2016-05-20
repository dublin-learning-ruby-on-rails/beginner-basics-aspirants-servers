class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :host
      t.string :session_id

      t.timestamps null: false
    end
  end
end
