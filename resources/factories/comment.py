from faker import Faker
faker = Faker()

def factory_comment():
    name = faker.name()
    email = faker.email()
    return {
        "id": "1",
        "name": name,
        "email": email,
        "body": "New comment from " + name + " using Robot Framework"
    }