/**
 * @author 霖
 */
public class Fibonacci {

    public static int fb(int n) {
        if (n == 0) {
            return 0;
        } else if (n == 1) {
            return 1;
        } else {
            return fb(n - 2) + fb(n - 1);
        }
    }

    public static int fib(int n) {
        return fib(0, 1, n);
    }

    public static int fib(int a, int b, int n) {
        if (n == 0) {
            return a;
        }
        return fib(b, b + a, n - 1);
    }


    public static void main(String[] args) {
        System.out.println(fib(9));
        System.out.println(fb(9));
    }
}
