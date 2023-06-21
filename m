Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 028E0EB64DC
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 17:35:24 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.4527.1687367661975288555
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 10:14:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=TXpbsbtK;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=5536a98e9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35L5dhts008888;
	Wed, 21 Jun 2023 10:14:21 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=I0yXOL3MvS/9jhb7i0pXtQJNAkOmVQ0tKjBdtWa3A14=;
 b=TXpbsbtKVWGXoChxgQDq/h4JbAYQziuKe17U5uPe+zu/Eotgga7f/q+5GdpB4EEZYDOo
 Kx+LDKv1M6KW3h7an4cfaE0o4kQuGUZNBFRh+3Sn610UDF8yrlsyuf2rSKoWAGzeaHX2
 3y85PlwmMmn7QfAEae0m9YFhrnXFvgTRhJ7U4X08OJLhCMLoNQPX/5k2gEhHVfT3CwIp
 QZh9vk+cxy0mmoZcRoEaWPNQqb5EuVkUSI8IEpPFssiGjb/zMWbrwZquJzWoiRMef8Cl
 oXP3Be4VhktW7+ErX+4a7YUSYfjsn8olPPeh/mwf+2na/W+pVFty8N2kKmE392DDry6Y ZQ== 
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r9842ur6r-4
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 21 Jun 2023 10:14:20 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 10:14:19 -0700
Received: from ala-lpggp3.wrs.com (147.11.105.124) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 10:14:19 -0700
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>,
        Paul Gortmaker
	<paul.gortmaker@windriver.com>
Subject: [meta-security][PATCH 7/7] dm-verity: add sample systemd separate hash example and doc
Date: Wed, 21 Jun 2023 10:13:35 -0700
Message-ID: <20230621171335.1354905-8-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
References: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: ePQiCU77vT-P2FCVqXnA766b2MnE0Tep
X-Proofpoint-GUID: ePQiCU77vT-P2FCVqXnA766b2MnE0Tep
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-21_10,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 phishscore=0
 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306210145
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 17:35:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60385

Create a wks.in that allows an out-of-the-box build of a bootable
USB image using systemd and the hash data as a separate device or
partition.

A focus here was to ensure we used proper GPT names and GPT types,
and the GPT UUIDs that are based on splitting the root hash.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 docs/dm-verity-systemd-hash-x86-64.txt    | 43 +++++++++++++++++++++++
 wic/systemd-bootdisk-dmverity-hash.wks.in | 18 ++++++++++
 2 files changed, 61 insertions(+)
 create mode 100644 docs/dm-verity-systemd-hash-x86-64.txt
 create mode 100644 wic/systemd-bootdisk-dmverity-hash.wks.in

diff --git a/docs/dm-verity-systemd-hash-x86-64.txt b/docs/dm-verity-systemd-hash-x86-64.txt
new file mode 100644
index 0000000..673b810
--- /dev/null
+++ b/docs/dm-verity-systemd-hash-x86-64.txt
@@ -0,0 +1,43 @@
+dm-verity and x86-64 and systemd - separate hash device
+-------------------------------------------------------
+
+Everything said in "dm-verity-systemd-x86-64.txt" applies here.
+However booting under QEMU is not tested - only on real hardware.
+So for your MACHINE you need to choose "genericx86-64".
+
+Also, you'll need to point at the hash specific WKS file:
+
+WKS_FILES += " systemd-bootdisk-dmverity-hash.wks.in"
+
+The fundamental difference is to use a separate device/partition for
+storage of the hash data -- instead of "hiding" it beyond the filesystem
+in what is essentially a 5-10% oversized partition.  This takes any manual
+math calculations of size/offset out of the picture, and uses the kernel's
+natural behaviour of compartmentalizing devices to ensure they are separate.
+
+The example hash.wks file added here essentially adds a hash-only partition
+directly after the filesystem partition.  So the filesystem partition is
+no longer "oversized" and no offsets are needed/used.
+
+Since we are now using multiple partitions, we make a better effort to use
+accepted GPT partition types and UUIDs based on the roothash.  This means
+easier sysadmin level use/debugging based on cfdisk output etc.
+
+Generating the separate root hash image is driven off enabling this:
+   DM_VERITY_SEPARATE_HASH = "1"
+
+Two other variables control the GPT UUIDs - set to x86-64 defaults:
+
+   DM_VERITY_ROOT_GUID ?= "4f68bce3-e8cd-4db1-96e7-fbcaf984b709"
+   DM_VERITY_RHASH_GUID ?= "2c7357ed-ebd2-46d9-aec1-23d437ec2bf5"
+
+See: https://uapi-group.org/specifications/specs/discoverable_partitions_specification/
+
+Finally, the UUIDs (not the "partition types" above) are based off of
+the root node hash value as per the systemd "autodetect" proposed standard.
+These will obviously change with every update/rebuild of the root image.
+
+While not strictly coupled to any functionality at this point in time, it
+does aid in easier debugging, and puts us in alignment with using systemd
+inside the initramfs to replace manual veritysetup like configuration we
+currently do in the initramfs today, should we decide to do so later on.
diff --git a/wic/systemd-bootdisk-dmverity-hash.wks.in b/wic/systemd-bootdisk-dmverity-hash.wks.in
new file mode 100644
index 0000000..e400593
--- /dev/null
+++ b/wic/systemd-bootdisk-dmverity-hash.wks.in
@@ -0,0 +1,18 @@
+# short-description:  Create an EFI disk image with systemd-boot and separate hash dm-verity
+# A dm-verity variant of the regular wks for IA machines. We need to fetch
+# the partition images from the IMGDEPLOYDIR as the rootfs source plugin will
+# not recreate the exact block device corresponding with the hash tree. We must
+# not alter the label or any other setting on the image.
+# Based on OE-core's systemd-bootdisk.wks and meta-security's beaglebone-yocto-verity.wks.in file
+#
+# This .wks only works with the dm-verity-img class and separate hash data. (DM_VERITY_SEPARATE_HASH)
+
+part /boot --source bootimg-efi --sourceparams="loader=systemd-boot,initrd=microcode.cpio" --ondisk sda --label msdos --active --align 1024 --use-uuid
+
+# include the root+hash part with the dynamic hash/UUIDs from the build.
+include ${STAGING_VERITY_DIR}/${IMAGE_BASENAME}.${DM_VERITY_IMAGE_TYPE}.wks.in
+
+# add "console=ttyS0,115200" or whatever you need to the --append="..."
+bootloader --ptable gpt --timeout=5 --append="root=/dev/mapper/rootfs"
+
+part swap --ondisk sda --size 44 --label swap1 --fstype=swap --use-uuid
-- 
2.39.0


