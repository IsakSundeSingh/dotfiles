function clear_clipboard_history -d "Clears the clipboard history"
    copyq 'tab(config("clipboard_tab"));
          var xs = Array.apply(0, Array(size())).map(function(x,i){return i});
          remove.apply(this, xs);'
end
