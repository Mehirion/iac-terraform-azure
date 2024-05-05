resource "local_file" "say_hello" {
    filename = "${path.module}/hello.py"
    content = <<-EOT
x = "hello"
    def say_hello(x):
    return (x)

print (say_hello(x))
    EOT
}