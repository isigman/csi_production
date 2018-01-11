class AddAttachmentWikiToWikis < ActiveRecord::Migration[5.1]
  def self.up
    change_table :wikis do |t|
      t.attachment :wiki
    end
  end

  def self.down
    remove_attachment :wikis, :wiki
  end
end
