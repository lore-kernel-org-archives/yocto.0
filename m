Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.25949.1599754706796683840
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:18:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vaisala.com header.s=selector2 header.b=oLLThQlq;
 spf=permerror, err=parse error for token &{10 18 spf3.vaisala.com}: parse error for token &{10 18 spf.creamailer.com}: limit exceeded (domain: vaisala.com, ip: <nil>, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FBem47yKlbc1hvYFK2SqgrmMmFR9A0kc3WO7mRU/KLgmgiWzHh1yshtvJ1pYAKC2oWe2+mIIHbFYKMt6K6mgXRpZICD/z9CWi0t9jyDkJWGqWCEKqNSW9oxFYhvyHt52LuPxJD9eutYwo8Y0OlJ6o3ymp0+QmJqh8dhxVKKVdXJgkFx2u9IM25ngjFBg59q9NypluYxxTK149HJuN/hte1RgHKC3f4k6scBtI1Pp44sdzVemeQu9Z0rpBznoso2in0FnD2FYCwvHHfaqLf8XsCmW1hyXvF1KnzHHh6m9Ht1zO7H8MHGQ6ja32rE6hLMYgXl9XhPzR+tV/t56JQfqxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HvhzhTFMJEMZErCjot3iXHWPA0Z0KV4R1YX+DeJ+Nf8=;
 b=jrG8Pef/I6jaqzhDOu5zAGSvC4K66htd62i/UBkO6kXc2W6EauzLkNba2DHFOUm+cTL+5VT7hXmD1rgsUCi39TU6wy7Xa901rVvaZUULxinO8MZReMyNSP0t3FB3t+eqThKgtmNHSAlCW83jWYbPdps5i/80uxMsaTv1v7dg5LchLFfGFUpVXpUK5n3oP561CUj73gllEWvjYRD/hsYxhkk7mdUJYUaqEJ0+bUdFDicbfDwMr5+sqaUioDKite5fKmsluZNorTzoggF4HcVEzZFLaOTFTNGYyQuw5K6DWigMiF1zWMaCKnQn9FN9D3cuyJnULg5tNftFGKUInKDFnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HvhzhTFMJEMZErCjot3iXHWPA0Z0KV4R1YX+DeJ+Nf8=;
 b=oLLThQlqq6dkWthcV4zMuT+gMVl1FIxJW32lJsW9gWh+Vx8MADqdcOzlB/YAxNWB5BsS9gy0rw755uI/NdyhwdZbe65ob5EQqLZq+LtVwJJo16GyRvF6JLZYLrVB6NtIesy2dexAnm5kIakn+/3xrsVflxMFNIxwGt6N1atmspk=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaisala.com;
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com (2603:10a6:20b:ff::26)
 by AM6PR06MB5925.eurprd06.prod.outlook.com (2603:10a6:20b:2a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 16:18:32 +0000
Received: from AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286]) by AM6PR06MB6198.eurprd06.prod.outlook.com
 ([fe80::a4e9:19eb:3dfb:f286%6]) with mapi id 15.20.3370.016; Thu, 10 Sep 2020
 16:18:32 +0000
From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>
To: yocto@lists.yoctoproject.org
CC: akuster808@gmail.com,
	brgl@bgdev.pl,
	Niko Mauno <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH v2 11/12] dm-verity-image-initramfs: Drop locales from image
Date: Thu, 10 Sep 2020 16:17:58 +0000
Message-ID: <20200910161759.87958-12-niko.mauno@vaisala.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200910161759.87958-1-niko.mauno@vaisala.com>
References: <20200910161759.87958-1-niko.mauno@vaisala.com>
X-ClientProxiedBy: HE1PR0402CA0005.eurprd04.prod.outlook.com
 (2603:10a6:3:d0::15) To AM6PR06MB6198.eurprd06.prod.outlook.com
 (2603:10a6:20b:ff::26)
Return-Path: niko.mauno@vaisala.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hel-eptripper.corp.vaisala.com (193.143.230.131) by HE1PR0402CA0005.eurprd04.prod.outlook.com (2603:10a6:3:d0::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 16:18:31 +0000
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [193.143.230.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f17a079d-c0a9-488a-fc06-08d855a528ed
X-MS-TrafficTypeDiagnostic: AM6PR06MB5925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR06MB5925D7FD608A74E821908BF481270@AM6PR06MB5925.eurprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cxV2YlYzriV+6uTXjo2OL+6K+qoSCMwSFj9deLUHQKCXoIQkd/tM5FATFqlH4VppBUIsSRI98nBgq1uRjuzH5NxrR4yfr9RtlBih7WpMyDU9kCRMY0iMrQyu8EZIJn7zkitCiHLIR1uaju2RfdqjHGJohmzR4WYHIqdHSl+URVDvnQ2UNQmlaXFBwmpw2Xkzw6AhlaHWEpNhjzGe9Hzvaw1Hp3pKRl4/PY4bcdl84Xm9dDQek7QMvzAs58SfphvT26qlV4N28MMqJ8t7LAR4wUHU1/KdFpKIO72/TxLzdYDRE5Q3oDWau4yDTMa19ICTyIldPowN95NVp8KDU+wN4Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR06MB6198.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(478600001)(107886003)(316002)(86362001)(8676002)(6486002)(956004)(1076003)(5660300002)(2616005)(26005)(16526019)(186003)(8936002)(6666004)(36756003)(44832011)(66946007)(66556008)(66476007)(2906002)(52116002)(7696005)(6916009)(4326008)(4744005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	VrkSNuVouTH7Z2qeyeaVdQsWzW2Qo9wbip0NUGmGoX7SJOt+w6kd9qvWFK5CV6q46sBOYBNI389qjsUNghSPuO3kjqRVoJpqI2xUbKFc6Y+jzjXgs2AwbLkBcDq1NQbc7+ytQ2MwTxcVhtmMHQwmc6AUNGsdokvzclnR8bcF8uJw3pXXVXIDeCC0IClra07hBWHojpvqwNG3fJCsD2N1opVcHMGRUOcFRuYm91GUSSXagP0zvp+MDxTKezK7t5DzKwyCJBe/dnP9nTUupEjq9EaJY6BQcixdOf3mf/Bt7ctFcQDuB/Bteo6i4zHCGo8NqrFVjTQa4cGnSaqm3H2XQBA/th4J3Q6vgCbbZzN8Xit3b8aOTLDx45Q9YQcYr+5gRQdV2KgisC1ZJ8IGM1iEazuJx4i31k3sLOV4KCWug9absKP7FUSNbE8gGTq5mB8BQz9TBH+MX8hF6LHZb/fDtCUyGuvGVqCHvgAUy4xaFNmzR+zbKqtwGHHkCkMWvGpXVQF/4TqY2seYrKh91wde7wnBmVxLjNqrNpLjxqSeNwJfzYqF2uVYWGHwIUbXInELC5xgoHPlkr6BG/OYta5Lq5lli5D05N/pXLswGD3TN+Y9AhtX1FGd/Di6OwJKLQKQZUJVYKhrXMI8EQhVR/uehQ==
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f17a079d-c0a9-488a-fc06-08d855a528ed
X-MS-Exchange-CrossTenant-AuthSource: AM6PR06MB6198.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 16:18:32.0043
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HyC0mbnkBrgN3Y2d17mjp75gylOx4z2Upk/0ndQv+h0ir6ZLA9/1DgYqbrPJff0GZWJVfdMZAjrZygoV3nmQ3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB5925
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Since IMAGE_LINGUAS defaults to 'en-us en-gb' and since localization is
not needed on this type of purpose-specific initramfs image, reset the
variable which helps by shaving off almost 700kB from resulting bundled
zImage-initramfs artifact.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
---
 recipes-core/images/dm-verity-image-initramfs.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-cor=
e/images/dm-verity-image-initramfs.bb
index 05ab10c8..187aeaee 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -16,6 +16,7 @@ PACKAGE_INSTALL =3D " \
=20
 # We want a clean, minimal image.
 IMAGE_FEATURES =3D ""
+IMAGE_LINGUAS =3D ""
=20
 # Can we somehow inspect reverse dependencies to avoid these variables?
 do_image[depends] +=3D "${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE=
}"
--=20
2.20.1

