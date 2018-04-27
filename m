Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20E21E008D2; Fri, 27 Apr 2018 05:34:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22CDEE007F2
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 05:34:33 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id u18-v6so1631189wrg.3
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 05:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=PnSWIsGc5AmRLimkMZw37CkTNhPXWWevIEWMeq58cMg=;
	b=oo7sWBA6hh6u+sCEcZUehk/0qiwkePg/0A4IPo7QOblAjVAhb/YrRC6uJ1vdjRD1No
	oi9IEhq6hFZQF0UfYKfbSuiCzA03Cd6Jj0iS8d/6KPcQePrjZ8g8G1NYlkFyCzseojIu
	ZbIXdK/TXMqDq7EylUmrzeOo0aiJV5yGPCthrtkrsEBD9YL1q7hPw7QESZ6o6Q/OJ7K2
	WqMb/xnf65z+HVv/sFsEjyDzV4w4dPPXoa2NexXZMQAirsH49FSpEFEi6U3ggzAZj7Du
	d94d/tO/AMDnnJxBWHixKoMeggdwX5Nc9O/zLREEZ6skwgFG5oZB+14XaQYAzf0kKuWW
	95zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=PnSWIsGc5AmRLimkMZw37CkTNhPXWWevIEWMeq58cMg=;
	b=H7ZrCwYIstQGsIGjY72o+AmKpqmlagl8CEUkE9HdyWbDZXn4QLEfkJDwv5fdc+lUNL
	MJJJRUMKYCyM9kl2SvnDKDW2//etKyHA1XosyiuS17SukWVIMCYSt8A9naHuITwOqCYE
	0PZw3IVncWKdCBWMIEp5Ym4K+6LiNp/aZ4Q2RvKceyGMoqtRaWtaBVadnpIqEZeZ1xhu
	j58vSLvhaeHTd007Rf0ziN97BChLxkGvxFZXtnRaxWPt26ULiVNkq/jShPsjdQWRPZ4a
	PA/jmjgC4Sr63LuuRAWS9jtW9cQu84yeA01QXto03fyItN7sWbPTQbIfnGDZSj8sjxZp
	MQqQ==
X-Gm-Message-State: ALQs6tCJEofcSZg9zpbi0uF3XPKcqxmQwm66jnRgcIK4JPKp3VXNApCl
	BsP4PAP0ZVH/I3Un8oCMgrEenmWU
X-Google-Smtp-Source: AB8JxZpCqLd7Xe+kG/zazVegSjCuxP9FknVDQwW7qhmYYntaUAWAn6ssqB2OXe19dMJP8HkyzoBnXg==
X-Received: by 2002:adf:b8eb:: with SMTP id
	c40-v6mr1536414wrg.170.1524832472307; 
	Fri, 27 Apr 2018 05:34:32 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id u5sm1873149wmd.40.2018.04.27.05.34.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Apr 2018 05:34:31 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 27 Apr 2018 13:34:26 +0100
Message-Id: <20180427123426.13194-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH V2][meta-mingw] machine-sdk: split out common configuration
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
X-List-Received-Date: Fri, 27 Apr 2018 12:34:35 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 conf/machine-sdk/i686-mingw32.conf          | 36 +----------------------------
 conf/machine-sdk/include/mingw32-common.inc | 36 +++++++++++++++++++++++++++++
 conf/machine-sdk/x86_64-mingw32.conf        | 36 +----------------------------
 3 files changed, 38 insertions(+), 70 deletions(-)
 create mode 100644 conf/machine-sdk/include/mingw32-common.inc

diff --git a/conf/machine-sdk/i686-mingw32.conf b/conf/machine-sdk/i686-mingw32.conf
index f85b05d..5090168 100644
--- a/conf/machine-sdk/i686-mingw32.conf
+++ b/conf/machine-sdk/i686-mingw32.conf
@@ -1,37 +1,3 @@
 SDK_ARCH = "i686"
-SDK_OS = "mingw32"
 
-GCCTHREADS_mingw32 = "win32"
-
-PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
-PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32 = "nativesdk-mingw-w64-runtime"
-PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
-PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-gettext"
-PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
-
-USE_NLS_mingw32 = "no"
-
-FILES_${PN}-staticdev_append_mingw32 = " ${libdir}/*.lib"
-ALLOW_EMPTY_${PN}_mingw32 = "1"
-
-# Do what amounts to a NOOP
-SDK_PACKAGING_FUNC = "do_compile"
-
-# Causes an endless loop
-#SDKTAROPTS_append = " -h --hard-dereference"
-
-SDKUSE_NLS = "no"
-SDKIMAGE_LINGUAS = ""
-SDK_DEPENDS_remove = "nativesdk-glibc-locale"
-
-SDKPKGSUFFIX = "nativesdk-mingw32"
-
-MACHINEOVERRIDES .= ":sdkmingw32"
-
-export WINDRES = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
-export RC = "${WINDRES}"
-
-BB_HASHBASE_WHITELIST_append = " WINDRES RC"
-
-# Needed to override no-static-libs.inc
-DISABLE_STATIC_mingw32 = ""
+require conf/machine-sdk/include/mingw32-common.inc
diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
new file mode 100644
index 0000000..53bac4c
--- /dev/null
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -0,0 +1,36 @@
+SDK_OS = "mingw32"
+
+GCCTHREADS_mingw32 = "win32"
+
+PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32 = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
+PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-gettext"
+PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
+
+USE_NLS_mingw32 = "no"
+
+FILES_${PN}-staticdev_append_mingw32 = " ${libdir}/*.lib"
+ALLOW_EMPTY_${PN}_mingw32 = "1"
+
+# Do what amounts to a NOOP
+SDK_PACKAGING_FUNC = "do_compile"
+
+# Causes an endless loop
+#SDKTAROPTS_append = " -h --hard-dereference"
+
+SDKUSE_NLS = "no"
+SDKIMAGE_LINGUAS = ""
+SDK_DEPENDS_remove = "nativesdk-glibc-locale"
+
+SDKPKGSUFFIX = "nativesdk-mingw32"
+
+MACHINEOVERRIDES .= ":sdkmingw32"
+
+export WINDRES = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
+export RC = "${WINDRES}"
+
+BB_HASHBASE_WHITELIST_append = " WINDRES RC"
+
+# Needed to override no-static-libs.inc
+DISABLE_STATIC_mingw32 = ""
diff --git a/conf/machine-sdk/x86_64-mingw32.conf b/conf/machine-sdk/x86_64-mingw32.conf
index ec801c3..fc53822 100644
--- a/conf/machine-sdk/x86_64-mingw32.conf
+++ b/conf/machine-sdk/x86_64-mingw32.conf
@@ -1,37 +1,3 @@
 SDK_ARCH = "x86_64"
-SDK_OS = "mingw32"
 
-GCCTHREADS_mingw32 = "win32"
-
-PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
-PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-initial_mingw32 = "nativesdk-mingw-w64-runtime"
-PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
-PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-gettext"
-PREFERRED_PROVIDER_virtual/nativesdk-libiconv = "nativesdk-libiconv"
-
-USE_NLS_mingw32 = "no"
-
-FILES_${PN}-staticdev_append_mingw32 = " ${libdir}/*.lib"
-ALLOW_EMPTY_${PN}_mingw32 = "1"
-
-# Do what amounts to a NOOP
-SDK_PACKAGING_FUNC = "do_compile"
-
-# Causes an endless loop
-#SDKTAROPTS_append = " -h --hard-dereference"
-
-SDKUSE_NLS = "no"
-SDKIMAGE_LINGUAS = ""
-SDK_DEPENDS_remove = "nativesdk-glibc-locale"
-
-SDKPKGSUFFIX = "nativesdk-mingw32"
-
-MACHINEOVERRIDES .= ":sdkmingw32"
-
-export WINDRES = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
-export RC = "${WINDRES}"
-
-BB_HASHBASE_WHITELIST_append = " WINDRES RC"
-
-# Needed to override no-static-libs.inc
-DISABLE_STATIC_mingw32 = ""
+require conf/machine-sdk/include/mingw32-common.inc
-- 
2.11.0


