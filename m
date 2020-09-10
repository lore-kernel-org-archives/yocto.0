Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.81])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=n9tAu8OS;
 spf=pass (domain: vaisala.com, ip: 40.107.3.81, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NL3DpzSfHa+elBuRPN4RdEF1iWUzDxziv0ufkQmNE1eW4khgfCfXmwJo72FaNjoqNBscC7Vh0SfsDYbfJutTP/OCB1cgqefTQIhkmKjEzbU18/b7Ph2SnnmXgLISHWfO55Lt4sDS03DOYRS+rTAYrM/Kn3dTQV5lIpSoZ8hUx8IapSxYnd5EDjH2BgquZyiIItSoPJftpX+JYHDxGiIwMSAgPfJk2wBgCmbmGSo8mOlt94JFBERHn2aawkgXEWAL26avSeThlKKjkh4DkY00+abAIVZy2fWg3HzzT0NXXYljHFOrozr6RdL1alZtw5JcgMFWS0A3AC5kG6W9hLSlFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=axXG9Au4lsRzp954afC/kUraJYcHTCcPib6x8FVZtRg=;
 b=B0qyoFdKIuFmq1J8ODVuTbz5/jcKEhl++TY0+qZDGJINFureCh/es1ud8QTmTBe7x0DoF/saYScullM68IxaCagdwBl6joP+6YObneHHJvi70R2lwxhx245oWPh/rdtCSSc9TP5wP2vQez2oaFddUMi8pEI9UG0YChgHqihcVnPHC5S7RDxCOdGYHLXopQKlrHWPvqIMFLQBZ1njbJ/4fnt3sH74+uGdBb7GVu+v6w/yhBTlXdRXu+xWb0QdZX152LQL7C0uNVrq7kzmAcINCqvJBidf5wN/E5YyLMW9Xe5TRZi1V5olPWkTu3p/gwd8zUi2earIIDgyVYn2eAmXBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=axXG9Au4lsRzp954afC/kUraJYcHTCcPib6x8FVZtRg=;
 b=n9tAu8OSIw/ObcFVQ8WwIM2FqGlXNU89wWdNZUnzcqFagwnKQAzPjAN6vL9D0Ea1C6ULt/eHpgt59DbOFoYRljLwYMR2yyQSSlfA3QFt3XokiETAz2FN++fyvDlMp94EccVoPOVzfy9iN7vdoSdUhRTCx3AK3llR+VygPL8kthA=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:24 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:24 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 00/12] dm-verity overhaul
Date: Thu, 10 Sep 2020 16:17:47 +0000
Message-ID: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:23 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd844e2e-e79a-4f16-c8bc-08d855a5246a
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB59252A5E98AF4B9F7F65F4B581270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hKz0sXUOZ1jV1vnys6m+1STXiA4pqc+bZF89eVLygyOyBWbJzWgazljHkE+Ap95cs4QqVtr01sk5/0Q2z+gRqVwz8yL9XqcM7yHfuNrl2h6gtoRTQ3Xf+eaHUqA0pM7UhEglyKd27cZv/BxcbiOhOoJOf7Wrz7HrZDopaCjIatc1zZ5s96QnlW3lUQhcF6lsFrFJKia5v0DsQKyay15xss59lsFDHqHpUj4sB7+ozzGGDPXVrRW0Ffa/6T7SEQtuhKXfB6qGdvFfznhs6Tk7H6gXx85wDh1d9OpaS80BHkQYdAaRVzjqAvjdujOaFIc22PHqAq5l0CHcwVzxgHqeeOHztI0/anYVtYsffFewULdzB+qF92169irXb3GzSMP8KvL84vXzNcVVBOJyGpHAIA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(15650500001)(107886003)(316002)(86362001)(8676002)(6486002)(966005)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	FYhtO2kfugqdD3gJ+soGLrVkWFkQ3Rt1YrfKdcwuk6UObc53u5lrogGWksOTFNGaM1kSMToTkGDGhhCO1VKFqRG2kWAYBSUiJ1H8UJ/caBpPqcYW3GnJlx5V87j+QWEOSr/dyoo9mTo0TXPpQriPJTuWC3Av/2nsogbPwcfNe198Ug1f+tszqAUOzVpBU7tulundUSQg/n0amT6vBI0jxzlZhBGhla8SPzY1pno0tFBpwgQYhA3cEl1E21oGJ2nVFRg95a1xU/AfLqGVnDY/VBitQt1WzgtE87fgfEoOsfLr3KgXgTrf/4d9NV6rdIMNT3ov/4FSdzEORmcknZu1dzZwoP2RTjDoVIoKND+HH/wGiNv/2qnktozm4yrBlfKrEiNz3Ox7Xhg1Mt3hUlsTugM31lgbDvxKidnnkfT54dtdCg8MW3hevy6o3KHP5s/CDJ8Pn2QbOsUD4VOcwJa4vmcU8LOSN3X97OZKRIygxR2hHcG/ML5g7mO5FmHI4oOtlceHf5SLA5KPhsv1J3jtpovnw2leyzpVDkE23V6/VF1D2TIRGdTdoPxBEM6Wewkfwg892V1GO1tzmatr4aTjm7n4Ohwr8f+peYnte1gdoEPYhPUQWty+morXnyG3sfXKEwvlXfq4hrocmYNPigu7Vg==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd844e2e-e79a-4f16-c8bc-08d855a5246a
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:24.3606
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XUUq3QHy+n6Yb11KMyvIyHHQKqebQk5bLjuMqi5eUR+tvlaCv7OhmbFELPR1WEutngpyBrKCIcR03Nu0gsu3lQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

This set of patches addresses some small issues in dm-verity rootfs
facility, which were observed while making use of dm-verity-img.bbclass
to generate dm-verity rootfs images for real arm-based hardware. For
purposes of establishing this changeset, the default 'qemux86-64'
machine was used as a reference.

During testing/development the following additional settings were
defined in local.conf:

  DM_VERITY_IMAGE =3D "core-image-minimal"
  DM_VERITY_IMAGE_TYPE =3D "ext4"
  IMAGE_CLASSES +=3D "dm-verity-img"
  INITRAMFS_IMAGE_BUNDLE =3D "1"
  INITRAMFS_IMAGE =3D "dm-verity-image-initramfs"

And the following command line was used to test the changes with qemu:

  KERNEL=3D.../build/tmp/deploy/images/qemux86-64/bzImage-initramfs-qemux86=
-64.bin \
    QB_NET=3Dnone \
    runqemu \
    nographic \
    qemuparams=3D"-nic none" \
    qemux86-64 \
    .../build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-*.=
rootfs.ext4.verity

Update since v1:

Based on the feedback to v1 of the changeset, I was able to observe that
if wic image type is used with this facility, it introduces circular
dependency related to the

  do_image_wic[recrdeptask] +=3D "do_deploy"

declaration in meta/classes/image_types_wic.bbclass side, and on the
other hand, related to the

  do_rootfs[depends] +=3D "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TY=
PE}"

declaration in
meta-security/recipes-core/images/dm-verity-image-initramfs.bb side.

In order to mitigate this situation this version of changeset introduces
a custom staging directory for passing DM_VERITY_IMAGE rootfs specific
verity.env file to the initramfs image. While this may not be the most
optimal solution to the issue of passing staging files from one image
nested in another image, it should nevertheless resolve the issue in a
(hopefully) non-conflicting fashion for the time being, making also
'wic' images usable with the facility.

Furthermore the original dm-verity initramfs /init facility was replaced
to use existing poky-provided initramfs-framework suite complemented
with a dm-verity specific module, and added also some optimizations to
dm-verity-initramfs-image recipe, and a fix to a relevant wks.in file.

In addition to testing this updated changeset against default
'qemux86-64' machine, I also tested against 'beaglebone-yocto' machine
and a BeableBone Black board, for which purpose I added also the
following lines to local.conf:

  MACHINE =3D "beaglebone-yocto"
  IMAGE_BOOT_FILES_remove =3D "zImage"
  IMAGE_BOOT_FILES_append =3D " zImage-initramfs-${MACHINE}.bin;zImage"
  WKS_FILES =3D "${MACHINE}-verity.wks.in"

Since I use poky master branch, I also had to introduce

  CONFIG_MMC_SDHCI=3Dy
  CONFIG_MMC_SDHCI_PLTFM=3Dy
  CONFIG_MMC_SDHCI_OMAP=3Dy

via a kernel config fragment to adapt to included change in kernel
source tree
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?h=
=3Dv5.8&id=3D0b4edf111870b83ea77b1d7e16b8ceac29f9f388
which otherwise prevented Linux from detecting neither eMMC or attached
SD card on the BeagleBone Black board.

When booting up the board from SD card which was programmed using
resulting 'core-image-minimal-beaglebone-yocto.wic' file, e.g. the
following lines were observed

  Freeing unused kernel memory: 13312K
  Run /init as init process
  udevd[148]: starting version 3.2.9
  udevd[149]: starting eudev-3.2.9
  device-mapper: verity: sha256 using implementation &quot;sha256-generic&q=
uot;
  EXT4-fs (dm-0): mounted filesystem with ordered data mode. Opts: (null)
  INIT: version  booting
  Starting udev

and after logging in via serial console checked that

  root@beaglebone-yocto:~# grep ' / ' /proc/mounts=20
  /dev/mapper/rootfs / ext4 ro,relatime 0 0

Finally, at least one obvious caveat in current changeset is the added

  do_image[nostamp] =3D "1"

flag in dm-verity-image-initramfs.bb which seemed to have the impact of
rendering sstate-cache artifacts for virtual/kernel unusable.

Niko Mauno (12):
  dm-verity-img.bbclass: Fix bashisms
  dm-verity-img.bbclass: Reorder parse-time check
  dm-verity-image-initramfs: Ensure verity hash sync
  dm-verity-image-initramfs: Bind at do_image instead
  linux-yocto(-dev): Add dm-verity fragment as needed
  dm-verity-img.bbclass: Stage verity.env file
  initramfs-framework: Add dmverity module
  dm-verity-image-initramfs: Use initramfs-framework
  dm-verity-initramfs-image: Cosmetic improvements
  dm-verity-image-initramfs: Add base-passwd package
  dm-verity-image-initramfs: Drop locales from image
  beaglebone-yocto-verity.wks.in: Refer IMGDEPLOYDIR

 classes/dm-verity-img.bbclass                 | 22 ++++----
 .../images/dm-verity-image-initramfs.bb       | 28 ++++++----
 .../initrdscripts/initramfs-dm-verity.bb      | 13 -----
 .../initramfs-dm-verity/init-dm-verity.sh     | 46 ----------------
 .../initramfs-framework/dmverity              | 54 +++++++++++++++++++
 .../initramfs-framework_1.0.bbappend          | 16 ++++++
 recipes-kernel/linux/linux-yocto-dev.bbappend |  1 +
 recipes-kernel/linux/linux-yocto_5.%.bbappend |  1 +
 wic/beaglebone-yocto-verity.wks.in            |  2 +-
 9 files changed, 104 insertions(+), 79 deletions(-)
 delete mode 100644 recipes-core/initrdscripts/initramfs-dm-verity.bb
 delete mode 100644 recipes-core/initrdscripts/initramfs-dm-verity/init-dm-=
verity.sh
 create mode 100644 recipes-core/initrdscripts/initramfs-framework/dmverity
 create mode 100644 recipes-core/initrdscripts/initramfs-framework_1.0.bbap=
pend

--=20
2.20.1

