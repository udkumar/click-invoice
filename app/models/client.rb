class Client < ActiveRecord::Base
  has_many :invoices, :dependent => :destroy
  belongs_to :organization
  belongs_to :admin_user

  validates :name, :presence => true
  validates :address, :presence => true
  validates :phone, :presence => true, :numericality => true

  validates :email, :format => { :with => /^(.+@.+\..+)?$/, :message => "is not a valid email address." }

  validates :code, uniqueness: true
  attr_accessible :name, :address, :phone, :code, :email, :organization_id


  def client_code
    #logic to split year between two slashs "HCB/2015/1011".split('/').fetch(-2) 
    code = Client.last.code if Client.last.present?
    if code.present?
      if Time.now.year.to_s != code.split('/').fetch(-2)
        member_code = ("HCB/#{Time.now.year}/" + rand(5000).to_s)
      else
        code_incr = code[code[0, 9].length, code.length].to_i+1
        member_code = "#{code[0, 9]}#{code_incr}" || ("HCB/#{Time.now.year}/" + rand(5000).to_s)
      end
    else
      member_code = code || ("HCB/#{Time.now.year}/" + rand(5000).to_s)
    end
     member_code
     
  end

end
