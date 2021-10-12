function snippet
    set --local language $argv[1]

    # If the user has not passed a language, set the default language
    if test -z "$language"
        set language rust
    end
    # The user the language to paste the snippet into silicon, which renders the snippet to code
    silicon --language $language --from-clipboard --to-clipboard
end
