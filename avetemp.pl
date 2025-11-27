%facts
ave_temp(berlin, 49).
ave_temp(karlsruhe, 60).
ave_temp(paris, 55).
ave_temp(belgrade, 52).
ave_temp(chicago, 50).
ave_temp(boston, 48).
ave_temp(johannesburg, 55).
ave_temp(phoenix, 80).
ave_temp(jerusalem, 61).

%rules
ave_temp_celsius(Location, TempC) :- ave_temp(Location, TempF),
    %convert Fahrenheit to Celsius
    TempC is (TempF-32)*5//9,
    write('Average temp of '), write(Location), write(' is '), write(TempC).