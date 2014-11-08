class DropTable < ActiveRecord::Migration
 def self.down
    drop_table :users
  end
end
