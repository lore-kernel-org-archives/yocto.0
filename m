Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20F99C6FD19
	for <webhook@archiver.kernel.org>; Fri, 10 Mar 2023 23:15:52 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.26863.1678471885687472759
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Mar 2023 10:11:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=nIS88jG4;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=24337a7e31=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32ABQWvK030111;
	Fri, 10 Mar 2023 18:11:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=CurGNs2mXatlVb69j5hpOQ7XPHQia1nJtsfrHbl3Irg=;
 b=nIS88jG4bHk7MnLR2pKrKVgO0mHoBECkpzd1mr9je+IdKAp9FR9BsjEVcxMLTBdlJlsm
 8O5xTSs0HvJi/PmIOLEdP01wpe0eoLCaxoEcTIWkcgV1O3G1GFvXOZ4HGk1tDgMgn2Xu
 fbTR/Wlkd5KZV+8KcXVrSF82G5lkQniCoWBCyNWWK65M8Md8T6y0SjPuHEBQ/tu3L6Oj
 BPzf7xA7zStHSWnVbRSjtmF37aA2AXdw97u59UQEhAVaPdcvgX1sh0IoRyT6QpfQNy0j
 zXVHrLW2Qtbq1iexrfMiBwOyMMGPBi6zqMSwXquAX5MSe/5CWPgKU7j2grcH3+MCRqxJ 1Q== 
Received: from ala-exchng02.corp.ad.wrs.com (unknown-82-254.windriver.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p6fg6k52n-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 10 Mar 2023 18:11:20 +0000
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.18; Fri, 10 Mar 2023 10:11:19 -0800
Received: from yow-lpggp3.wrs.com (128.224.137.13) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.17 via Frontend Transport; Fri, 10 Mar 2023 10:11:19 -0800
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>, Niko Mauno <niko.mauno@vaisala.com>,
        Naveen Saini <naveen.kumar.saini@intel.com>,
        Christer Fletcher
	<christer.fletcher@inter.ikea.com>,
        Paulo Neves <paulo.neves1@inter.ikea.com>
Subject: [meta-security][PATCH 2/2] dm-verity: document board specifics for Beaglebone Black
Date: Fri, 10 Mar 2023 13:11:17 -0500
Message-ID: <20230310181117.3344359-3-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230310181117.3344359-1-paul.gortmaker@windriver.com>
References: <20230310181117.3344359-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: hFzWbUFqnuMCUw6qEN1ihdLR_Sp2wKTP
X-Proofpoint-GUID: hFzWbUFqnuMCUw6qEN1ihdLR_Sp2wKTP
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59381

This is meant to augment the generic dm-verity instructions with
the board specifics for this platform.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 docs/dm-verity-beaglebone.txt | 37 +++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 docs/dm-verity-beaglebone.txt

diff --git a/docs/dm-verity-beaglebone.txt b/docs/dm-verity-beaglebone.txt
new file mode 100644
index 000000000000..5f0caa4eccff
--- /dev/null
+++ b/docs/dm-verity-beaglebone.txt
@@ -0,0 +1,37 @@
+dm-verity and beaglebone-black
+------------------------------
+Set/uncomment the MACHINE line for "beaglebone-yocto" if you haven't yet.
+
+In addition to the basic dm-verity settings, you'll also want in local.conf:
+
+IMAGE_BOOT_FILES:remove = "zImage"
+IMAGE_BOOT_FILES:append = " zImage-initramfs-${MACHINE}.bin;zImage"
+WKS_FILES = "${MACHINE}-verity.wks.in"
+
+Read-only issues: The beaglebone BSP by default declares the following:
+
+   SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
+   SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
+
+...which are variables used by sysV init, in order to determine the
+appropriate /etc/inittab entries.  The problem that arises is that by
+default, an on-target runtime check of /proc/consoles is used to finalize
+the /etc/inittab -- and of course that fails a build with read-only-rootfs
+[see the pkg_postinst_ontarget rule in the sysvinit rule for details.]
+
+If you don't need a serial console, the quick fix is to add in local.conf
+
+SERIAL_CONSOLES = ""
+
+If you do need/want a serial console, then probably a local bbappend to
+manually set the /etc/inittab as desired is easiest.
+
+After running "wic create -e core-image-minimal beaglebone-yocto-verity"
+you should have a "direct" image ready to write to a u-SD card.  Remember
+that the "direct" image contains the bootloader and partition table
+already, so you'll be writing it to a device such as /dev/sdb and not
+just a partition  -- like /dev/sdb1
+
+Also recall that booting from u-SD requires pressing and holding the S2
+(SYSBOOT) button during power-on in order to divert the boot from the normal
+soldered on storage and to the removable u-SD card.
-- 
2.33.0


