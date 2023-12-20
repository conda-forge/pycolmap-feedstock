for /f "tokens=* usebackq" %%f in (`where cl.exe`) do (set "dummy=%%f" && call set "CXX=%%dummy:\=\\%%")

echo %CXX%

for /f "tokens=* usebackq" %%f in (`where cl.exe`) do (set "dummy=%%f" && call set "CC=%%dummy:\=\\%%")

echo %CC%

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
