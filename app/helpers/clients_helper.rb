module ClientsHelper

  def clients_for_select(clients)
    clients.map do |client|
      [client.name, client.id]
    end
  end

end
