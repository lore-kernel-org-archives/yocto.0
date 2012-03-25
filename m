Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 715E2E013A8
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 15:10:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Mar 2012 15:10:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="133006959"
Received: from unknown (HELO localhost) ([10.255.12.49])
	by fmsmga001.fm.intel.com with ESMTP; 25 Mar 2012 15:10:28 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com, rpjday@crashcourse.ca, yocto@yoctoproject.org
Date: Sun, 25 Mar 2012 17:10:41 -0500
Message-Id: <162199e1edb6763af3613cfed8b04111fc871c28.1332712914.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5634443f66affd9550383b9d28bbc20371627fa1.1332712914.git.tom.zanussi@intel.com>
References: <5634443f66affd9550383b9d28bbc20371627fa1.1332712914.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1332712914.git.tom.zanussi@intel.com>
References: <cover.1332712914.git.tom.zanussi@intel.com>
Subject: [PATCH 2/3] documentation/bsp-guide/bsp.xml: update the README section
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
X-List-Received-Date: Sun, 25 Mar 2012 22:10:29 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The README section should not be optional, since at minumum it needs
to contain layer dependencies and maintainer info.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 documentation/bsp-guide/bsp.xml |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 0b32acc..51787f3 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -220,8 +220,10 @@
             </para>
 
             <para>
-                Technically speaking a <filename>README</filename> file is optional but it is highly 
-                recommended that every BSP has one.
+                At minimum, the <filename>README</filename> file must
+                contain a list of dependencies, such as the names of
+                any other layers the BSP depends on, and the name of
+                the BSP maintainer and his or her contact information.
             </para>
             </section>
 
-- 
1.7.0.4


