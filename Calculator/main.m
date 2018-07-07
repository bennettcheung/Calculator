//
//  main.m
//  Calculator
//
//  Created by Bennett on 2018-06-17.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

enum OperationType {add, subtract, multiply, divide};

static NSInteger performOperation(enum OperationType currentOperation, NSInteger firstNumber, NSInteger secondNumber) {
    NSInteger result = 0;
    switch (currentOperation) {
        case add:
            result = firstNumber + secondNumber;
            break;
        case subtract:
            result = firstNumber - secondNumber;
            break;
        case multiply:
            result = firstNumber * secondNumber;
            break;
        case divide:
            result = firstNumber / secondNumber;
            break;
        default:
            break;
  
    }
    return result;
    
}

static enum OperationType charToOperation(char operationChar)
{
    enum OperationType operation;
    switch (operationChar){
        case '+':
            operation = add;
            break;
        case '-':
            operation = subtract;
            break;
        case '*':
            operation = multiply;
            break;
        case '/':
            operation = divide;
            break;
        default:
            operation = add;
            break;
            
    }
   
    return operation;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger firstNumber=0, secondNumber=0, result=0;
        enum OperationType currentOperation= add;
        char operationChar = '+';
        
        NSLog(@"Input first number:");
        scanf("%ld", &firstNumber);
        
        NSLog(@"Input second number:");
        scanf("%ld", &secondNumber);
        
        NSLog(@"Input operation:");
        scanf(" %c", &operationChar);
        
        currentOperation = charToOperation(operationChar);
        
        
        result = performOperation(currentOperation, firstNumber, secondNumber);
        
        NSLog(@"First number %ld\n",  (long)firstNumber);
        NSLog(@"Second number %ld\n", (long)secondNumber);
        NSLog(@"Result %ld\n", (long)result);
    }
    return 0;
}
