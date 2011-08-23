Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 121CCE01231
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313411"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:38 +0100
Message-Id: <8b11432f48eec09f74a8f0c21496f0e695bcc72b.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 05/14] documentation: POKYMODE/POKYLIBC -> TCMODE/TCLIBC
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:05 -0000

These variables were renamed in the Yocto 1.1 development cycle.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml   |    4 ++--
 documentation/poky-ref-manual/ref-varlocality.xml |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 8726b7f..ff82b88 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -720,13 +720,13 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
             </glossdef>
         </glossentry>
 
-        <glossentry id='var-POKYLIBC'><glossterm>POKYLIBC</glossterm>
+        <glossentry id='var-TCLIBC'><glossterm>TCLIBC</glossterm>
             <glossdef>
                 <para>Libc implementation selector - glibc, eglibc, or uclibc can be selected.</para>
             </glossdef>
         </glossentry>
 
-        <glossentry id='var-POKYMODE'><glossterm>POKYMODE</glossterm>
+        <glossentry id='var-TCMODE'><glossterm>TCMODE</glossterm>
             <glossdef>
                 <para>Toolchain selector. It can be external toolchain
                 built from Poky or few supported combinations of
diff --git a/documentation/poky-ref-manual/ref-varlocality.xml b/documentation/poky-ref-manual/ref-varlocality.xml
index 21930bf..baff699 100644
--- a/documentation/poky-ref-manual/ref-varlocality.xml
+++ b/documentation/poky-ref-manual/ref-varlocality.xml
@@ -36,10 +36,10 @@
                 <para><glossterm linkend='var-TARGET_FPU'><link linkend='var-TARGET_FPU'>TARGET_FPU</link></glossterm></para>
             </listitem>
             <listitem>
-                <para><glossterm linkend='var-POKYMODE'><link linkend='var-POKYMODE'>POKYMODE</link></glossterm></para>
+                <para><glossterm linkend='var-TCMODE'><link linkend='var-TCMODE'>TCMODE</link></glossterm></para>
             </listitem>
             <listitem>
-                <para><glossterm linkend='var-POKYLIBC'><link linkend='var-POKYLIBC'>POKYLIBC</link></glossterm></para>
+                <para><glossterm linkend='var-TCLIBC'><link linkend='var-TCLIBC'>TCLIBC</link></glossterm></para>
             </listitem>
         </itemizedlist>
     </section>
-- 
1.7.4.1


