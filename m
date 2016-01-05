Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A85EE00D72; Tue,  5 Jan 2016 05:08:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7027EE00D6C
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 05:08:41 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Jan 2016 05:08:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,525,1444719600"; d="scan'208";a="853882694"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2016 05:08:41 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.51])
	by linux.intel.com (Postfix) with ESMTP id 716496A4004;
	Tue,  5 Jan 2016 05:56:39 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jan 2016 13:10:53 +0200
Message-Id: <3f7cff2dd92a97b3a31c6c6ea83a84e3a0c8d4d2.1451991988.git.ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
Subject: [PATCH 4/7] dev-manual: add description of --overhead-factor option
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
X-List-Received-Date: Tue, 05 Jan 2016 13:08:43 -0000

Added description of wic kickstart part --overhead-factor option
to OpenEmbedded Kickstart (.wks) Reference

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 758c035..436a64d 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -4618,6 +4618,10 @@
                             adds extra space after the space filled by the content
                             of the partition. The final size can go beyond the size specified
                             by <filename>--size</filename>. Default value is 10MB.</para></listitem>
+                        <listitem><para><emphasis><filename>--overhead-factor</filename>:</emphasis>
+                            This option is a <filename>wic</filename>-specific.
+                            The size of the partition is multiplied by this factor. It has to be
+                            greater than or equal to 1. The default value is 1.3.</para></listitem>
                     </itemizedlist>
                 </para>
             </section>
-- 
2.1.4


