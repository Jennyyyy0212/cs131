BEGIN {FS = ","; OFS = ","}   # set the input and output field separators to comma
NR > 1 {                     # skip the header
    split($1, date, "-")     # split the date column into year, month, and day
    month = date[1] "-" date[2]   # concatenate year and month with a hyphen
    cases[month] += $4       # add the number of cases to the corresponding month
    deaths[month] += $5      # add the number of deaths to the corresponding month
}
END {
    #print "month,cases,deaths"   # print the header
    for (month in cases) {
        print month, cases[month], deaths[month]   # print the month, number of cases, and number of deaths
    }
}
