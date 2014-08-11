Return-Path: <sujith.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2232E00576; Mon, 11 Aug 2014 03:03:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sujith.h[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D411E00524
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 03:03:37 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id p10so10375347pdj.8
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 03:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=tukekA6aFmVPrhDcnbIvVpym76K7PXFLsN0pvTbX8ps=;
	b=YNouui9enlx3N1ti3r7zm0Om4s/W2x/7j21C9pu08eTB1MzfmAR93RXt4TftdH5otK
	GF0XFvjSW6jB3eN6TjraE7bPZ/t/DoDhDUHTJXtd9pmqpQTSY0q7C6c+gKg8d+8vmvI0
	IabzNYH2ezDn5q77fuq58YE1X5ynbBqz0KhgH8JvxC1u5pDh7ITCkfzrMhvGBix8Y42+
	yny2nn5dQOIajTyiH/8G+IH8QQxz6FkycY/1R2xDYuua2K1LT6i30At3ADf5VW45rGN7
	pCeqm1gzvZNmwvb3Bi4PY4/KcsXiXgnfoStApRb53vWrePyJSbH0CWbwPkybnfGz69yJ
	WT9g==
X-Received: by 10.68.231.138 with SMTP id tg10mr41265027pbc.72.1407751417254; 
	Mon, 11 Aug 2014 03:03:37 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id dd2sm2582565pdb.16.2014.08.11.03.03.34
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Aug 2014 03:03:36 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Aug 2014 15:30:29 +0530
Message-Id: <1407751229-13058-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.8.4
Cc: Sujith H <Sujith_Haridasan@mentor.com>,
	Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
Subject: [PATCH] psplash: Adding support for systemd service files
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
X-List-Received-Date: Mon, 11 Aug 2014 10:03:42 -0000

From: Sujith H <Sujith_Haridasan@mentor.com>

If the DISTRO_FEATURES has systemd, then its better
to have corresponding service files associated with
the psplash. This change will help to do the same.

Signed-off-by: Muzaffar Mahmood <muzaffar_mahmood@mentor.com>
Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
---
 meta/recipes-core/psplash/files/psplash-quit.service  | 11 +++++++++++
 meta/recipes-core/psplash/files/psplash-start.service | 11 +++++++++++
 meta/recipes-core/psplash/psplash_git.bb              | 12 +++++++++++-
 3 files changed, 33 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-core/psplash/files/psplash-quit.service
 create mode 100644 meta/recipes-core/psplash/files/psplash-start.service

diff --git a/meta/recipes-core/psplash/files/psplash-quit.service b/meta/recipes-core/psplash/files/psplash-quit.service
new file mode 100644
index 0000000..14bd499
--- /dev/null
+++ b/meta/recipes-core/psplash/files/psplash-quit.service
@@ -0,0 +1,11 @@
+[Unit]
+Description=Terminate Psplash Boot Screen
+After=psplash-start.service
+
+[Service]
+Type=oneshot
+ExecStart=/usr/bin/psplash-write QUIT
+TimeoutSec=20
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta/recipes-core/psplash/files/psplash-start.service b/meta/recipes-core/psplash/files/psplash-start.service
new file mode 100644
index 0000000..502b150
--- /dev/null
+++ b/meta/recipes-core/psplash/files/psplash-start.service
@@ -0,0 +1,11 @@
+[Unit]
+Description=Starts Psplash Boot screen
+Wants=systemd-vconsole-setup.service
+After=systemd-vconsole-setup.service systemd-udev-trigger.service systemd-udevd.service
+DefaultDependencies=no
+
+[Service]
+ExecStart=/usr/bin/psplash
+
+[Install]
+WantedBy=sysinit.target
diff --git a/meta/recipes-core/psplash/psplash_git.bb b/meta/recipes-core/psplash/psplash_git.bb
index 628ced4..16fa0ae 100644
--- a/meta/recipes-core/psplash/psplash_git.bb
+++ b/meta/recipes-core/psplash/psplash_git.bb
@@ -11,6 +11,8 @@ PR = "r15"
 
 SRC_URI = "git://git.yoctoproject.org/${BPN} \
            file://psplash-init \
+           file://psplash-start.service \
+           file://psplash-quit.service \
            ${SPLASH_IMAGES}"
 
 SPLASH_IMAGES = "file://psplash-poky-img.h;outsuffix=default"
@@ -65,11 +67,14 @@ python __anonymous() {
 
 S = "${WORKDIR}/git"
 
-inherit autotools pkgconfig update-rc.d update-alternatives
+inherit autotools pkgconfig update-rc.d update-alternatives systemd
 
 ALTERNATIVE_PRIORITY = "100"
 ALTERNATIVE_LINK_NAME[psplash] = "${bindir}/psplash"
 
+SYSTEMD_PACKAGES = "${@base_contains('DISTRO_FEATURES','systemd','${PN}','',d)}"
+SYSTEMD_SERVICE_${PN} = "${@base_contains('DISTRO_FEATURES','systemd','psplash-start.service psplash-quit.service','',d)}"
+
 python do_compile () {
     import shutil
 
@@ -103,6 +108,11 @@ do_install_append() {
 		install -m 0755 $i ${D}${bindir}/$i
 	done
 	rm -f ${D}${bindir}/psplash
+
+	if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+                install -d ${D}${systemd_unitdir}/system
+                install -m 644 ${WORKDIR}/*.service ${D}/${systemd_unitdir}/system
+        fi
 }
 
 FILES_${PN} += "/mnt/.psplash"
-- 
1.8.4


