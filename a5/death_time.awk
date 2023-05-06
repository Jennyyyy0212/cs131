BEGIN {
  FS = ","
  OFS = ","
  print "date,total_cases,total_deaths,death_rate"
}
NR > 1 {
  date = $1
  cases[date] += $4
  deaths[date] += $5
}
END {
  for (date in cases) {
    death_rate = cases[date] == 0 ? 0 : deaths[date] / cases[date] * 100
    print date,cases[date],deaths[date],death_rate
  }
}
