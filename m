Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3FFCE00828; Fri, 24 Aug 2018 07:54:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ED51E0080F
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 07:54:07 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id p16-v6so2307494itp.1
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 07:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=t9yoeFv/RuqV5W4oWp18nqXbevGgYQNjNk+Y4D057lM=;
	b=N9v6YWOIPgEN7qPT4GrzF8d0f4cQOigmfmbfQjsCxA13zKhU8N5rPGaEepE/2UoQ2i
	fsEQG4OpFdo96jr0IZJeLBpY+kUyjmyfRLAu4WSqZ7+3EYZOihVSgGiLzOVb1TWJuMTw
	qbhwkx+WR3ziloOKww3sUOSUV0P3qy/HiiMFMvJyYx4vOvsIFlgmRI1NIlC4GBa5/d6v
	zWGFyiyJgBAAawx01jWsoyKMB9t03bNVqWIpuVBXR8XV6lrcjIrUdJMJ/vbdzVv7GL9S
	62x5bMYeQT0qbT5Lp2WFuzr+CmTt3m5TzBkX/RECevparMQHKYN+YUOEC9MbVOoJrS6O
	YVUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=t9yoeFv/RuqV5W4oWp18nqXbevGgYQNjNk+Y4D057lM=;
	b=e/9hJcccLDy4I6r3wYmVqAzd+aLOwSY4+8OVjYItk3wZKPGvcK0aplwtzDkNksO7do
	aZpp/JT4A9VUmdbkJ4oXF9+TNDQYLHPzkShbNyw2eVzKJQmYIYayJhMIK23r2q8mK0Jj
	O7Xu6PWgPuDnFoV7ptpcX6OiZPID/X/nLyI3lmbzytTH3t2B7Ld5YowUX9qyOn2UYX2T
	K9vL/04TutgAUT9NP3aVcDbDmmgQBsecAf605wzQV3hlQOqG3GaRGlLpQusA6K433I+V
	7JpWcPPABDUMDIe8AmLjlXGe6y8ualWh+/6BAHGebHlSfaxNO4BWF8f2BDaNqONCVwFp
	QTzQ==
X-Gm-Message-State: APzg51B6ey0bU7jI+U5Jlmhe6kXtfDTKFqwD/V9eM1os2h8zbheZ6I7K
	mkEws1qD/bbJI9t9XL7/eo4QfWUB
X-Google-Smtp-Source: ANB0Vdbbp5gTY4IVPDnnD8g+Ufptsz1HQaBtImpNORdi0j5WmZnpDCP8/m33CaNAMFOSRmr4sUHwhw==
X-Received: by 2002:a24:b302:: with SMTP id
	e2-v6mr1752711itf.132.1535122446451; 
	Fri, 24 Aug 2018 07:54:06 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	c143-v6sm641584itc.23.2018.08.24.07.54.05
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 24 Aug 2018 07:54:05 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2018 09:53:47 -0500
Message-Id: <20180824145347.15795-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-mingw][master/sumo][PATCH] swig: Add swig environment setup for SDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 Aug 2018 14:54:07 -0000

Configures the mingw SDK environment to set the SWIG_LIB environment
variable so that swig can find its core library. Otherwise, swig will
look for a directory called "Lib" next to the executable.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-devtools/swig/swig_%.bbappend | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 recipes-devtools/swig/swig_%.bbappend

diff --git a/recipes-devtools/swig/swig_%.bbappend b/recipes-devtools/swig/swig_%.bbappend
new file mode 100644
index 0000000..de40609
--- /dev/null
+++ b/recipes-devtools/swig/swig_%.bbappend
@@ -0,0 +1,12 @@
+# A wrapper script won't work to set SWIG_LIB for a mingw SDK. Instead, add an
+# environment setup batch file to set SWIG_LIB when the SDK is configured.
+do_install_append_class-nativesdk_mingw32() {
+    install -d ${D}${SDKPATHNATIVE}/environment-setup.d
+
+    cat <<HEREDOC > ${D}${SDKPATHNATIVE}/environment-setup.d/swig.bat
+set SWIG_LIB=%OECORE_NATIVE_SYSROOT%\\usr\\share\\${BPN}\\${PV}
+HEREDOC
+}
+
+FILES_${PN}_append_class-nativesdk_mingw32 = " ${SDKPATHNATIVE}/environment-setup.d"
+
-- 
2.17.1


