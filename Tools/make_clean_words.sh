grep "^['abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]*$" /usr/share/dict/words | sed "s/'s//g" | uniq  > cleanWords
