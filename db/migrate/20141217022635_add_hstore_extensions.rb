class AddHstoreExtensions < ActiveRecord::Migration
  def change
    ActiveRecord::Base.connection.execute 'CREATE EXTENSION IF NOT EXISTS HSTORE;'
  end
end
