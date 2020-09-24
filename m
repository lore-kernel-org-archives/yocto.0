Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10679.1600929899440267571
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 23:44:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 84D5038C123F
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:44:58 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 08O6ia1C017967
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:44:47 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Wed, 23 Sep 2020 23:44:13 -0700
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-anaconda][PATCH] libgnomekbd: add recipe which was removed from meta-openembedded
Date: Thu, 24 Sep 2020 14:44:12 +0800
Message-ID: <20200924064412.37742-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

Add this recipe as python3-anaconda recipe still needs it.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 recipes-gnome/libgnome/libgnomekbd_3.26.1.bb | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 recipes-gnome/libgnome/libgnomekbd_3.26.1.bb

diff --git a/recipes-gnome/libgnome/libgnomekbd_3.26.1.bb b/recipes-gnome/libgnome/libgnomekbd_3.26.1.bb
new file mode 100644
index 0000000..2a2db9c
--- /dev/null
+++ b/recipes-gnome/libgnome/libgnomekbd_3.26.1.bb
@@ -0,0 +1,14 @@
+SUMMARY = "GNOME keyboard library"
+LICENSE = "LGPLv2"
+LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=6e29c688d912da12b66b73e32b03d812"
+
+SECTION = "x11/gnome/libs"
+
+DEPENDS = "glib-2.0 gtk+3 libxklavier"
+
+inherit features_check gnomebase gobject-introspection gsettings gettext
+
+REQUIRED_DISTRO_FEATURES = "x11"
+
+SRC_URI[archive.md5sum] = "98040022484406e7ebe25f82cef93344"
+SRC_URI[archive.sha256sum] = "f7ca02631576e9b88aee1b1bae37ac1488b80ee7975f20a97f29e761a7172679"
-- 
2.17.1

