from faker import Faker
faker = Faker()

def factory_post():
    return {
        "id": "abc",
        "title": "New post from " + faker.name(),
        "body": "New post using Robot Framework",
        "userId": 1
    }