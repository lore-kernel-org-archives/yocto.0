Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44FDEE00842; Tue, 29 Jul 2014 12:34:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04352E00559
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 12:34:01 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Jul 2014 12:34:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,759,1400050800"; d="scan'208";a="580801430"
Received: from unknown (HELO localhost) ([10.255.12.245])
	by orsmga002.jf.intel.com with ESMTP; 29 Jul 2014 12:34:00 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue, 29 Jul 2014 14:33:54 -0500
Message-Id: <97baabff20e1807cdee368a1b0fe8753a2b529d2.1406662265.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <84d79815a2e50e5af1fc38d52a89762a55061288.1406662265.git.tom.zanussi@linux.intel.com>
References: <84d79815a2e50e5af1fc38d52a89762a55061288.1406662265.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1406662265.git.tom.zanussi@linux.intel.com>
References: <cover.1406662265.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 2/5] dev-manual: Add squashfs to --fstypes documentation
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
X-List-Received-Date: Tue, 29 Jul 2014 19:34:06 -0000

squashfs support was recently added to wic, so document it.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index c3df8b3..f8a1398 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -4174,6 +4174,8 @@
                                 </para></listitem>
                                 <listitem><para><filename>btrfs</filename>
                                 </para></listitem>
+                                <listitem><para><filename>squashfs</filename>
+                                </para></listitem>
                                 <listitem><para><filename>swap</filename>
                                 </para></listitem>
                             </itemizedlist></para></listitem>
-- 
1.8.3.1


