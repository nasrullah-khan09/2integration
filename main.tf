resource "local_file" "my_pet" {
  filename = "pets.txt"
  content = "My cat name is ${random_pet.petname.id}"
}
resource "random_pet" "petname" {
  prefix = "Mr"
  separator = "."
  length = "1"
}
output "pet_name" {
  value = random_pet.petname.id
}