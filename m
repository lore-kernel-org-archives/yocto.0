Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=o1zNc27c;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ke9c1AlPBwhLgHFZpZVZYzEaTtUQmaLqAT4NvabTLiOjGDsNNbMXligMrWM90vH/kIn1nWWzu+D+iFGpxNEsteFPVW4IPGGnJQ7Jb5fmz+JF3TREsXV1haqTOdzy8b3bLMZbTR4Y253/Cgp37X1zN3rGEroVYtgaWfITHLmLgwTNZY6orcCb6GQWa76Yax+9PzrYBy0hhlU7U0LoMLm12017d/H3FSdYjPdcJ/c1x0e2ZagLqUwyjx/fdNYvMa+4cAW15mQEzfkFAI7u6ziTQEfLfD2wP5PO5PJDTqNsTDgS4dGM2akfS3SL5U+8IA55ph3lRZ70nKYaLaDH/pBkjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=abMSZFSCOM8eW7BKTSxj3jrVnD4bewRD+6qc0L4MRzE=;
 b=fCbrY5iKOCOt40+empUP5O/oja4IX7IxQ1gBlE/eoYiMR1ZpqhMrtRgGT6vryX81Y6np17DBEmpoQf/kdIbs9vSE41n0bfTA57V1qlpO29ndZLVnGjVV1ZtIEUwbBWDnvuMPo9gasyvY2vdBrkAbViiW/CrG41X+vaCYed0OqHe5dEBPmdyrGoQ30ozn3NPo67BlfR73jkXi1VxJFLS8c7RX3GnUcsv467tuGQQTna7DKx40OSOv+RXNckVI1jenP2nBEkhiNHbxXYJjWXCdHpT/diNzK9bbxN00c/0s5SoUH26K2bJJ9Smch20CoUawoHlpO7yhpwe4919mk2QugA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=abMSZFSCOM8eW7BKTSxj3jrVnD4bewRD+6qc0L4MRzE=;
 b=o1zNc27cC4WIpNZOu2SaIxZxzfaGXZ3KPvh910MHYh7G6F798Cw+4Iok4r+pTARptU9HzL+DPvi009l4h+qzkmwBST1zfONQowBRaMxGPhr1P7Ifc7LTC9kt2j/8NjAua3WNg35E92WS+xPk5KYccBrS3yC5D79dnN0zl0pN1uY=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:26 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:26 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 03/12] dm-verity-image-initramfs: Ensure verity hash sync
Date: Thu, 10 Sep 2020 16:17:50 +0000
Message-ID: <20200910161759.87958-4-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910161759.87958-1-niko.mauno@vaisala.com>
References: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:25 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 193463b6-036e-474e-4335-08d855a5259a
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB59252060F090F08F7B5B723D81270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:422;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OfMXXvZeMdsFHRJXA6X8TFC+LW3NaukeiQG6AGAgpErRjwyqHunVidXENI3j0vOi7qbOT5yvkL6aViKVHiRP/ddzsET8NOkv37PGCnzxoMLSNbod6sGwcwUDTJZCaxoO9McOFQIzHDcyXMrOzX4aVSaLOzQzBUSd1UY2hrFgnqRpU2uni1hjRoLOXX+7Rpt1Aj8bWWoMubOFpt+Aq2hDYJ7eOa1MExNrCFYsvI1jRlk2E6uegYQTShTmx/eFpHvfE2tedEVPiI3jrUJOT35K9YLKfUhFBbY2LjlIhD0DkJj+5rVlry8fcMnfEiq/a/IoUgRa+0J4rubn5MpPrFZpIA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(15650500001)(107886003)(316002)(86362001)(8676002)(6486002)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	E/eOF6a7YsoOTAzAX5/xY7IwJECV3Z1XW/1YIQO7ltlkYP55+NFXuz1GAgM6LKvOM5n/wlVnyFL8GuZBsY7QKRbSOeV096QwvNXOi6NPGOUoleaFlMcU8+1EWqCcThrcYsHXSy4utBtOQSrUgO7VDJrDdTlcwqfOJ3jFxl1XeXjGrEarWiuA/Br8U53TpjQuKPbYeDKUefJYznNqhSvc9xlYGzqMZAd7Cc74jxtFQG2sAgTUt2BEJM6L/GQc+gkwgyIYVlp6M28cbr527VdA6Y+fXWwPh1C2F4vcOm4vMkQGHY6eTtVRRT11Q39H/6W+211p1O4gi+i8jrikEplccFoEXcPf6D5XFFPv+G0jOD7If6byjZFrChzX1Jnyq6kldRqKAegaPD/Vf24UOFUWipWxH0hpwQP9xFuxhpL3rMFe7d3cJ4DHp225WWu2hQ772pUP5Y5/TfZj0onHPpNH8PCRjpXaX7kU/DkrZSkc7egRyj77C+if42o2OFvpScKcn6Rt7vKbYVU8cH4VsbshNWjZfA4WT2HZRhW0DVSTjYusz7tXztCafli5bFClqjRGqJUwxjRZFjnPLOD63jnlbS8chRo+OnNDF0uNvDcezgfRnF/miY2xXB7XgSRbE25AF45IqS0jyNy/ce/EjOlnYA==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 193463b6-036e-474e-4335-08d855a5259a
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:26.3585
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M61Itnrpfg5AAjWQ/oj1WzkLAamj0U7fR1jX6MgPZnyLgABdxAFhAqFqlcoPEu25yEtfzThS9m9vISLY8GINxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

In order to ensure that the bundled initramfs always contains the most
recently generated DM_VERITY_IMAGE specific root filesystems' root hash,
we disable the timestamp for do_rootfs() task here, meaning that the
task will be re-executed whenever some task that depends on it executes.

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
index f9ea3762..60e98928 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -16,6 +16,9 @@ PACKAGE_INSTALL =3D " \
 # Can we somehow inspect reverse dependencies to avoid these variables?
 do_rootfs[depends] +=3D "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYP=
E}"
=20
+# Ensure dm-verity.env is updated also when rebuilding DM_VERITY_IMAGE
+do_rootfs[nostamp] =3D "1"
+
 IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
=20
 inherit core-image
--=20
2.20.1

