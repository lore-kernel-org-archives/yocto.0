Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CFBCE00CB6; Thu, 13 Dec 2018 03:24:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A61EE00C91
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 03:24:08 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 030E01856D;
	Thu, 13 Dec 2018 12:24:07 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id ixBeCbkJ74VL; Thu, 13 Dec 2018 12:24:06 +0100 (CET)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 3191318525;
	Thu, 13 Dec 2018 12:24:06 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 02B931E066;
	Thu, 13 Dec 2018 12:24:06 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id EA2271E06E;
	Thu, 13 Dec 2018 12:24:05 +0100 (CET)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Thu, 13 Dec 2018 12:24:05 +0100 (CET)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id DE0AF2EC4;
	Thu, 13 Dec 2018 12:24:05 +0100 (CET)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id wBDBO5Bc029802;
	Thu, 13 Dec 2018 12:24:05 +0100
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id wBDBO5BF029801;
	Thu, 13 Dec 2018 12:24:05 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Dec 2018 12:23:05 +0100
Message-Id: <20181213112305.29609-2-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
In-Reply-To: <20181213112305.29609-1-pkj@axis.com>
References: <20181213112305.29609-1-pkj@axis.com>
X-TM-AS-GCONF: 00
Subject: [PATCH 2/2] ref-manual: Add missing whitespace around "=" in a few code examples
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
X-List-Received-Date: Thu, 13 Dec 2018 11:24:10 -0000

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 documentation/ref-manual/ref-variables.xml | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 7dc3a3f79a..730737226e 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -7655,9 +7655,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     <literallayout class='monospaced'>
      KERNEL_EXTRA_FEATURES ?= "features/netfilter/netfilter.scc features/taskstats/taskstats.scc"
      KERNEL_FEATURES_append = " ${KERNEL_EXTRA_FEATURES}"
-     KERNEL_FEATURES_append_qemuall=" cfg/virtio.scc"
-     KERNEL_FEATURES_append_qemux86=" cfg/sound.scc cfg/paravirt_kvm.scc"
-     KERNEL_FEATURES_append_qemux86-64=" cfg/sound.scc"
+     KERNEL_FEATURES_append_qemuall = " cfg/virtio.scc"
+     KERNEL_FEATURES_append_qemux86 = " cfg/sound.scc cfg/paravirt_kvm.scc"
+     KERNEL_FEATURES_append_qemux86-64 = " cfg/sound.scc"
                     </literallayout></para>
             </glossdef>
         </glossentry>
@@ -10422,7 +10422,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                             <filename>PACKAGECONFIG</filename>.
                             You can either completely override the variable:
                             <literallayout class='monospaced'>
-     PACKAGECONFIG="f4 f5"
+     PACKAGECONFIG = "f4 f5"
                             </literallayout>
                             Or, you can just append the variable:
                             <literallayout class='monospaced'>
@@ -10436,7 +10436,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                             As with append files previously described,
                             you can either completely override the variable:
                             <literallayout class='monospaced'>
-     PACKAGECONFIG_pn-<replaceable>recipename</replaceable>="f4 f5"
+     PACKAGECONFIG_pn-<replaceable>recipename</replaceable> = "f4 f5"
                             </literallayout>
                             Or, you can just amend the variable:
                             <literallayout class='monospaced'>
-- 
2.12.0


