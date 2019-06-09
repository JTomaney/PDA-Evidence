var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  it('can add two numbers', function () {
    calculator.previousTotal = 4;
    calculator.add(1);
    assert.equal(calculator.runningTotal, 5);
  })

  it('can subtract one number from another', function () {
    calculator.previousTotal = 7;
    calculator.subtract(4);
    assert.equal(calculator.runningTotal, 3)
  })

  it('can multiply two numbers', function () {
      calculator.previousTotal = 3;
      calculator.multiply(5);
      assert.equal(calculator.runningTotal, 15)
  })

  it('can divide one number by another', function () {
      calculator.previousTotal = 21;
      calculator.divide(7);
      assert.equal(calculator.runningTotal, 3)
  })

  it('can concatenate multiple number clicks', function () {
    calculator.numberClick(3);
    calculator.numberClick(8);
    calculator.numberClick(1);
    assert.equal(calculator.runningTotal, '381')
  })

  it('can chain multiple operations', function () {
    calculator.numberClick(5);
    calculator.operatorClick('+');
    calculator.operatorClick('*');
    calculator.operatorClick('=');
    assert.equal(calculator.runningTotal, 100);
  })

  it('can clear the running total without affecting calculation', function () {
    calculator.numberClick(5);
    calculator.operatorClick('+');
    calculator.operatorClick('+');
    calculator.operatorClick('+');
    calculator.clearClick();
    calculator.operatorClick('=');
    assert.equal(calculator.runningTotal, 20);
  })

});
