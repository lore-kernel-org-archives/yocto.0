Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28B54E00D72; Tue,  5 Jan 2016 05:09:12 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72C5CE00D65
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 05:09:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 05 Jan 2016 05:08:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,525,1444719600"; d="scan'208";a="886684304"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2016 05:08:48 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.51])
	by linux.intel.com (Postfix) with ESMTP id 787826A4004;
	Tue,  5 Jan 2016 05:56:46 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jan 2016 13:10:54 +0200
Message-Id: <ed77885ff53de6febddf508b139bc5657f97d0f9.1451991988.git.ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
Subject: [PATCH 5/7] dev-manual: add description of UUID options
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
X-List-Received-Date: Tue, 05 Jan 2016 13:09:12 -0000

Added description of 3 wic kickstart part options related to UUID:
--part-type, --use-uuid and --uuid to OpenEmbedded Kickstart (.wks)
Reference.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 436a64d..7b9e8a9 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -4622,6 +4622,20 @@
                             This option is a <filename>wic</filename>-specific.
                             The size of the partition is multiplied by this factor. It has to be
                             greater than or equal to 1. The default value is 1.3.</para></listitem>
+                        <listitem><para><emphasis><filename>--part-type</filename>:</emphasis>
+                            This option is specific to <filename>wic</filename>.
+                            It specifies partition type GUID for GPT partitions.
+                            List of partition type GUIDS can be found here:
+                            <ulink url='http://en.wikipedia.org/wiki/GUID_Partition_Table#Partition_type_GUIDs'>
+                            </ulink></para></listitem>
+                        <listitem><para><emphasis><filename>--use-uuid</filename>:</emphasis>
+                            This option is specific to <filename>wic</filename>.
+                            It makes <filename>wic</filename> to generate random globally unique
+                            identifier (GUID) for the partition and use it in bootloader configuration
+                            to specify root partition.</para></listitem>
+                        <listitem><para><emphasis><filename>--uuid</filename>:</emphasis>
+                            This option is specific to <filename>wic</filename>.
+                            It specifies partition UUID.</para></listitem>
                     </itemizedlist>
                 </para>
             </section>
-- 
2.1.4


