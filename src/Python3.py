# This is an example of the Python3 language
def main():
    arr = []

    for i in range(2):
        print(f'Enter number {str(i + 1)}')
        num = int(input())
        arr.append(num)

    operator = input('Enter operator\n')

    invalid = False
    if operator == '+':
        result = arr[0] + arr[1]
    elif operator == '-':
        result = arr[0] - arr[1]
    else:
        print('This operator has not been included.')
        invalid = True

    with open('output.txt', 'w+') as handle:
        if not invalid:
            handle.write(f'{str(result)}\n')
        else:
            handle.write('Invalid operation\n')

main()

"""Usage
1. Install python for your system and ensure it has been included to
your env's PATH. 
2. Then simply run this Python3.py script with python3 Python3.py.
"""
