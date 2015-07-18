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
  	member_code = self.code || ("HCB/2015/" + 101.to_s)
  	member_code
  end

end
