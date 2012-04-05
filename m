Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC6A1E013A5
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 14:09:59 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id jt11so2500729pbb.35
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2012 14:09:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=e3BzsRAUALKE0C1qZgU8iWkzJLuEBntSZsNk0N4Enr8=;
	b=Yd/7+qLYunVw8EDlTU1T86CuQlgWdslHon0SnN3NvDmJ3w044CiNr5Pm8mwAWnIX34
	Kni9T73KhlCLMecPX5XG1dZfA+io/agwouSj+OOzcjotw1kt7ltqscQ4TbFxblxkdnhK
	9lhl2JyRhmruNRv0FRmfSYupnHO7lRyzrBan718K1Q/EGRAyCol67BWSzNiXYBAOELva
	DY7ELnokOHOISVmGUe8LQ+bCHxYOoBv+BUwXLt1pICSkyEkLWp5evqh01OyP1R7yAU1E
	W+pgUfufPuDGIUzMmiuX7BQAmCGcDoaUov/bmJgAKVKzN/6BoQEBF7Lzfd0y2sY0DYe6
	AyKA==
Received: by 10.68.216.4 with SMTP id om4mr9856769pbc.158.1333660199486;
	Thu, 05 Apr 2012 14:09:59 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id g8sm4218271pbo.25.2012.04.05.14.09.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 Apr 2012 14:09:58 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	josh@linux.intel.com
Date: Thu,  5 Apr 2012 14:09:46 -0700
Message-Id: <c19d94f814ffde8e8bf38d0f1aafdfead363c196.1333660034.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1333660034.git.dvhart@linux.intel.com>
References: <cover.1333660034.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333660034.git.dvhart@linux.intel.com>
References: <cover.1333660034.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmWCdBX5Elgk/G0/0fez1B4R0ctVc83l7gZH9z8GPYlZRjgQbSdTAAAB58yGkAPV8MHICV1
Subject: [PATCH 1/4] bootimg: Use mcopy to construct the hddimg
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
X-List-Received-Date: Thu, 05 Apr 2012 21:09:59 -0000

Fixes [YOCTO 2138]

The initial directory support (-d) added to mkdosfs has proven to be incomplete
and non-compliant with FAT. Rather than continue to maintain this feature and
work around the various issues, we can use mcopy to construct the image.

bootimg.bbclass already depends on mtools-native (although it may not have
needed to previously). No new dependencies are introduced. The image created
passes dosfsck cleanly. Remove the call to dosfsck.

mcopy reported an error with the image we were creating:
Total number of sectors (107574) not a multiple of sectors per track (32)!

Add some logic to ensure the total sector count is an integral number of sectors
per track, including forcing the logical sector size to 512 in the mkdosfs
command.

The du -bks arguments are contradictory, -b is equivalent to "--apparent-size
--block-size=1" and -k is --block-size=1K. If reordered, -kbs will report the
disk usage in bytes insteadk of 1k blocks. Eliminate the ambiguity by using:
du --apparent-size -ks

(From OE-Core rev: 92d2ea1a306354c6565a1b05b51b5719e481840f)

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Nitin A. Kamble <nitin.a.kamble@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Backported to poky edison by Darren Hart.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/classes/bootimg.bbclass |   22 +++++++++++++++-------
 1 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclass
index 49ee85e..bcae2ae 100644
--- a/meta/classes/bootimg.bbclass
+++ b/meta/classes/bootimg.bbclass
@@ -62,13 +62,21 @@ build_boot_bin() {
 
 	install -m 444 ${STAGING_LIBDIR}/syslinux/ldlinux.sys ${HDDDIR}/ldlinux.sys
 
-	# Do a little math, bash style
-	#BLOCKS=`du -s ${HDDDIR} | cut -f 1`
-	BLOCKS=`du -bks ${HDDDIR} | cut -f 1`
-	SIZE=`expr $BLOCKS + ${BOOTIMG_EXTRA_SPACE}`	
-
-	mkdosfs -n ${BOOTIMG_VOLUME_ID} -d ${HDDDIR} \
-	-C ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.hddimg $SIZE 
+	# Determine the 1024 byte block count for the final image.
+	BLOCKS=`du --apparent-size -ks ${HDDDIR} | cut -f 1`
+	SIZE=`expr $BLOCKS + ${BOOTIMG_EXTRA_SPACE}`
+
+	# Ensure total sectors is an integral number of sectors per
+	# track or mcopy will complain. Sectors are 512 bytes, and and
+	# we generate images with 32 sectors per track. This calculation
+	# is done in blocks, which are twice the size of sectors, thus
+	# the 16 instead of 32.
+	SIZE=$(expr $SIZE + $(expr 16 - $(expr $SIZE % 16)))
+
+	IMG=${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.hddimg
+	mkdosfs -n ${BOOTIMG_VOLUME_ID} -S 512 -C ${IMG} ${SIZE}
+	# Copy HDDDIR recursively into the image file directly
+	mcopy -i ${IMG} -s ${HDDDIR}/* ::/
 
 	syslinux ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.hddimg
 	chmod 644 ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.hddimg
-- 
1.7.5.4


