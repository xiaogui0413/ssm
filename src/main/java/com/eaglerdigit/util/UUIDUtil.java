package com.eaglerdigit.util;

import java.util.UUID;

public class UUIDUtil {

	public static String getUUID() {

		String uuid = UUID.randomUUID().toString().replace("-", "");
		System.out.println(uuid);
		return uuid;
	}
}
