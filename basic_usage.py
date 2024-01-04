from time import sleep
from faststream import FastStream
from faststream.kafka import KafkaBroker

sleep(5)
broker = KafkaBroker(["kafka1:9091", "kafka2:9092", "kafka3:9093"])

app = FastStream(broker)


@broker.subscriber("test")
async def base_handler(body):
    print(body)
