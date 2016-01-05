Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FB4CE00D6A; Tue,  5 Jan 2016 05:08:20 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EFF9E00D54
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 05:08:18 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 05 Jan 2016 05:08:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,525,1444719600"; d="scan'208";a="886684059"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2016 05:08:17 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.51])
	by linux.intel.com (Postfix) with ESMTP id 9C9A66A4004;
	Tue,  5 Jan 2016 05:56:15 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jan 2016 13:10:51 +0200
Message-Id: <a75848943c7b6f6795e8d28685504bd2e0b029fb.1451991988.git.ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
Subject: [PATCH 2/7] dev-manual: add description of --no-table option
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
X-List-Received-Date: Tue, 05 Jan 2016 13:08:20 -0000

Added description of wic kickstart part --no-table option
to OpenEmbedded Kickstart (.wks) Reference

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 5404b95..f8cecbc 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -4609,6 +4609,10 @@
                             This option is a <filename>wic</filename>-specific
                             option that says to start a partition on an
                             x KBytes boundary.</para></listitem>
+                        <listitem><para><emphasis><filename>--no-table</filename>:</emphasis>
+                            This option is a <filename>wic</filename>-specific option.
+                            Space will be reserved for the partition and it will be
+                            populated but it will not be added to the partition table.</para></listitem>
                     </itemizedlist>
                 </para>
             </section>
-- 
2.1.4


