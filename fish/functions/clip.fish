function clip -d "Copy from stdin to clipboard"
  copyq insert 0 -
  copyq select 0 # Select the last input from the clipboard
end
