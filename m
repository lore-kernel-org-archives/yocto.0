Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C48FC6FD1E
	for <webhook@archiver.kernel.org>; Fri, 10 Mar 2023 23:15:52 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.26865.1678471885855206159
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Mar 2023 10:11:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ZFL9L8Pc;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=24337a7e31=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32ABQWvJ030111;
	Fri, 10 Mar 2023 18:11:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=0vfecvs/u6lL2Vd3IUepoUiJrZpI131gnUO7vtkRE6M=;
 b=ZFL9L8PcuyXobWZ7l7woVYbUt2h4EZs52/cWC0FEiYb2vwJLwq7rpLpOwAXAAbz0rFKn
 YsCebb+XBa4+N6FJfVeh+wymJvKlhY3pIikWuiFX0y6d2XGdq9FJB1B446TvbZiIrP0D
 HIbNKuAooYt/w5fzDQqZcV7u7zr1RFSTSEB6CjnQUoYE1xDsP4a/1ScdaH4HsBfE/6q3
 g35o/jnsY056ZP6bFpim8xGf9AGVcO1tJjegnxk67U4Ul68AbEDNGyg3EVs/rBFYhGnF
 4HTpfxSt+nTVan58kK5CP4prlFNcBfp0WFKEQmldtzrE0mOKxw1S7DvinjcE8J7fTPuZ Yg== 
Received: from ala-exchng02.corp.ad.wrs.com (unknown-82-254.windriver.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p6fg6k52n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 10 Mar 2023 18:11:20 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.18; Fri, 10 Mar 2023 10:11:19 -0800
Received: from yow-lpggp3.wrs.com (128.224.137.13) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.17 via Frontend Transport; Fri, 10 Mar 2023 10:11:18 -0800
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>, Niko Mauno <niko.mauno@vaisala.com>,
        Naveen Saini <naveen.kumar.saini@intel.com>,
        Christer Fletcher
	<christer.fletcher@inter.ikea.com>,
        Paulo Neves <paulo.neves1@inter.ikea.com>
Subject: [meta-security][PATCH 1/2] dm-verity: add basic non-arch/non-BSP yocto specific settings
Date: Fri, 10 Mar 2023 13:11:16 -0500
Message-ID: <20230310181117.3344359-2-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230310181117.3344359-1-paul.gortmaker@windriver.com>
References: <20230310181117.3344359-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: k--5CY5y1wl1LwMIWFCbbDx3I3FRNS_t
X-Proofpoint-GUID: k--5CY5y1wl1LwMIWFCbbDx3I3FRNS_t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-10_08,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 mlxlogscore=999 clxscore=1015 lowpriorityscore=0 adultscore=0
 impostorscore=0 suspectscore=0 phishscore=0 spamscore=0 priorityscore=1501
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303100143
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Mar 2023 23:15:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59382

As things stand currently, the only way to learn about the Yocto
specific settings for implementing dm-verity is by reading the source.

Here we try and capture some of the basic information that exists
out there in mailing list posts and get that in-tree.

Board specific settings/tips will be stored in board specific files.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 docs/dm-verity.txt | 114 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 114 insertions(+)
 create mode 100644 docs/dm-verity.txt

diff --git a/docs/dm-verity.txt b/docs/dm-verity.txt
new file mode 100644
index 000000000000..602a82693930
--- /dev/null
+++ b/docs/dm-verity.txt
@@ -0,0 +1,114 @@
+dm-verity and Yocto/OE
+----------------------
+The dm-verity feature provides a level of data integrity and resistance to
+data tampering.  It does this by creating a hash for each data block of
+the underlying device as the base of a hash tree.  There are many
+documents out there to further explain the implementaion, such as the
+in-kernel one itself:
+
+https://docs.kernel.org/admin-guide/device-mapper/verity.html
+
+The goal of this document is not to reproduce that content, but instead to
+capture the Yocto/OE specifics of the dm-verity infrastructure used here.
+
+Ideally this should enable a person to build and deploy an image on one of
+the supported reference platforms, and then further adapt to their own
+platform and specific storage requirements.
+
+Basic Settings
+--------------
+Largely everything is driven off of a dm-verity image class; a typical
+block of non MACHINE specific settings are shown below:
+
+INITRAMFS_IMAGE = "dm-verity-image-initramfs"
+DM_VERITY_IMAGE = "core-image-minimal"
+DM_VERITY_IMAGE_TYPE = "ext4"
+IMAGE_CLASSES += "dm-verity-img"
+INITRAMFS_IMAGE_BUNDLE = "1"
+
+Kernel Configuration
+--------------------
+Kernel configuration for dm-verity happens automatically via IMAGE_CLASSES
+which will source features/device-mapper/dm-verity.scc when dm-verity-img
+is used. [See commit d9feafe991c]
+
+Supported Platforms
+-------------------
+In theory, you can use dm-verity anywhere - there is nothing arch/BSP
+specific in the core kernel support.  However, at the BSP level, one
+eventually has to decide what device(s) are to be hashed, and where the
+hash tables are stored.
+
+To that end, the BSP storage specifics live in meta-security/wic dir and
+represent the current set of example configurations that have been tested
+and submitted at some point.
+
+Getting Started
+---------------
+This document assumes you are starting from the basic auto-created
+conf/local.conf and conf/bblayers.conf from the oe-init-build-env
+
+Firstly, you need the meta-security layer to conf/bblayers.conf along with
+the dependencies it has -- see the top level meta-security README for that.
+
+Next, assuming you'll be using dm-verity for validation of your rootfs,
+you'll need to enable read-only rootfs support in your local.conf with:
+
+EXTRA_IMAGE_FEATURES = "read-only-rootfs"
+
+For more details, see the associated documentation:
+
+https://docs.yoctoproject.org/dev/dev-manual/read-only-rootfs.html
+
+Also add the basic block of dm-verity settings shown above, and select
+your MACHINE from one of the supported platforms.
+
+If there is a dm-verity-<MACHINE>.txt file for your BSP, check that for
+any additional platform specific recommended settings, such as the
+WKS_FILES which can specify board specific storage layout discussed below.
+
+Then you should be able to do a "bitbake core-image-minimal" just like any
+other normal build.  What you will notice, is the content in
+tmp/deploy/images/<MACHINE>/ now have suffixes like "rootfs.ext4.verity"
+
+While you can manually work with these images just like any other build,
+this is where the BSP specific recipes in meta-security/wic can simplify
+things and remove a bunch of manual steps that might be error prone.
+
+Consider for example, the beaglebone black WIC file, which contains:
+
+part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat
+--label boot --active --align 4 --fixed-size 32 --sourceparams="loader=u-boot" --use-uuid
+part / --source rawcopy --ondisk mmcblk0 --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity"
+bootloader --append="console=ttyS0,115200"
+
+As can be seen, it maps out the partitions, including the bootloader, and
+saves doing a whole bunch of manual partitioning and dd steps.
+
+This file is copied into tmp/deploy/images/<MACHINE>/ with bitbake
+variables expanded with their corresponding values for wic to make use of.
+
+Continuing with the beaglebone example, we'll see output similar to:
+
+             ----------------------
+$ wic create -e core-image-minimal beaglebone-yocto-verity
+
+[...]
+
+INFO: Creating image(s)...
+
+INFO: The new image(s) can be found here:
+  ./beaglebone-yocto-verity.wks-202303070223-mmcblk0.direct
+
+The following build artifacts were used to create the image(s):
+  BOOTIMG_DIR:       /home/paul/poky/build-bbb-verity/tmp/work/beaglebone_yocto-poky-linux-gnueabi/core-image-minimal/1.0-r0/recipe-sysroot/usr/share
+  KERNEL_DIR:        /home/paul/poky/build-bbb-verity/tmp/deploy/images/beaglebone-yocto
+  NATIVE_SYSROOT:    /home/paul/poky/build-bbb-verity/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/wic-tools/1.0-r0/recipe-sysroot-native
+
+INFO: The image(s) were created using OE kickstart file:
+  /home/paul/poky/meta-security/wic/beaglebone-yocto-verity.wks.in
+             ----------------------
+
+The "direct" image contains the partition table, bootloader, and dm-verity
+enabled ext4 image all in one -- ready to write to a raw device, such as a
+u-SD card in the case of the beaglebone.
-- 
2.33.0


