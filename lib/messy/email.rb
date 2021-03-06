module Messy
  class Email
    attr_accessor :subject, :body, :user_body, :plain_body, :recipients, :from, :bcc_sender, :check_spam, :attachments

    def initialize
      @check_spam = true
    end

    def attachments
      @attachments ||= {}
    end

    def headers
      @headers ||= {}
    end
  end
end
