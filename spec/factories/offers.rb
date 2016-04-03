FactoryGirl.define do
  factory :offer do
    name 'Name'
    email 'test@example.org'
    from_address 'From Address'
    to_address 'To Address'
    distance 1
    living_area 2
    storage_area 3
    piano false
    help false
    client '12412451251255tqw4r23qw5r2345'
  end
end
