Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1433E00C65; Mon,  5 Oct 2015 06:52:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00, DATE_IN_PAST_03_06, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.6 DATE_IN_PAST_03_06 Date: is 3 to 6 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6D66E00707
	for <yocto@yoctoproject.org>; Mon,  5 Oct 2015 06:52:30 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 05 Oct 2015 06:52:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,638,1437462000"; d="scan'208";a="803941344"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 05 Oct 2015 06:52:30 -0700
Received: from mbabyjoh-mobl.fi.intel.com (mbabyjoh-mobl.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 9CF9D6A4083;
	Mon,  5 Oct 2015 06:51:32 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  5 Oct 2015 12:05:47 +0300
Message-Id: <1444035947-30717-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Cc: srifenbark@gmail.com
Subject: [PATCH] ref-manual: document strace dependency for Swabber
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
X-List-Received-Date: Mon, 05 Oct 2015 13:52:34 -0000

image-swab class depends on "strace" package to be present in the Build
Host. Document that dependency.

[YOCTO #8439]

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 documentation/ref-manual/ref-classes.xml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index d87c9ff..fdee92a 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -1363,7 +1363,8 @@
         tool in order to detect and log accesses to the host system during
         the OpenEmbedded build process.
         <note>
-            This class is currently unmaintained.
+            We need to install strace package in the build host as a
+            dependency for this tool.This class is currently unmaintained.
         </note>
     </para>
 </section>
-- 
2.4.0


