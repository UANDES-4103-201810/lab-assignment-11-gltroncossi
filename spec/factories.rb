FactoryBot.define do
  factory :user do
    username "gltroncossi"
    email "gtroncossi@miuandes.cl"
    password "0000"
  end
# Add other factories in here
  factory :message do
    user_id 1
    date "2017-05-05"
    content "first factory"
  end
end