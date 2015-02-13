Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 033D4E002AC; Fri, 13 Feb 2015 15:57:04 -0800 (PST)
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
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3865E00288
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 15:57:00 -0800 (PST)
Received: by pdbfl12 with SMTP id fl12so22467516pdb.4
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 15:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=3AR/3cQBh6bjGpZD8sQb5DlvaE2TJ50dwlWhd5e9GAA=;
	b=pcxRlL/pyH5hOiSpWErHwsv8y1swe8GN6Mq6yeJ19Ce0H8IlJ+qa6hq+qbD+1XcHNH
	wHwS/X52lJsqBO73cQS+q1AkY9y0Fk9DSMXpDd5ZZdscXL7BwMWIs+ecp/LWq3S9kWpJ
	ZuzJQFetwAbLKY5EnEunMIuLBP2gs1xcdrZ1mVYmuhpmPThHNwCxNLo0Gk1c+J9/3pMt
	1WevSkGlYR4hfsNJU8ZeJS/46iOs89wZktiXkg1iZ6+XOHY56LnlhNTNECLDDpEM5dCS
	3TP84D7olAzFP8jaiNDxlRdjAp7JJ7Gsjk0IDrI9N2dWi7e9HzkunE2sDd7ERjTKLQzJ
	6qJQ==
X-Received: by 10.68.189.105 with SMTP id gh9mr19129940pbc.142.1423871819748; 
	Fri, 13 Feb 2015 15:56:59 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id h14sm7751593pdm.60.2015.02.13.15.56.57
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 13 Feb 2015 15:56:58 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Feb 2015 15:56:47 -0800
Message-Id: <1423871807-20760-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] nmap: add aarch64 config support
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
X-List-Received-Date: Fri, 13 Feb 2015 23:57:04 -0000

allow nmap to build for arm64 qemu machine.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../nmap/files/add_aarch64_to_configure.patch      | 28 ++++++++++++++++++++++
 recipes-security/nmap/nmap_6.47.bb                 |  3 ++-
 2 files changed, 30 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/nmap/files/add_aarch64_to_configure.patch

diff --git a/recipes-security/nmap/files/add_aarch64_to_configure.patch b/recipes-security/nmap/files/add_aarch64_to_configure.patch
new file mode 100644
index 0000000..27b3d76
--- /dev/null
+++ b/recipes-security/nmap/files/add_aarch64_to_configure.patch
@@ -0,0 +1,28 @@
+nmap: Add support for aarch64* builds
+
+Upstream-Status: Submitted to nmap-dev
+
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+Index: config.sub
+===================================================================
+--- a/config.sub
++++ b/config.sub
+@@ -249,7 +249,7 @@ case $basic_machine in
+ 	| a29k \
+ 	| alpha | alphaev[4-8] | alphaev56 | alphaev6[78] | alphapca5[67] \
+ 	| alpha64 | alpha64ev[4-8] | alpha64ev56 | alpha64ev6[78] | alpha64pca5[67] \
+-	| am33_2.0 \
++	| am33_2.0 | aarch64 | aarch64be \
+ 	| arc | arm | arm[bl]e | arme[lb] | armv[2345] | armv[345][lb] | avr | avr32 \
+ 	| bfin \
+ 	| c4x | clipper \
+@@ -343,7 +343,7 @@ case $basic_machine in
+ 	| alpha64-* | alpha64ev[4-8]-* | alpha64ev56-* | alpha64ev6[78]-* \
+ 	| alphapca5[67]-* | alpha64pca5[67]-* | arc-* \
+ 	| arm-*  | armbe-* | armle-* | armeb-* | armv*-* \
+-	| avr-* | avr32-* \
++	| avr-* | avr32-* | aarch64-* | aarch64be-*\
+ 	| bfin-* | bs2000-* \
+ 	| c[123]* | c30-* | [cjt]90-* | c4x-* \
+ 	| clipper-* | craynv-* | cydra-* \
diff --git a/recipes-security/nmap/nmap_6.47.bb b/recipes-security/nmap/nmap_6.47.bb
index 2c43bf7..c0b0650 100644
--- a/recipes-security/nmap/nmap_6.47.bb
+++ b/recipes-security/nmap/nmap_6.47.bb
@@ -5,7 +5,8 @@ LICENSE = "GPL-2.0"
 
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 
-SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2"
+SRC_URI = "http://nmap.org/dist/${BP}.tar.bz2 \
+            file://add_aarch64_to_configure.patch"
 
 SRC_URI[md5sum] = "edfe81f6763223c0a29bfa15a8526e2a"
 SRC_URI[sha256sum] = "8fa11e9e203ce2d81a207db5ca4f110a525f6c01c1dd0018325a7112a51aa591"
-- 
1.9.1


