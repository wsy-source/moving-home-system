package com.dao;

import com.bean.MoveBooking;
import com.config.MyApplicationConfig;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

class UserDaoTest {

    //    private static UserDao     userDao;
    private static MoveBookingDao moveBookingDao;

    @BeforeAll
    static void testUser() {
        AnnotationConfigApplicationContext annotationConfigApplicationContext = new AnnotationConfigApplicationContext(MyApplicationConfig.class);
        moveBookingDao = annotationConfigApplicationContext.getBean(MoveBookingDao.class);
    }
//    @Test
//    void registerUser() {
//        User user = new User();
//        user.setUsername("lisi");
//        user.setPassword("123");
//        userDao.registerUser(user);
//    }

    @Test
    void queryUser() {
        List<MoveBooking> moveBookings = moveBookingDao.queryAll();
        moveBookings.stream().forEach(System.out::println);

    }

    @Test
    public void testMove() {
        Date date = new Date();
    }

    @ParameterizedTest
    public void swap(int[] arr, int index1, int index2) {
        int temp;
        temp = arr[index1];
        arr[index1] = arr[index2];
        arr[index2] = temp;
    }

    @Test
    void testInsertSort() {
        int arr[] = {5, 8, 1, 3, 9, 10, 4, 7};
        for (int i = 1; i < arr.length; i++) {
            int num = i;
            while (num >= 1 && arr[num] < arr[num - 1]) {
                swap(arr, num, num - 1);
                num--;
            }
        }
        System.out.println(Arrays.toString(arr));
    }

    @Test
    void test() {
        int num = 5;
        for (int i = 31; i >= 0; i--) {
            System.out.print((num & (1 << i)) == 0 ? '0' : '1');
        }
    }

    @Test
    void testChoiceSort() {
        int arr[] = {5, 8, 1, 3, 9, 10, 4, 7};
        for (int i = 0; i < arr.length; i++) {
            int index = i;
            for (int j = i + 1; j < arr.length; j++) {
                index = arr[j] < arr[index] ? j : index;
            }
            if (index != i) {
                swap(arr, i, index);
            }
        }
        System.out.println(Arrays.toString(arr));
    }

    @Test
    void testBubble() {
        int arr[] = {5, 8, 1, 3, 9, 10, 7, 4};
        for (int i = 0; i < arr.length; i++) {
            for (int j = 1; j < arr.length - i; j++) {
                if (arr[j] < arr[j - 1]) {
                    swap(arr, j, j - 1);
                }
            }
        }
        System.out.println(Arrays.toString(arr));
    }


}