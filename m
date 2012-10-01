Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6C9CE01351
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:45 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303564"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:29 +0100
Message-Id: <2f2e0fbe7b4cdd30af0081224e49a8262a3b28ed.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 10/11] documentation/poky-ref-manual: clarify FAQ on products using the system
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:46 -0000

Adjust language slightly so that it reads correctly, and avoid
conflating the terms OpenEmbedded and Poky.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/faq.xml |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index 5da820b..ad8fc7a 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -107,15 +107,15 @@
     <qandaentry>
         <question>
             <para>
-                Are there any products using the OpenEmbedded build system (poky)?
+                Are there any products built using the OpenEmbedded build system?
             </para>
         </question>
         <answer>
             <para>
-                The <ulink url='http://vernier.com/labquest/'>Vernier LabQuest</ulink> is using 
-                the OpenEmbedded build system.  
+                The software running on the <ulink url='http://vernier.com/labquest/'>Vernier LabQuest</ulink>
+                is built using the OpenEmbedded build system.  
                 See the <ulink url='http://www.vernier.com/products/interfaces/labq/'>Vernier LabQuest</ulink>
-                for more information.
+                website for more information.
                 There are a number of pre-production devices using the OpenEmbedded build system 
                 and the Yocto Project team
                 announces them as soon as they are released.
-- 
1.7.9.5


