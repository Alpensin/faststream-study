# Start docker compose
```sh
docker compose up --detach --wait
```
# Finish docker compose
```sh
docker compose down
```
# Create topic
```sh
docker compose exec -it kafka1 kafka-topics --bootstrap-server localhost:9091 --create --replication-factor 3 --partitions 3 --topic test
```
# Generate messages into topic test
```sh
docker compose exec -it kafka1 kafka-console-producer --bootstrap-server localhost:9091 --topic test
```
# Read messages from topic test
```sh
docker compose exec -it kafka1 kafka-console-consumer --bootstrap-server localhost:9091 --topic test --from-beginning
```
## Read from specific partition
```sh
docker compose exec -it kafka1 kafka-console-consumer --bootstrap-server localhost:9091 partition 0 --topic test --from-beginning
```
```sh
docker compose exec -it kafka1 kafka-console-consumer --bootstrap-server localhost:9091 --topic test --from-beginning
```
# Check topic status 
 ```sh
docker compose exec -it kafka1  kafka-topics --describe --bootstrap-server localhost:9091 --topic test
 ```
