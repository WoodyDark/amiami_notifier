require 'mail'
require 'selenium-webdriver'
puts 'Welcome to AmiAmi Notifier'
link = ARGV[0]
puts "You have chosen #{link}, this will start automatically"
puts ''

while true
    options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])
    # options = Selenium::WebDriver::Chrome::Options.new
    driver = Selenium::WebDriver.for(:chrome, options: options)
    driver.get(link)
    sleep(3)

    begin
        puts driver.find_element(:css, ".message").attribute("innerHTML")+' at '+Time.now.to_s[0..15]
    rescue
        puts 'Found your thing! at '+Time.now.to_s[0..15]

        options = { :address              => "smtp.gmail.com",
                    :port                 => 587,
                    :domain               => 'gmail.com',
                    :user_name            => '',
                    :password             => '',
                    :authentication       => 'plain',
                    :enable_starttls_auto => true  }

        Mail.defaults do
          delivery_method :smtp, options
        end

        Mail.deliver do
               to ''
             from ''
          subject "We found the item you were looking for!"
             body "We found what you were looking for at #{link}"
        end
    end
    driver.quit
    puts ''
    sleep(900)

end
