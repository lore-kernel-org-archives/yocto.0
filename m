Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F2BCE00547; Wed, 30 Jul 2014 18:09:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06FEBE0043F
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 18:08:58 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s6V18vZS001566
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 18:08:57 -0700 (PDT)
Received: from msp-mhatle-lx2.wrs.com (172.25.34.61) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.174.1; Wed, 30 Jul 2014 18:08:56 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 30 Jul 2014 20:08:55 -0500
Message-ID: <1406768935-15676-1-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [meta-mingw] [PATCH] binutils-cross-canadian: Remove nativesdk-flex dependency
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
X-List-Received-Date: Thu, 31 Jul 2014 01:09:10 -0000
Content-Type: text/plain

Flex does not build properly with mingw support, it also does not appear
to be needed in order to build binutils or the other nativesdk components
when building for mingw.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend
index 7551868..026c932 100644
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.24.bbappend
@@ -1,4 +1,5 @@
 EXTRA_OECONF_append_sdkmingw32 = " --disable-plugins --disable-nls"
 LDFLAGS_append_sdkmingw32 = " -Wl,-static"
 
-DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
\ No newline at end of file
+DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
+DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
-- 
1.9.3


