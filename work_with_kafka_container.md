# Create topic
```sh
docker compose exec -it kafka0 kafka-topics --bootstrap-server localhost:9092 --create --replication-factor 1 --partitions 1 --topic test1
```
# Generate messages into topic test
```sh
docker compose exec -it kafka0 kafka-console-producer --bootstrap-server localhost:9092 --topic test
```
# Read messages from topic test
```sh
docker compose exec -it kafka0 kafka-console-consumer --bootstrap-server localhost:9092 --partition 0  --topic test --from-beginning
```
# Check topic status 
 ```sh
docker compose exec -it kafka0  kafka-topics --describe --bootstrap-server localhost:9092 --topic test
 ```
