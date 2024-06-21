-- Terraform
vim.cmd.cnoreabbrev {args = {'tfi', '!terraform init -no-color'}}
vim.cmd.cnoreabbrev {args = {'tff', '!terraform fmt -recursive'}}
vim.cmd.cnoreabbrev {args = {'tfp', '!terraform plan -no-color'}}
vim.cmd.cnoreabbrev {args = {'tfa', '!terraform apply -no-color'}}
vim.cmd.cnoreabbrev {args = {'tfd', '!terraform destroy -no-color'}}

-- Terragrunt
vim.cmd.cnoreabbrev {args = {'tgi', '!terragrunt init -no-color'}}
vim.cmd.cnoreabbrev {args = {'tgf', '!terragrunt fmt -recursive'}}
vim.cmd.cnoreabbrev {args = {'tgp', '!terragrunt plan -no-color'}}
vim.cmd.cnoreabbrev {args = {'tga', '!terragrunt apply -no-color'}}
vim.cmd.cnoreabbrev {args = {'tgd', '!terragrunt destroy -no-color'}}

-- File management
vim.cmd.cnoreabbrev {args = {'to', '!touch'}}
vim.cmd.cnoreabbrev {args = {'mv', '!mv'}}
vim.cmd.cnoreabbrev {args = {'rm', '!rm'}}
