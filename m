Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAC7DE00848; Thu, 20 Oct 2016 10:36:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A30B0E0081E
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 10:36:11 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP; 20 Oct 2016 10:36:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,372,1473145200"; d="scan'208";a="22185089"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga004.jf.intel.com with ESMTP; 20 Oct 2016 10:36:10 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Oct 2016 10:35:00 -0700
Message-Id: <1476984900-22569-2-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476984900-22569-1-git-send-email-juro.bystricky@intel.com>
References: <1476984900-22569-1-git-send-email-juro.bystricky@intel.com>
Subject: [meta-mingw][PATCH 1/1] binutils-cross-canadian: Fix LTO failure
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
X-List-Received-Date: Thu, 20 Oct 2016 17:36:12 -0000

GCC was failing with a message similar to:

e:/windri~1/lx8.sdk/qemux8~1.800/sysroots/i686-w~1/usr/bin/i586-w~3/../../libexec/i586-wrs-linux/gcc/i586-wrs-linux/5.2.0/real-ld.exe: unrecognized option '-plugin'

The issue was that by default plugin support was disabled in binutils.  By
enabling the plugin support, the LTO support should also now work properly.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
index 026c932..5845fe0 100644
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
@@ -1,4 +1,4 @@
-EXTRA_OECONF_append_sdkmingw32 = " --disable-plugins --disable-nls"
+EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
 LDFLAGS_append_sdkmingw32 = " -Wl,-static"
 
 DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
-- 
2.7.4


