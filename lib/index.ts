export class MyClass {
  fizzBuzz(arg: number): string {
    if (arg % (3 * 5) === 0) {
      return 'FizzBuzz';
    } else if (arg % 3 === 0) {
      return 'Fizz';
    } else if (arg % 5 === 0) {
      return 'Buzz';
    }
    return arg.toString();
  }
}
