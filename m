Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=FvtbPuI7;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VIAGFg5AzQ03g6rqTJni+0RIdsGrHbCge1EC8R8XqGRrqgl9oiVEkJ0GyEnbLhJ3R8fhqi3XFcI+/W3W0pGqKZl6oKVJODeGcB8yRCgmUjQ7/6wdhwkDndlNJ+CvMkyT6okEsQyfimApJQ8jrJfxfQPtojmftvQ1X+oj/j8WyaXwt3sG25YVSX+7ATewf3ukQ6B43u/RFstKtHnd5l/Lw794dM7xX3l1BTPrNkHHUZwUmEyRA5aB2qHcGVCcW06YyGVtzUIWinO49XXMDeinnz3D837l9bShP+9vUDye1H0Pa5gqHjFrMIS6n2tPIoxps+4DGSla24PxlwAbvo22CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=33XpQVflNfpS/sLcbucXsUxNRUJYVsxIFvB4N+4ZVFQ=;
 b=Z31GbVkIl63ykSO11MOh3QkMAMayYyidZvuGwp1piKocpYOv88XrewLv7nZj5bSQn2Eddx/a0c0V8YssVs+/ww1BomcXkBmVy1+fwwFxSBF0VMn2/wPA81gp4jmIV0ns1pcBGreTtnveciaGO6MZ+Om5an5blvm3aP4FpsA8UlggME0K2Ys25oh+0RM+r7T1sjiWJWP+GAKSk2G6ApjgK5yndD2w9BglaqADtD1FTeYqh8ut3/V2JPidjGOlnvo6N6oq8s8ZuZbf44kcmz4A/hZFQTpb1S+/JTS5ksUPLIGT1dW0YbkOa1/g4HT7UImPUf4xGkFAA4SSa3Ras315Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=33XpQVflNfpS/sLcbucXsUxNRUJYVsxIFvB4N+4ZVFQ=;
 b=FvtbPuI7ifTaE8CiWk0NWc7dADhGCZyRz4lZ330bT7/mUEgOxYNSBfc2ewtckHoTdea6wn+WZthnqv0T6ZRuxMDCVdrVuJVh2o45Q2bVORCyceRIityn4vJqt6OcyGKQO/gWXX51vuJo87lIw1U/nXU81QWWB/cukbwkDSP9B2o=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:30 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:29 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 08/12] dm-verity-image-initramfs: Use initramfs-framework
Date: Thu, 10 Sep 2020 16:17:55 +0000
Message-ID: <20200910161759.87958-9-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910161759.87958-1-niko.mauno@vaisala.com>
References: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:29 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e9e3e7cc-c8ad-48d0-d694-08d855a52798
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB59258AD5F8E2F4CBAD445E1981270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1417;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fgr56F1YPwwvzSFXT8XRmmm3yzhbIHsLnERHOx+x/QWYoXv6wy2jQehtXosxLGibUam2OYJhfGZ2ofQ/xMHGBO2mkVwmyHXq7dO0EhTY/ffQ9vQ6sfnYKLy9+9nhBYFSbCkjEIOmQmRNf2KC6b/FWnkfcXuv+2mA5zphHRE98HvW2kEI+qtEiH/iBd+HPVlZQD7oq6xOzuP97Py5tr8pIC5ZuwHXR/qJLW92n51ZjADr96y4jvT5Mv2BO6JLbC+tWva9eyJa8hKLxaXWDeHne9wWn2sujMMtAJuRSE0J2fpFmJ8gLaUMdhcM9/JrLaj4JxM+hBMQdjSf3qeKBbDZCuYXv0tgFsM4Of8+BFZuD1zf9ta3CMqrTAgoeaHt6397Dd9+yvpI2UWDliuGA71ggA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(15650500001)(107886003)(316002)(86362001)(8676002)(6486002)(966005)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	KVXSk+0hQgnZVgcaBesEukWUG/cwp1z1Sh7pNeb+Rw4f/69WJW7cWdWZqI50H8N4Zncz4DY/10u+hA77qcqfPs9BDl7g+49ciWdvMUcw+SbqY8ffZ180q8LJej/8P9oX8NfTErL6H2IxzE0DkA/XhXIVKjyIYDaFVwCXFmPjrr+PCCKIgNXs1GrARQooI7ozXVtREbUfcEOhxIfJLiWeIK1Obw82cCEnGq/FxuKYzwzxlfRu+fKdKYds2VhKtu/6k3e8fpPI2FMJLlYbn7fl3imqNsGnR7Vi6mgMZT7JX9fmTIVpOdtcoJh4JCSeZlMHwYFCS795lVdlvBCXyUBgmuDIYwQgQCEGB57JNLEm/1J1DiaGK9HhCcHrdoDBMovAgO2Kdpq/7T/F58DHWzLbMfZCiQU+tKrkMcnP+HnFU2zUtsqMvTkdF/FH+xKF9wRkN9VFff5Hdj8yxPXGn9asMi2ld1jyanDpGo0lj4Tr8VpS9H9xgJ80vSbIcKSRRXqOUeXzrcaFEAvmv5lHS0OSI9IziMZ/wvKWF0GAFlooovKajTSG/rkzdo2WQWlh4e90KPX+lFcQteYila2exIlDFcYpLL5qDN1x6937GsZC3wgBVcSDIXlacQ1Wnf0HCcCB0guJTIFNrCDEtoPQe9cqTQ==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9e3e7cc-c8ad-48d0-d694-08d855a52798
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:29.8296
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J00RQAumhNKschN/hW74RhyNcr2dwqR5SMxYUrXe3ypB0i2gymAEtyIj0odARMQT8PPpikvmjkjpiMq9OSHwFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Switch from this layer's initramfs-dm-verity recipe to poky-provided
initramfs-framework suite to manage veritysetup et al.

This commit also removes initramfs-dm-verity recipe which is not
referred from elsewhere in this meta layer.

Also update the install path of dm-verity.env from /usr/share to
/usr/share/misc in order to better comply with FHS3.0, see
https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch04s11.html#usrsharemiscM=
iscellaneousArchitecture

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 .../images/dm-verity-image-initramfs.bb       |  5 +-
 .../initrdscripts/initramfs-dm-verity.bb      | 13 ------
 .../initramfs-dm-verity/init-dm-verity.sh     | 46 -------------------
 3 files changed, 3 insertions(+), 61 deletions(-)
 delete mode 100644 recipes-core/initrdscripts/initramfs-dm-verity.bb
 delete mode 100644 recipes-core/initrdscripts/initramfs-dm-verity/init-dm-=
verity.sh

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-cor=
e/images/dm-verity-image-initramfs.bb
index e791c19a..6a1058dc 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -4,7 +4,8 @@ DESCRIPTION =3D "Simple initramfs image for mounting the ro=
otfs over the verity de
 IMAGE_FEATURES =3D ""
=20
 PACKAGE_INSTALL =3D " \
-    initramfs-dm-verity \
+    initramfs-module-dmverity \
+    initramfs-module-udev \
     base-files \
     busybox \
     util-linux-mount \
@@ -24,6 +25,6 @@ IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
 inherit core-image
=20
 deploy_verity_hash() {
-    install -D -m 0644 ${STAGING_VERITY_DIR}/${DM_VERITY_IMAGE}.${DM_VERIT=
Y_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}${datadir}/dm-verity.env
+    install -D -m 0644 ${STAGING_VERITY_DIR}/${DM_VERITY_IMAGE}.${DM_VERIT=
Y_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}${datadir}/misc/dm-verity.env
 }
 IMAGE_PREPROCESS_COMMAND +=3D "deploy_verity_hash;"
diff --git a/recipes-core/initrdscripts/initramfs-dm-verity.bb b/recipes-co=
re/initrdscripts/initramfs-dm-verity.bb
deleted file mode 100644
index b6149565..00000000
--- a/recipes-core/initrdscripts/initramfs-dm-verity.bb
+++ /dev/null
@@ -1,13 +0,0 @@
-SUMMARY =3D "Simple init script that uses devmapper to mount the rootfs in=
 read-only mode protected by dm-verity"
-LICENSE =3D "MIT"
-LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb7=
88c80a0384361b4de20420"
-
-SRC_URI =3D "file://init-dm-verity.sh"
-
-do_install() {
-    install -m 0755 ${WORKDIR}/init-dm-verity.sh ${D}/init
-    install -d ${D}/dev
-    mknod -m 622 ${D}/dev/console c 5 1
-}
-
-FILES_${PN} =3D "/init /dev/console"
diff --git a/recipes-core/initrdscripts/initramfs-dm-verity/init-dm-verity.=
sh b/recipes-core/initrdscripts/initramfs-dm-verity/init-dm-verity.sh
deleted file mode 100644
index 307d2c74..00000000
--- a/recipes-core/initrdscripts/initramfs-dm-verity/init-dm-verity.sh
+++ /dev/null
@@ -1,46 +0,0 @@
-#!/bin/sh
-
-PATH=3D/sbin:/bin:/usr/sbin:/usr/bin
-RDEV=3D""
-ROOT_DIR=3D"/new_root"
-
-mkdir -p /proc
-mkdir -p /sys
-mkdir -p /run
-mkdir -p /tmp
-mount -t proc proc /proc
-mount -t sysfs sysfs /sys
-mount -t devtmpfs none /dev
-
-udevd --daemon
-udevadm trigger --type=3Dsubsystems --action=3Dadd
-udevadm trigger --type=3Ddevices --action=3Dadd
-udevadm settle --timeout=3D10
-
-for PARAM in $(cat /proc/cmdline); do
-	case $PARAM in
-		root=3D*)
-			RDEV=3D${PARAM#root=3D}
-			;;
-	esac
-done
-
-if ! [ -b $RDEV ]; then
-	echo "Missing root command line argument!"
-	exit 1
-fi
-
-case $RDEV in
-	UUID=3D*)
-		RDEV=3D$(realpath /dev/disk/by-uuid/${RDEV#UUID=3D})
-		;;
-esac
-
-. /usr/share/dm-verity.env
-
-echo "Mounting $RDEV over dm-verity as the root filesystem"
-
-veritysetup --data-block-size=3D1024 --hash-offset=3D$DATA_SIZE create roo=
tfs $RDEV $RDEV $ROOT_HASH
-mkdir -p $ROOT_DIR
-mount -o ro /dev/mapper/rootfs $ROOT_DIR
-exec switch_root $ROOT_DIR /sbin/init
--=20
2.20.1

