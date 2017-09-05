Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D542AE00CA5; Mon,  4 Sep 2017 23:00:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,TVD_SPACE_RATIO
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A85E00CF2
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 23:00:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8560Apu010007
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 4 Sep 2017 23:00:11 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 4 Sep 2017 23:00:10 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 4 Sep 2017 22:59:51 -0700
Message-ID: <20170905055958.54697-14-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <20170905055958.54697-1-wenzong.fan@windriver.com>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 14/21] selinux-dbus: add package 2.7 (20170804)
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
X-List-Received-Date: Tue, 05 Sep 2017 06:00:13 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Move policycoreutils/sepolicy/dbus to dbus.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/selinux-dbus.inc    | 14 ++++++++++++++
 recipes-security/selinux/selinux-dbus_2.7.bb |  7 +++++++
 2 files changed, 21 insertions(+)
 create mode 100644 recipes-security/selinux/selinux-dbus.inc
 create mode 100644 recipes-security/selinux/selinux-dbus_2.7.bb

diff --git a/recipes-security/selinux/selinux-dbus.inc b/recipes-security/selinux/selinux-dbus.inc
new file mode 100644
index 0000000..1b66136
--- /dev/null
+++ b/recipes-security/selinux/selinux-dbus.inc
@@ -0,0 +1,14 @@
+SUMMARY = "SELinux dbus service files"
+DESCRIPTION = "\
+Provide SELinux dbus service files and scripts."
+
+SECTION = "base"
+LICENSE = "GPLv2+"
+
+RDEPENDS_${PN} += "python selinux-python-sepolicy"
+
+FILES_${PN} += "\
+        ${datadir}/system-config-selinux/selinux_server.py \
+        ${datadir}/polkit-1/actions/org.selinux.policy \
+        ${datadir}/dbus-1/system-services/org.selinux.service \
+"
diff --git a/recipes-security/selinux/selinux-dbus_2.7.bb b/recipes-security/selinux/selinux-dbus_2.7.bb
new file mode 100644
index 0000000..a4f14ed
--- /dev/null
+++ b/recipes-security/selinux/selinux-dbus_2.7.bb
@@ -0,0 +1,7 @@
+include selinux_20170804.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "6944aa95cfb44e4d76b1aff48b38f08e"
+SRC_URI[sha256sum] = "a7f3dbe68c0d02cd1cbe6aac06e87c2957668cb88083389654fabacb79641ae4"
-- 
2.13.0


