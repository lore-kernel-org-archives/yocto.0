Return-Path: <Awais_Belal@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E23A6E00CDE; Tue, 27 Mar 2018 00:07:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 430A8E00CD9
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 00:07:00 -0700 (PDT)
Received: from svr-orw-fem-04.mgc.mentorg.com ([147.34.97.41])
	by relay1.mentorg.com with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	id 1f0ihA-0002Z7-65 from Awais_Belal@mentor.com 
	for yocto@yoctoproject.org; Tue, 27 Mar 2018 00:07:00 -0700
Received: from P7520.pkl.mentorg.com (147.34.91.1) by
	svr-orw-fem-04.mgc.mentorg.com (147.34.97.41) with Microsoft SMTP
	Server id 14.3.224.2; Tue, 27 Mar 2018 00:06:59 -0700
From: Awais Belal <awais_belal@mentor.com>
To: <yocto@yoctoproject.org>
Date: Tue, 27 Mar 2018 12:06:56 +0500
Message-ID: <1522134416-7704-1-git-send-email-awais_belal@mentor.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 27 Mar 2018 09:15:13 -0700
Subject: [matchbox-wm][PATCH v2] configure.ac: add lib math for composite enabled builds
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
X-List-Received-Date: Tue, 27 Mar 2018 07:07:02 -0000
Content-Type: text/plain

The composite enabled builds require lib math to be
present on the linker command line otherwise we get
ld: composite-engine.o: undefined reference to symbol 'exp@@GLIBC_2.2.5'
during compilation.

Signed-off-by: Awais Belal <awais_belal@mentor.com>
---
 configure.ac | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configure.ac b/configure.ac
index dce82cc..a3e384f 100644
--- a/configure.ac
+++ b/configure.ac
@@ -248,6 +248,7 @@ dnl ------ Composite -------------------------------------------------------
 if test x$enable_composite != xno; then
   PKG_CHECK_MODULES(COMPO, xcomposite xfixes xdamage xrender, ,
 			   AC_MSG_ERROR([*** Required Composite Librays not installed ***]))
+  COMPO_LIBS="$COMPO_LIBS -lm"
 
   AC_DEFINE(USE_COMPOSITE, [1], [use bleeding enge composite code])
 
-- 
2.7.4


