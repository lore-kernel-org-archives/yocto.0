Return-Path: <elad.yosef@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43121E013CE
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2012 02:11:00 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id kp12so4265581pab.35
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2012 02:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=5sLnW5gcUNCea+ELAdU0Jy8yliupjXiazTKAFb5XP2w=;
	b=SIuaKyejnNJJasfoSzMzB65Xs5Uz/lPft4YvE6VCtD17dYDAQp0eWMva/7blctkn/G
	xmPEEzyRxVkW9++IAc/AC4Zc3BPi+kM/hbc1bZsNQFwj1WP+ExS3tQX2J5+Flx6b52gV
	xKFYEgZMhMZ/E0cxGQV7IiXzMAQ2v7Y75nRbkBRQimbufHGoIr1eyVavOxxxOX9+ouQa
	pC2wdd5+jpcltcEpSTYI7rNndD7Y1wlPaukS837eSdiiMIM3vEdomPP0ozA35YQLhUah
	DSDH4IVIzzKbjeyrejCl7OJ9mvAbpI3eCJQ6al0NZ8sxhmDkzMqYN7rclh6Mll763EQJ
	uoSg==
MIME-Version: 1.0
Received: by 10.68.197.197 with SMTP id iw5mr49218430pbc.22.1352715059909;
	Mon, 12 Nov 2012 02:10:59 -0800 (PST)
Received: by 10.68.79.134 with HTTP; Mon, 12 Nov 2012 02:10:59 -0800 (PST)
Date: Mon, 12 Nov 2012 12:10:59 +0200
Message-ID: <CAOFa9c0Jb=8fZUBNpf6+g8pvuycju0Z5wrYUz+2pribdSY2JwQ@mail.gmail.com>
From: Elad Yosef <elad.yosef@gmail.com>
To: yocto@yoctoproject.org
Subject: Question: How to install the mkfs tools from the e2fsprogs instead of the BusyBox tools.
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
X-List-Received-Date: Mon, 12 Nov 2012 10:11:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I have created my own image based in existing one.

****************************************************************
IMAGE_INSTALL = "task-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} u-boot"

#My additions to the File-System
IMAGE_INSTALL += "e2fsprogs iptables"
IMAGE_LINGUAS = " "
inherit core-image
LICENSE = "MIT"
IMAGE_ROOTFS_SIZE = "8192"
# remove not needed ipkg informations
ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
IMAGE_FSTYPES ?= "tar.gz ext2.gz.u-boot"
******************************************************************

After building the File system I see that the mksf.ext2 point to the BusyBox.
I checked the build log file and saw the following:
***********************************************
update-alternatives: Linking
/localhome/QorIQ_SDK/QorIQ-SDK-V1.2-20120614-yocto/build_p2041rdb_release/tmp/work/p2041rdb-fsl-linux/crgn-image-minimal-1.0-r0/rootfs//sbin/mke2fs
to ../bin/busybox
update-alternatives: Linking
/localhome/QorIQ_SDK/QorIQ-SDK-V1.2-20120614-yocto/build_p2041rdb_release/tmp/work/p2041rdb-fsl-linux/crgn-image-minimal-1.0-r0/rootfs//usr/bin/mkfifo
to ../../bin/busybox
update-alternatives: Linking
/localhome/QorIQ_SDK/QorIQ-SDK-V1.2-20120614-yocto/build_p2041rdb_release/tmp/work/p2041rdb-fsl-linux/crgn-image-minimal-1.0-r0/rootfs//sbin/mkfs.ext2
to ../bin/busybox
update-alternatives: Linking
/localhome/QorIQ_SDK/QorIQ-SDK-V1.2-20120614-yocto/build_p2041rdb_release/tmp/work/p2041rdb-fsl-linux/crgn-image-minimal-1.0-r0/rootfs//sbin/mkfs.minix
to ../bin/busybox
*************************************************************************************

What am I missing here?

thanks
Elad

