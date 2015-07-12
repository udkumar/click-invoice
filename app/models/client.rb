class Client < ActiveRecord::Base
  has_many :invoices, :dependent => :destroy
  belongs_to :organization
  belongs_to :admin_user

  validates :name, :presence => true
  validates :email, :format => { :with => /^(.+@.+\..+)?$/, :message => "is not a valid email address." }

  attr_accessible :name, :address, :phone, :code, :email, :organization_id


  def client_code
  	rand(10000)
  end
end
