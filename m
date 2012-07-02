Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B981E01478
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 02:54:31 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Jul 2012 02:54:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="187435191"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.227])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2012 02:54:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Jul 2012 10:54:23 +0100
Message-Id: <eee7691e5d5c201aee745018b160370ee7f08b0e.1341222778.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1341222778.git.paul.eggleton@linux.intel.com>
References: <cover.1341222778.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1341222778.git.paul.eggleton@linux.intel.com>
References: <cover.1341222778.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs] [PATCH 4/5] shared state memory -> shared state cache
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
X-List-Received-Date: Mon, 02 Jul 2012 09:54:31 -0000

"shared state cache" is the generally accepted term for this.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../dev-manual/dev-manual-kernel-appendix.xml      |    2 +-
 .../poky-ref-manual/technical-details.xml          |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-kernel-appendix.xml b/documentation/dev-manual/dev-manual-kernel-appendix.xml
index 0f69ef1..b4c6328 100644
--- a/documentation/dev-manual/dev-manual-kernel-appendix.xml
+++ b/documentation/dev-manual/dev-manual-kernel-appendix.xml
@@ -696,7 +696,7 @@
                 The Yocto Project build environment recognizes this kernel as 
                 <filename>linux-yocto</filename>.
                 Thus, the following commands from the shell in which you previously sourced the 
-                environment initialization script cleans the shared state memory and the 
+                environment initialization script cleans the shared state cache and the 
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-WORKDIR'><filename>WORKDIR</filename></ulink>
                 directory and then builds and launches <filename>menuconfig</filename>:
                 <literallayout class='monospaced'>
diff --git a/documentation/poky-ref-manual/technical-details.xml b/documentation/poky-ref-manual/technical-details.xml
index a63943e..4cc1a7b 100644
--- a/documentation/poky-ref-manual/technical-details.xml
+++ b/documentation/poky-ref-manual/technical-details.xml
@@ -525,7 +525,7 @@
             <title>Invalidating Shared State</title>
 
             <para>
-                The shared state code uses checksums and shared state memory 
+                The shared state code uses checksums and shared state
                 cache to avoid unnecessarily rebuilding tasks.
                 As with all schemes, this one has some drawbacks.
                 It is possible that you could make implicit changes that are not factored 
-- 
1.7.9.5


