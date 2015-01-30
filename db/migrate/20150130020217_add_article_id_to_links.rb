class AddArticleIdToLinks < ActiveRecord::Migration
  def change
    add_reference :links, :article, index: true
    add_foreign_key :links, :articles
  end
end
