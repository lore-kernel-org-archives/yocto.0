Return-Path: <hugo.saldanha@aker.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F3D6E00922; Fri, 27 Mar 2015 15:03:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from asmg.aker.com.br (asmg.aker.com.br [177.159.144.67])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CF1DAE00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 15:03:38 -0700 (PDT)
Received: from mail.aker.com.br (bat.bsb.aker.com.br [10.0.0.20])
	by asmg.aker.com.br [10.0.1.3]; Fri, 27 Mar 2015 19:03:19 -0300
	(envelope-from hugo.saldanha@aker.com.br)
Received: from saldanha.aker.com.br (10.4.3.1) by mail.aker.com.br (10.0.0.20)
	with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Fri, 27 Mar 2015 19:03:20 -0300
From: Hugo Vasconcelos Saldanha <hugo.saldanha@aker.com.br>
To: <yocto@yoctoproject.org>
Date: Fri, 27 Mar 2015 19:06:04 -0300
Message-ID: <1427493964-2226-1-git-send-email-hugo.saldanha@aker.com.br>
X-Mailer: git-send-email 2.3.3
MIME-Version: 1.0
X-AkerSMTPGW-ServerID: d3ca878c259c98dab9711b092908c214d1fd543e
X-AkerSMTPGW-MessageID: 9c0d09104a4d90894b18936c332c27ff75093fa5-10o
Subject: [meta-qt3][PATCH] qt-x11-free: increment patch fixing cstddef include
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
X-List-Received-Date: Fri, 27 Mar 2015 22:03:43 -0000
Content-Type: text/plain

Another qt3 header (qmap.h) needs to include <cstddef> or "ptrdiff_t"
is undefined.

Signed-off-by: Hugo Vasconcelos Saldanha <hugo.saldanha@aker.com.br>
---
 recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch b/recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch
index 9a8f4b4..8343857 100644
--- a/recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch
+++ b/recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch
@@ -5,10 +5,23 @@ The data type "ptrdiff_t" is defined in file cstddef.
 Upstream-Status: Pending
 
 Signed-off-by: xiaofeng.yan@windriver.com
+Signed-off-by: Hugo Vasconcelos Saldanha <hugo.saldanha@aker.com.br>
 
---- qt-x11-free-3.3.7/src/tools/qvaluelist.h	2006-10-19 22:25:01.000000000 +0800
-+++ qt-x11-free-3.3.7/src/tools/qvaluelist.h.new	2011-06-07 14:57:06.288997350 +0800
-@@ -47,6 +47,7 @@
+diff -upr qt-x11-free-3.3.8b.orig/src/tools/qmap.h qt-x11-free-3.3.8b/src/tools/qmap.h
+--- qt-x11-free-3.3.8b.orig/src/tools/qmap.h	2008-01-15 19:09:13.000000000 +0000
++++ qt-x11-free-3.3.8b/src/tools/qmap.h	2011-10-10 16:29:18.502000886 +0000
+@@ -52,6 +52,7 @@
+ #ifndef QT_NO_STL
+ #include <iterator>
+ #include <map>
++#include <cstddef>
+ #endif
+ 
+ //#define QT_CHECK_MAP_RANGE
+diff -upr qt-x11-free-3.3.8b.orig/src/tools/qvaluelist.h qt-x11-free-3.3.8b/src/tools/qvaluelist.h
+--- qt-x11-free-3.3.8b.orig/src/tools/qvaluelist.h	2008-01-15 19:09:13.000000000 +0000
++++ qt-x11-free-3.3.8b/src/tools/qvaluelist.h	2011-10-10 16:28:48.219971568 +0000
+@@ -50,6 +50,7 @@
  #ifndef QT_NO_STL
  #include <iterator>
  #include <list>
-- 
2.3.3



