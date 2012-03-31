Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD9C0E013BF
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 20:03:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Mar 2012 20:03:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="127190258"
Received: from unknown (HELO localhost) ([10.255.12.50])
	by orsmga002.jf.intel.com with ESMTP; 30 Mar 2012 20:03:47 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 22:04:33 -0500
Message-Id: <d53a51b9effe9eef92c1a931ba63331a54eaf9e8.1333162852.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <82edddfb02f8da9500d25046374e70d02cadf7e1.1333162852.git.tom.zanussi@intel.com>
References: <82edddfb02f8da9500d25046374e70d02cadf7e1.1333162852.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1333162852.git.tom.zanussi@intel.com>
References: <cover.1333162852.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] documentation/bsp-guide/bsp.xml: Remove 'note'
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
X-List-Received-Date: Sat, 31 Mar 2012 03:03:47 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Remove the 'note' that says that the BSP Guide doesn't show how to
create a new BSP.  With the addition of the Yocto BSP Tools section,
that's no longer true.

Also, the wiki page mentioned is out-of-date and probably shouldn't be
pointed to any longer for that reason.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 documentation/bsp-guide/bsp.xml |   10 ----------
 1 files changed, 0 insertions(+), 10 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index e4a113a..d7e282f 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -28,16 +28,6 @@
             of software support of hardware.
         </para>
 
-        <note>
-            The information here does not provide an example of how to create a BSP.
-            For examples on how to create a BSP, see the
-            "<ulink url='&YOCTO_DOCS_DEV_URL;#dev-manual-bsp-appendix'>BSP Development Example</ulink>"
-            section in The Yocto Project Development Manual.
-            You can also see the 
-            <ulink url='&YOCTO_WIKI_URL;/wiki/Transcript:_creating_one_generic_Atom_BSP_from_another'>
-            wiki page</ulink>.
-        </note>
-
         <para>
             The proposed format does have elements that are specific to the Yocto Project and 
             OpenEmbedded build systems. 
-- 
1.7.0.4


