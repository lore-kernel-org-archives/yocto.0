Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17F56E00E59; Wed, 13 Nov 2019 17:50:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 192A5E00E4C
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:49 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1nlux024249
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:47 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:47 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:55 +0800
Message-ID: <20191114014901.22862-14-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 13/19] selinux-dbus: uprev to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:11 -0000
Content-Type: text/plain

* Switch to python3

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-dbus.inc    | 2 +-
 recipes-security/selinux/selinux-dbus_2.8.bb | 7 -------
 recipes-security/selinux/selinux-dbus_2.9.bb | 7 +++++++
 3 files changed, 8 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-dbus_2.8.bb
 create mode 100644 recipes-security/selinux/selinux-dbus_2.9.bb

diff --git a/recipes-security/selinux/selinux-dbus.inc b/recipes-security/selinux/selinux-dbus.inc
index 1b66136..62e45b7 100644
--- a/recipes-security/selinux/selinux-dbus.inc
+++ b/recipes-security/selinux/selinux-dbus.inc
@@ -5,7 +5,7 @@ Provide SELinux dbus service files and scripts."
 SECTION = "base"
 LICENSE = "GPLv2+"
 
-RDEPENDS_${PN} += "python selinux-python-sepolicy"
+RDEPENDS_${PN} += "python3-core selinux-python-sepolicy"
 
 FILES_${PN} += "\
         ${datadir}/system-config-selinux/selinux_server.py \
diff --git a/recipes-security/selinux/selinux-dbus_2.8.bb b/recipes-security/selinux/selinux-dbus_2.8.bb
deleted file mode 100644
index 5091624..0000000
--- a/recipes-security/selinux/selinux-dbus_2.8.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20180524.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "23f0264df3ed123904a17d71f2a5b325"
-SRC_URI[sha256sum] = "3339cb9cd77579bab6158afc054409c3bf952e282ef957ea732b19c9f4697bc6"
diff --git a/recipes-security/selinux/selinux-dbus_2.9.bb b/recipes-security/selinux/selinux-dbus_2.9.bb
new file mode 100644
index 0000000..ab00ffc
--- /dev/null
+++ b/recipes-security/selinux/selinux-dbus_2.9.bb
@@ -0,0 +1,7 @@
+require selinux_20190315.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "e403f9745fad67aae5903909572ca5b8"
+SRC_URI[sha256sum] = "ac54cecdea6a88b4a818981ac82654d054a3c5232b1b282ebf7418c3e350cc7a"
-- 
2.17.1


