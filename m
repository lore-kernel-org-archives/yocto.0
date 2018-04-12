Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E55AE00BAA; Thu, 12 Apr 2018 16:55:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 836F6E00AD8
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 16:55:16 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Apr 2018 16:55:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,444,1517904000"; d="scan'208";a="47483323"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.59])
	by orsmga001.jf.intel.com with ESMTP; 12 Apr 2018 16:55:13 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Apr 2018 16:55:11 -0700
Message-Id: <1523577311-28620-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com, alistair.francis@xilinx.com
Subject: [meta-mingw][PATCH] qemu_2.11.%.bbappend: fix broken qemu build for mingw
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
X-List-Received-Date: Thu, 12 Apr 2018 23:55:17 -0000

The commit "qemu: Bump to version 2.11.0" in oe-core broke the
build of qemu for mingw, due to using "socketpair", which is
not supported by mingw. "socketpair" is used in a local patch,
not in the qemu upstream code. The original local patch had
conditional code to exclude "socketpair" for _WIN32, but the
modified patch for qemu 2.11.0 removed this.

The fix is to simply remove the offending patch.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-devtools/qemu/qemu_2.11.%.bbappend | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 recipes-devtools/qemu/qemu_2.11.%.bbappend

diff --git a/recipes-devtools/qemu/qemu_2.11.%.bbappend b/recipes-devtools/qemu/qemu_2.11.%.bbappend
new file mode 100644
index 0000000..764b500
--- /dev/null
+++ b/recipes-devtools/qemu/qemu_2.11.%.bbappend
@@ -0,0 +1,4 @@
+
+
+SRC_URI_remove_mingw32 = "file://chardev-connect-socket-to-a-spawned-command.patch"
+         
-- 
2.7.4


