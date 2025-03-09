Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "exp://10.0.2.2:8081", 'http://localhost:8081', 'http://10.0.2.2:8081', 'exp://192.168.12.246:8081'

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end
