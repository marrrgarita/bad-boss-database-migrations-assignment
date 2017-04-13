class DropWidgets < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :widgets do |t|
        dir.up { drop_table :widgets }
        dir.down { create_table :widgets }
        dir.down { t.string :first_name, :last_name, :dietary_restrictions, :vulnerabilities, :illnesses, :medication, :voting_preferences }
        dir.down { t.integer :salary, :number_of_kids }
      end
    end
  end
end


# t.string  "first_name"
# t.string  "last_name"
# t.string  "dietary_restrictions"
# t.integer "salary"
# t.integer "number_of_kids"
# t.string  "vulnerabilities"
# t.string  "illnesses"
# t.string  "medication"
# t.string  "voting_preferences"
