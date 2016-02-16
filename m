Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94E75E0092C; Tue, 16 Feb 2016 08:20:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B5D2E00912
	for <yocto@yoctoproject.org>; Tue, 16 Feb 2016 08:20:32 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id yy13so105644874pab.3
	for <yocto@yoctoproject.org>; Tue, 16 Feb 2016 08:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=gboaBYX7ZfLuzD04ZLHciOWi0gIcUsjengKGgXYxmAE=;
	b=X78++xfMsTYi9SujYWVnAuh89c4IvHYAnlV4RQky/r/wStXQf1Nf5B1ozbjAJND7kH
	bxtZvTUFGMR0c5jFYQy8Q+0KY1o91FoapI5XWo0TkBlOaA/Ssew7tex8zLW+Cldz/nwt
	GhtLeBRBgLcxYurTB0WMN415uWiwrzxHy2qNIEFFSI/d512zbjbXM3TWpy00KHwnp7df
	iHxZ2iw4Oq53OEJxRdJGGXzw1s7pUDeOYR0rVeSO56q/9q4jal+Y/0/ag4xkSoJKJR02
	knI+kCIGXY9nxf4VNMcVBwT1TaLK2V0bxfK867sH0D99Nf7UbQmauaX0TKxOi47OWqVf
	VS0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=gboaBYX7ZfLuzD04ZLHciOWi0gIcUsjengKGgXYxmAE=;
	b=L40C+iULW8v7uK2XiIP8tr9WYDyUqRS/aE+Hq/sCg5KTlY6dIQ8BW/2df4IMhpFxxc
	hV3UU8Z6QE1UMmlnx10Obf8dYie33BHuV0mZjbO5BFK4vlYHLA/lJrxqWkJiJYG2hNKP
	ifWVwczierRtZ9Lr12palUZVkPYDPLJixxXN9hdeYPZ7NyD0A2Rrql8590EXSfp6Ex9a
	f44mtKWjjm7tCJoYEAUXeDbPz1F0GbBg63sEYhAT8iCbQlS6NzN5rhpAqgYwLXRsRtee
	lX+OerAHpk/Ksf8yYWofwp0VWFe2lzZCt1SjIVrZcTKObFul04HJYe7I+fHrE11SnNFq
	xeAw==
X-Gm-Message-State: AG10YOQ5UZLPStHA3bKyJ/PK+UFwmia4dzjw7Fu8E+3Rm8lUOurByIcqcs2qtabJpq1lwA==
X-Received: by 10.66.102.65 with SMTP id fm1mr32237175pab.36.1455639632708;
	Tue, 16 Feb 2016 08:20:32 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	z7sm46827708pfi.19.2016.02.16.08.20.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 16 Feb 2016 08:20:27 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue, 16 Feb 2016 08:20:23 -0800
Message-Id: <1455639624-2955-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH 1/2] suricata: update to 3.0
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
X-List-Received-Date: Tue, 16 Feb 2016 16:20:37 -0000

removed patch no longer needded.
LIC_FILES_CHKSUM changed do to copyright date updates.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../suricata/files/no_pcap_pkgconf_check.patch     | 26 ----------------------
 recipes-security/suricata/libhtp_0.5.18.bb         |  2 +-
 recipes-security/suricata/suricata.inc             |  7 +++---
 .../{suricata_2.0.11.bb => suricata_3.0.bb}        |  3 +--
 4 files changed, 6 insertions(+), 32 deletions(-)
 delete mode 100644 recipes-security/suricata/files/no_pcap_pkgconf_check.patch
 rename recipes-security/suricata/{suricata_2.0.11.bb => suricata_3.0.bb} (95%)

diff --git a/recipes-security/suricata/files/no_pcap_pkgconf_check.patch b/recipes-security/suricata/files/no_pcap_pkgconf_check.patch
deleted file mode 100644
index ba9ff90..0000000
--- a/recipes-security/suricata/files/no_pcap_pkgconf_check.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-Index: suricata-2.0.6/configure
-===================================================================
---- suricata-2.0.6.orig/configure
-+++ suricata-2.0.6/configure
-@@ -17372,8 +17372,6 @@ fi
- 
-         if test "$HAVE_PCAP_CONFIG" = "no"; then
-             CFLAGS="${CFLAGS} -DLIBPCAP_VERSION_MAJOR=1"
--        else
--            CFLAGS="${CFLAGS} `pcap-config --defines` `pcap-config --cflags` -DLIBPCAP_VERSION_MAJOR=1"
-         fi
-     else
-         CFLAGS="${CFLAGS} -DLIBPCAP_VERSION_MAJOR=0"
-Index: suricata-2.0.6/configure.ac
-===================================================================
---- suricata-2.0.6.orig/configure.ac
-+++ suricata-2.0.6/configure.ac
-@@ -1060,8 +1060,6 @@
-         AC_PATH_PROG(HAVE_PCAP_CONFIG, pcap-config, "no")
-         if test "$HAVE_PCAP_CONFIG" = "no"; then
-             CFLAGS="${CFLAGS} -DLIBPCAP_VERSION_MAJOR=1"
--        else
--            CFLAGS="${CFLAGS} `pcap-config --defines` `pcap-config --cflags` -DLIBPCAP_VERSION_MAJOR=1"
-         fi
-     else
-         CFLAGS="${CFLAGS} -DLIBPCAP_VERSION_MAJOR=0"
diff --git a/recipes-security/suricata/libhtp_0.5.18.bb b/recipes-security/suricata/libhtp_0.5.18.bb
index 734b341..8305f70 100644
--- a/recipes-security/suricata/libhtp_0.5.18.bb
+++ b/recipes-security/suricata/libhtp_0.5.18.bb
@@ -2,7 +2,7 @@ SUMMARY = "LibHTP is a security-aware parser for the HTTP protocol and the relat
 
 require suricata.inc
 
-LIC_FILES_CHKSUM = "file://../LICENSE;beginline=1;endline=2;md5=1fbd81241fe252ec0f5658a521ab7dd8"
+LIC_FILES_CHKSUM = "file://../LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
 DEPENDS = "zlib"
 
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 5684386..38b9572 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,8 +2,9 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "2.0.11"
+VER = "3.0"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "4c05eebfb87c3c1ff51460f4e6318b9a"
-SRC_URI[sha256sum] = "c607f1e18e5636830f42a83f7c67e1466f07db82853f3a9dba4ab8c6c3bc656e"
+SRC_URI[md5sum] = "a964af69263592c625b56f72d49e8d24"
+SRC_URI[sha256sum] = "4b8feb398a0800c955fe24aa31ca446c539e79492155717e826473f902c8e65a"
+
diff --git a/recipes-security/suricata/suricata_2.0.11.bb b/recipes-security/suricata/suricata_3.0.bb
similarity index 95%
rename from recipes-security/suricata/suricata_2.0.11.bb
rename to recipes-security/suricata/suricata_3.0.bb
index 21b22d1..ead568a 100644
--- a/recipes-security/suricata/suricata_2.0.11.bb
+++ b/recipes-security/suricata/suricata_3.0.bb
@@ -2,10 +2,9 @@ SUMMARY = "The Suricata Engine is an Open Source Next Generation Intrusion Detec
 
 require suricata.inc
 
-LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=1fbd81241fe252ec0f5658a521ab7dd8"
+LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
 SRC_URI += "file://no_libhtp_build.patch \
-            file://no_pcap_pkgconf_check.patch \
             file://volatiles.03_suricata \
             file://suricata.yaml \
         "
-- 
2.3.5


