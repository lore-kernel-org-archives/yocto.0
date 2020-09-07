Received: from EUR02-HE1-obe.outbound.protection.outlook.com (EUR02-HE1-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.2108.1599499083155224375
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 10:18:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=ooP2Xugg;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YkayWIeUIyNnt1hxnB4/W3OqHoMUGcY7X/URSYE6KCEzg7yEbBjw8Cfs364Rc+ONoyAHf4mba+Uv0rV12IClLQETf0rc9aym+z3U8tPxDwoJqVG94GwZOge0Aprga/wuESoUEPm9GK8hcNsjiG67HFRy4W8Ib/qw+LXhCxp9/xiw2+FcH4YwITnyVYFNbkLmdf0NxipW3qQrM1C+VpDcKA95MztXUPPup+Wjs0DTI1VZ245aWpTyZ+uXA4kiEBimlnprkKJiF288EIAOt27pco1OFNFECmTXhWTU0d0VxJGzzhvhDuHPlit2//hKVPyv2fAyV06Q9nzFtj0Y33kenA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkuUM91MsfBrHJs/DKvctenITvohDHMoqx/oVqAXsUY=;
 b=dSu3YEUQ5rnwV+P7ZXR5mm+fsk4pJZdmDGV4u3HfV2fDX8cHB9FPp38cOYq6qT4KFmrYRneo+0dkMmy8FYcp4rBSmKLAkJqoC3T1/fsjmji8SzDzTh/aD6jHzg72hCrsAkuUcFy4sduyTRprH4O8lTGB1/IIMFoR5gpbTH4m0qh4mYERMsZItkESFMCmNa0ilbTj9ZAMK1M6Fj4OrhQRjv/wba+omfrmCDXbTpMyw1Dw354z/0NITcKJS/TIFE89wDBsOQNBg2i3DsOJGha7pgL7E82giu+j5fhGew36e7aSZ0m8T1FjjLuPmPA7zbkv6mJXdX85d0wErut0F9aqXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkuUM91MsfBrHJs/DKvctenITvohDHMoqx/oVqAXsUY=;
 b=ooP2Xugg1NtCav9tIqqGHfNeKogK7bnsD37vCT5yPxxxEjal0foRfeeSP1Pg8isNoL6WXDavqrlEKsrFVgMX/xPVstyVHgIdYHUlfBuxyCJMCuQJGzrTCMDcY2NahtJ/D01HMiZfcKOKBeQBEpLbNBdlTjvqg8OgNWHJJlwGJ5M=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM5PR0601MB2404.eurprd06.prod.outlook.com (2603:10a6:203:6f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 17:18:00 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 17:18:00 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	bgolaszewski@baylibre.com,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH 4/6] dm-verity-image-initramfs: Ensure verity hash sync
Date: Mon,  7 Sep 2020 17:17:35 +0000
Message-ID: <20200907171737.108284-5-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200907171737.108284-1-niko.mauno@vaisala.com>
References: <20200907171737.108284-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0502CA0006.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::16) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0502CA0006.eurprd05.prod.outlook.com (2603:10a6:3:e3::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 17:17:59 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f9e783d3-1824-49b4-39ab-08d85351f87f
X-MS-TrafficTypeDiagnostic: AM5PR0601MB2404:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM5PR0601MB2404A086908A90B2CCDCA81781280@AM5PR0601MB2404.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:422;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yw8O0HDRNZDi2vZ/mRBrrH2KCTEivug/VDU9Rm61RW8kQP9VcNaXv5H8EiX7UA3PjZpv6XlK+bRLoHfrGHwBhza2kK1doVfdYjYs7LX6jy4xmbIttT4x3+I48xHhz3GthADE67MO14RW64UgorBuZExKodTkZQpP+x8n18XCSJ80TIARRLj3sozwwAJmOPjXlR8FmVbwppszWNL23vLz1m8w33bXfduPV7fwbXSKvCM151C62LdbOI3jeFmLeUcKh0NW+5XDIQYpJzU+/RhP+XEfgJnF0mPrTEIlXSlnURIjIsCj1HGDceEaPb1Z0EbraItTChzvCdOk6UYTXFm5IA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(376002)(346002)(136003)(36756003)(1076003)(66946007)(6916009)(107886003)(6666004)(66556008)(2906002)(83380400001)(86362001)(66476007)(956004)(8936002)(478600001)(5660300002)(6486002)(15650500001)(52116002)(7696005)(16526019)(4326008)(26005)(44832011)(2616005)(8676002)(186003)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	SXHS0XL1GLFGPNA0F0gh89MoS+cMHRHCWfrYGhvh7VLIwNDw38fzN4hqIbjiMV/nzsCqWNyl5w9TWgYnHwLznGJ4Vwb48ZVu9zJQe3EZc+Rv2SH1zTC0LFpr3TgvVjLr77xcGQ9Vzh9qEqv6HbFD67EjMSNvAXLoM2ZojM9UVj3zAlg8SHhJv4aSUs8tte/OczQP2HXqar4zZxHKqo8aCKAw0go6re0qkqPj7GHIYTyEKwoEaI8ZCJ88r+K5sMGneM+UXy585DAR2IxUTQcYjPwMSxE+RsjbRYLhEDzKvL6MCh5c15GaEyPmSD2KPispiENqhOh+O56BYvlEQhXWe1MuuqXC0ns8l0ECQ1gRTE0WsoOJysQgIMWBjtRMuEDmHAorwO6xMYBG5BVDJfNnCnbTq1VKIEx0ojWCg5v6erpQeOIK1owcJV86UmjUInIdvpt0+Pj9+2d33+j0MFHCZwwhaf6sRk73FAM6SJGiKKEjBvhS/iv1j5JnfiWqtvsSJqVIczmWhMjb5W29kgmJpItlaJQ6wpGKcAkwRJRyCA8oD7HL9p+sHDTwCQV0ur4YtLgaVg1mTO/5JgWZ/6qxXZ0i/7LXNR71wrcQoDqGBrJB2G1BQYqGk/ZScHkOylF8VyRxinyN8rj4Au16smXOEg==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9e783d3-1824-49b4-39ab-08d85351f87f
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 17:18:00.1417
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L21KL/JAnxDsr8rPpKO+XEERPrNZyg0eMpTMKV30HFqtOGTIdKYuFgc+WHmqVOSm3F8wxmA6/NkvR1WtwtfFbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0601MB2404
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

In order to ensure that the bundled initramfs always contains the most
recently generated DM_VERITY_IMAGE specific root filesystems' root hash,
we disable the timestamp for do_rootfs() task here, meaning that the
task will be re-executed whenever some task that depends on it executes.

Effectively these re-executions should occur only when e.g.
'bitbake <DM_VERITY_IMAGE>' is issued. If 100% reproducible image builds
are needed then this approach may need revising.

Without this change, executing e.g. the following sequence

  $ bitbake <DM_VERITY_IMAGE>
  $ bitbake -c clean <DM_VERITY_IMAGE>
  $ bitbake <DM_VERITY_IMAGE>

results in an unbootable <DM_VERITY_IMAGE> rootfs, which fails like

  Mounting /dev/vda over dm-verity as the root filesystem
  [    8.729974] device-mapper: verity: sha256 using implementation sha256-=
generic
  [    8.810784] device-mapper: verity: 253:0: metadata block 3017 is corru=
pted
  [    8.813018] device-mapper: verity: 253:0: metadata block 3017 is corru=
pted
  [    8.813912] Buffer I/O error on dev dm-0, logical block 2992, async pa=
ge read
  Verity device detected corruption after activation.
  [    8.889548] device-mapper: verity: 253:0: metadata block 3017 is corru=
pted
  [    8.891060] device-mapper: verity: 253:0: metadata block 3017 is corru=
pted
  [    8.891456] Buffer I/O error on dev dm-0, logical block 2992, async pa=
ge read
  ...
  [    9.135707] EXT4-fs (dm-0): unable to read superblock
  [    9.142897] EXT4-fs (dm-0): unable to read superblock
  [    9.145393] EXT4-fs (dm-0): unable to read superblock
  [    9.147905] FAT-fs (dm-0): unable to read boot sector
  mount: /new_root: can't read superblock on /dev/mapper/rootfs.
  BusyBox v1.32.0 () multi-call binary.

  Usage: switch_root [-c CONSOLE_DEV] NEW_ROOT NEW_INIT [ARGS]
  [    9.243274] Kernel panic - not syncing: Attempted to kill init! exitco=
de=3D0x00000100
  [    9.243701] CPU: 0 PID: 1 Comm: switch_root Not tainted 5.8.3-yocto-st=
andard #1
  [    9.243853] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIO=
S rel-1.13.0-48-gd9c812dda519-prebuilt.qemu.org 04/01/2014
  ...
  [    9.248548] ---[ end Kernel panic - not syncing: Attempted to kill ini=
t! exitcode=3D0x00000100 ]---

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 recipes-core/images/dm-verity-image-initramfs.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-cor=
e/images/dm-verity-image-initramfs.bb
index 96f55ceb..6171d117 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -16,6 +16,9 @@ PACKAGE_INSTALL =3D " \
 # Can we somehow inspect reverse dependencies to avoid these variables?
 do_rootfs[depends] +=3D "${DM_VERITY_IMAGE}:do_image_complete"
=20
+# Ensure dm-verity.env is updated also when rebuilding DM_VERITY_IMAGE
+do_rootfs[nostamp] =3D "1"
+
 IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
=20
 inherit core-image
--=20
2.20.1

