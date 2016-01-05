Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F109E00CCE; Tue,  5 Jan 2016 05:09:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CEA4E00C74
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 05:09:31 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 05 Jan 2016 05:09:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,525,1444719600"; d="scan'208";a="628329283"
Received: from linux.intel.com ([10.23.219.25])
	by FMSMGA003.fm.intel.com with ESMTP; 05 Jan 2016 05:09:29 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.51])
	by linux.intel.com (Postfix) with ESMTP id 6D8776A4004;
	Tue,  5 Jan 2016 05:57:27 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jan 2016 13:10:55 +0200
Message-Id: <bbe3aae2a552efc2fe19353126ba605417620fc6.1451991988.git.ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
Subject: [PATCH 6/7] dev-manual: add description of --configfile option
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
X-List-Received-Date: Tue, 05 Jan 2016 13:09:32 -0000

Added description of wic kickstart bootloader --configfile
option to OpenEmbedded Kickstart (.wks) Reference.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 7b9e8a9..41e2a76 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -4665,6 +4665,11 @@
                             <filename>APPEND</filename> or
                             <filename>grub</filename> kernel command line.
                             </para></listitem>
+                        <listitem><para><emphasis><filename>--configfile</filename>:</emphasis>
+                            Specifies a user defined configuration file for the bootloader.
+                            This file must be located in the canned-wks folder or could be the
+                            full path to the file. This option overrides all other bootloader
+                            options.</para></listitem>
                     </itemizedlist>
                 </para>
             </section>
-- 
2.1.4


