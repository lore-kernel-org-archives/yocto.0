Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 112B0E006C2
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 05:14:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0ADEkWV021160
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 10 Jan 2013 05:14:46 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Thu, 10 Jan 2013 05:14:46 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Thu, 10 Jan 2013 15:15:11 +0200
Message-ID: <1357823711-1297-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH] consolekit: Remove bbappend as gnome-common is not GPLv3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Jan 2013 13:14:48 -0000
Content-Type: text/plain

gnome-common's LICENSE fixed with this oe-core commit:
commit 97469db0cba6d21ab1290238225d3fe365931a5c
Author: Ross Burton <ross.burton@intel.com>
Date:   Tue Oct 30 12:02:45 2012 +0000

gnome-common: Fix license
gnome-common 2.28 is GPLv2+.  From Christian Persch, upstream:
The licence is presumed GPL2+, although it's not there explicitly. GPL2+
because as far as I could figure out when I tried to, gnome-autogen started in
gnome-core which had a GPL2 COPYING file.

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../consolekit/consolekit_0.4.5.bbappend           |    8 --------
 1 file changed, 8 deletions(-)
 delete mode 100644 recipes-support-ivi/consolekit/consolekit_0.4.5.bbappend

diff --git a/recipes-support-ivi/consolekit/consolekit_0.4.5.bbappend b/recipes-support-ivi/consolekit/consolekit_0.4.5.bbappend
deleted file mode 100644
index 1dccee5..0000000
--- a/recipes-support-ivi/consolekit/consolekit_0.4.5.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-PRINC := "${@int(PRINC) + 1}"
-
-# gnome-common is GPLv3 so we drop this dependency
-# if INCOMPATIBLE_LICENSE contains GPLv3
-python () {
-    if (d.getVar("INCOMPATIBLE_LICENSE", True) or "").find("GPLv3") != -1:
-        d.setVar("DEPENDS", " ".join(i for i in d.getVar("DEPENDS").split() if i != "gnome-common" and i != "gconf" and i != "gconf-native"))
-}
-- 
1.7.9.5


