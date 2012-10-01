Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13CF6E012F0
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:43 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303537"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:27 +0100
Message-Id: <3663097ab71ecbb0c49b9e193e1f3814499a496e.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 08/11] documentation/poky-ref-manual: update FAQ for adding a new board
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:43 -0000

Since we are using a layer-based approach, people do not need to rely
upon us to add support for new boards.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/faq.xml |   12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index 54c4763..d31691e 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -91,13 +91,11 @@
         </question>
         <answer>
             <para>
-                There are two main ways to get a board supported in the Yocto Project;
-                <itemizedlist>
-                    <listitem><para>Send the Yocto Project team information on the board
-                        and if the team does not have it yet they will consider adding it.</para></listitem>
-                    <listitem><para>Send the Yocto Project team the BitBake recipes if you have them.
-                        </para></listitem>
-                </itemizedlist>
+                Support for an additional board is added by creating a BSP layer for it.
+                For more information on how to create a BSP layer, please see the
+                <ulink url='&YOCTO_DOCS_BSP_URL;'>BSP Guide</ulink>.
+            </para>
+            <para>
                 Usually, if the board is not completely exotic, adding support in 
                 the Yocto Project is fairly straightforward.
             </para>
-- 
1.7.9.5


