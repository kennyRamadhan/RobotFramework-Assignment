from faker import Faker




fake = Faker('id_ID')
firstName = fake.unique.first_name()
lastName = fake.unique.last_name()
email   = fake.unique.email()
address = fake.unique.address()
phoneNumber = fake.unique.phone_number()
password = "Test1234"
confirmPassword = "Test1234"
confirmPasswordInvalid = "123456"
URL = "https://qademo.onebrick.io/"
Browser = "chrome"
