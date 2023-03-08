require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest

test "index" do
  get "/suppliers.json"
  assert_reponse 200

  data = JSON.parse(response.body)
  assert_equal Supplier.count, data.length
end

end
