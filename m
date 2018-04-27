Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DF75E00994; Fri, 27 Apr 2018 05:26:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 978BBE007F2
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 05:26:37 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id v15-v6so1595417wrm.10
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 05:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=pMWBjyAjW68mbRNCyG5R1TDvgFNqt2VdsnJvgjsNddQ=;
	b=K4fBe76rbGZHFdMs8xzhW7RjYFfM25UfG81X+bO4kIwueCkZg0dAtfWyByOoEny35g
	4er2m2nZ9ghbOOda47V8qUqeUv9CHvgIHPNo3e76iQbaMuFl2z7pJtc+2anh6w+WJ/aX
	jU98WSZqVf6+3QqRFFmJTjKeSCy75mSCtHEB35hyZT3sOH26lpErf5/ZuCRXWzJtexkK
	6PZyB+dbuei/ICZVw3inw3KR/I2KCwek6/FDG9Lx8ndKgO3O6X+vMBDtUnTbWV4fEVYV
	Gk/INHzpt243A2UJv2tUEEJI3b/9THwDQ5lK6US2+zqQad7IA5WgQr/xQP3mnjGf1prO
	pFaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=pMWBjyAjW68mbRNCyG5R1TDvgFNqt2VdsnJvgjsNddQ=;
	b=paPIgD8gXtLFW4W50aEn5ss7weVNnRakO0b3+sE1iuyZnlnu4gncscHyvLj4Ky9CHX
	AOvX9ftO+VpfQhc39+q0TYl4X9ENxO5n9eubgjpZcaU1K/8jbXml8if5wPYZI0OGIp1i
	cDC+qp+8Ir1oFc7rKedAdtVbw+tvc6g5qSBXbKtTdHCBmwDMnT7c1TXtyUimbli9AFhY
	DV8vWpsNtnhTyCJo7UuBKRpzeaZJTGmua7g34G7suAwBxCCDy5wimCxTrwzjjKqgTHT6
	E81RyNRQSk2nVdETV1PRx7jvhZe3+co8IRDJoCI9Dnu79bCJPsuIZ+GOFG0acPk3gyCt
	X0tw==
X-Gm-Message-State: ALQs6tDhQm0n36Qx4G+gh5Nr0T+ygvgmHhwIpdcro3RXXoLRYX4A2p6q
	+DSV5Da0pETtN/0R0AkXEy3k101+
X-Google-Smtp-Source: AB8JxZrwcE+DJXFSJ52d24kWH7bNcCItUqR+1r/f/ryKl3HxXRMm2rxa9e4GmENR9JD0+zCmjR7niw==
X-Received: by 2002:adf:9a27:: with SMTP id
	z36-v6mr1584797wrb.47.1524831996223; 
	Fri, 27 Apr 2018 05:26:36 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id l2sm1552950wmi.16.2018.04.27.05.26.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Apr 2018 05:26:34 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 27 Apr 2018 13:26:27 +0100
Message-Id: <20180427122628.30277-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH][meta-mingw 1/2] machine-sdk: split out common configuration
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
X-List-Received-Date: Fri, 27 Apr 2018 12:26:39 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 conf/machine-sdk/i686-mingw32.conf          | 36 +----------------------------
 conf/machine-sdk/include/mingw32-common.inc | 36 +++++++++++++++++++++++++++++
 2 files changed, 37 insertions(+), 35 deletions(-)
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
-- 
2.11.0


