Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AA61E01473
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 02:54:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Jul 2012 02:54:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="187435200"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.227])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2012 02:54:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Jul 2012 10:54:24 +0100
Message-Id: <293805125a8471e83788f8b0ac38cc74c3a1015f.1341222778.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1341222778.git.paul.eggleton@linux.intel.com>
References: <cover.1341222778.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1341222778.git.paul.eggleton@linux.intel.com>
References: <cover.1341222778.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs] [PATCH 5/5] dev-manual: menuconfig now works properly
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 02 Jul 2012 09:54:32 -0000

Bug 2256 is now fixed in master and the fix will be in the next release,
so update the documentation accordingly.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../dev-manual/dev-manual-kernel-appendix.xml      |   11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-kernel-appendix.xml b/documentation/dev-manual/dev-manual-kernel-appendix.xml
index b4c6328..1a1c8a7 100644
--- a/documentation/dev-manual/dev-manual-kernel-appendix.xml
+++ b/documentation/dev-manual/dev-manual-kernel-appendix.xml
@@ -700,16 +700,8 @@
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-WORKDIR'><filename>WORKDIR</filename></ulink>
                 directory and then builds and launches <filename>menuconfig</filename>:
                 <literallayout class='monospaced'>
-     $ bitbake linux-yocto -c cleansstate
      $ bitbake linux-yocto -c menuconfig
                 </literallayout>
-                <note>
-                    Due to a bug in the release, it is necessary to clean the shared state memory
-                    in order for configurations made using <filename>menuconfig</filename> to take
-                    effect.
-                    For information on the bug, see
-                    <ulink url='https://bugzilla.yoctoproject.org/show_bug.cgi?id=2256'></ulink>
-                </note>
             </para>
                   
             <para>
@@ -773,9 +765,8 @@
 
             <para>
                 At this point, you are ready to recompile your kernel image with 
-                the new setting in effect using the BitBake commands below:
+                the new setting in effect using the BitBake command below:
                 <literallayout class='monospaced'>
-     $ bitbake linux-yocto -c compile -f
      $ bitbake linux-yocto
                 </literallayout>
             </para>
-- 
1.7.9.5


