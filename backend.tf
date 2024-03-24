terraform {
    cloud {
        organization = "devops_test_cicd_pipeline"
        hostname     = "app.terraform.io"
        workspaces {
            tags = ["type:app", "component:foundation"]
        }
    }
}
