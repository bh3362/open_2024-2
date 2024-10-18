# 간단한 계산기 프로그램

operator = input("연산을 선택하세요 (+, -, *, /): ")
num1 = float(input("첫 번째 숫자를 입력하세요: "))
num2 = float(input("두 번째 숫자를 입력하세요: "))

if operator == '+':
    print(f"{num1} + {num2} = {num1 + num2}")
elif operator == '-':
    print(f"{num1} - {num2} = {num1 - num2}")
elif operator == '*':
    print(f"{num1} * {num2} = {num1 * num2}")
elif operator == '/':
    if num2 != 0:
        print(f"{num1} / {num2} = {num1 / num2}")
    else:
        print("0으로 나눌 수 없습니다.")
else:
    print("잘못된 연산자입니다.")