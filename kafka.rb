require "kafka"

kafka = Kafka.new(
    seed_brokers: ["localhost:9092"],
    client_id: "ruby-kafka-application"
)

kafka.each_message(topic: "boot.t") do |message|
  puts message.offset, message.key, message.value
end
