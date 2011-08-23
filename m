Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D430BE0122F
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313422"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:39 +0100
Message-Id: <b3995252eb3cdfba87e9c60449b92a8fea0abdf7.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 06/14] documentation: SITEINFO_ENDIANESS -> SITEINFO_ENDIANNESS
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:06 -0000

This variable was renamed (to match OE) in the Yocto 1.1 development
cycle.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/ref-classes.xml   |    2 +-
 documentation/poky-ref-manual/ref-variables.xml |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index f44b9df..5812aae 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -369,7 +369,7 @@
     </para>
     <para>
         The class also provides variables like <glossterm><link 
-        linkend='var-SITEINFO_ENDIANESS'>SITEINFO_ENDIANESS</link></glossterm> 
+        linkend='var-SITEINFO_ENDIANNESS'>SITEINFO_ENDIANNESS</link></glossterm> 
         and <glossterm><link linkend='var-SITEINFO_BITS'>SITEINFO_BITS</link>
         </glossterm> which can be used elsewhere in the metadata.
     </para>
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index ff82b88..cb7a0e4 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -841,7 +841,7 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
             </glossdef>
         </glossentry>
 
-        <glossentry id='var-SITEINFO_ENDIANESS'><glossterm>SITEINFO_ENDIANESS</glossterm>
+        <glossentry id='var-SITEINFO_ENDIANNESS'><glossterm>SITEINFO_ENDIANNESS</glossterm>
             <glossdef>
                 <para>
                     Contains "le" for little-endian or "be" for big-endian depending 
-- 
1.7.4.1


