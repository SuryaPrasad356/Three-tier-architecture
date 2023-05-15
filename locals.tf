locals {
  public_route_table_name = format("%s-%s",lookup(var.tags,"Name"),"public")
  private_route_table_name = format("%s-%s",lookup(var.tags,"Name"),"public")
  database_route_table_name = format("%s-%s",lookup(var.tags,"Name"),"database")
}