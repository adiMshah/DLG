require 'sinatra'
require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/DLG.db")

class DLG
	include DataMapper::Resource
	property :id, Serial
	property :title, Text, :required => true
	property :SenderFirstName, Text, :required => true
	property :SenderLastName,Text, :required => true
	property :SenderEmail, Text, :required => true
	property :RecipientFirstName, Text, :required => true
	property :RecipientLastName, Text, :required => true
	property :RecipientEmail,Text, :required => true
	property :SendAnonymously, Integer
	property :YoutubeURL, Text
	property :DateToSend, DateTime
	property :Ocassion, Text
	property :Message,Text, :Required => true
	property :AddedDate, DateTime,:Required => true
end


DataMapper.finalize.auto_upgrade!
	@DLG = DLG.all
	puts @DLG.to_s
get '/' do
   
end

#if DLG.count == 0
	#DLG.create(:title => "Love Letter", :SenderFirstName => "Adi", :SenderLastName => "Shah", :SenderEmail => "crushed729729@gmail.com",
	#		   :RecipientFirstName => "Shruta", :RecipientLastName => "Satam", :RecipientEmail => "shruta_satam@yahoo.com", :Message => "Love you!", :AddedDate => Time.now)
#end
