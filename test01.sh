

echo "[Grading Start]"
gcc hello.c -o hello

if [ $? -ne 0 ]; then
    echo "Compile Failed! \n"
    exit 1
fi

OUTPUT=$(./hello)
EXPECTED="Hello World"

if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "[O] Succeed : Result Matched"
    exit 0
else
    echo "[X] Failed : Result Mismatched"
    echo "Your output is : $OUTPUT"
    exit 1
fi

