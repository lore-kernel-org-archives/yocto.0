Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E1E8E0078E; Thu, 24 Jul 2014 00:44:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06B2DE006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:44:19 -0700 (PDT)
Received: by mail-la0-f46.google.com with SMTP id b8so1577846lan.5
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 00:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=zexDMToeBrg1z4OqZGXXasHPoz3j4X1kymVS56wtzek=;
	b=hMb0LZurTeJY8D9wuLh4a4LKjlFRu7OPEFz8Jlhn1eD7AyfAp+sUO3ESbjDcvhosOs
	AxXeixws14O2I4d3mgQJXE/U6+oyaNukazdlOBR9caAKvd+Y5Znil7SGNvEIaAX/2zPO
	w+T0uwxxIMRm8kLou1FMfH6YZ2Txlwc/wuNRWOi0dZVk1DvNMsDmJw1gFV5VmxrU7Zy3
	Fo9y20TX6izuraBLhuiXBSGfIKRyBQk5c1W4mUMoGc200n/ls9Z0Cno9xqNbDMdDiu4z
	4u5/DNbqAgKrN4Iqq9Cg4Moh++jvPFnCLQ/RVbuv0p0h+3j1MqCyst1zi2FBveOKvCCv
	i9RQ==
X-Received: by 10.152.183.236 with SMTP id ep12mr7539614lac.82.1406187857862; 
	Thu, 24 Jul 2014 00:44:17 -0700 (PDT)
Received: from localhost.localdomain (89-253-118-72.customers.ownit.se.
	[89.253.118.72])
	by mx.google.com with ESMTPSA id c7sm9380659lbd.37.2014.07.24.00.44.16
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 24 Jul 2014 00:44:17 -0700 (PDT)
Sender: Jacob Kroon <jacob.kroon@gmail.com>
From: Jacob Kroon <jacob.kroon@mikrodidakt.se>
To: yocto@yoctoproject.org
Date: Thu, 24 Jul 2014 09:42:37 +0200
Message-Id: <1406187757-18043-1-git-send-email-jacob.kroon@mikrodidakt.se>
X-Mailer: git-send-email 1.9.3
Subject: [meta-mingw][PATCH] *-mingw32: Do not set binutils-crosssdk preferred provider
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
X-List-Received-Date: Thu, 24 Jul 2014 07:44:31 -0000

Nowadays this is already set in OE-Core, in tcmode-default.inc.

Fixes:

WARNING: Variable key
         PREFERRED_PROVIDER_virtual/${SDK_PREFIX}binutils-crosssdk
         (binutils-crosssdk-${SDK_ARCH}) replaces original key
         PREFERRED_PROVIDER_virtual/x86_64-oesdk-mingw32-binutils-crosssdk
         (binutils-crosssdk-${SDK_ARCH}).

Signed-off-by: Jacob Kroon <jacob.kroon@mikrodidakt.se>
---
 conf/machine-sdk/i686-mingw32.conf   | 1 -
 conf/machine-sdk/x86_64-mingw32.conf | 1 -
 2 files changed, 2 deletions(-)

diff --git a/conf/machine-sdk/i686-mingw32.conf b/conf/machine-sdk/i686-mingw32.conf
index 2567e26..098fc3d 100644
--- a/conf/machine-sdk/i686-mingw32.conf
+++ b/conf/machine-sdk/i686-mingw32.conf
@@ -3,7 +3,6 @@ SDK_OS = "mingw32"
 
 GCCTHREADS_mingw32 = "win32"
 
-PREFERRED_PROVIDER_virtual/${SDK_SYS}-binutils-crosssdk = "binutils-crosssdk-${SDK_ARCH}"
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-mingw-w64-runtime"
diff --git a/conf/machine-sdk/x86_64-mingw32.conf b/conf/machine-sdk/x86_64-mingw32.conf
index 6a66b60..ac66623 100644
--- a/conf/machine-sdk/x86_64-mingw32.conf
+++ b/conf/machine-sdk/x86_64-mingw32.conf
@@ -3,7 +3,6 @@ SDK_OS = "mingw32"
 
 GCCTHREADS_mingw32 = "win32"
 
-PREFERRED_PROVIDER_virtual/${SDK_SYS}-binutils-crosssdk = "binutils-crosssdk-${SDK_ARCH}"
 PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libc = "nativesdk-mingw-w64-runtime"
 PREFERRED_PROVIDER_virtual/nativesdk-libintl = "nativesdk-mingw-w64-runtime"
-- 
1.9.3


