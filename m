Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ACEFE0045D
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 07:34:07 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Dec 2012 07:34:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,215,1355126400"; d="scan'208";a="228802274"
Received: from unknown (HELO helios.localnet) ([10.252.122.195])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2012 07:33:42 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elad Yosef <elad.yosef@gmail.com>
Date: Tue, 04 Dec 2012 15:33:41 +0000
Message-ID: <7999610.a3lbyqa3y6@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-18-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CAOFa9c0Jb=8fZUBNpf6+g8pvuycju0Z5wrYUz+2pribdSY2JwQ@mail.gmail.com>
References: <CAOFa9c0Jb=8fZUBNpf6+g8pvuycju0Z5wrYUz+2pribdSY2JwQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Question: How to install the mkfs tools from the e2fsprogs instead of the BusyBox tools.
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
X-List-Received-Date: Tue, 04 Dec 2012 15:34:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 12 November 2012 12:10:59 Elad Yosef wrote:
> I have created my own image based in existing one.
> 
> ****************************************************************
> IMAGE_INSTALL = "task-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} u-boot"
> 
> #My additions to the File-System
> IMAGE_INSTALL += "e2fsprogs iptables"
> IMAGE_LINGUAS = " "
> inherit core-image
> LICENSE = "MIT"
> IMAGE_ROOTFS_SIZE = "8192"
> # remove not needed ipkg informations
> ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
> IMAGE_FSTYPES ?= "tar.gz ext2.gz.u-boot"
> ******************************************************************
> 
> After building the File system I see that the mksf.ext2 point to the
> BusyBox. I checked the build log file and saw the following:
> ***********************************************
> update-alternatives: Linking
> /localhome/QorIQ_SDK/QorIQ-SDK-V1.2-20120614-yocto/build_p2041rdb_release/tm
> p/work/p2041rdb-fsl-linux/crgn-image-minimal-1.0-r0/rootfs//sbin/mke2fs to
> ../bin/busybox
> update-alternatives: Linking
> /localhome/QorIQ_SDK/QorIQ-SDK-V1.2-20120614-yocto/build_p2041rdb_release/tm
> p/work/p2041rdb-fsl-linux/crgn-image-minimal-1.0-r0/rootfs//usr/bin/mkfifo
> to ../../bin/busybox
> update-alternatives: Linking
> /localhome/QorIQ_SDK/QorIQ-SDK-V1.2-20120614-yocto/build_p2041rdb_release/tm
> p/work/p2041rdb-fsl-linux/crgn-image-minimal-1.0-r0/rootfs//sbin/mkfs.ext2
> to ../bin/busybox
> update-alternatives: Linking
> /localhome/QorIQ_SDK/QorIQ-SDK-V1.2-20120614-yocto/build_p2041rdb_release/tm
> p/work/p2041rdb-fsl-linux/crgn-image-minimal-1.0-r0/rootfs//sbin/mkfs.minix
> to ../bin/busybox
> ****************************************************************************
> *********
> 
> What am I missing here?

Sorry for the late reply - the "mkfs" command is provided by util-linux and is 
in its own separate package, so I think you want to add the util-linux-mkfs 
package to IMAGE_INSTALL.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

