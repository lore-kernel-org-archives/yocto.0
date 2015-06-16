Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 540AFE00939; Tue, 16 Jun 2015 14:21:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI, TVD_SPACE_RATIO,
	TVD_SPACE_RATIO_MINFP autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
	*  2.7 TVD_SPACE_RATIO_MINFP TVD_SPACE_RATIO_MINFP
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07E3DE00496
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 14:21:25 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 16 Jun 2015 14:21:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,628,1427785200"; d="scan'208";a="509401244"
Received: from yctb05.ostc.intel.com (HELO yctb05.otcr.jf.intel.com)
	([10.23.219.54])
	by FMSMGA003.fm.intel.com with ESMTP; 16 Jun 2015 14:21:25 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 16 Jun 2015 13:17:17 +0000
Message-Id: <1434460637-46540-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
Subject: [PATCH] dev-manual: Include biosfilename runqemu option
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
X-List-Received-Date: Tue, 16 Jun 2015 21:21:30 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Poky's commit edde3e58da00adf9ef3a8cc687268f6e24294c7c included the
biosfilename option on the runqemu script.

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 documentation/dev-manual/dev-manual-qemu.xml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-qemu.xml b/documentation/dev-manual/dev-manual-qemu.xml
index 4d95fbd..ccc915f 100644
--- a/documentation/dev-manual/dev-manual-qemu.xml
+++ b/documentation/dev-manual/dev-manual-qemu.xml
@@ -171,6 +171,9 @@
                     Establishes a custom directory for BIOS, VGA BIOS and
                     keymaps.
                     </para></listitem>
+                <listitem><para><filename>biosfilename</filename>:
+                    Establishes a custom BIOS name.
+                    </para></listitem>
                 <listitem><para><filename>qemuparams=\"<replaceable>xyz</replaceable>\"</filename>:
                     Specifies custom QEMU parameters.
                     Use this option to pass options other than the simple
-- 
1.8.4.5


