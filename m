Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8E72E00D5B; Tue,  5 Jan 2016 05:08:07 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3502EE0079A
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 05:08:06 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 05 Jan 2016 05:08:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,525,1444719600"; d="scan'208";a="853882452"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2016 05:08:06 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.51])
	by linux.intel.com (Postfix) with ESMTP id 3CD1A6A4004;
	Tue,  5 Jan 2016 05:56:04 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jan 2016 13:10:50 +0200
Message-Id: <9d2920250072ee9e188ffede3b69afd90c4fdc32.1451991988.git.ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
Subject: [PATCH 1/7] dev-manual: describe creation of empty partition
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
X-List-Received-Date: Tue, 05 Jan 2016 13:08:07 -0000

Copied an explanations of empty partition creation from
'wic help kickstart' output.

[YOCTO #8821]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 5694776..5404b95 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -4561,7 +4561,12 @@
                             Exactly what those contents and
 			                filesystem type end up being are dependent
 			                on the given plugin implementation.
-                            </para></listitem>
+                            </para>
+                            <para>If <filename>--source</filename>option is not used, the <filename>wic</filename>
+                            command will create empty partition. <filename>--size</filename> parameter has
+                            to be used to specify size of empty partition.
+                            </para>
+                            </listitem>
                         <listitem><para><emphasis><filename>--ondisk</filename> or <filename>--ondrive</filename>:</emphasis>
                             Forces the partition to be created on a particular
                             disk.</para></listitem>
-- 
2.1.4


