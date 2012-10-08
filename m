Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 240E6E01385
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 08:39:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Oct 2012 08:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,554,1344236400"; d="scan'208";a="231286190"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2012 08:38:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  8 Oct 2012 16:38:07 +0100
Message-Id: <7b431fb87cd73769042344fb47d648f930ccd02e.1349710561.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349710561.git.paul.eggleton@linux.intel.com>
References: <cover.1349710561.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 01/11] documentation: dev-manual: fix spelling
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
X-List-Received-Date: Mon, 08 Oct 2012 15:39:15 -0000

sence -> sense

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/dev-manual/dev-manual-newbie.xml |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
index 9b922b1..20cf234 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -325,7 +325,7 @@
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-PE'><filename>PE</filename></ulink>).
                 </para></listitem>
             <listitem><para id='poky'><emphasis>Poky:</emphasis> The term "poky" can mean several things.
-                In its most general sence, it is an open-source project that was initially developed
+                In its most general sense, it is an open-source project that was initially developed
                 by OpenedHand.  With OpenedHand, poky was developed off of the existing OpenEmbedded
                 build system becoming a build system for embedded images. 
                 After Intel Corporation aquired OpenedHand, the project poky became the basis for 
-- 
1.7.9.5


