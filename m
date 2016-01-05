Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F50EE00D72; Tue,  5 Jan 2016 05:09:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6C71E00C74
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 05:09:40 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 05 Jan 2016 05:09:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,525,1444719600"; d="scan'208";a="720551051"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga003.jf.intel.com with ESMTP; 05 Jan 2016 05:09:41 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.51])
	by linux.intel.com (Postfix) with ESMTP id 5702A6A4004;
	Tue,  5 Jan 2016 05:57:37 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Jan 2016 13:10:56 +0200
Message-Id: <8daedb61ae029dd1cf5cc77101e266dc67ff5d32.1451991988.git.ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
In-Reply-To: <cover.1451991988.git.ed.bartosh@linux.intel.com>
References: <cover.1451991988.git.ed.bartosh@linux.intel.com>
Subject: [PATCH 7/7] ref-variables: update list of image types
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
X-List-Received-Date: Tue, 05 Jan 2016 13:09:41 -0000

Updated list of supported image types. Ordered them
alphabetically to make the list more readable.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 documentation/ref-manual/ref-variables.xml | 41 ++++++++++++++++++++----------
 1 file changed, 27 insertions(+), 14 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 93118c4..0b2c426 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -5768,32 +5768,45 @@
                     Specifies the complete list of supported image types
                     by default:
                     <literallayout class='monospaced'>
-     jffs2
-     jffs2.sum
+     btrfs
+     cpio
+     cpio.gz
+     cpio.lz4
+     cpio.lzma
+     cpio.xz
      cramfs
+     elf
      ext2
-     ext2.gz
      ext2.bz2
+     ext2.gz
+     ext2.lzma
      ext3
      ext3.gz
-     ext2.lzma
-     btrfs
-     live
+     ext4
+     ext4.gz
+     hdddirect
+     hddimg
+     iso
+     jffs2
+     jffs2.sum
+     multiubi
+     qcow2
      squashfs
+     squashfs-lzo
      squashfs-xz
-     ubi
-     ubifs
      tar
-     tar.gz
      tar.bz2
+     tar.gz
+     tar.lz4
      tar.xz
-     cpio
-     cpio.gz
-     cpio.xz
-     cpio.lzma
+     ubi
+     ubifs
      vdi
      vmdk
-     elf
+     wic
+     wic.bz2
+     wic.gz
+     wic.lzma
                     </literallayout>
                 </para>
 
-- 
2.1.4


