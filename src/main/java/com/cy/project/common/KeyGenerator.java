package com.cy.project.common;

import java.security.SecureRandom;
import java.util.Base64;

/**
 * 密钥生成工具类
 *
 */
public class KeyGenerator {

    private static final String CHAR_SET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    private static final int KEY_LENGTH = 32;

    /**
     * 随机生成accessKey
     *
     * @return
     */
    public static String generateAccessKey() {
        SecureRandom random = new SecureRandom();
        StringBuilder sb = new StringBuilder(KEY_LENGTH);
        for (int i = 0; i < KEY_LENGTH; i++) {
            int rndCharAt = random.nextInt(CHAR_SET.length());
            char rndChar = CHAR_SET.charAt(rndCharAt);
            sb.append(rndChar);
        }
        return sb.toString();
    }

    /**
     * 随机生成secretKey
     *
     * @return
     */
    public static String generateSecretKey() {
        SecureRandom random = new SecureRandom();
        byte[] keyBytes = new byte[KEY_LENGTH];
        random.nextBytes(keyBytes);
        return Base64.getEncoder().encodeToString(keyBytes);
    }
}
