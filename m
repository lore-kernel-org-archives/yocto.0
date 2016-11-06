Return-Path: <barry@grussling.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69ACEE0095F; Sat,  5 Nov 2016 21:23:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5B1AE0077E
	for <yocto@yoctoproject.org>; Sat,  5 Nov 2016 21:23:08 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id d2so73757007pfd.0
	for <yocto@yoctoproject.org>; Sat, 05 Nov 2016 21:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=grussling-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=tp0VtQI3GQoRdyRKZFF1xHl5aTkLgH8PN4LUiHfCm1s=;
	b=1MeqC6O+hnwXkEdP2nwRywzIyKtdg16Rzx8QES5/zOCQRVr9cNLLa8JMpPl6NCpILD
	0XtOcPJ3KC+WWmh2w2z+P+g7ftehwm7YdIFsh+2SU9KgURV7rO0eDA9nFix2F5cpw/eB
	QZnyn82l1Gpax3lsXdo35x55MyTCtt6UdT+cXXoqvJPwKuZj+knBOlBY5NiJ8Clk8ojC
	zPNZcLN//LGyODpBxmUS3UzHHFO8cg4eILmETNtiq8zc9lMfxpCwEXGq3BzZQvmwgU1z
	O7gtcJdWrP5eZXrzpuYVDeT8QRkJc8MvVySAyFSKEixkXCbaDUc0QwD6XuuUo5F9L3Lv
	Xsmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=tp0VtQI3GQoRdyRKZFF1xHl5aTkLgH8PN4LUiHfCm1s=;
	b=CY4kOeSP+674Bkj9gLRc0mfR1O8WkxqXFOw5skDXLELQeQOzAw59IP5b1zB3kSRi1L
	JFXbOezDEN+SaFjZGYacwls0zi3PT8F/MIndmQqQunzovKWk07y61iEWSMFG8WXe2Qyx
	RWfmTq+SzEhNwnyO5DZ3RIeNNmFYmf4NMht8YMWo65/ps7En/oYxTLW+nIvsMD5YpW1m
	uechXKxD8No0deSdi4KKSma5KZgDrSYvT40bFveVEmf7lXN7bWZsKBczsw88a75Y4hso
	hERBnmj3r/rdfW4rjq72yuASuAB6cVreTp1yKmbz7OpmGEd7Ev5uBrPsSqdDPWgA7Wnp
	b60A==
X-Gm-Message-State: ABUngvd1Ze01gPGqQRszSECtUXmBju0kFRDTzyR9N7ALuaFuJonfw5RQIBr2hCiGtJOy6g==
X-Received: by 10.99.19.71 with SMTP id 7mr1266114pgt.38.1478406187459;
	Sat, 05 Nov 2016 21:23:07 -0700 (PDT)
Received: from trixie.pullman (cpe-76-178-155-10.natnow.res.rr.com.
	[76.178.155.10]) by smtp.gmail.com with ESMTPSA id
	m69sm30556050pfg.39.2016.11.05.21.23.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 05 Nov 2016 21:23:07 -0700 (PDT)
From: Barry Grussling <barry@grussling.com>
To: ajlennon@dynamicdevices.co.uk
Date: Sat,  5 Nov 2016 21:22:59 -0700
Message-Id: <20161106042304.3357-3-barry@grussling.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161106042304.3357-1-barry@grussling.com>
References: <20161106042304.3357-1-barry@grussling.com>
Cc: yocto@yoctoproject.org
Subject: [meta-mono][PATCH 2/7] Separate license from mono-4.xx.inc
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
X-List-Received-Date: Sun, 06 Nov 2016 04:23:12 -0000

During the last year Mono changed licenses from GPLv2 to MIT:
http://www.mono-project.com/news/2016/03/31/mono-relicensed-mit/

As such, we need to split the license out from mono-4.xx.inc so
that future consumers of that include can change the license as needed.

This changeset introduces mono-gplv2.inc to encode the GPLv2 license.
There is no functionality difference in this commit.

Signed-off-by: Barry Grussling <barry@grussling.com>
---
 recipes-mono/mono/mono-4.xx.inc            | 3 ---
 recipes-mono/mono/mono-gplv2.inc           | 3 +++
 recipes-mono/mono/mono-native_4.0.1.28.bb  | 1 +
 recipes-mono/mono/mono-native_4.0.1.34.bb  | 1 +
 recipes-mono/mono/mono-native_4.0.1.bb     | 1 +
 recipes-mono/mono/mono-native_4.0.2.4.bb   | 1 +
 recipes-mono/mono/mono-native_4.0.2.5.bb   | 1 +
 recipes-mono/mono/mono-native_4.0.3.13.bb  | 1 +
 recipes-mono/mono/mono-native_4.0.3.19.bb  | 1 +
 recipes-mono/mono/mono-native_4.0.3.20.bb  | 1 +
 recipes-mono/mono/mono-native_4.0.4.1.bb   | 1 +
 recipes-mono/mono/mono-native_4.2.0.179.bb | 1 +
 recipes-mono/mono/mono-native_4.2.0.207.bb | 1 +
 recipes-mono/mono/mono-native_4.2.1.102.bb | 1 +
 recipes-mono/mono/mono-native_4.2.1.36.bb  | 1 +
 recipes-mono/mono/mono-native_4.2.1.60.bb  | 1 +
 recipes-mono/mono/mono-native_4.2.2.10.bb  | 1 +
 recipes-mono/mono/mono-native_4.2.2.29.bb  | 1 +
 recipes-mono/mono/mono-native_4.2.2.30.bb  | 1 +
 recipes-mono/mono/mono-native_4.3.2.467.bb | 1 +
 recipes-mono/mono/mono-native_4.4.0.122.bb | 1 +
 recipes-mono/mono/mono-native_4.4.0.148.bb | 1 +
 recipes-mono/mono/mono_4.0.1.28.bb         | 1 +
 recipes-mono/mono/mono_4.0.1.34.bb         | 1 +
 recipes-mono/mono/mono_4.0.1.bb            | 1 +
 recipes-mono/mono/mono_4.0.2.4.bb          | 1 +
 recipes-mono/mono/mono_4.0.2.5.bb          | 1 +
 recipes-mono/mono/mono_4.0.3.13.bb         | 1 +
 recipes-mono/mono/mono_4.0.3.19.bb         | 1 +
 recipes-mono/mono/mono_4.0.3.20.bb         | 1 +
 recipes-mono/mono/mono_4.0.4.1.bb          | 1 +
 recipes-mono/mono/mono_4.2.0.179.bb        | 1 +
 recipes-mono/mono/mono_4.2.0.207.bb        | 1 +
 recipes-mono/mono/mono_4.2.1.102.bb        | 1 +
 recipes-mono/mono/mono_4.2.1.36.bb         | 1 +
 recipes-mono/mono/mono_4.2.1.60.bb         | 1 +
 recipes-mono/mono/mono_4.2.2.10.bb         | 1 +
 recipes-mono/mono/mono_4.2.2.29.bb         | 1 +
 recipes-mono/mono/mono_4.2.2.30.bb         | 1 +
 recipes-mono/mono/mono_4.3.2.467.bb        | 1 +
 recipes-mono/mono/mono_4.4.0.122.bb        | 1 +
 recipes-mono/mono/mono_4.4.0.148.bb        | 1 +
 42 files changed, 43 insertions(+), 3 deletions(-)
 create mode 100644 recipes-mono/mono/mono-gplv2.inc

diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
index 855c857..3ce5871 100644
--- a/recipes-mono/mono/mono-4.xx.inc
+++ b/recipes-mono/mono/mono-4.xx.inc
@@ -3,12 +3,9 @@ DESCRIPTION = "This is part of the Mono project - http://mono-project.com"
 HOMEPAGE = "http://mono-project.com"
 BUGTRACKER = "http://bugzilla.xamarin.com/"
 SECTION = "devel"
-LICENSE = "GPLv2"
 
 DEPENDS = "zlib"
 
-LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=80862f3fd0e11a5fa0318070c54461ce"
-
 SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.tar.bz2 \
            file://dllmap-config.in.diff \
 	   file://0002-prevent-threadpool-exception5-test-hanging.patch \
diff --git a/recipes-mono/mono/mono-gplv2.inc b/recipes-mono/mono/mono-gplv2.inc
new file mode 100644
index 0000000..6996514
--- /dev/null
+++ b/recipes-mono/mono/mono-gplv2.inc
@@ -0,0 +1,3 @@
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=80862f3fd0e11a5fa0318070c54461ce"
+
diff --git a/recipes-mono/mono/mono-native_4.0.1.28.bb b/recipes-mono/mono/mono-native_4.0.1.28.bb
index a39aa68..4673573 100644
--- a/recipes-mono/mono/mono-native_4.0.1.28.bb
+++ b/recipes-mono/mono/mono-native_4.0.1.28.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 
 EXTRA_OECONF += "mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no "
 
diff --git a/recipes-mono/mono/mono-native_4.0.1.34.bb b/recipes-mono/mono/mono-native_4.0.1.34.bb
index 208968f..3dbb1d9 100644
--- a/recipes-mono/mono/mono-native_4.0.1.34.bb
+++ b/recipes-mono/mono/mono-native_4.0.1.34.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 
 EXTRA_OECONF += "mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no "
 
diff --git a/recipes-mono/mono/mono-native_4.0.1.bb b/recipes-mono/mono/mono-native_4.0.1.bb
index cbcebe4..4f2cf03 100644
--- a/recipes-mono/mono/mono-native_4.0.1.bb
+++ b/recipes-mono/mono/mono-native_4.0.1.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 
 EXTRA_OECONF += "mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no "
 
diff --git a/recipes-mono/mono/mono-native_4.0.2.4.bb b/recipes-mono/mono/mono-native_4.0.2.4.bb
index fbbec72..afdca44 100644
--- a/recipes-mono/mono/mono-native_4.0.2.4.bb
+++ b/recipes-mono/mono/mono-native_4.0.2.4.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono-native_4.0.2.5.bb b/recipes-mono/mono/mono-native_4.0.2.5.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.0.2.5.bb
+++ b/recipes-mono/mono/mono-native_4.0.2.5.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.0.3.13.bb b/recipes-mono/mono/mono-native_4.0.3.13.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.0.3.13.bb
+++ b/recipes-mono/mono/mono-native_4.0.3.13.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.0.3.19.bb b/recipes-mono/mono/mono-native_4.0.3.19.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.0.3.19.bb
+++ b/recipes-mono/mono/mono-native_4.0.3.19.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.0.3.20.bb b/recipes-mono/mono/mono-native_4.0.3.20.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.0.3.20.bb
+++ b/recipes-mono/mono/mono-native_4.0.3.20.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.0.4.1.bb b/recipes-mono/mono/mono-native_4.0.4.1.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.0.4.1.bb
+++ b/recipes-mono/mono/mono-native_4.0.4.1.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.2.0.179.bb b/recipes-mono/mono/mono-native_4.2.0.179.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.2.0.179.bb
+++ b/recipes-mono/mono/mono-native_4.2.0.179.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.2.0.207.bb b/recipes-mono/mono/mono-native_4.2.0.207.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.2.0.207.bb
+++ b/recipes-mono/mono/mono-native_4.2.0.207.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.2.1.102.bb b/recipes-mono/mono/mono-native_4.2.1.102.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.2.1.102.bb
+++ b/recipes-mono/mono/mono-native_4.2.1.102.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.2.1.36.bb b/recipes-mono/mono/mono-native_4.2.1.36.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.2.1.36.bb
+++ b/recipes-mono/mono/mono-native_4.2.1.36.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.2.1.60.bb b/recipes-mono/mono/mono-native_4.2.1.60.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.2.1.60.bb
+++ b/recipes-mono/mono/mono-native_4.2.1.60.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.2.2.10.bb b/recipes-mono/mono/mono-native_4.2.2.10.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.2.2.10.bb
+++ b/recipes-mono/mono/mono-native_4.2.2.10.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.2.2.29.bb b/recipes-mono/mono/mono-native_4.2.2.29.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.2.2.29.bb
+++ b/recipes-mono/mono/mono-native_4.2.2.29.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.2.2.30.bb b/recipes-mono/mono/mono-native_4.2.2.30.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.2.2.30.bb
+++ b/recipes-mono/mono/mono-native_4.2.2.30.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.3.2.467.bb b/recipes-mono/mono/mono-native_4.3.2.467.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.3.2.467.bb
+++ b/recipes-mono/mono/mono-native_4.3.2.467.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.4.0.122.bb b/recipes-mono/mono/mono-native_4.4.0.122.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.4.0.122.bb
+++ b/recipes-mono/mono/mono-native_4.4.0.122.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono-native_4.4.0.148.bb b/recipes-mono/mono/mono-native_4.4.0.148.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono-native_4.4.0.148.bb
+++ b/recipes-mono/mono/mono-native_4.4.0.148.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono_4.0.1.28.bb b/recipes-mono/mono/mono_4.0.1.28.bb
index 694215e..4a0ccee 100644
--- a/recipes-mono/mono/mono_4.0.1.28.bb
+++ b/recipes-mono/mono/mono_4.0.1.28.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 
 DEPENDS = "mono-native"
 
diff --git a/recipes-mono/mono/mono_4.0.1.34.bb b/recipes-mono/mono/mono_4.0.1.34.bb
index 74b3a31..4d15501 100644
--- a/recipes-mono/mono/mono_4.0.1.34.bb
+++ b/recipes-mono/mono/mono_4.0.1.34.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 
 DEPENDS = "mono-native"
 
diff --git a/recipes-mono/mono/mono_4.0.1.bb b/recipes-mono/mono/mono_4.0.1.bb
index ff55fc7..da42224 100644
--- a/recipes-mono/mono/mono_4.0.1.bb
+++ b/recipes-mono/mono/mono_4.0.1.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 
 DEPENDS = "mono-native"
 
diff --git a/recipes-mono/mono/mono_4.0.2.4.bb b/recipes-mono/mono/mono_4.0.2.4.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono_4.0.2.4.bb
+++ b/recipes-mono/mono/mono_4.0.2.4.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono_4.0.2.5.bb b/recipes-mono/mono/mono_4.0.2.5.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono_4.0.2.5.bb
+++ b/recipes-mono/mono/mono_4.0.2.5.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono_4.0.3.13.bb b/recipes-mono/mono/mono_4.0.3.13.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono_4.0.3.13.bb
+++ b/recipes-mono/mono/mono_4.0.3.13.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono_4.0.3.19.bb b/recipes-mono/mono/mono_4.0.3.19.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono_4.0.3.19.bb
+++ b/recipes-mono/mono/mono_4.0.3.19.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono_4.0.3.20.bb b/recipes-mono/mono/mono_4.0.3.20.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono_4.0.3.20.bb
+++ b/recipes-mono/mono/mono_4.0.3.20.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono_4.0.4.1.bb b/recipes-mono/mono/mono_4.0.4.1.bb
index 9aa04a5..52f7f5c 100644
--- a/recipes-mono/mono/mono_4.0.4.1.bb
+++ b/recipes-mono/mono/mono_4.0.4.1.bb
@@ -1,3 +1,4 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono_4.2.0.179.bb b/recipes-mono/mono/mono_4.2.0.179.bb
index 67b2ba5..1fa5f30 100644
--- a/recipes-mono/mono/mono_4.2.0.179.bb
+++ b/recipes-mono/mono/mono_4.2.0.179.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono_4.2.0.207.bb b/recipes-mono/mono/mono_4.2.0.207.bb
index 0e770c7..dc2bf9b 100644
--- a/recipes-mono/mono/mono_4.2.0.207.bb
+++ b/recipes-mono/mono/mono_4.2.0.207.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono_4.2.1.102.bb b/recipes-mono/mono/mono_4.2.1.102.bb
index 0e770c7..dc2bf9b 100644
--- a/recipes-mono/mono/mono_4.2.1.102.bb
+++ b/recipes-mono/mono/mono_4.2.1.102.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono_4.2.1.36.bb b/recipes-mono/mono/mono_4.2.1.36.bb
index 0e770c7..dc2bf9b 100644
--- a/recipes-mono/mono/mono_4.2.1.36.bb
+++ b/recipes-mono/mono/mono_4.2.1.36.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono_4.2.1.60.bb b/recipes-mono/mono/mono_4.2.1.60.bb
index 0e770c7..dc2bf9b 100644
--- a/recipes-mono/mono/mono_4.2.1.60.bb
+++ b/recipes-mono/mono/mono_4.2.1.60.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono_4.2.2.10.bb b/recipes-mono/mono/mono_4.2.2.10.bb
index 0e770c7..dc2bf9b 100644
--- a/recipes-mono/mono/mono_4.2.2.10.bb
+++ b/recipes-mono/mono/mono_4.2.2.10.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono_4.2.2.29.bb b/recipes-mono/mono/mono_4.2.2.29.bb
index 0e770c7..dc2bf9b 100644
--- a/recipes-mono/mono/mono_4.2.2.29.bb
+++ b/recipes-mono/mono/mono_4.2.2.29.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono_4.2.2.30.bb b/recipes-mono/mono/mono_4.2.2.30.bb
index 0e770c7..dc2bf9b 100644
--- a/recipes-mono/mono/mono_4.2.2.30.bb
+++ b/recipes-mono/mono/mono_4.2.2.30.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono_4.3.2.467.bb b/recipes-mono/mono/mono_4.3.2.467.bb
index 0e770c7..dc2bf9b 100644
--- a/recipes-mono/mono/mono_4.3.2.467.bb
+++ b/recipes-mono/mono/mono_4.3.2.467.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono_4.4.0.122.bb b/recipes-mono/mono/mono_4.4.0.122.bb
index 0e770c7..dc2bf9b 100644
--- a/recipes-mono/mono/mono_4.4.0.122.bb
+++ b/recipes-mono/mono/mono_4.4.0.122.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
diff --git a/recipes-mono/mono/mono_4.4.0.148.bb b/recipes-mono/mono/mono_4.4.0.148.bb
index 0e770c7..dc2bf9b 100644
--- a/recipes-mono/mono/mono_4.4.0.148.bb
+++ b/recipes-mono/mono/mono_4.4.0.148.bb
@@ -1,4 +1,5 @@
 require mono-4.xx.inc
+require mono-gplv2.inc
 require ${PN}-base.inc
 require mono-${PV}.inc
 
-- 
2.10.2


