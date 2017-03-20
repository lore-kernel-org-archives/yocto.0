Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3750DE00ABE; Sun, 19 Mar 2017 18:27:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6C19E00AA9
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 18:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1489973262; x=1521509262; h=from:to:subject:date:message-id;
	bh=urTQ8MZeOH+Gw7dBsTHSDrZEqLf/kCOIkQJ5+XxUpss=;
	b=iV26Q72j4qw0u6xfYvz2mLDza6Ro/BkBBn+uTWqzDLfQyvsR2xICwAGC
	8MYAX3sPOJqQw6V74Bfo6eMIE9kpEw==;
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Mar 2017 18:27:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,191,1486454400"; d="scan'208";a="77177916"
Received: from cloy-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.161.201])
	by orsmga005.jf.intel.com with ESMTP; 19 Mar 2017 18:27:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 14:27:31 +1300
Message-Id: <20170320012731.10119-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [layerindex-web][PATCH] local.conf: fix HOSTTOOLS blocking parsing
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
X-List-Received-Date: Mon, 20 Mar 2017 01:27:45 -0000

In OE-Core master, HOSTTOOLS specifies a list of host-side tools to be
symlinked into a directory that is placed in a filtered path, so that
binaries used from the host are a controlled subset. This variable is
acted upon at configuration parse time and if any tools are missing,
parsing is terminated.

We're not actually running any tasks, so we won't need to call most of
the tools specified by HOSTTOOLS. There is one we definitely do need to
run (gcc) so keep that one, but the rest can be moved to
HOSTTOOLS_NONFATAL.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 conf/local.conf | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/conf/local.conf b/conf/local.conf
index 5a20371..9fe3851 100644
--- a/conf/local.conf
+++ b/conf/local.conf
@@ -10,3 +10,10 @@ MACHINE = "qemux86"
 # OE-Core basic distro configuration
 DISTRO = ""
 
+# We're not doing any building, no need to error on missing host tools,
+# but move them to HOSTTOOLS_NONFATAL just in case any do get called
+# from anonymous python or python expressions
+HOSTTOOLS_NONFATAL := "${@d.getVar('HOSTTOOLS', True) or ''} ${@d.getVar('HOSTTOOLS_NONFATAL', True) or ''}"
+# We do definitely need gcc since populate_sdk_base.bbclass refers to
+# oe.utils.get_gcc_version() in a python expression
+HOSTTOOLS = "gcc"
-- 
2.9.3


