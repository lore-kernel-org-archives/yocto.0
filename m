Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EBC5E013E6
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 15:10:31 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Mar 2012 15:10:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="81454622"
Received: from unknown (HELO localhost) ([10.255.12.49])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Mar 2012 15:10:30 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com, rpjday@crashcourse.ca, yocto@yoctoproject.org
Date: Sun, 25 Mar 2012 17:10:42 -0500
Message-Id: <4f860fff6ee1d409b2cabe7ca73ac6d5c707a5ac.1332712914.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5634443f66affd9550383b9d28bbc20371627fa1.1332712914.git.tom.zanussi@intel.com>
References: <5634443f66affd9550383b9d28bbc20371627fa1.1332712914.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1332712914.git.tom.zanussi@intel.com>
References: <cover.1332712914.git.tom.zanussi@intel.com>
Subject: [PATCH 3/3] documentation/bsp-guide/bsp.xml: make README.sources non-optional
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
X-List-Received-Date: Sun, 25 Mar 2012 22:10:31 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Any shipped BSP needs this file for legal reasons, thus it's
non-optional.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 documentation/bsp-guide/bsp.xml |    5 -----
 1 files changed, 0 insertions(+), 5 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 51787f3..623192c 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -243,11 +243,6 @@
                 Information is also included to help you find the metadata used to generate the images
                 that ship with the BSP.
             </para>
-
-            <para>
-                Technically speaking a <filename>README.sources</filename> file is optional but it is highly 
-                recommended that every BSP has one.
-            </para>
             </section>
 
             <section id="bsp-filelayout-binary">
-- 
1.7.0.4


