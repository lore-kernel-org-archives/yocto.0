Return-Path: <california.l.sullivan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28899E00843; Tue, 20 Oct 2015 10:21:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E49FE006D5
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 10:21:22 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 20 Oct 2015 10:21:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,707,1437462000"; d="scan'208";a="668174437"
Received: from clsulliv.jf.intel.com ([10.7.201.38])
	by orsmga003.jf.intel.com with ESMTP; 20 Oct 2015 10:21:21 -0700
From: california.l.sullivan@intel.com
To: yocto@yoctoproject.org
Date: Tue, 20 Oct 2015 10:18:12 -0700
Message-Id: <1445361492-12716-1-git-send-email-california.l.sullivan@intel.com>
X-Mailer: git-send-email 2.1.0
Cc: srifenbark@gmail.com
Subject: [yocto-docs][PATCH] ref-manual: Document MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS quirk
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
X-List-Received-Date: Tue, 20 Oct 2015 17:21:26 -0000

From: California Sullivan <california.l.sullivan@intel.com>

MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS won't always grab your out-of-tree
module recipe since the kernel recipe's PACKAGES_DYNAMIC variable
provides kernel-module-*. This patch documents that your out-of-tree
module needs to explicitly set its PACKAGES variable to avoid this
behavior.

Fixes [YOCTO #7591]

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 documentation/ref-manual/ref-variables.xml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 8241094..6270a83 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -7510,6 +7510,12 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     <literallayout class='monospaced'>
      MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-module-ab123"
                     </literallayout>
+                    Note that in this example, <filename>kernel-module-ab123</filename>'s recipe
+                    would need to explicitly set its
+                    <filename><link linkend='var-PACKAGES'>PACKAGES</link></filename> variable
+                    to ensure that bitbake does not use the kernel recipe's
+                    <filename><link linkend='var-PACKAGES_DYNAMIC'>PACKAGES_DYNAMIC</link></filename>
+                    variable to satisfy the dependancy.
                 </para>
 
                 <para>
-- 
2.1.0


