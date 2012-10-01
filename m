Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E21C8E011DB
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:41 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303523"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:26 +0100
Message-Id: <6e5b36f0996605ab1bbff44d527dbbb391cf087d.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 07/11] documentation/dev-manual: clarify section on updating PR
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:42 -0000

Setting PR = "r0" isn't mandatory, but is recommended. Also, there isn't
really any restriction on its format.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         |    7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 8d053b3..62e3e61 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -1538,11 +1538,10 @@
             <filename><ulink url='&YOCTO_DOCS_REF_URL;#var-PR'>PR</ulink></filename> 
             variable needs to be increased 
             (or "bumped") as part of that commit. 
-            This means that for new recipes you must be sure to add the <filename>PR</filename>
+            For new recipes you should add the <filename>PR</filename>
             variable and set its initial value equal to "r0".  
-            Failing to define <filename>PR</filename> makes it easy to miss when you bump a package.
-            Note that you can only use integer values following the "r" in the 
-            <filename>PR</filename> variable.
+            This is the default value, however, adding it initially makes 
+            it harder to miss bumping it when you make changes in future.
         </para>
 
         <para>
-- 
1.7.9.5


