# Regular Expressions
python -m SimpleHTTPServer 8000
regex = re.compile(regex)
match = regex.match(string)
match = re.search(regex, string)
m.group(0)   # whole match
m.group(2,0) # tuple of matches #3 and #1
m.groups()   # tuple of all matches
regex.sub(lambda match: match.group(), string[, count=0])

string2binary: "".join(["{0:0>8b}".format(ord(c)) for c in "meinst du sowas?"])
filename[filename.rindex(".") + 1 : ] # gives you the extension of the file

jump into a REPL after program execution: #!/usr/bin/(i)python -i

1943 imp: python -m cProfile -o profile.pstats mine.py
1943 imp: gprof2dot -f pstats profile.pstats | dot -Tpng -o mine.png

# Add times
datetime.datetime.now() - dateutil.relativedelta.relativedelta(years=1)
(datetime.datetime.now() - datetime.timedelta(hours=6.5)).strftime("%H:%M:%S")

modelviz by antonio cadevoni

# Python 2
print >>f, 'some text'
