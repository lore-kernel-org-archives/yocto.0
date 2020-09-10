Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=of+WXVDi;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BiSJJPym6mkyG0zZYMo+2Fc7AcH8Qfzkt5XR0tt+9Of9PQiDvCbvcEu+gSvi+6DvD9DUGWkxAIPOOh/WatqanNVwUFdUd+QMdd7bUZea2ODohrnkbN7eRjXE6X9YmKh0rOrMxHhzBRfxv3VXHbJAUVGoW9m1ewJH6iKvGwTTX03/7IQOAhput5ORrPWp+SgKbjOzs4X2k0KKMwbr1r3c1cS8Wfk6DB/p5Q83frhCSXjkEezsepYLlGFgzy57NnbUIbaWTj9iF4zF18IvpWgvFgBexBgK8M2GNjLSBjQJGSTzlQylw764ViquXYtdL81pXot+ZM3H5kP+ptywowNlbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H9bRkMtbJv2/Xi8Cuhqp8hNuBhMJDkGC9p8Vl+4owOM=;
 b=PngyO9RbCORg4tRYNMImibdkqfVFz6gYEEuNkUYSAU1pRLqF+nMtuunHj8Ld3Qaxmr1o9qa9eebHllFZwnIm2bVk1dBFGc7HaFYkIlAvzrq8OIbLkCz2QZgjKcU8+vI8ivH5glRy41OV7fKFYHFpphF+y7oEHLiZ2trzv1dGft+uWoTMJjxvFzgAp6e4A1pyai2zIl+xgxjfmA+zT6morhCYAtzV2/KC5iauFUXPl73C3ODLyCV/iAqON+1FLT2Ui0MWGGtTd6qBZfTvT0+5BGqUrYC/3eqRdc8YXisYg1pQ5QQh1aNHU6acr9v1DrmEaapCUMfbSylzJPb/Ww6zZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H9bRkMtbJv2/Xi8Cuhqp8hNuBhMJDkGC9p8Vl+4owOM=;
 b=of+WXVDi2BZbf3AEjiNzQut6wvchcrMAwfNLdpSuzOWcjJaArWnmgt4jzNPdh+CbEXDOcJ7/QS5Cduyh0kVHekjNiXh1vlu0oPxzd2WHgdPsIbNQCIdrkky4xc2Se9gsX2SrQLuiyv1YrVyOXktvtPL/pHnisJOyCHx+UwUB35s=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:27 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:27 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 04/12] dm-verity-image-initramfs: Bind at do_image instead
Date: Thu, 10 Sep 2020 16:17:51 +0000
Message-ID: <20200910161759.87958-5-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910161759.87958-1-niko.mauno@vaisala.com>
References: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:26 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1b22b8d4-a7ca-4b0a-b0f4-08d855a52606
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB59257EFACAAF7AF338BD7E0181270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PbW2JpX3bwWUYVby1cjzEeLedlj31oB8EGK/mh2Gov4rlDKUM6gfHIzNFvi1crqBAlsrKBomlGeuqP7NfnVZiNbAPhsygD6MXKlQxfg2w6e815bzOhOu3J5evcZzNLS8MeNR6LWoLF9jem6qu8OQOaHImJbDTb5skzGf2ktKM6DlVbrIYGHtD5x3m/L5rtQqu7Ze5p+/08KrPmQNJePTAKmnfHmlsQk3qq4Q931JD09HJLEONtn/X9alyd5v/pra1Vrv8H21O3PporJUOuiy/K3mX9SHYXJb+TWaMbu/akcwlBnzzn0UXZVsr46OdV8ZDTwIHjnGwuQZApSFGOWvuw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(15650500001)(107886003)(316002)(86362001)(8676002)(6486002)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	EWchk2ykrR/04aFwaF5c1v1vd0muGLI+ZJ6FPNl+uuPPQunzaSzGlyhwY83R+g8UH0dw6qVcyTGZfGaUfeCaMnaW5JoWvNZZRt02HipDX2LQl2TD0H0MucfAVmjw5OeJsU1CfyOpcvloXFeHsflL1v0h2/1WQ/1sJGoTNa9YTggYZ9G1yxFAEhQ1J1wwRhCJvpyVJH8wdKZ9zT02kHtUfetjnOFJi6TnLDGw2cHvtB53Hoa21lLQ8uJxYMaeXjj6oM8dVs8Uq94HwBmpLwGXsXwWw4xE4emSqu8lGudwRx5lcfzR1R4RcDc2mt4FM6KTdfsrZhbg1RqV57D7CMPJ8pcPNrtQ85J9gZmFL5iDBpJVWfGF3qoUD4Gi6SwlcZHf7gO3A9bJN1NT/qXgRrf73G7HMvmFAbEzV2nuR4dBDLi6qh0mK4AkasYRvpcsUxdf9CXSx3b1rRMjJeKvTk42fWHWHFYZ6qF61JgHLU2TEoUkF4/eImxwW5y9ORxgQvwXShPGptgc4V16RCIG7W+psC40sNvb61ebBeKaTdvRVznf5ml0JaUfUjBTbEpDYVaZlTCvE443Mn+wvEAHF8yt2beefyn75qBIFilb4rVJomOPDS071ytMOO/smrt0SgiYUOtcGOz5AHD25XlRUJmKqg==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b22b8d4-a7ca-4b0a-b0f4-08d855a52606
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:27.0381
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ayRSJkhItVClWsnUVApZUWC2pev7X41RmZLtb8CpxdZFWK1LmuAZPviD4xOWWyiKR3TnhXoL5+UASXCC7Q8Erw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
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
index 60e98928..8dd8543c 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -14,10 +14,10 @@ PACKAGE_INSTALL =3D " \
 "
=20
 # Can we somehow inspect reverse dependencies to avoid these variables?
-do_rootfs[depends] +=3D "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYP=
E}"
+do_image[depends] +=3D "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE=
}"
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

