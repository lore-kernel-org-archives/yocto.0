Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C446E01374
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:34 -0700 (PDT)
Received: by mail-pz0-f41.google.com with SMTP id x4so1653838daj.28
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=2f28Wpzva4lCHayNqN3TViN6xyY8zL/hSZR853hBBY8=;
	b=eZrKgiLhM7rZzUQnRZc4iphDikWpanxAs9WuicIoYvWOrsI2nyPsfxtWWn3zwtWepC
	KTSabh0ZFr9EkT6kEyQZz2P7zrcB9sJ7JDspMfZK6zp1mlBTaCv9VqA8t3SB2CKQOHrY
	PfTTjhFchlqv+E9Gw7s8O9UUuzWhTJuM1/viUkPwvDcrm76OMRygFjBZpn3rfjKMGToO
	3YpEMmhqqEN6K5GvJBUMZEZzhc1FhvmHfRCzPcxb9iYKN6HUPJhl7oNftHlNhllCs2TV
	J++gKq9ZtL3ZTVGEBnGGh1UAmYFz5L/zqqq8gwDt0ClJNyAY1ZHyOwlHk36j+zCx7EMg
	+gnQ==
Received: by 10.68.201.6 with SMTP id jw6mr40162286pbc.92.1334166694162;
	Wed, 11 Apr 2012 10:51:34 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id k9sm3432983pbf.65.2012.04.11.10.51.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 11 Apr 2012 10:51:33 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, josh@linux.intel.com,
	josh@hipro.co.in
Date: Wed, 11 Apr 2012 10:51:13 -0700
Message-Id: <e70684c38e8715db7c9e73a63595524df69853a0.1334166452.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334166452.git.dvhart@linux.intel.com>
References: <cover.1334166452.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1334166452.git.dvhart@linux.intel.com>
References: <cover.1334166452.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQlntdc9fxelfoDXI9Um7f+EPw8utb5SrVC98KUTRHBm+XveU66BDnkOqDOvZSOPfyIHJW9N
Subject: [PATCH 4/8] bootimg: Do not force FAT32 on all images, it violates the FAT specification
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
X-List-Received-Date: Wed, 11 Apr 2012 17:51:34 -0000

Fixes [YOCTO #1940]

do_bootimg was performing the FAT overhead calculations assuming FAT32 and then
forcing the use of FAT32 with "-F 32" to mkdosfs. The FAT specification is clear
on cluster count being the determining factor for FAT size (even if the fs
string is set to FAT32, go figure). Syslinux follows this spec, and rightly so,
resulting in a failure on core-image-minimal:

	syslinux: zero FAT sectors (FAT12/16)

Drop the "-F 32" from mkdosfs to allow it to select the appropriate FAT size
based on cluster count. Leave the FAT overhead calculation in FAT32. This will
result in a little extra padding for really small images, but not enough extra
to justify recalculating for FAT12 and FAT16.

Tested with a core-image-minimal build for atom-pc. do_bootimg completed
successfully, and the resulting image was FAT16.

(From OE-Core rev: 634137704dd1a205e377a1131ef708f1c981f6b2)

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Backported to edison by Darren Hart.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/classes/bootimg.bbclass |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclass
index 489819b..09f5b67 100644
--- a/meta/classes/bootimg.bbclass
+++ b/meta/classes/bootimg.bbclass
@@ -73,6 +73,9 @@ build_boot_bin() {
 	# Account for the filesystem overhead. This includes directory
 	# entries in the clusters as well as the FAT itself.
 	# Assumptions:
+	#   FAT32 (12 or 16 may be selected by mkdosfs, but the extra
+	#   padding will be minimal on those smaller images and not
+	#   worth the logic here to caclulate the smaller FAT sizes)
 	#   < 16 entries per directory
 	#   8.3 filenames only
 
@@ -102,7 +105,7 @@ build_boot_bin() {
 	BLOCKS=$(expr $BLOCKS + $(expr 16 - $(expr $BLOCKS % 16)))
 
 	IMG=${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.hddimg
-	mkdosfs -F 32 -n ${BOOTIMG_VOLUME_ID} -S 512 -C ${IMG} ${BLOCKS}
+	mkdosfs -n ${BOOTIMG_VOLUME_ID} -S 512 -C ${IMG} ${BLOCKS}
 	# Copy HDDDIR recursively into the image file directly
 	mcopy -i ${IMG} -s ${HDDDIR}/* ::/
 
-- 
1.7.5.4


