Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 193C9E014D6
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 07:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100844"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:35:10 +0100
Message-Id: <4ec7f98918b81b2f4be57ae9fe9b7458860b269b.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 12/12] documentation/poky-ref-manual: remove references to Dates and Contacts
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
X-List-Received-Date: Wed, 05 Sep 2012 14:35:27 -0000

Update the BitBake "Preferences and Providers" section to remove
references to these two Pimlico applications that have been removed,
and tweak the example slightly so it is technically correct.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index ff8db59..5055048 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -124,10 +124,10 @@
             Once a provider is selected, BitBake resolves all the dependencies for  
             the target. 
             In the case of <filename>core-image-sato</filename>, it would lead to 
-            <filename>packagegroup-base.bb</filename>,  
-            which in turn leads to packages like <filename>Contacts</filename>, 
-            <filename>Dates</filename> and <filename>BusyBox</filename>.
-            These packages in turn depend on <filename>eglibc</filename> and the toolchain.
+            <filename>packagegroup-core-x11-sato</filename>, 
+            which in turn leads to recipes like <filename>matchbox-terminal</filename>, 
+            <filename>pcmanfm</filename> and <filename>gthumb</filename>.
+            These recipes in turn depend on <filename>eglibc</filename> and the toolchain.
         </para>
 
         <para>
-- 
1.7.9.5


