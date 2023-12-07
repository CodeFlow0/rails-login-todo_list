class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    unless table_exists?(:users)
    create_table :users do |t|

      t.timestamps
    end
  else 
    puts "The 'users' table already exists!"
    end
  end
end
