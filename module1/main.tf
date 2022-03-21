data "null_data_source" "f" {
  for_each = { for v in range(1,10) : v => {}}
}
module "m" {
  for_each = data.null_data_source.f
  source = "../module2"
}
resource "aws_sns_topic" "t" {
  name = "my-topic"
}
