Received: from EUR02-HE1-obe.outbound.protection.outlook.com (EUR02-HE1-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.2108.1599499083155224375
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 10:18:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=VFBjYEtf;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NtzYRVJOU/24tgXzO+5UlRTjXaqHRldHfWe7u5QhfNd0M/z5DOQfXUvRVh/MxnYq4J8OZXzJh5Ge+ESqc8EedKHy+6kgiVP+ZVpj1I9PLuTGTpKSm9UjYSzfAFfoCchp85SnLEMc9i50ZVwscAg/DJec9IkZuDcZKcjA7bE6QSSeQlT7K0qp3XV2p5RV9Fvl8NrlTmJkY8GnbFmjRVsMJKVruwX29EIlCy/8oKYhLnDuFAsdhOgsIjk7BpnmTEXYKMNCyeozzj37gAq5VrCCKWIXLzbWYaAMzLCz2VtrOyj66Tuz5ov91KgdYlBIhI87bfXZPvxSBkj7K39A8oLyQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KK+cyVGGHP+2IrCawLNv8867vzQX+qmr+eJG5yVqjYw=;
 b=J2deq5g2g4+RE1DPxdkz/kemPHnyg9CCw8se0/6sERbWwtw4EjGdcF63sjWGHXk1JlYG+CDZ6h1O+vhUAZrNWgZLYIRNvkdOJBRh66CuOHPX0paZgt8rCn+VvLA5zTi1+WeI5v4GWQ0zotNHxZymyaDvgWRlmvgoeZQyB26bsVanwAlKPdBALgvN+aTKgN65JI0/GqiQ1OPA4EntY40d1UMexCwdds/vn4U9RyBIkBl3WY66oHzwhkxZ99Jum5ZFyMf++Ti9zUeJCdjmpyU5STV0c7W1QlXU4jpWZXJCbBbobmYZwTrnxsx13b1MsugWKZJrv3omdpaC4MN/RUKxIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KK+cyVGGHP+2IrCawLNv8867vzQX+qmr+eJG5yVqjYw=;
 b=VFBjYEtfyaGrwIlVxBPmh2NBxNjlA5hn9EZHxHSAkMYZ4NOHN5ol2C/PZzw2CcrodKrmDyQxzK+KR098GOs9zozqKdrbSQptq0vTFmh1YkaQGVfG0k02cHlBIJqPQoOkRprKVoSoUxMlFguZzrcspWCI32JymgsNimyKiirlFV8=
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
Subject: [meta-security][PATCH 5/6] dm-verity-image-initramfs: Bind at do_image instead
Date: Mon,  7 Sep 2020 17:17:36 +0000
Message-ID: <20200907171737.108284-6-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200907171737.108284-1-niko.mauno@vaisala.com>
References: <20200907171737.108284-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0502CA0006.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::16) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0502CA0006.eurprd05.prod.outlook.com (2603:10a6:3:e3::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 17:18:00 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bdcfcbbd-ba23-4f2e-f127-08d85351f8ed
X-MS-TrafficTypeDiagnostic: AM5PR0601MB2404:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM5PR0601MB2404E1268B276DE018FD09D281280@AM5PR0601MB2404.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Bxq3z8hSMFz0ccr1DLPJMX0x66F5xrmUHMBqvm7VG6H0cLZmblpOqYuo5hjOCSv7ZGWGGTNGX2TwKBnm5wFu1Eemt542on8MBTq5r6IIdtoP3b18W7U2Fd6dF+wonbZEo07Q8RFNbBE5CJLd+CN99Ye/ENMGtqR+jKGFZumwdedjqaxLmLixBdmTphgOwo6gLWaZjj3K0w7Al1nq0LXff7d1DTVTtxGYB28JNJFBdjQ5OBOk7vIwtm1bkE5qHEyteejuuEzjFvoeEsH8z8e2U4r+s/1YFH+NJDI/7MtTdc1zEhXZiU9ZQleuHBtpkPc6aMBYWfbhoKfEL75x0cwgTQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(376002)(346002)(136003)(36756003)(1076003)(66946007)(6916009)(107886003)(6666004)(66556008)(2906002)(83380400001)(86362001)(66476007)(956004)(8936002)(478600001)(5660300002)(6486002)(15650500001)(52116002)(7696005)(16526019)(4326008)(26005)(44832011)(2616005)(8676002)(186003)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	S39Db4jgJWvs8MtDpW4PbWHcwM3oJe/Hav3815mTlQfcgWXCZhIja8x9Jx0+LW39DvMDe9EgprnNkdSks27pzSRqVcfN6OohUwEZ+8UzLCAgqYSZ5+vU6NxaiL1wzp7yLQUPkBc/QFZ+sCpnIi3+eglJDg4X4OkCDfcAD4FjW8BvzE6EiMTMrWETPMM3K7Fm9HRLNBKpiFniLePjKnV70o0Io9YkJ1hxNn4NE0gjJpZMXDpzlTeSVgMATwlL0GpQEdCHc4KFqR5msru+Fysahyd+yKqGF0a6s5vDodQ4AY/cRpPgIP0CVHsg7ptK40uKH/wn6kAbidmtupZYS60BFgY59hggl8Q3dIbbHJv0joSaCAls5yChtKLo9UEWYvYX7XWNWbvQJnL0pwxY8bn+QcUWH2bd6MhucvHMA3P6eGva1i9GVtSitLob3uiSmjDZPK11htGO83MJMZ+MyoK10k1sDSFRoUtkFstZwVJEeruCjht0yEKbcjDn2lFUP+Hsl+zQEypZguis+DxijSOrnvrVeTlrX9aQlpjgkrQ2ahnKUAs0tXvo4wqmJQhZOJ/cZ/UGI59LcM/ARTE49AgW2YIrY7zZeVRLLHW8f4EF2nx/aJ4wtmui/EDxkutsM5mr29fZqDWRmlE0YJxCZE/UIQ==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdcfcbbd-ba23-4f2e-f127-08d85351f8ed
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 17:18:00.8174
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: umz/5TmEsLlGAWKx1QZMstHeT3fVsOEuyXKcQFRF4al27FV+ILbzpgWZ/A8yUJKTBdY6Jlt0//cxxXDBNDyrpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0601MB2404
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Bind custom actions in this image recipe in do_image() rather than
do_rootfs(), which can help shaving even dozens of seconds from duration
of 'bitbake <DM_VERITY_IMAGE>' command re-execution.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 recipes-core/images/dm-verity-image-initramfs.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-cor=
e/images/dm-verity-image-initramfs.bb
index 6171d117..a9b6ec0b 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -14,10 +14,10 @@ PACKAGE_INSTALL =3D " \
 "
=20
 # Can we somehow inspect reverse dependencies to avoid these variables?
-do_rootfs[depends] +=3D "${DM_VERITY_IMAGE}:do_image_complete"
+do_image[depends] +=3D "${DM_VERITY_IMAGE}:do_image_complete"
=20
 # Ensure dm-verity.env is updated also when rebuilding DM_VERITY_IMAGE
-do_rootfs[nostamp] =3D "1"
+do_image[nostamp] =3D "1"
=20
 IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
=20
@@ -26,4 +26,4 @@ inherit core-image
 deploy_verity_hash() {
     install -D -m 0644 ${DEPLOY_DIR_IMAGE}/${DM_VERITY_IMAGE}-${MACHINE}.$=
{DM_VERITY_IMAGE_TYPE}.verity.env ${IMAGE_ROOTFS}/${datadir}/dm-verity.env
 }
-ROOTFS_POSTPROCESS_COMMAND +=3D "deploy_verity_hash;"
+IMAGE_PREPROCESS_COMMAND +=3D "deploy_verity_hash;"
--=20
2.20.1

