class ChangeLocationsDetails < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :locations do |t|
        dir.up { t.remove :province, :director}
        dir.down {t.string :province, :director}
      end
    end
  end
end


# create_table "locations", force: :cascade do |t|
#   t.string "city"
#   t.string "province"
#   t.string "director"
# end
