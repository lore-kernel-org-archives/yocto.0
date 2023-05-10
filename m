Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AE4C77B7D
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 15:55:50 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.19997.1683731087889347377
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 08:04:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=EFkIilmM;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=4494f4ed9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34AAKEqZ023775;
	Wed, 10 May 2023 08:04:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=WC+wOA/Ylytve9tpLwaUwdCvWdhcavlLWFKnVtt9fjs=;
 b=EFkIilmMrUqNdcwzXKXrb3pxB1JGPIydacWoOrUxxGK+3JqcPYMLOLQh7WBrws0EgfHo
 95CXCTrxgMZ8ftTU1/6AqNVzC8tiE39GwzA7fxJWT+pTW3urKARyoY3KV9FTpNTWdJjc
 b6GligN9K73NxF6dDG8e9Lo1QD8sTgoXcA7z6LSaTBuy8v0JOtfhsp/os2v+8rrXN9DC
 CPpyLoTul9tq/Hs7xoG4cbrn++2MXfLRpVVX9J1G7kflvwgRNCf6QII9YX3AT9yE6UWZ
 c5pR6b2ZDC4eFP5CxcuOCOrhhxhEEVkbZooEBVKMpghPBVLC7gULaE8KJaao3MZBxUVe BA== 
Received: from ala-exchng02.corp.ad.wrs.com (unknown-82-254.windriver.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qf81jss5v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 10 May 2023 08:04:45 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 08:04:45 -0700
Received: from yow-lpggp3.wrs.com (128.224.137.13) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 08:04:45 -0700
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 4/4] dm-verity: add x86-64 systemd based example instructions
Date: Wed, 10 May 2023 11:04:42 -0400
Message-ID: <20230510150442.2427548-5-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
References: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: uOFYT_7xkDLcvb6LF7wzT_hdTPjv7zPA
X-Proofpoint-GUID: uOFYT_7xkDLcvb6LF7wzT_hdTPjv7zPA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 mlxscore=0 bulkscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305100121
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 15:55:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59976

From: Paul Gortmaker <paul.gortmaker@windriver.com>

We have systemd-bootdisk-dmverity.wks.in as an example template but
no mention of it in docs or config files.  Similar to the beaglebone
black insructions added earlier, we do the same for (qemu)x86-64.

This hopefully walks through getting things configured for building
a systemd based dm-verity image and booting it on qemux86-64 --filling
in a lot of blanks and assumptions so that someone relatively new to
the feature can get off the ground more quickly by using qemu as a
stepping stone towards their final physical implementation.

Finally, the full image is deployed and booted on real hardware.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 docs/dm-verity-systemd-x86-64.txt | 77 +++++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 docs/dm-verity-systemd-x86-64.txt

diff --git a/docs/dm-verity-systemd-x86-64.txt b/docs/dm-verity-systemd-x86-64.txt
new file mode 100644
index 000000000000..a47b02c853b9
--- /dev/null
+++ b/docs/dm-verity-systemd-x86-64.txt
@@ -0,0 +1,77 @@
+dm-verity and x86-64 and systemd
+--------------------------------
+In this example, we'll target combining qemux86-64 with dm-verity and
+also systemd - systemd has dm-verity bindings and is more likely to be
+used on x86.
+
+While dm-verity in a qemu environment doesn't make practial sense as a
+deployment - it can be a useful stepping stone for testing and getting to
+a final physical deployment.
+
+Set/uncomment the MACHINE line for "qemux86-64" if you haven't yet.  It
+should be the default if unspecified, but check to be sure.  As of this
+writing (kernel v6.1) the resulting qemux86-64 build can also be booted
+successfully on physical hardware, but if you don't intend to use qemu,
+you might instead want to choose "genericx86-64"
+
+This will make use of wic/systemd-bootdisk-dmverity.wks.in -- note that it
+contains a dependency on the meta-intel layer for microcode, so you'll need
+to fetch and add that layer in addition to the meta-security related layers.
+
+In addition to the basic dm-verity settings, choose systemd in local.conf:
+
+DISTRO_FEATURES:append = " security systemd"
+VIRTUAL-RUNTIME_init_manager = "systemd"
+EFI_PROVIDER = "systemd-boot"
+PACKAGECONFIG:append:pn-systemd = " cryptsetup"
+
+Note the last line - you won't typically see that in on-line instructions
+for enabling systemd.  It is important for dm-verity, since it triggers
+the build and installation of components like this onto the rootfs:
+
+   /lib/systemd/system-generators/systemd-veritysetup-generator
+   /lib/systemd/systemd-veritysetup
+
+Now build the components for the wic image:
+
+   bitbake intel-microcode
+   bitbake core-image-minimal
+
+Assemble the image:
+
+           ------------------------------
+build-qemu-x86_64$wic create systemd-bootdisk-dmverity -e core-image-minimal
+INFO: Building wic-tools...
+
+[...]
+
+INFO: Creating image(s)...
+
+INFO: The new image(s) can be found here:
+  ./systemd-bootdisk-dmverity.wks-202304181413-sda.direct
+
+The following build artifacts were used to create the image(s):
+  BOOTIMG_DIR:                  /home/paul/poky/build-qemu-x86_64/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot/usr/share
+  KERNEL_DIR:                   /home/paul/poky/build-qemu-x86_64/tmp/deploy/images/qemux86-64
+  NATIVE_SYSROOT:               /home/paul/poky/build-qemu-x86_64/tmp/work/core2-64-poky-linux/wic-tools/1.0-r0/recipe-sysroot-native
+
+INFO: The image(s) were created using OE kickstart file:
+  /home/paul/poky/meta-security/wic/systemd-bootdisk-dmverity.wks.in
+build-qemu-x86_64$
+           ------------------------------
+
+The "runqemu" script defaults were acceptable for testing with only the
+verity image needing to be specified, i.e.
+
+    runqemu \
+    nographic \
+    qemux86-64 \
+    tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-*.rootfs.ext4.verity
+
+You will see the above "direct" image file and also similarly named
+individual partition images.  To boot on UEFI enabled physical hardware,
+you need to simply write the "direct" image file to a USB stick with dd
+and the partition images can largely be ignored.
+
+Further information on interacting with the systemd UEFI loader is here:
+https://www.freedesktop.org/wiki/Software/systemd/systemd-boot/
-- 
2.40.0


