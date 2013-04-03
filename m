Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E29A8E01551
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 11:01:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2013 10:59:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,402,1363158000"; d="scan'208";a="311864312"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.159])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2013 11:01:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Apr 2013 19:01:25 +0100
Message-Id: <4d1c29fb998b34e6bbeb5f76261344601d193120.1365011998.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1365011998.git.paul.eggleton@linux.intel.com>
References: <cover.1365011998.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1365011998.git.paul.eggleton@linux.intel.com>
References: <cover.1365011998.git.paul.eggleton@linux.intel.com>
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [yocto-docs][PATCH 5/5] dev-manual: add new bitbake-layers show-cross-depends subcommand
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Apr 2013 18:01:41 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index a697b8c..66df375 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -446,6 +446,9 @@
                     <listitem><para><filename><emphasis>show-appends:</emphasis></filename>
                         Lists <filename>.bbappend</filename> files and the recipe files to which
                         they apply.</para></listitem>
+                    <listitem><para><filename><emphasis>show-cross-depends:</emphasis></filename>
+                        Lists dependency relationships between recipes that cross layer boundaries.
+                        </para></listitem>
                     <listitem><para><filename><emphasis>flatten:</emphasis></filename>
                         Flattens the layer configuration into a separate output directory.
                         Flattening your layer configuration builds a "flattened" directory that contains
-- 
1.7.10.4


