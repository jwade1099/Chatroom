class User < ApplicationRecord

  validates_uniqueness_of :username

  def self.generate
    adjectives = ['Ancient', 'Jumpy', 'Funny', 'Dangerous', 'Jazzy', 'Electric']
    nouns = ['Master', 'Toucan', 'Jaguar', 'Hyena', 'Pikachu']
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)


  end
end
