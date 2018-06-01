class SController < ApplicationController
  def senti
  	begin
      k=Sentiment.where("status= ? OR status = ?",'new','error').pluck(:interaction_no, :url).to_a
    rescue 
      puts 'no entry'
    end
    ENV["GOOGLE_APPLICATION_CREDENTIALS"] = 'ReferralYogi Contact Import-7965e0852911.json'
	require "google/cloud/language"
	require 'certified'
	require "google/cloud/storage"
	#puts "Sentiment:"
	@num=k.length
	for i in 0...k.length

		gcloud=Google::Cloud.new "referralyogi-contact-import", Rails.root.join( 'ReferralYogi Contact Import-7965e0852911.json')
		begin
			language = Google::Cloud::Language.new 
		



			response = language.analyze_sentiment content:File.read(k[i][1]), type: :PLAIN_TEXT



			@sentiment = response.document_sentiment
			
			# [END migration_sentiment]
			magnitude=@sentiment.magnitude
			score=@sentiment.score
			if(score*magnitude<-1 or score<-0.5) 
			        @message="1*:strongly negative"
			        @s=1
			elsif(score*magnitude>-1 and score*magnitude<0)
			        @message="2*:negative"
			      	@s=2

			      
			elsif(score*magnitude>1 and score>0.5)
			        @message="5*: strongly positive"
			      	@s=5
			elsif(score*magnitude>1)
			        @message="4.5*: positive"
			      	@s=4.5
			elsif(score*magnitude<1 and score*magnitude>0)
			        @message="4* : positive"
			        @s=4
			elsif(score*magnitude==0 and magnitude>0)
			        @message="3*: mixed"  
			        @s=3
			else
			        @message="3*: neutral "
			        @s=3
			end
			Sentiment.find_by(interaction_no:k[i][0]).update(sentiment:@s, detail:@message,status:'completed', score:@sentiment.score*10, magnitude:@sentiment.magnitude)
		rescue 
			Sentiment.find_by(interaction_no:k[i][0]).update(status:'error')
			@num=0
		end
	end

	
	'''
	  puts "Sentence level sentiment:"



	  sentences = response.sentences



	  sentences.each do |sentence|

	    sentiment = sentence.sentiment

	    puts "#{sentence.text.content}: (#{sentiment.score})"

	  end

	'''


   

  end
end
