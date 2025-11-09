# Utils

Scripts that are useful for other tools

## git-log-for-fzf-preview

Show a list of commits and modified files for each, for an input commit expression.  
Designed to make a view of what's on a branch in fzf preview.

Example:

```bash
> git-log-for-fzf-preview @~2..@
Add shebang to alias file
 - zsh/alias
Remove obsolete comment on fzf for fixup
 - .gitconfig
```
