class RestoreLocations < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :locations do |t|
        dir.down { t.remove :province, :director}
        dir.up {t.string :province, :director}
      end
    end
  end
end
