I love using Terraform but the files contain so much stuff! This filetype plugin causes individual resources to default to being folded up onto a single line. I find it much easier to digest Terraform code this way. Maybe you will too.

First, set up your .tf filetype in your .vimrc:

    au BufRead,BufNewFile *.tf setlocal filetype=terraformi

Create the following directory, if you don't already have it

    mkdir -p ~/.vim/after/ftplugin

Then put terraform.vim in that directory. By default every .tf file opens already folded. If you want to change that behavior just change `foldlevel=1` (or > 1).

Right now this folds resource, provider, and variable stanzas. Maybe there should be more here.


