Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.49])
 by mx.groups.io with SMTP id smtpd.web12.25843.1599754711462139436
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=d2PHO/ZZ;
 spf=pass (domain: vaisala.com, ip: 40.107.14.49, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DIFGA7uUtlV2+MNq+9pAN5FN9zucxUq132vjJhLeatgujWDh/76qstGSOV7TpXyQ/cMpZwkGgydP7ZUVO56a7yWgCERhQN5BbJUYktty+7KGJkyFEl7aI3qehnrYnFmO8ZcBhGWTPE0WxiPw+M0WjjAHrarKi6IpvokhMIch5UYLX4VuwXzx6d/nNpf01f0OjvIGWZYhnodnKdFJ3raHyiFfDt4HWuDGQi05pImvXNdXANVEBl69wtpwrdvO5XztwFd7CwadZUWDOYT7KzYA5UitzFr+RnW5aE+f+Xg1BvpKdV+o15KVaRM2ktMORLQ+nwRF6Gq6uv+KJeSmFxqj7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M1shXjcAoFOeMmbS7RuSFn6fu+xP1h7Whnjb3m06dNg=;
 b=MofcsFlN5iYQICORp6w9cT5Z/fvKlwX+zxUJSVDhy8JvGrVlAiQ1lKdpH42FV9SxypvV9p8Iv0Nnz9MLAkgiHr8F0SYmKDAJ8b0LkUZ0lbbxLvgbvJBJYzWluYOXA/dDS8q3U+wZvENr4zwYJZS+FgC9i98SO3L4M0/gaXquWpJTjdUJrNWCBk4OOv0Fcmvxqi/7jiPLSW9F65I1d2G55vjrRMAsCRxBEIJaSH7pf/qeaXDEU37zVs6vpYZKza2E9IULHPKjAjORuiVT+4Rac1F0LEZqLYNHDQNhTxsxL2ywnhN+1P45/C/9F+/WjWmEBAgKsTQMe7N1yBkzQEW0BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M1shXjcAoFOeMmbS7RuSFn6fu+xP1h7Whnjb3m06dNg=;
 b=d2PHO/ZZhMMa61++zyl37EvWK41jE/MTcfVVU7c2XPSx15sB58/ykgNr2x9Z0UzqRc7miqv2uwazZ4V3AcDgqX/Vne6b5em0+CFVjteW4tUJTL3eG/MUNyDVqoH9NOdLWxprBhaWH9PRNPHhqjFM/XNNtqfePYBFfwg2F1nnMEQ=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB4616.eurprd06.prod.outlook.com (2603:10a6:20b:63::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:29 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:29 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 07/12] initramfs-framework: Add dmverity module
Date: Thu, 10 Sep 2020 16:17:54 +0000
Message-ID: <20200910161759.87958-8-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910161759.87958-1-niko.mauno@vaisala.com>
References: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:28 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a17058da-73f9-4b2d-2b69-08d855a52736
X-MS-TrafficTypeDiagnostic: AM6PR06MB4616:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB4616C521ACEE04B8434001CC81270@AM6PR06MB4616.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7H3uSrIyzrvc8fxIun0/05/YzpKsPHgI7rmIoSZQpC6eGp6iLls8uaMYxBUXsrRe8eHs2qYQTfMJQ/5/qeU7wkIbRy8PaSUWXnvuYdje5zYtqQINQ/ZOapPwO5C5VG+0JV/sAIOzcZyo23wE1FWMLcUKR/J2mtGx+HPs+8UO0fOzy0YOh34ZLQdFdgxs8m2HRTH/sMJf+rmv8cklTupz+9D89z3uzcCfu2UJfdlVnrqTdICHLysdURgbHrcLvFfv4X0EWx+1dkl2M6lgCaG4eaX1p5rZQfndX3ZTBsq1zy1TKWGIlN00U2lkRwHfQQEr
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(2906002)(6486002)(83380400001)(5660300002)(2616005)(316002)(66946007)(1076003)(107886003)(86362001)(66476007)(66556008)(8936002)(6916009)(7696005)(956004)(52116002)(8676002)(36756003)(4326008)(26005)(6666004)(186003)(478600001)(16526019)(44832011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	rh2BcW47+TIFf5TjGFXxEk6sUFeDP8O4kuc+FVA/vuYxkthOYZurEEfn5x3yNLyROcdyzHw766+tHNyKGn8uPeCNXugpeEuYFUwd0l/uqddAxPJMFTic/duxWy8TJwA6dsGwLN+TyaFInW40FMzdGdc4zibwmILUEwsUiGBzZ9eFlus9IthNsunVCCIzqFuy7B0sSmKITfCiCCUKAB2OeBx5UqAAOpfdmsA8yXQUBeaAC/02glqLcS6kYiaqJXppWd7Wvo6QnoGIUpiGWZn6Ps6/G3AE2IemQdbkmUbZHerg1uWl/tzyKksY5ETd5PwJfoEixk9JRsjn4lqRdzKcoe+Dgs4Q0Ymq4sgoEfvUEEQ1XcUs45PcsHBMBZsn9wQwSjcKsetJQ+c86LgoQVnki5P1WmTw+s9W8xmQls5cFq7lqYmkwkZsNkvwkeyVqUcrbi8JPUhh43q60EJ9ZZrxkCMWPgYkunLBha9gOf3X55Ntt/qWeoUM2nvaKYmjCmbyQAYo9y3Wq/xME2OVQQq/hfxF8tCx4HoUws4eR8lO9QhCIeTfZtmcaBfin0oew0sJjZIxhTGlZHcapA6BM5nWP+Chvtzp4xXvtr5qmHF54iZsJ+R60VG9AXxbnCwPBcOf/ZBjnMCMPHAmvqrSpoKyNw==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a17058da-73f9-4b2d-2b69-08d855a52736
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:29.0490
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PaZZvXk5MIMaXuBNqpjoNkqzVWuQnQDz+MBDEwQLC64WpaUeQc99xJ/3JQ7sgDvY33UCf1zPimXSNRpw9otGoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB4616
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Add 'initramfs-module-dmverity' as an extension to poky upstream
provided initramfs-framework suite via matchingly named bbappend file.

Together with pre-existing 'initramfs-module-udev' this module can be
used to facilitate dm-verity rootfs mounting from initramfs context
that is bundled with Linux kernel.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 .../initramfs-framework/dmverity              | 53 +++++++++++++++++++
 .../initramfs-framework_1.0.bbappend          | 16 ++++++
 2 files changed, 69 insertions(+)
 create mode 100644 recipes-core/initrdscripts/initramfs-framework/dmverity
 create mode 100644 recipes-core/initrdscripts/initramfs-framework_1.0.bbap=
pend

diff --git a/recipes-core/initrdscripts/initramfs-framework/dmverity b/reci=
pes-core/initrdscripts/initramfs-framework/dmverity
new file mode 100644
index 00000000..bb07aab5
--- /dev/null
+++ b/recipes-core/initrdscripts/initramfs-framework/dmverity
@@ -0,0 +1,53 @@
+#!/bin/sh
+
+dmverity_enabled() {
+    return 0
+}
+
+dmverity_run() {
+    DATA_SIZE=3D"__not_set__"
+    ROOT_HASH=3D"__not_set__"
+
+    . /usr/share/misc/dm-verity.env
+
+    case "${bootparam_root}" in
+        ID=3D*)
+            RDEV=3D"$(realpath /dev/disk/by-id/${bootparam_root#ID=3D})"
+            ;;
+        LABEL=3D*)
+            RDEV=3D"$(realpath /dev/disk/by-label/${bootparam_root#LABEL=
=3D})"
+            ;;
+        PARTLABEL=3D*)
+            RDEV=3D"$(realpath /dev/disk/by-partlabel/${bootparam_root#PAR=
TLABEL=3D})"
+            ;;
+        PARTUUID=3D*)
+            RDEV=3D"$(realpath /dev/disk/by-partuuid/${bootparam_root#PART=
UUID=3D})"
+            ;;
+        PATH=3D*)
+            RDEV=3D"$(realpath /dev/disk/by-path/${bootparam_root#PATH=3D}=
)"
+            ;;
+        UUID=3D*)
+            RDEV=3D"$(realpath /dev/disk/by-uuid/${bootparam_root#UUID=3D}=
)"
+            ;;
+        *)
+            RDEV=3D"${bootparam_root}"
+    esac
+
+    if ! [ -b "${RDEV}" ]; then
+        echo "Root device resolution failed"
+        exit 1
+    fi
+
+    veritysetup \
+        --data-block-size=3D1024 \
+        --hash-offset=3D${DATA_SIZE} \
+        create rootfs \
+        ${RDEV} \
+        ${RDEV} \
+        ${ROOT_HASH}
+
+    mount \
+        -o ro \
+        /dev/mapper/rootfs \
+        ${ROOTFS_DIR} || exit 2
+}
diff --git a/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend b/=
recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
new file mode 100644
index 00000000..48e92c23
--- /dev/null
+++ b/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
@@ -0,0 +1,16 @@
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
+
+SRC_URI_append =3D "\
+    file://dmverity \
+"
+
+do_install_append() {
+    # dm-verity
+    install ${WORKDIR}/dmverity ${D}/init.d/80-dmverity
+}
+
+PACKAGES_append =3D " initramfs-module-dmverity"
+
+SUMMARY_initramfs-module-dmverity =3D "initramfs dm-verity rootfs support"
+RDEPENDS_initramfs-module-dmverity =3D "${PN}-base"
+FILES_initramfs-module-dmverity =3D "/init.d/80-dmverity"
--=20
2.20.1

