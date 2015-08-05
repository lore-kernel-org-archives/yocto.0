Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16FC5E00A84; Wed,  5 Aug 2015 15:55:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92CD1E00A53
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 15:55:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 05 Aug 2015 15:55:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,620,1432623600"; d="scan'208";a="778632436"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga002.jf.intel.com with ESMTP; 05 Aug 2015 15:55:17 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Aug 2015 15:51:20 -0700
Message-Id: <1438815082-32286-5-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438815082-32286-1-git-send-email-juro.bystricky@intel.com>
References: <1438815082-32286-1-git-send-email-juro.bystricky@intel.com>
Subject: [meta-mingw][PATCH 4/6] libmpc_1.0.2: updated to libmpc_1.0.3
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
X-List-Received-Date: Wed, 05 Aug 2015 22:55:20 -0000

Renamed recipes-support/mpc/libmpc_1.0.2.bbappend to
recipes-support/libmpc/libmpc_1.0.3.bbappend to reflect the changed
location and version of the recipe libmpc_1.0.3.bb.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-support/libmpc/libmpc_1.0.3.bbappend | 1 +
 recipes-support/mpc/libmpc_1.0.2.bbappend    | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 recipes-support/libmpc/libmpc_1.0.3.bbappend
 delete mode 100644 recipes-support/mpc/libmpc_1.0.2.bbappend

diff --git a/recipes-support/libmpc/libmpc_1.0.3.bbappend b/recipes-support/libmpc/libmpc_1.0.3.bbappend
new file mode 100644
index 0000000..0d289df
--- /dev/null
+++ b/recipes-support/libmpc/libmpc_1.0.3.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF_append_mingw32 = "--enable-static --disable-shared"
\ No newline at end of file
diff --git a/recipes-support/mpc/libmpc_1.0.2.bbappend b/recipes-support/mpc/libmpc_1.0.2.bbappend
deleted file mode 100644
index 0d289df..0000000
--- a/recipes-support/mpc/libmpc_1.0.2.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-EXTRA_OECONF_append_mingw32 = "--enable-static --disable-shared"
\ No newline at end of file
-- 
1.9.1


