public class iterationExercise2 {
    public void getPerfectAverage(integer num1, integer num2) {
        System.debug(' input : num1 = ' + num1);
        System.debug(' input : num2 = ' + num2);
        integer sum = num1;
        integer count = 1;
        for (Integer i = num1+1; i <= num2; i++) {
            sum += i;
            count++;
        }
        integer average = sum/count;
        system.debug(' Output : ' + average);

        System.debug(' Calculation : ');
        string n = '';
        for (Integer i = num1; i < num2; i++) {
            n += string.valueOf(i) + ' + ';
        }
        System.debug(n + num2 + ' = ' + sum);
        System.debug(' sum ' + count + ' numbers between ' + num1 + ' to ' + num2);
        System.debug(sum + ' / ' + count + ' = ' + average);
    }
}
