Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35B0BE014D1
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 07:35:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 07:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,374,1344236400"; d="scan'208";a="218100841"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.155])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 07:35:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 15:35:09 +0100
Message-Id: <35a6159b52d7b3e940d4c570024fe4ca4b2cec81.1346854096.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346854096.git.paul.eggleton@linux.intel.com>
References: <cover.1346854096.git.paul.eggleton@linux.intel.com>
Subject: [yocto-docs][PATCH 11/12] documentation/yocto-project-qs: adjust GUI component feature listing
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
X-List-Received-Date: Wed, 05 Sep 2012 14:35:26 -0000

List frameworks we provide that are likely to be used by people these
days - Pimlico has been removed and GuPNP and Matchbox don't really
belong. Also slightly modify the sentence following so that it is clear
that these are optional.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 94c488f..0e85d74 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -104,11 +104,11 @@
             <para>Provides a recent Linux kernel along with a set of system commands and libraries suitable for the embedded environment.</para>
         </listitem>
         <listitem>
-            <para>Makes available system components such as X11, Matchbox, GTK+, Pimlico, Clutter,
-            GuPNP and Qt (among others) so you can create a richer user interface experience on 
-            devices that use displays or have a GUI.
-            For devices that don't have a GUI or display, you simply would not employ these 
-            components.</para>
+            <para>Makes available system components such as X11, GTK+, Qt, Clutter, and SDL
+            (among others) so you can create a rich user experience on devices
+            that have display hardware.
+            For devices that don't have a display or wish to use alternative UI
+            frameworks, these components need not be installed.</para>
         </listitem>
         <listitem>
             <para>Creates a focused and stable core compatible with the OpenEmbedded 
-- 
1.7.9.5


