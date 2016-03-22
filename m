Return-Path: <alejandro.franco@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCC01E008B4; Tue, 22 Mar 2016 16:52:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5837BE00863
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 16:52:36 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 22 Mar 2016 16:52:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,379,1455004800"; d="scan'208";a="71451673"
Received: from afshjern.zpn.intel.com ([10.219.16.250])
	by fmsmga004.fm.intel.com with ESMTP; 22 Mar 2016 16:52:35 -0700
From: Alex Franco <alejandro.franco@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Mar 2016 17:53:52 -0600
Message-Id: <1458690832-25792-1-git-send-email-alejandro.franco@linux.intel.com>
X-Mailer: git-send-email 2.7.3
Cc: srifenbark@gmail.com
Subject: [PATCH] [documentation] ref-classes.xml: fix typo in ICECC_CC variable
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
X-List-Received-Date: Tue, 22 Mar 2016 23:52:38 -0000

The variable needs correcting as it is misspelled

[YOCTO #8934]

Signed-off-by: Alex Franco <alejandro.franco@linux.intel.com>
---
 documentation/ref-manual/ref-classes.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index c4f15c9..3949b4a 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -1170,7 +1170,7 @@
         Depending on each configure or compile, the OpenEmbedded build system
         adds the directories at the head of the <filename>PATH</filename> list
         and then sets the <filename>ICECC_CXX</filename> and
-        <filename>ICEC_CC</filename> variables, which are the paths to the
+        <filename>ICECC_CC</filename> variables, which are the paths to the
         <filename>g++</filename> and <filename>gcc</filename> compilers,
         respectively.
     </para>
-- 
2.7.3


