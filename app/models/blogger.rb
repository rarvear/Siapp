class Blogger < ApplicationRecord
  has_one_attached :fotoppal
  has_one_attached :fotosec

  def minifoto 
  	return self.fotoppal.variant(resize: "100x100").processed
  end

  def minifotosec 
  	return self.fotosec.variant(resize: "300x300").processed
  end

  def microfotosec 
    return self.fotosec.variant(resize: "100x100").processed
  end
end
