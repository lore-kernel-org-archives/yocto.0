Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 427E5E00F06; Fri, 22 Jul 2016 04:29:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6890E00D5F
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 04:29:44 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Jul 2016 04:29:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,404,1464678000"; 
	d="scan'208,217";a="1000457377"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga001.jf.intel.com with ESMTP; 22 Jul 2016 04:29:45 -0700
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 43C1E6A4006;
	Fri, 22 Jul 2016 04:29:33 -0700 (PDT)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 22 Jul 2016 14:28:56 +0300
Message-Id: <1469186936-2848-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Cc: srifenbark@gmail.com
Subject: [PATCH] swabber: remove from documentation
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
X-List-Received-Date: Fri, 22 Jul 2016 11:29:45 -0000

Remove documentation as swabber was removed from
oe-core with this commit:
commit a7ddbea345c90646e6b9ddb89f768865caffdf07
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Mon Jun 6 12:08:56 2016 +0100

    meta: Drop swabber

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 documentation/ref-manual/ref-classes.xml | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index e919bd7..9fdfcaf 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -1381,22 +1381,6 @@
     </para>
 </section>
 
-<section id='ref-classes-image-swab'>
-    <title><filename>image-swab.bbclass</filename></title>
-
-    <para>
-        The <filename>image-swab</filename> class enables the
-        <ulink url='&YOCTO_HOME_URL;/tools-resources/projects/swabber'>Swabber</ulink>
-        tool in order to detect and log accesses to the host system during
-        the OpenEmbedded build process.
-        <note>
-            This class is currently unmaintained.
-            The <filename>strace</filename> package needs to be installed
-            in the build host as a dependency for this tool.
-        </note>
-    </para>
-</section>
-
 <section id='ref-classes-image-vm'>
     <title><filename>image-vm.bbclass</filename></title>
 
-- 
2.4.0


