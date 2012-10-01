Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04D2BE002AB
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:40 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303507"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:25 +0100
Message-Id: <e91611bb54ce81747c0708b47b16f294d5588931.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 06/11] documentation: update for current netbase version
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:41 -0000

Update references to the netbase recipe to the current version (5.0).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/bsp-guide/bsp.xml       |    2 +-
 documentation/poky-ref-manual/faq.xml |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 5bfa9fb..91b1be0 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -871,7 +871,7 @@
            <para>
                To better understand this, consider an example that customizes a recipe by adding 
                a BSP-specific configuration file named <filename>interfaces</filename> to the 
-               <filename>netbase_4.47.bb</filename> recipe for machine "xyz".
+               <filename>netbase_5.0.bb</filename> recipe for machine "xyz".
                Do the following:
                <orderedlist>
                    <listitem><para>Edit the <filename>netbase_4.47.bbappend</filename> file so that it 
diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index 4a17313..54c4763 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -399,7 +399,7 @@
                 For example, add the following files to your layer:
                 <literallayout class='monospaced'>
      meta-MACHINE/recipes-bsp/netbase/netbase/MACHINE/interfaces
-     meta-MACHINE/recipes-bsp/netbase/netbase_4.44.bbappend
+     meta-MACHINE/recipes-bsp/netbase/netbase_5.0.bbappend
                 </literallayout>
             </para>
         </answer>
-- 
1.7.9.5


