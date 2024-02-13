class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(custumer_id)
    sleep 5
    user = User.find(custumer_id)
    puts "HELLO FROM SIDEKIQ"
    puts "Pedido criado por #{user.email}"
  end
end
