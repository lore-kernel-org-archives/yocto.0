Return-Path: <obi@opendreambox.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55DA8E00DD3; Wed,  6 Jul 2016 01:34:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 443 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Jul 2016 01:34:16 PDT
Received: from mail.saftware.de (mail.saftware.de [83.141.3.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A2F8E00DCF
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 01:34:16 -0700 (PDT)
Received: by t510.zcs.saftware.de (Postfix, from userid 1000)
	id AD3B7B8626C; Wed,  6 Jul 2016 10:26:47 +0200 (CEST)
From: Andreas Oberritter <obi@opendreambox.org>
To: yocto@yoctoproject.org
Date: Wed,  6 Jul 2016 10:26:47 +0200
Message-Id: <1467793607-31333-1-git-send-email-obi@opendreambox.org>
X-Mailer: git-send-email 1.9.1
Subject: [meta-qt4][PATCH] qt4-native: disable precompiled headers
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
X-List-Received-Date: Wed, 06 Jul 2016 08:34:21 -0000

Using precompiled headers may lead to errors in parallel builds:

| In file included from <command-line>:0:0:
| /usr/include/stdc-predef.h:59:1: error: one or more PCH files were found, but they were invalid
|  #endif
|  ^
| /usr/include/stdc-predef.h:59:1: error: use -Winvalid-pch for more information
| /usr/include/stdc-predef.h:59:1: fatal error: .pch/release-shared-emb-x86_64/QtCore: No such file or directory

Upstream bug report:
http://lists.qt-project.org/pipermail/development/2014-July/017689.html

Precompiled headers have been disabled for target builds from
the beginning (commit 46bdf066 in OE-Core).

Signed-off-by: Andreas Oberritter <obi@opendreambox.org>
---
 recipes-qt4/qt4/qt4-native.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-qt4/qt4/qt4-native.inc b/recipes-qt4/qt4/qt4-native.inc
index 58acac8..dac267b 100644
--- a/recipes-qt4/qt4/qt4-native.inc
+++ b/recipes-qt4/qt4/qt4-native.inc
@@ -49,6 +49,7 @@ EXTRA_OECONF = "-prefix ${prefix} \
                 -embedded -no-freetype -no-glib -no-iconv \
                 -exceptions -xmlpatterns \
                 -qt3support \
+                -no-pch \
                 -no-fast -silent -no-rpath"
 
 # yank default -e, otherwise we get the following error:
-- 
1.9.1


