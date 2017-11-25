# Thư mục lưu trữ một số file kickstart và preseed

## 1. Kickstart cho Centos

- [CentOS7_basic.ks](./CentOS7_basic.ks): File kickstart cơ bản nhất cho Centos 7

- [CentOS7_edit_ifname.ks](./CentOS7_edit_ifname.ks): Kickstart cơ bản bổ sung thêm đổi tên card mạng về dạng ethX cho Centos 7.

## 2. Preseed cho Ubuntu

- [ubuntu-server-16-04.seed](./ubuntu-server-16-04.seed): File preseed cơ bản cho Ubuntu server 16.04: cấu hình phân vùng ổ cứng LVM, set password cho user root, cài đặt và cấu hình cho phép ssh qua root,...

- [US1604_scripts.seed](./US1604_scripts.seed): File preseed cho Ubuntu server 16.04, thực hiện chạy scripts sau khi boot xong hệ điều hành.

- [ubuntu-server-14-04.seed](./ubuntu-server-14-04.seed): File preseed cơ bản cho Ubuntu server 14.04: cấu hình phân vùng ổ cứng LVM, set password cho user root, cài đặt và cấu hình cho phép ssh qua root, ...