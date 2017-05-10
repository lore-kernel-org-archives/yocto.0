Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13B7AE00B3E; Wed, 10 May 2017 02:12:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EBA0E00B31
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 02:12:21 -0700 (PDT)
Received: by mail-wr0-f179.google.com with SMTP id l50so34545709wrc.3
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 02:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=G00Pek4secS1JoVAHBPLVT0+SMv4+27G+546Y6jHdmw=;
	b=xxV9tSeKc6oEDAtBy2YCda0EwO5w7NOVz3S7H2mDsDuBOmlm2eLs7qb2t/LnQC4emN
	jHR3CcA0xdVO7y097nHGCRbLX1yvY3iUAGCgmLAcQyxVf3xzcxjc8BfHg0xuVnfzRex3
	/gNTKM7JVwe4kOhYwTnH/HTxPfl+IU6q00Kc60v6zNxEc/7EUf/b+n5ax4lFc4i0XYRo
	Jp0gL63XI+hBfjBhPYBuENoSW+cCUv92Qx5K29nEcPXP7rCf7Qyy0HlBxm8SYuf68CwT
	07rPztucDZnl+M79nKFSCUIfkGpLcU+c4gdLqgUzygbQvwtcJtaAi/tinMO2ukCMDSch
	feLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=G00Pek4secS1JoVAHBPLVT0+SMv4+27G+546Y6jHdmw=;
	b=c3Oyyoa+mywk91Qgj8ikdPqXhb/5ctbJZLGQsKRDuPIhjVfqQp44bG4ZHnIlecWAIx
	os+adeulmDV0D6El0JJsf1/1jTmUxEtLcG6pTHHrJU2wAeb9VeM9/+xQP1XeTM4zpEFo
	xIECy0CqjHGyIURxTmug8Gt9kwvD6WlQTtBtgO5X3gIm+iss/YeE/eCxJjKeVGE5ODGY
	FLMHGIxkQZKa6Hz8Mym6TRupJ/x1XP1/io1nWDx0ME7vRVrYDdmUWrykB8fKxrTo714F
	dpx46D2bOf1vHGGv4bLmS6+92SRjIc3Blyk59Vs2Lc60LDXOEUI3+85I4VchszHqsl04
	G2vg==
X-Gm-Message-State: AODbwcBbkfOSDb92AUnrX2mRlTEAwAqryOn7ef0ZgbkcccdNQlJDVUYd
	fz06TvbbmFukTSogjTU=
X-Received: by 10.223.136.71 with SMTP id e7mr2760634wre.73.1494407540106;
	Wed, 10 May 2017 02:12:20 -0700 (PDT)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	p17sm2988629wmd.11.2017.05.10.02.12.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 10 May 2017 02:12:19 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 May 2017 10:12:14 +0100
Message-Id: <1494407534-8428-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.8.1
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH][meta-qt4] qwt: backport a patch from upstream to fix format string warnings
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
X-List-Received-Date: Wed, 10 May 2017 09:12:23 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-qt4/recipes-libs/qwt-6.0.1/warnings.patch | 89 +++++++++++++++++++++++
 recipes-qt4/recipes-libs/qwt.inc                  |  3 +-
 2 files changed, 91 insertions(+), 1 deletion(-)
 create mode 100644 recipes-qt4/recipes-libs/qwt-6.0.1/warnings.patch

diff --git a/recipes-qt4/recipes-libs/qwt-6.0.1/warnings.patch b/recipes-qt4/recipes-libs/qwt-6.0.1/warnings.patch
new file mode 100644
index 0000000..865363a
--- /dev/null
+++ b/recipes-qt4/recipes-libs/qwt-6.0.1/warnings.patch
@@ -0,0 +1,89 @@
+Fix format string security warnings.
+
+Upstream-Status: Backport (r1502)
+Signed-off-by: Ross Burton <ross.burton@intel.com>
+
+Index: qwt/textengines/mathml/qwt_mml_document.cpp
+===================================================================
+--- qwt/textengines/mathml/qwt_mml_document.cpp	(revision 1501)
++++ qwt/textengines/mathml/qwt_mml_document.cpp	(revision 1502)
+@@ -3,6 +3,7 @@
+ #include <QDesktopWidget>
+ #include <QPainter>
+ #include <QDomNode>
++#include <QDebug>
+ 
+ #include "qwt_mml_document.h"
+ 
+@@ -3122,7 +3123,7 @@
+ {
+     if ( node == 0 ) return;
+ 
+-    qWarning( ( indent + node->toStr() ).toLatin1().data() );
++    qWarning() << indent + node->toStr();
+ 
+     indent += "  ";
+     const QwtMmlNode *child = node->firstChild();
+@@ -3702,7 +3703,7 @@
+         }
+         else
+         {
+-            qWarning( ( "QwtMmlNode::scriptlevel(): bad value " + expl_sl_str ).toLatin1().data() );
++            qWarning() << "QwtMmlNode::scriptlevel(): bad value " + expl_sl_str;
+             return parent_sl;
+         }
+     }
+@@ -3719,7 +3720,7 @@
+         return parent_sl - 1;
+     else
+     {
+-        qWarning( ( "QwtMmlNode::scriptlevel(): could not parse value: \"" + expl_sl_str + "\"" ).toLatin1().data() );
++        qWarning() << "QwtMmlNode::scriptlevel(): could not parse value: \"" + expl_sl_str + "\"";
+         return parent_sl;
+     }
+ }
+@@ -5637,7 +5638,7 @@
+ 
+         if ( !literal.startsWith( "&#" ) )
+         {
+-            qWarning( ( "decodeEntityValue(): bad entity literal: \"" + literal + "\"" ).toLatin1().data() );
++            qWarning() << "decodeEntityValue(): bad entity literal: \"" + literal + "\"";
+             return QString::null;
+         }
+ 
+@@ -5646,7 +5647,7 @@
+         int i = literal.indexOf( ';' );
+         if ( i == -1 )
+         {
+-            qWarning( ( "decodeEntityValue(): bad entity literal: \"" + literal + "\"" ).toLatin1().data() );
++            qWarning() << "decodeEntityValue(): bad entity literal: \"" + literal + "\"";
+             return QString::null;
+         }
+ 
+@@ -5655,7 +5656,7 @@
+ 
+         if ( char_code.isEmpty() )
+         {
+-            qWarning( ( "decodeEntityValue(): bad entity literal: \"" + literal + "\"" ).toLatin1().data() );
++            qWarning() << "decodeEntityValue(): bad entity literal: \"" + literal + "\"";
+             return QString::null;
+         }
+ 
+@@ -5666,7 +5667,7 @@
+             unsigned c = char_code.toUInt( &ok, 16 );
+             if ( !ok )
+             {
+-                qWarning( ( "decodeEntityValue(): bad entity literal: \"" + literal + "\"" ).toLatin1().data() );
++                qWarning() << "decodeEntityValue(): bad entity literal: \"" + literal + "\"";
+                 return QString::null;
+             }
+             result += QChar( c );
+@@ -5677,7 +5678,7 @@
+             unsigned c = char_code.toUInt( &ok, 10 );
+             if ( !ok )
+             {
+-                qWarning( ( "decodeEntityValue(): bad entity literal: \"" + literal + "\"" ).toLatin1().data() );
++                qWarning() << "decodeEntityValue(): bad entity literal: \"" + literal + "\"";
+                 return QString::null;
+             }
+             result += QChar( c );
diff --git a/recipes-qt4/recipes-libs/qwt.inc b/recipes-qt4/recipes-libs/qwt.inc
index 60f73a6..b84505b 100644
--- a/recipes-qt4/recipes-libs/qwt.inc
+++ b/recipes-qt4/recipes-libs/qwt.inc
@@ -7,7 +7,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=dac2743472b0462ff3cfb4af42051c88"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/qwt/qwt-${PV}.tar.bz2;name=qwt \
            file://qwt6.patch \
-           file://qwt6-fix-linking-with-ld-gold.patch"
+           file://qwt6-fix-linking-with-ld-gold.patch \
+           file://warnings.patch"
 
 S = "${WORKDIR}/qwt-${PV}"
 
-- 
2.8.1


