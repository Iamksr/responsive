ActiveAdmin.register Table1 do

 permit_params :name, :matches, :kd, :hd, :die

 index :title => 'Tencent Dashboard' do 
      selectable_column
      id_column
      column "Players Name" , :name                     
      column "Matches", :matches 
      column "K/D", :kd   
      column "Headshot", :hd  
      column "Kills", :die  
      actions name: "Manage"
    end

    filter :name , :label => 'Players Name'
    filter :matches , :label => 'Matches'
    form do |f|
     f.inputs "Label" do
      f.input :name
      f.input :matches
      f.input :kd
      f.input :hd
      f.input :die
     end
      f.actions do
       f.action :submit
      end
    end

 end
