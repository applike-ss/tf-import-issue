data "null_data_source" "f" {
  for_each = { for v in range(1,10) : v => {}}
}
resource "null_resource" "n" {}