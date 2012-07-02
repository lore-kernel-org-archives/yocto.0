Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50857E01478
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 02:54:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Jul 2012 02:54:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="187435184"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.227])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2012 02:54:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Jul 2012 10:54:22 +0100
Message-Id: <69a32002e6f18ce5bb2ad3835ca5a585ca93dd3c.1341222778.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1341222778.git.paul.eggleton@linux.intel.com>
References: <cover.1341222778.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1341222778.git.paul.eggleton@linux.intel.com>
References: <cover.1341222778.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs] [PATCH 3/5] dev-manual: correct SMP_CONFIG
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
X-List-Received-Date: Mon, 02 Jul 2012 09:54:30 -0000

It's CONFIG_SMP here, and since the title of the section already
mentions it, just change the sentence to be more generic.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 067b5df..5622fea 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -1399,7 +1399,7 @@ so that there are some definite steps on how to do this.  I need more detail her
             </para>
 
             <para>
-                For an example that shows how to change the <filename>SMP_CONFIG</filename> parameter
+                For an example that shows how to change a specific kernel option
                 using <filename>menuconfig</filename>, see the 
                 "<link linkend='changing-the-config-smp-configuration-using-menuconfig'>Changing
                 the <filename>CONFIG_SMP</filename> Configuration Using <filename>menuconfig</filename></link>" 
-- 
1.7.9.5


