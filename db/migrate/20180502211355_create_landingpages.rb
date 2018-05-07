class CreateLandingpages < ActiveRecord::Migration
  def change
    create_table :landingpages do |t|
      t.text :section1
      t.text :section2
      t.text :video1
      t.text :video2
      t.text :video3
      t.text :facebook
      t.text :twitter
      t.text :gplus
      t.text :youtube
      t.text :mail
      t.text :speech
      t.text :adminemail

      t.timestamps null: false
    end
  end
end
