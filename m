Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16A96E006B5; Tue, 29 Jul 2014 12:34:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D176E006B5
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 12:34:02 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Jul 2014 12:34:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,759,1400050800"; d="scan'208";a="462820293"
Received: from unknown (HELO localhost) ([10.255.12.245])
	by azsmga001.ch.intel.com with ESMTP; 29 Jul 2014 12:34:01 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue, 29 Jul 2014 14:33:55 -0500
Message-Id: <1e753924a8184cba789951edc5a16f3e216e6c03.1406662265.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <84d79815a2e50e5af1fc38d52a89762a55061288.1406662265.git.tom.zanussi@linux.intel.com>
References: <84d79815a2e50e5af1fc38d52a89762a55061288.1406662265.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1406662265.git.tom.zanussi@linux.intel.com>
References: <cover.1406662265.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 3/5] dev-manual: Add documentation for --fsoptions
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

--fsoptions support was recently added to wic, so document it.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index f8a1398..c00c961 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -4179,6 +4179,14 @@
                                 <listitem><para><filename>swap</filename>
                                 </para></listitem>
                             </itemizedlist></para></listitem>
+                        <listitem><para><emphasis><filename>--fsoptions</filename>:</emphasis>
+                        Specifies a free-form string of options to be
+                        used when mounting the filesystem. This string
+                        will be copied into the
+                        <filename>/etc/fstab</filename> file of the
+                        installed system and should be enclosed in
+                        quotes.  If not specified, the default string
+                        is "defaults".</para></listitem>
                         <listitem><para><emphasis><filename>--label label</filename>:</emphasis>
                             Specifies the label to give to the filesystem to
                             be made on the partition.
-- 
1.8.3.1


