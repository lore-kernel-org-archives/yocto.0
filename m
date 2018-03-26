Return-Path: <Awais_Belal@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD455E00A1C; Mon, 26 Mar 2018 03:26:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EEDAE0070F
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 03:26:16 -0700 (PDT)
Received: from svr-orw-fem-04.mgc.mentorg.com ([147.34.97.41])
	by relay1.mentorg.com with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	id 1f0PKR-0003O3-SN from Awais_Belal@mentor.com 
	for yocto@yoctoproject.org; Mon, 26 Mar 2018 03:26:15 -0700
Received: from P7520.pkl.mentorg.com (147.34.91.1) by
	svr-orw-fem-04.mgc.mentorg.com (147.34.97.41) with Microsoft SMTP
	Server id 14.3.224.2; Mon, 26 Mar 2018 03:26:15 -0700
From: Awais Belal <awais_belal@mentor.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Mar 2018 15:26:12 +0500
Message-ID: <1522059972-12702-1-git-send-email-awais_belal@mentor.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 26 Mar 2018 03:28:35 -0700
Subject: [matchbox-wm][PATCH] configure.ac: add lib math for composite enabled builds
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
X-List-Received-Date: Mon, 26 Mar 2018 10:26:18 -0000
Content-Type: text/plain

The composite enabled builds require lib math to be
present on the linker command line otherwise we get
ld: composite-engine.o: undefined reference to symbol 'exp@@GLIBC_2.2.5'
during compilation.

Signed-off-by: Awais Belal <awais_belal@mentor.com>
---
 configure.ac | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/configure.ac b/configure.ac
index dce82cc..1bc113f 100644
--- a/configure.ac
+++ b/configure.ac
@@ -246,9 +246,11 @@ fi
 dnl ------ Composite -------------------------------------------------------
 
 if test x$enable_composite != xno; then
-  PKG_CHECK_MODULES(COMPO, xcomposite xfixes xdamage xrender, ,
+  PKG_CHECK_MODULES(COMPO, xcomposite xfixes xdamage xrender, have_compo_deps=yes,
 			   AC_MSG_ERROR([*** Required Composite Librays not installed ***]))
-
+  if test x$have_compo_deps = xyes; then
+    COMPO_LIBS="$COMPO_LIBS -lm"
+  fi
   AC_DEFINE(USE_COMPOSITE, [1], [use bleeding enge composite code])
 
 fi
-- 
2.7.4


