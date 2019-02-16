# Expected

echo "---------- ---------- ----------"
i_whi=0

while [ $i_whi -lt 5 ]; do
    echo "num = $i_whi  (while)"
    i_whi=$(expr $i_whi + 1)
done

echo "---------- ---------- ----------"
i_unt=0

until [ $i_unt -ge 3 ]; do
    echo "num = $i_unt  (until)"
    i_unt=$(expr $i_unt + 1)
done
