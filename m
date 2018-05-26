Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5144BE00A03; Sat, 26 May 2018 11:27:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 271A3E007B5
	for <yocto@yoctoproject.org>; Sat, 26 May 2018 11:27:38 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id d10-v6so10548842itj.1
	for <yocto@yoctoproject.org>; Sat, 26 May 2018 11:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emacinc-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=fvigRCaDQPnNw0D902OBN8PDIhwpHXA0BQ305yzAQ28=;
	b=dPD2Fnrwg14DHBLW0Xpcq4HkI7X8qFCRMlVIrbbqS7WAH4jd8myZWBUk5aQfP6TDpb
	PI4RfSXciszFMRYsYsMX8O7PKvqQvBx/N0XAedhBNTF1E243oHFd+P9O7Oe5CoP3KTlJ
	B5Nxst/FSyXVnhx7FC7ZAdaugXU+B7Kpjx+RKfFKWr1H0YSJIMor3rhDnpT4TilUQ5VF
	Ffi0Wsn7OZ9/TCxqFLUVfhmw0HwZNGe6BAyuMwVb+X5q71QA0tTP1hlHhudBKiJ5FmQj
	NhaBB4y+XvD6CcHDRrr9bX8KzKncYWkN+yRbZvBUMVGhRTkz9USx+wQeMHT4Iu2nK0bZ
	5f8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=fvigRCaDQPnNw0D902OBN8PDIhwpHXA0BQ305yzAQ28=;
	b=IhZ1R3kPxlN/RMfhC5pCquhTLHzNM7jkEbKvCWJ0ra7rhod06Yo3xZcGlfdI1A20fH
	h81BVtGW07j7ycbBx1YvJgHmCP4eL9WHtMYlgthM75b8NBXLM6l3ol85KnFL5iuZ8c8t
	yf7NIlQKjlVeK0UAgOy0C3nsyjlz5zFF16A83EGeV+72dFcjEdzjUDjrmQDI+Ms8Av9X
	nciAi7F6g0/lePz/36xoDyOSjbika1Ksgk36Medaw8fRwla65QB1juYsEgjiTdKNEB22
	y8CWEjAOfDBNivxuf3LzyH8/jKbFgX2uoR99vs33UaS0CvJbR8L9IuiG7D3/F2Dw+xVw
	JJdA==
X-Gm-Message-State: ALKqPwd3YQ+ZrzdsT8mPt9nllm2j4hxM0fUxhWamPINIGX4evKTIglf2
	288BM+4gMLk0iYcku5OQsT8TFAtr
X-Google-Smtp-Source: ADUXVKKJ7o0md1zSEAJ1+5I51FMvq58RZZ7K44KjW4NdnGVSf58rBWYyOaQIg0ign4hPcKUXQzHzvQ==
X-Received: by 2002:a24:a347:: with SMTP id p68-v6mr925401ite.98.1527359257655;
	Sat, 26 May 2018 11:27:37 -0700 (PDT)
Received: from eng-20-lx.EMACINC.COM ([66.186.100.194])
	by smtp.gmail.com with ESMTPSA id
	12-v6sm4786330itm.23.2018.05.26.11.27.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 26 May 2018 11:27:37 -0700 (PDT)
From: Michael Gloff <mgloff@emacinc.com>
To: yocto@yoctoproject.org
Date: Sat, 26 May 2018 13:27:27 -0500
Message-Id: <20180526182727.960-1-mgloff@emacinc.com>
X-Mailer: git-send-email 2.17.0
Subject: [meta-qt4][PATCH] Qt4 fails to configure ICU with ICU6X.
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
X-List-Received-Date: Sat, 26 May 2018 18:27:40 -0000

Remove -std=gnu++98 from QMAKE_CXXFLAGS and add where
necessary.

Signed-off-by: Michael Gloff <mgloff@emacinc.com>
---
 recipes-qt4/qt4/qt4-4.8.7.inc                 |  3 ++-
 .../0037-fix-configure-with-icu60.patch       | 26 +++++++++++++++++++
 recipes-qt4/qt4/qt4-native.inc                |  2 +-
 3 files changed, 29 insertions(+), 2 deletions(-)
 create mode 100644 recipes-qt4/qt4/qt4-4.8.7/0037-fix-configure-with-icu60.patch

diff --git a/recipes-qt4/qt4/qt4-4.8.7.inc b/recipes-qt4/qt4/qt4-4.8.7.inc
index 40558aa..d8b178f 100644
--- a/recipes-qt4/qt4/qt4-4.8.7.inc
+++ b/recipes-qt4/qt4/qt4-4.8.7.inc
@@ -27,6 +27,7 @@ SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-ever
            file://0034-Fix-kmap2qmap-build-with-clang.patch \
            file://0035-Add-nios2-support.patch \
            file://0036-qt-everywhere-opensource-src-4.8.7-gcc6.patch \
+	   file://0037-fix-configure-with-icu60.patch \
            file://gcc-version.patch \
            file://Fix-QWSLock-invalid-argument-logs.patch \
            file://add_check_for_aarch64_32.patch \
@@ -46,7 +47,7 @@ UPSTREAM_CHECK_REGEX = "(?P<pver>\d+(\.\d+)+)/"
 S = "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
 
 # workaround for class std::auto_ptr' is deprecated with gcc-6
-CXXFLAGS += "-std=gnu++98 -Wno-deprecated -DUCHAR_TYPE=wchar_t"
+CXXFLAGS += "-Wno-deprecated -DUCHAR_TYPE=wchar_t"
 
 # disable webkit for mips64 n32 temporarily that fails to compile,
 # qt upstream defect:
diff --git a/recipes-qt4/qt4/qt4-4.8.7/0037-fix-configure-with-icu60.patch b/recipes-qt4/qt4/qt4-4.8.7/0037-fix-configure-with-icu60.patch
new file mode 100644
index 0000000..b737f3c
--- /dev/null
+++ b/recipes-qt4/qt4/qt4-4.8.7/0037-fix-configure-with-icu60.patch
@@ -0,0 +1,26 @@
+diff --git a/src/3rdparty/javascriptcore/JavaScriptCore/JavaScriptCore.pri b/src/3rdparty/javascriptcore/JavaScriptCore/JavaScriptCore.pri
+index 847f69c358..2360f6259e 100644
+--- a/src/3rdparty/javascriptcore/JavaScriptCore/JavaScriptCore.pri
++++ b/src/3rdparty/javascriptcore/JavaScriptCore/JavaScriptCore.pri
+@@ -234,3 +234,4 @@ SOURCES += \
+     SOURCES += wtf/TCSystemAlloc.cpp
+ }
+ 
++QMAKE_CXXFLAGS += -std=gnu++98
+diff --git a/src/3rdparty/webkit/Source/WebKit.pri b/src/3rdparty/webkit/Source/WebKit.pri
+index 01f88a485d..384b1ca349 100644
+--- a/src/3rdparty/webkit/Source/WebKit.pri
++++ b/src/3rdparty/webkit/Source/WebKit.pri
+@@ -199,3 +199,4 @@ CONFIG(qt_minimal) {
+ }
+ 
+ contains(DEFINES, QT_NO_UITOOLS): CONFIG -= uitools
++QMAKE_CXXFLAGS += -std=gnu++98
+diff --git a/src/plugins/accessible/qaccessiblebase.pri b/src/plugins/accessible/qaccessiblebase.pri
+index 95c1fad13a..76693d5fc5 100644
+--- a/src/plugins/accessible/qaccessiblebase.pri
++++ b/src/plugins/accessible/qaccessiblebase.pri
+@@ -1,2 +1,3 @@
+ target.path     += $$[QT_INSTALL_PLUGINS]/accessible
+ INSTALLS        += target
++QMAKE_CXXFLAGS += -std=gnu++98
diff --git a/recipes-qt4/qt4/qt4-native.inc b/recipes-qt4/qt4/qt4-native.inc
index 08aa61d..8a672bd 100644
--- a/recipes-qt4/qt4/qt4-native.inc
+++ b/recipes-qt4/qt4/qt4-native.inc
@@ -30,7 +30,7 @@ UPSTREAM_CHECK_REGEX = "(?P<pver>\d+(\.\d+)+)/"
 S = "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
 
 # workaround for class std::auto_ptr' is deprecated with gcc-6
-CXXFLAGS += "-std=gnu++98 -Wno-deprecated"
+CXXFLAGS += "-Wno-deprecated"
 
 EXTRA_OECONF = "-prefix ${prefix} \
                 -bindir ${bindir} \
-- 
2.17.0


