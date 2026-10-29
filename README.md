# cloudfront-s3-static-site

CloudFront + S3 で静的 HTML をホストするサンプル（Terraform）。

## ディレクトリ構成

```
.
├── README.md
├── site/
│   └── index.html      # Hello World
└── terraform/
    ├── versions.tf     # Terraform / provider のバージョン
    ├── variables.tf    # 入力変数
    ├── s3.tf           # バケット, バケットポリシー, index.html のアップロード
    ├── cloudfront.tf   # ディストリビューション, OAC
    └── outputs.tf      # CloudFront のドメイン名など
```

## 使い方

```sh
cd terraform
terraform init
terraform apply   -var aws_profile=<プロファイル名>  # 出力された url を開く
terraform destroy -var aws_profile=<プロファイル名>  # 後片付け
```
