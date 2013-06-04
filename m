Return-Path: <sujith.h@gmail.com>
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09288E01471
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 03:06:40 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id g10so13080pdj.13
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 03:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=OF7qdIPswKcvlUYi8erqKtIOB8ncpNyrAHc4Lh1fUDI=;
	b=TXQgEVq/huYEpMKMNbVNu/il6QSGDru2CV9LVkNiIMWpssqy0Wm8+qKH+lx+TUS7HZ
	GkUpGZdBjzQ6leAO78nM6dBBY3kmccWePy7tpn2yg15VsDs8ovZDj4sSWZfAqrsf4v0b
	I9HwrL+kxdkTcfZKk3oE6cFo4Gt5dbnkhQkWAmA70RKMhG2XqGCP2XJyNSIiBymCq/gC
	CqiiQ78CSdkRzcNxt4zaknSZ1cDgsX3JNJt+rICITgflVVQ/O3XQVT8nlRT26rfQc8v4
	WzZPskPWFLEZYpGS6+1TE1I+vHY9MOxynbR3TUGeaJkYWLaMxYOHfSFicBlwjMY72E9E
	/AQA==
X-Received: by 10.66.138.105 with SMTP id qp9mr28015307pab.127.1370340399464; 
	Tue, 04 Jun 2013 03:06:39 -0700 (PDT)
Received: from linux-z8xt.site ([115.119.134.194])
	by mx.google.com with ESMTPSA id
	vz8sm66935924pac.20.2013.06.04.03.06.36 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 04 Jun 2013 03:06:38 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Tue,  4 Jun 2013 15:33:25 +0530
Message-Id: <1370340205-21395-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.8.1.4
Cc: yocto@yoctoproject.org, Sujith H <Sujith_Haridasan@mentor.com>
Subject: [meta-ivi] [PATCH] node-startup-controller: Fixing conf file while packaging
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
X-List-Received-Date: Tue, 04 Jun 2013 10:06:40 -0000

From: Sujith H <Sujith_Haridasan@mentor.com>

Issue found while building foton-image when PACKAGE_CLASSES
set to "package_ipk". This patch will fix the issue.
This patch has to be applied to branch 4.0.

Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
---
 .../node-startup-controller/node-startup-controller_1.0.2.bb           | 3 +++
 .../node-startup-controller/node-startup-controller_git.bb             | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/recipes-extended/node-startup-controller/node-startup-controller_1.0.2.bb b/recipes-extended/node-startup-controller/node-startup-controller_1.0.2.bb
index 470bb97..fd3e1c9 100644
--- a/recipes-extended/node-startup-controller/node-startup-controller_1.0.2.bb
+++ b/recipes-extended/node-startup-controller/node-startup-controller_1.0.2.bb
@@ -55,3 +55,6 @@ FILES_${PN}-nsm-dummy = "\
 FILES_${PN}-nsm-dummy-dbg = "\
     ${libdir}/${PN}-1/.debug/nsm-dummy \
     "
+do_install_append() {
+    rm -f ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.conf
+}
diff --git a/recipes-extended/node-startup-controller/node-startup-controller_git.bb b/recipes-extended/node-startup-controller/node-startup-controller_git.bb
index 0d3b90c..2fec5da 100644
--- a/recipes-extended/node-startup-controller/node-startup-controller_git.bb
+++ b/recipes-extended/node-startup-controller/node-startup-controller_git.bb
@@ -51,3 +51,6 @@ FILES_${PN}-nsm-dummy = "\
 FILES_${PN}-nsm-dummy-dbg = "\
 	${libdir}/${PN}-1/.debug/nsm-dummy \
 	"
+do_install_append() {
+    rm -f ${D}${sysconfdir}/dbus-1/system.d/org.genivi.NodeStateManager.conf
+}
-- 
1.8.1.4


