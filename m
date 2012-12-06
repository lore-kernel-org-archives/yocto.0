Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30541E0144A
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 03:46:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qB6Bk411013287
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 6 Dec 2012 03:46:04 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Thu, 6 Dec 2012 03:46:04 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Thu, 6 Dec 2012 13:45:51 +0200
Message-ID: <1354794351-28153-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [PATCH][meta-ivi] pango: Remove bbappend as upstream removed its dependency to gnome-common
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
X-List-Received-Date: Thu, 06 Dec 2012 11:46:05 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-graphics/pango/pango_1.30.0.bbappend |    8 --------
 1 files changed, 0 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-graphics/pango/pango_1.30.0.bbappend

diff --git a/recipes-graphics/pango/pango_1.30.0.bbappend b/recipes-graphics/pango/pango_1.30.0.bbappend
deleted file mode 100644
index b2323e6..0000000
--- a/recipes-graphics/pango/pango_1.30.0.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-PRINC = "1"
-
-# gnome-common is GPLv3 so we drop this dependency
-# if INCOMPATIBLE_LICENSE contains GPLv3
-python () {
-    if (d.getVar("INCOMPATIBLE_LICENSE", True) or "").find("GPLv3") != -1:
-        d.setVar("DEPENDS", " ".join(i for i in d.getVar("DEPENDS").split() if i != "gnome-common"))
-}
-- 
1.7.5.4


