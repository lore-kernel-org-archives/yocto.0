Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 488BCE009B2; Thu,  9 Mar 2017 08:00:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 421 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Mar 2017 08:00:48 PST
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 943F7E009A0
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 08:00:48 -0800 (PST)
Received: from mail2.siemens.de (mail2.siemens.de [139.25.208.11])
	by david.siemens.de (8.15.2/8.15.2) with ESMTPS id v29Frjt7026938
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 9 Mar 2017 16:53:46 +0100
Received: from dev.sbt.siemens.com (MD1FZU9C.ad001.siemens.net [139.16.77.65])
	by mail2.siemens.de (8.15.2/8.15.2) with ESMTP id v29FrjaM020363;
	Thu, 9 Mar 2017 16:53:45 +0100
From: Pascal Bach <pascal.bach@siemens.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Mar 2017 16:53:40 +0100
Message-Id: <1489074820-14554-1-git-send-email-pascal.bach@siemens.com>
X-Mailer: git-send-email 2.1.4
Subject: [meta-qt4][PATCH] qt4: don't override dbg package content
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
X-List-Received-Date: Thu, 09 Mar 2017 16:00:51 -0000

The default from bitbake.conf is `FILES_${PN}-dbg = "/usr/lib/debug /usr/src/debug"`
which is perfectly fine as a basis for Qt4.
This also makes the recipe work with different debug split schemes.

Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
---
 recipes-qt4/qt4/qt4.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-qt4/qt4/qt4.inc b/recipes-qt4/qt4/qt4.inc
index 2058e54..8f244ce 100644
--- a/recipes-qt4/qt4/qt4.inc
+++ b/recipes-qt4/qt4/qt4.inc
@@ -130,7 +130,6 @@ PACKAGES_DYNAMIC += "^${QT_BASE_NAME}-plugin-.* ^${QT_BASE_NAME}-translation-.*
 ALLOW_EMPTY_${PN} = "1"
 FILES_${PN}     = ""
 FILES_${PN}-dev = "${includedir}/${QT_DIR_NAME}/Qt/*"
-FILES_${PN}-dbg = "/usr/src/debug/"
 FILES_${QT_BASE_NAME}-demos-doc = "${docdir}/${QT_DIR_NAME}/qch/qt.qch"
 RRECOMMENDS_${PN} = "${LIB_PACKAGES} ${OTHER_PACKAGES}"
 RRECOMMENDS_${PN}-dev = "${DEV_PACKAGES}"
-- 
2.1.4


