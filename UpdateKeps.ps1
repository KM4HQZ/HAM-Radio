$kepHash = @{
    'http://www.amsat.org/amsat/ftp/keps/current/nasa.all' = 'C:\Users\Pcuser\AppData\Roaming\SatPC32\Kepler\nasa.all';
    'http://www.amsat.org/amsat/ftp/keps/current/nasabare.txt' = 'C:\Users\Pcuser\AppData\Roaming\SatPC32\Kepler\nasabare.txt';
    'http://www.celestrak.com/NORAD/elements/amateurs.txt' = 'C:\Users\Pcuser\AppData\Roaming\SatPC32\Kepler\amateur.txt';
    'http://www.celestrak.com/NORAD/elements/cubesat.txt' = 'C:\Users\Pcuser\AppData\Roaming\SatPC32\Kepler\cubesat.txt';
    'http://www.celestrak.com/NORAD/elements/geo.txt' = 'C:\Users\Pcuser\AppData\Roaming\SatPC32\Kepler\geo.txt';
    'http://www.celestrak.com/NORAD/elements/intelsat.txt' = 'C:\Users\Pcuser\AppData\Roaming\SatPC32\Kepler\intelsat.txt';
    'http://www.celestrak.com/NORAD/elements/noaa.txt' = 'C:\Users\Pcuser\AppData\Roaming\SatPC32\Kepler\noaa.txt';
    'http://www.celestrak.com/NORAD/elements/weather.txt' = 'C:\Users\Pcuser\AppData\Roaming\SatPC32\Kepler\weather.txt';
    'http://www.celestrak.com/NORAD/elements/tle-new.txt' = 'C:\Users\Pcuser\AppData\Roaming\SatPC32\Kepler\tle-new.txt';
}

ForEach ($file in $kepHash.GetEnumerator()) {
    Invoke-WebRequest -Uri $file.Key -OutFile $file.Value
}