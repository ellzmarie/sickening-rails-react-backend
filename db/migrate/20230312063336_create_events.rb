class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_title
      t.string :image
      t.string :description
    end
  end
end
