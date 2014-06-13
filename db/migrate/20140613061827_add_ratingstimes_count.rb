class AddRatingstimesCount < ActiveRecord::Migration
  def self.up  
    add_column :words, :ratingtimes_count, :integer, :default => 0   
  end  
  
  def self.down  
    remove_column :words, :ratingtimes_count  
  end 
end
