Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74277E00853; Wed,  4 Mar 2015 00:18:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F75EE0076F
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 00:18:27 -0800 (PST)
Received: from [99.240.204.5] (port=42309 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YT4Ve-0003e8-73
	for yocto@yoctoproject.org; Wed, 04 Mar 2015 03:18:26 -0500
Date: Wed, 4 Mar 2015 03:18:23 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503040315560.26324@Device-040570>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH] Documentation: KERNEL_FEATURES should refer to .scc files.
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
X-List-Received-Date: Wed, 04 Mar 2015 08:18:32 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Tweak a number of doc lines so that the KERNEL_FEATURES variable
refers directly to .scc files, and doesn't take advantage of
potentially confusing shortcuts.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index abab3f4..06b6f22 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -589,7 +589,7 @@
      COMPATIBLE_MACHINE_emenlow-noemgd = "emenlow-noemgd"
      KMACHINE_emenlow-noemgd = "emenlow"
      KBRANCH_emenlow-noemgd = "standard/base"
-     KERNEL_FEATURES_append_emenlow-noemgd = " features/drm-gma500/drm-gma500"
+     KERNEL_FEATURES_append_emenlow-noemgd = " features/drm-gma500/drm-gma500.scc"

      LINUX_VERSION_emenlow-noemgd = "3.14.19"
      SRCREV_machine_emenlow-noemgd = "902f34d36102a4b2008b776ecae686f80d307e12"
diff --git a/documentation/kernel-dev/kernel-dev-advanced.xml b/documentation/kernel-dev/kernel-dev-advanced.xml
index c0d8ca6..8af926c 100644
--- a/documentation/kernel-dev/kernel-dev-advanced.xml
+++ b/documentation/kernel-dev/kernel-dev-advanced.xml
@@ -136,12 +136,12 @@
         For example, to include a feature specified as "features/netfilter.scc",
         specify:
         <literallayout class='monospaced'>
-     KERNEL_FEATURES += "features/netfilter.scc"
+     KERNEL_FEATURES += "features/netfilter/netfilter.scc"
         </literallayout>
         To include a feature called "cfg/sound.scc" just for the
         <filename>qemux86</filename> machine, specify:
         <literallayout class='monospaced'>
-     KERNEL_FEATURES_append_qemux86 = "cfg/sound.scc"
+     KERNEL_FEATURES_append_qemux86 = " cfg/sound.scc"
         </literallayout>
         The value of the entries in <filename>KERNEL_FEATURES</filename>
         are dependent on their location within the kernel Metadata itself.
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 7122b47..1135728 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -5792,7 +5792,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
      COMPATIBLE_MACHINE_emenlow-noemgd = "emenlow-noemgd"
      KMACHINE_emenlow-noemgd = "emenlow"
      KBRANCH_emenlow-noemgd = "standard/base"
-     KERNEL_FEATURES_append_emenlow-noemgd = " features/drm-gma500/drm-gma500"
+     KERNEL_FEATURES_append_emenlow-noemgd = " features/drm-gma500/drm-gma500.scc"
                     </literallayout>
                         The <filename>KBRANCH</filename> statement identifies
                         the kernel branch to use when building for the Emenlow
@@ -5846,10 +5846,10 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     machine:
                     <literallayout class='monospaced'>
      # Add netfilter to all linux-yocto kernels
-     KERNEL_FEATURES="features/netfilter"
+     KERNEL_FEATURES="features/netfilter/netfilter.scc"

      # Add sound support to the qemux86 machine
-     KERNEL_FEATURES_append_qemux86=" cfg/sound"
+     KERNEL_FEATURES_append_qemux86=" cfg/sound.scc"
                     </literallayout></para>
             </glossdef>
         </glossentry>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

