I love using Terraform but the files contain so much stuff! This filetype plugin causes individual resources to default to being folded up onto a single line. I find it much easier to digest Terraform code this way. Maybe you will too.

First, set up your .tf filetype in your .vimrc:

    au BufRead,BufNewFile *.tf setlocal filetype=terraform

Create the following directory, if you don't already have it

    mkdir -p ~/.vim/after/ftplugin

Then put terraform.vim in that directory. By default every .tf file opens already folded. If you want to change that behavior just change `foldlevel=1` (or > 1).

Right now this folds resource, provider, module, data, output, terraform, and variable stanzas. There may be more here in the future.

![screenshot](https://cloud.githubusercontent.com/assets/156436/12099980/ff94a0b4-b2f9-11e5-997a-4aed67f4bb51.png)
