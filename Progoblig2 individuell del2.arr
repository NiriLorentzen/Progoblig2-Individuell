use context essentials2021
#import kWh-wealthy-consumer-data
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

include gdrive-sheets
include option
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
  load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
  end

"Tabellen med stringverdi"
kWh-wealthy-consumer-data

fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end
where:
  energi-to-number("") is 0
  energi-to-number("48") is 48
end

ny_tabell = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)
"Tabellen etter string-to-number"
ny_tabell

#energiforbruket for bilbruk
fun beregn_energibruk_bil(distance-travelled-per-day, distance-per-unit-of-fuel): #mpl = mil per liter
  energy-per-unit-of-fuel = 10
  energy-per-day = ( distance-travelled-per-day / distance-per-unit-of-fuel ) * energy-per-unit-of-fuel
  energy-per-day
  where:
  beregn_energibruk_bil(10, 10) is 10
end

fun legg_til_bil_tabell(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => beregn_energibruk_bil(10, 10)
  end
where:
  energi-to-number("") is 0
energi-to-number("48") is 48
end

distance-travelled-per-day = 15
distance-per-unit-of-fuel = 17
beregn_energibruk_bil(10, 10)

total_energibruk_innbygger = sum(ny_tabell, "energi") + beregn_energibruk_bil(distance-travelled-per-day, distance-per-unit-of-fuel)
"Total energibruk per innbygger:"
  total_energibruk_innbygger

"Barchart uten bilverdi:"
bar-chart(ny_tabell, "komponent", "energi")

"Tabell med bilverdi:"
total_tabell = transform-column(kWh-wealthy-consumer-data, "energi", legg_til_bil_tabell)
total_tabell

"Barchart med bilverdi:"
bar-chart(total_tabell, "komponent", "energi")