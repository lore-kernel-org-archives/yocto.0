Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EE9CE00C18; Wed, 18 May 2016 13:11:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94E5FE00B5F
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 13:11:46 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id q184so5393838qkf.0
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 13:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=bLlXPkOkIc3FB23drLLzRLT6FcCyG3aDGVQjXdwEjXc=;
	b=FkSbyEX9uHvvQzhaUb4HT6n7FMYNqTl8VN7T/eSGXvVBUj1lxmGuCC4XaZbAY7fXYE
	m8ucYGtRdvW8mf85XbAPCYR9exnlDCzM90Gq+4qQRmehM5xK7zNXmPm3daPDdaA+6Ea8
	3Yu8hshH+wS2ZBXZZFHT8A76F2Sa+okYUtsONquh1haxmTGMv2qNrO/FW5AfTRsvVcKQ
	dO1q7foNetLikQr7pvBxwF5AzVDpCpbMRYIhJhEgesSbt9unxSuzL2aEyXxMWeDgvQu0
	3lt0woZTlbAKbb9rxhhizPAFVfiU0nWnAu/nvQEP30szQZn1u5H5+5JSnKpKoJmJWxz/
	1dXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=bLlXPkOkIc3FB23drLLzRLT6FcCyG3aDGVQjXdwEjXc=;
	b=jR7xsx9M0iDC5apN+NUA70wLazbS0jUGfWEvusPNiiDiKedK7sdGQ+tX+8AFaHyxPH
	iTkHO2jTg8B31OZq5J1P4GXFbyNH0QPpl4dzbDfzi45yORfWtzqrPrgjJzCa/9RAPV+y
	bnlFcJT8LZv4yw+awS+yy+wqR9Fapa2qmkHnra1k5Ed7N/QwiGk0PdbYgF1ekJMLjPTF
	elk3ueByirdoZ9GXwy9SYrk/1EixsXzie8MO5KH0/9S8JAs9q3XpaOlv/u4YZN5kWLZS
	GIID1aPA4d+P5yUdzubeO/VCeAk6ZbozAYWKD6IOvr0keZDMyfLtqspEGbhDJjgpwBNp
	PM6w==
X-Gm-Message-State: AOPr4FXkBHiZ+9FSQP0FPBa0BZwsdE7WcU3o+cxrBOedY3w+qIGvvNNpTKNlW5I5xwbFPw==
X-Received: by 10.55.133.130 with SMTP id h124mr10308688qkd.82.1463602302637; 
	Wed, 18 May 2016 13:11:42 -0700 (PDT)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	a22sm4973145qge.31.2016.05.18.13.11.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 18 May 2016 13:11:42 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 20:11:36 +0000
Message-Id: <1463602296-7061-2-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1463602296-7061-1-git-send-email-raj.khem@gmail.com>
References: <1463602296-7061-1-git-send-email-raj.khem@gmail.com>
Cc: paul.eggleton@linux.intel.com
Subject: [meta-qt4][PATCH 2/2] qt4: Fix build with gcc-6
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
X-List-Received-Date: Wed, 18 May 2016 20:11:48 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-qt4/qt4/qt4-4.8.7.inc                      |  4 ++++
 ...6-qt-everywhere-opensource-src-4.8.7-gcc6.patch | 24 ++++++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 recipes-qt4/qt4/qt4-4.8.7/0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch

diff --git a/recipes-qt4/qt4/qt4-4.8.7.inc b/recipes-qt4/qt4/qt4-4.8.7.inc
index 9720605..aa4f73c 100644
--- a/recipes-qt4/qt4/qt4-4.8.7.inc
+++ b/recipes-qt4/qt4/qt4-4.8.7.inc
@@ -26,6 +26,7 @@ SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-ever
            file://0032-aarch64_add_header.patch \
            file://0034-Fix-kmap2qmap-build-with-clang.patch \
            file://0035-Add-nios2-support.patch \
+           file://0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch \
            file://Fix-QWSLock-invalid-argument-logs.patch \
            file://add_check_for_aarch64_32.patch \
            file://g++.conf \
@@ -41,6 +42,9 @@ UPSTREAM_CHECK_REGEX = "(?P<pver>\d+(\.\d+)+)/"
 
 S = "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
 
+# workaround for class std::auto_ptr' is deprecated with gcc-6
+CXXFLAGS += "-std=gnu++98 -Wno-deprecated"
+
 # disable webkit for mips64 n32 temporarily that fails to compile,
 # qt upstream defect:
 # https://bugreports.qt-project.org/browse/QTBUG-39224
diff --git a/recipes-qt4/qt4/qt4-4.8.7/0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch b/recipes-qt4/qt4/qt4-4.8.7/0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch
new file mode 100644
index 0000000..6e0f18d
--- /dev/null
+++ b/recipes-qt4/qt4/qt4-4.8.7/0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch
@@ -0,0 +1,24 @@
+Avoid implicit conversions, which are now flagged by gcc6
+
+| api/qcoloroutput_p.h:74:60: error: shift expression '(1048575 << 20)' overflows [-fpermissive]
+| api/qcoloroutput_p.h:74:63: error: enumerator value for 'BackgroundMask' is not an integer constant
+|              BackgroundMask  = ((1 << BackgroundShift) - 1) << BackgroundShift
+
+
+Upstream-Status: Inappropriate [Frozen upstream]
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+
+diff -up qt-everywhere-opensource-src-4.8.7/src/xmlpatterns/api/qcoloroutput_p.h.than qt-everywhere-opensource-src-4.8.7/src/xmlpatterns/api/qcoloroutput_p.h
+--- qt-everywhere-opensource-src-4.8.7/src/xmlpatterns/api/qcoloroutput_p.h.than	2016-02-03 11:43:04.567757448 +0100
++++ qt-everywhere-opensource-src-4.8.7/src/xmlpatterns/api/qcoloroutput_p.h	2016-02-04 13:12:26.394350271 +0100
+@@ -70,8 +70,8 @@ namespace QPatternist
+             ForegroundShift = 10,
+             BackgroundShift = 20,
+             SpecialShift    = 20,
+-            ForegroundMask  = ((1 << ForegroundShift) - 1) << ForegroundShift,
+-            BackgroundMask  = ((1 << BackgroundShift) - 1) << BackgroundShift
++            ForegroundMask  = 0x1f << ForegroundShift,
++            BackgroundMask  = 0x7 << BackgroundShift
+         };
+ 
+     public:
-- 
1.9.1


