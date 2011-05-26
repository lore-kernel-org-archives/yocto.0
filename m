Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 223B94C8090B
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 12:43:11 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 May 2011 10:43:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,275,1304319600"; 
   d="scan'208";a="2450745"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by azsmga001.ch.intel.com with ESMTP; 26 May 2011 10:43:10 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com, david.c.stewart@intel.com,
	yocto@yoctoproject.org
Date: Thu, 26 May 2011 12:42:35 -0500
Message-Id: <fc719f0cd6530ce15148b4aa274f1644b461b298.1306431293.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306431293.git.tom.zanussi@intel.com>
References: <cover.1306431293.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-sugarbay: Change build instructions in README to use BSP tarball
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
X-List-Received-Date: Thu, 26 May 2011 17:43:11 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Change the build instructions to use BSP tarballs instead of git
clones.  The git clone info remains as a mentioned alternative.

Fixes [YOCTO #1103].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/README |   21 ++++++++++++---------
 1 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/meta-sugarbay/README b/meta-sugarbay/README
index bcc46c2..7899205 100644
--- a/meta-sugarbay/README
+++ b/meta-sugarbay/README
@@ -17,17 +17,11 @@ III. Booting the images in /binary
 I. Building the meta-sugarbay BSP layer
 =======================================
 
-For each BSP in the 'meta-intel' repository, there are multiple
-branches, one corresponding to each major release starting with
-'laverne' (0.90), in addition to the latest code which tracks the
-current master.
-
 In order to build an image with BSP support for a given release, you
-need to check out the 'meta-intel' branch corresponding to the release
-you're building against e.g. to build for laverne (0.90), check out
-the 'laverne' branch of both poky and 'meta-intel'.
+need to download the corresponding BSP tarball from the 'Board Support
+Package (BSP) Downloads' page of the Yocto Project website.
 
-Having done that, and assuming you cloned the 'meta-intel' repository
+Having done that, and assuming you extracted the BSP tarball contents
 at the top-level of your yocto build tree, you can build a sugarbay
 image by adding the location of the meta-sugarbay layer to
 bblayers.conf e.g.:
@@ -47,6 +41,15 @@ At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
 
+As an alternative to downloading the BSP tarball, you can also work
+directly from the meta-intel git repository.  For each BSP in the
+'meta-intel' repository, there are multiple branches, one
+corresponding to each major release starting with 'laverne' (0.90), in
+addition to the latest code which tracks the current master.  Instead
+of extracting a BSP tarball at the top level of your yocto build tree,
+you can equivalently check out the appropriate branch from the
+meta-intel repository at the same location.
+
 
 II. Booting the images in /binary
 =================================
-- 
1.7.0.4


