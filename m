Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 676A4E006C7
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 14:10:01 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id jt11so2500729pbb.35
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2012 14:10:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=A9Dw7wT7Vbxj5m69K8ZGTimB5tM+IBOh9ffczIDuM3k=;
	b=FhCuktzjk/AyAQZt3jOUwCKotKaFK7YezuRkN6PDFQdSrdCl5OF0d2NgjhHxKQYlBn
	Nccga5J0vH3i60Kw0quZIk2fGOMiUyigxQibhaKwtxy+xTBOHzOlDeaFS5BuogsoL4EE
	A2douIVMEcrnIPCxtUuiMb6357MEiZC0we+/xzT/hZyQL9DhxqRuBj5y9rEyrTE4J/tR
	9Cc2Txm7a+NYFspUe6z8sET+MnIU6tPnNHl7+j8O3rTt0zxfFoRKrkEq+hW+fOFpP81Q
	SxZpV9zphuc8YjLShAqnjYeKJRpe2Cz0WyDEXFt7HDDA5/BLeHV0sOB59X6kaJqbOnwF
	kzew==
Received: by 10.68.226.5 with SMTP id ro5mr9828025pbc.138.1333660201318;
	Thu, 05 Apr 2012 14:10:01 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id d2sm4215718pbw.39.2012.04.05.14.10.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 Apr 2012 14:10:00 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	josh@linux.intel.com
Date: Thu,  5 Apr 2012 14:09:47 -0700
Message-Id: <18be085abd08353e5c56cc56024a2d7548217135.1333660034.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1333660034.git.dvhart@linux.intel.com>
References: <cover.1333660034.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333660034.git.dvhart@linux.intel.com>
References: <cover.1333660034.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQl0CYQrAbfX/Rlhh8jLiQWY2WY33mDc0QeZYO/ahwQv57IwoED/cNc/kUhNhg+0RxJlz67h
Subject: [PATCH 2/4] bootimg: Account for FAT filesystem overhead in image size
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
X-List-Received-Date: Thu, 05 Apr 2012 21:10:01 -0000

Fixes [YOCTO #1852]

The bootimg class wasn't accounting for non-trivial amount of space
required by the directory entries and FATs for the FAT filesystem.

This patch attempts to make an accurate prediction of FAT overhead and
adjusts the image size accordingly. It assumes no more than 16 directory
entries per directory (which fit in a single sector). It also assumes
8.3 filenames. With the ceiling functions rounding up to full sectors
and tracks, these assumptions seem reasonable.

In order to ensure the calculations are accurate, this patch forces the
FAT size to 32, rather than allowing mkdosfs to automatically select 12,
16, or 32 depending on the image being built.

Tested by setting BOOTIMG_EXTRA_SPACE=0 and building core-image-minimal
and core-image-sato for fri2-noemgd from meta-intel.

(From OE-Core rev: 68aa18609c10a3ae2f738930c933fa2a95ce8959)

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Backported to edison by Darren Hart.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/classes/bootimg.bbclass |   45 +++++++++++++++++++++++++++++++++--------
 1 files changed, 36 insertions(+), 9 deletions(-)

diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclass
index bcae2ae..c2d43c8 100644
--- a/meta/classes/bootimg.bbclass
+++ b/meta/classes/bootimg.bbclass
@@ -62,19 +62,46 @@ build_boot_bin() {
 
 	install -m 444 ${STAGING_LIBDIR}/syslinux/ldlinux.sys ${HDDDIR}/ldlinux.sys
 
-	# Determine the 1024 byte block count for the final image.
-	BLOCKS=`du --apparent-size -ks ${HDDDIR} | cut -f 1`
-	SIZE=`expr $BLOCKS + ${BOOTIMG_EXTRA_SPACE}`
+	# Calculate the size required for the final image including the
+	# data and filesystem overhead.
+	# Sectors: 512 bytes
+	#  Blocks: 1024 bytes
+
+	# Determine the sector count just for the data
+	SECTORS=$(expr $(du --apparent-size -ks ${HDDDIR} | cut -f 1) \* 2)
+
+	# Account for the filesystem overhead. This includes directory
+	# entries in the clusters as well as the FAT itself.
+	# Assumptions:
+	#   < 16 entries per directory
+	#   8.3 filenames only
+
+	# 32 bytes per dir entry
+	DIR_BYTES=$(expr $(find ${HDDDIR} | tail -n +2 | wc -l) \* 32)
+	# 32 bytes for every end-of-directory dir entry
+	DIR_BYTES=$(expr $DIR_BYTES + $(expr $(find ${HDDDIR} -type d | tail -n +2 | wc -l) \* 32))
+	# 4 bytes per FAT entry per sector of data
+	FAT_BYTES=$(expr $SECTORS \* 4)
+	# 4 bytes per FAT entry per end-of-cluster list
+	FAT_BYTES=$(expr $FAT_BYTES + $(expr $(find ${HDDDIR} -type d | tail -n +2 | wc -l) \* 4))
+
+	# Use a ceiling function to determine FS overhead in sectors
+	DIR_SECTORS=$(expr $(expr $DIR_BYTES + 511) / 512)
+	# There are two FATs on the image
+	FAT_SECTORS=$(expr $(expr $(expr $FAT_BYTES + 511) / 512) \* 2)
+	SECTORS=$(expr $SECTORS + $(expr $DIR_SECTORS + $FAT_SECTORS))
+
+	# Determine the final size in blocks accounting for some padding
+	BLOCKS=$(expr $(expr $SECTORS \* 2) + ${BOOTIMG_EXTRA_SPACE})
 
 	# Ensure total sectors is an integral number of sectors per
-	# track or mcopy will complain. Sectors are 512 bytes, and and
-	# we generate images with 32 sectors per track. This calculation
-	# is done in blocks, which are twice the size of sectors, thus
-	# the 16 instead of 32.
-	SIZE=$(expr $SIZE + $(expr 16 - $(expr $SIZE % 16)))
+	# track or mcopy will complain. Sectors are 512 bytes, and we
+	# generate images with 32 sectors per track. This calculation is
+	# done in blocks, thus the mod by 16 instead of 32.
+	BLOCKS=$(expr $BLOCKS + $(expr 16 - $(expr $BLOCKS % 16)))
 
 	IMG=${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.hddimg
-	mkdosfs -n ${BOOTIMG_VOLUME_ID} -S 512 -C ${IMG} ${SIZE}
+	mkdosfs -F 32 -n ${BOOTIMG_VOLUME_ID} -S 512 -C ${IMG} ${BLOCKS}
 	# Copy HDDDIR recursively into the image file directly
 	mcopy -i ${IMG} -s ${HDDDIR}/* ::/
 
-- 
1.7.5.4


