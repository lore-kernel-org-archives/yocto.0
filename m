Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F086E009AD; Sun,  7 Jun 2015 11:30:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46B58E00820
	for <yocto@yoctoproject.org>; Sun,  7 Jun 2015 11:30:12 -0700 (PDT)
Received: by qgfa66 with SMTP id a66so7576749qgf.0
	for <yocto@yoctoproject.org>; Sun, 07 Jun 2015 11:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=ummVvBBffcr+C62miZaW24rZFwvQQzjCrC1QlkJ1DLU=;
	b=xX/vbQKoAQutiLhp3DoftDQ0vSW1kO0GKkA7keuATrRhDcHHEAQxUGv6ViGx8y1Gnr
	KyUwVRJjSbW7y++Ac+f6eHgoQEyVxMZDdkl4iKXjQsjPZEDia01TyBMfqCYP9suFFwpv
	8xXTmijf+mmMuPf9AEgew3BK5EETq5L//jMcLWKnZZNAoGHf7FbfdMIakEcm7XiIhHXx
	Z0TvbFftHxy5wUoPsfvmUSL8K5P1k6Tc5LVKhuYQe3kJRpvY+ck2sSPv01uA7cCXgKO4
	vRU8l6iXvr83awRI+r2HnWCjFJ2Q7kQ/SeEjdkbosD+TgIAjBe6o+opUe3YrnJE88LLd
	iaPg==
X-Received: by 10.55.15.135 with SMTP id 7mr25674904qkp.12.1433701812259;
	Sun, 07 Jun 2015 11:30:12 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id r88sm163222qkh.12.2015.06.07.11.30.10
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 07 Jun 2015 11:30:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  7 Jun 2015 11:30:04 -0700
Message-Id: <1433701806-3473-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH 1/3] aircrack-ng: add new package
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
X-List-Received-Date: Sun, 07 Jun 2015 18:30:19 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/aircrack-ng/aircrack-ng_1.2.bb    | 37 ++++++++++++++++++++++
 .../aircrack-ng/files/fixup_cflags.patch           | 28 ++++++++++++++++
 2 files changed, 65 insertions(+)
 create mode 100644 recipes-security/aircrack-ng/aircrack-ng_1.2.bb
 create mode 100644 recipes-security/aircrack-ng/files/fixup_cflags.patch

diff --git a/recipes-security/aircrack-ng/aircrack-ng_1.2.bb b/recipes-security/aircrack-ng/aircrack-ng_1.2.bb
new file mode 100644
index 0000000..4df072e
--- /dev/null
+++ b/recipes-security/aircrack-ng/aircrack-ng_1.2.bb
@@ -0,0 +1,37 @@
+SUMMARY = "Aircrack-ng is a set of tools for auditing wireless networks"
+DESCRIPTION = "Aircrack-ng is an 802.11 WEP and WPA-PSK keys cracking program that can recover keys once enough data packets have been captured. It implements the standard FMS attack along with some optimizations like KoreK attacks, as well as the PTW attack, thus making the attack much faster compared to other WEP cracking tools."
+SECTION = "security"
+LICENSE = "GPL-2.0"
+
+LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=1fbd81241fe252ec0f5658a521ab7dd8"
+
+DEPENDS = "libnl openssl sqlite3 libpcre libpcap"
+RC = "rc2"
+SRC_URI = "http://download.aircrack-ng.org/${BP}-${RC}.tar.gz \
+            file://fixup_cflags.patch"
+
+SRC_URI[md5sum] = "ebe9d537f06f4d6956213af09c4476da"
+SRC_URI[sha256sum] = "ba5b3eda44254efc5b7c9f776eb756f7cc323ad5d0813c101e92edb483d157e9"
+
+inherit autotools-brokensep pkgconfig
+
+S = "${WORKDIR}/${BP}-rc2"
+
+PACKAGECONFIG ?= ""
+CFLAGS += " -I${S}/src/include"
+
+OEMAKE_EXTRA = "sqlite=true experimental=true pcre=true \
+                prefix=${prefix} \
+                "
+
+do_compile () {
+    make ${OEMAKE_EXTRA} TOOL_PREFIX=${TARGET_SYS}-
+}
+
+do_install () {
+    make DESTDIR=${D} ${OEMAKE_EXTRA} ext_scripts=true install
+}
+
+FILES_${PN} += "/usr/local/"
+
+RDEPENDS_${PN} = "libpcap"
diff --git a/recipes-security/aircrack-ng/files/fixup_cflags.patch b/recipes-security/aircrack-ng/files/fixup_cflags.patch
new file mode 100644
index 0000000..e13dd24
--- /dev/null
+++ b/recipes-security/aircrack-ng/files/fixup_cflags.patch
@@ -0,0 +1,28 @@
+Upstream Status: Iinappropriate
+
+Issues do to build env.
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: aircrack-ng-1.2-rc2/src/Makefile
+===================================================================
+--- aircrack-ng-1.2-rc2.orig/src/Makefile
++++ aircrack-ng-1.2-rc2/src/Makefile
+@@ -3,8 +3,6 @@ include $(AC_ROOT)/common.mak
+ 
+ TEST_DIR	= $(AC_ROOT)/test
+ 
+-CFLAGS		+= -Iinclude
+-
+ iCC             = $(shell find /opt/intel/cc/*/bin/icc)
+ iCFLAGS         = -w -mcpu=pentiumpro -march=pentiumpro $(COMMON_CFLAGS)
+ iOPTFLAGS       = -O3 -ip -ipo -D_FILE_OFFSET_BITS=64
+@@ -102,7 +100,7 @@ endif
+ 
+ 
+ ifeq ($(subst TRUE,true,$(filter TRUE true,$(sqlite) $(SQLITE))),true)
+-	LIBSQL		= -L/usr/local/lib -lsqlite3
++	LIBSQL		= -lsqlite3
+ else
+ 	LIBSQL		=
+ endif
-- 
2.3.5


