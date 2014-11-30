Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0DBCE00902; Sat, 29 Nov 2014 20:50:14 -0800 (PST)
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
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A1BCE00769
	for <yocto@yoctoproject.org>; Sat, 29 Nov 2014 20:50:01 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id kq14so8974702pab.20
	for <yocto@yoctoproject.org>; Sat, 29 Nov 2014 20:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=/dASkLCK8cIyTlPXHJ/qwEb4ccKepsWHB+A4kOJU904=;
	b=O2rgfFxTcJ3b4ZurBTa/k0jiWWQQs/3XqDljPdA3hxPvUUewfh3RC1DIpKCkcxyls5
	4mYrZDzNkzDD3aEgsZ47NbBuQSfloOnzf3+lHELCydolXcfK7NFuoqXhqs69Eq0vgnvN
	UtVgouobH0R2Qt9vDI80yTi2/a08UEDJmPqGh0KmyYgRLFG4065T9wxcOZqeVyRKX4po
	iqpY0Z5R9SzPFp6nEVXRsMyAQ/O4610DTvm73yHs+Q/GvDNLAKqhvxGNyn41RY7rJXBE
	W58YtbWlMvzfy02mX4leAD0qymRH28hNYsNURDvI78PYjbqnNpPfmT/JzMSMtVrInLai
	z0wA==
X-Received: by 10.70.43.176 with SMTP id x16mr87699080pdl.31.1417323001327;
	Sat, 29 Nov 2014 20:50:01 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	bb3sm13860037pbc.15.2014.11.29.20.49.58 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 29 Nov 2014 20:50:00 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 29 Nov 2014 20:49:46 -0800
Message-Id: <1417322986-8420-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] nmap: update to version 6.47
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
X-List-Received-Date: Sun, 30 Nov 2014 04:50:15 -0000

for list of changes see:
http://seclists.org/nmap-dev/2014/q3/335

use nmap.inc to house most code.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/nmap/{nmap_6.46.bb => nmap.inc} |  8 +-------
 recipes-security/nmap/nmap_6.47.bb               | 10 ++++++++++
 2 files changed, 11 insertions(+), 7 deletions(-)
 rename recipes-security/nmap/{nmap_6.46.bb => nmap.inc} (88%)
 create mode 100644 recipes-security/nmap/nmap_6.47.bb

diff --git a/recipes-security/nmap/nmap_6.46.bb b/recipes-security/nmap/nmap.inc
similarity index 88%
rename from recipes-security/nmap/nmap_6.46.bb
rename to recipes-security/nmap/nmap.inc
index a04dc7b..79fe7d4 100644
--- a/recipes-security/nmap/nmap_6.46.bb
+++ b/recipes-security/nmap/nmap.inc
@@ -2,12 +2,6 @@ SUMMARY = "network auditing tool"
 DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing.\nGui support via appending to IMAGE_FEATURES x11-base in local.conf"
 SECTION = "security"
 LICENSE = "GPL-2.0"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-
-SRC_URI = "http://nmap.org/dist/${BPN}-${PV}.tar.bz2"
-
-SRC_URI[md5sum] = "5a36ad3a63d5b7ea5514f745a397436a"
-SRC_URI[sha256sum] = "3f89d9053c69507fe9533c40188a6561d49607a37b1db6380aed9039d4883137"
 
 inherit autotools-brokensep pkgconfig distro_features_check
 
@@ -43,7 +37,7 @@ FILES_${PN} = "${bindir}/nmap ${datadir}/nmap/*"
 # append packages if enabled
 FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ncat", "${bindir}/ncat ${target_datadir}/ncat", "", d)}"
 FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "nping", "${bindir}/nping", "", d)}"
-FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ndiff", "${bindir}/ndiff ${libdir}/python${PYTHON_BASEVERSION}/site-packages/ndiff*", "", d)}"
+FILES_${PN} += "${@bb.utils.contains("PACKAGECONFIG", "ndiff", "${bindir}/ndiff ${libdir}/python${PYTHON_BASEVERSION}/site-packages/ndiff.py*", "", d)}"
 
 PACKAGES += "${@bb.utils.contains("PACKAGECONFIG", "zenmap", "${PN}-zenmap", "", d)}"
 
diff --git a/recipes-security/nmap/nmap_6.47.bb b/recipes-security/nmap/nmap_6.47.bb
new file mode 100644
index 0000000..bcaee0c
--- /dev/null
+++ b/recipes-security/nmap/nmap_6.47.bb
@@ -0,0 +1,10 @@
+
+include nmap.inc
+
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+
+SRC_URI = "http://nmap.org/dist/${BPN}-${PV}.tar.bz2"
+
+
+SRC_URI[md5sum] = "edfe81f6763223c0a29bfa15a8526e2a"
+SRC_URI[sha256sum] = "8fa11e9e203ce2d81a207db5ca4f110a525f6c01c1dd0018325a7112a51aa591"
-- 
1.9.1


