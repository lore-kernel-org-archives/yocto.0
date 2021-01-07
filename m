Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3740.1609991063394948216
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:23 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=b3KlINqS;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2061.outbound.protection.outlook.com [40.107.94.61])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4B12F38C08EA
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fQ9lEeISDgWVm3KzQtm8ztua0JqKil8QjcE7+Dnj43jiuT/NtYkDWzDvcPnFEmNecgeykNPEyyX0BAcGX1316KIR1iAnHzMU5CejLEec8WDQYKPPk81STedJaQLDGopRvKd9BfYmEF0CvjUYaENsKVEBsHybIJw3zoqwZtQDSJbEZLSUxDfp2GuIG/jXUSFuaslhdZq4dzhzhSLzRXpqrQsP5NmdRBQjAtQiAHbkR2ni6l5bRjMIn1Ku6KmeK0WN2TtoJEuQtbaow4yJP6o6bowri5jsalOrj5WdII2GfAFSKW0TTzK0+uzy1/+IOZ6+t/7CIUQPzoVDe0oX9fPMtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=buq9RJz1rofWOOwmuy9uG+7EHJKi/MSlL3wYZcDf6CU=;
 b=NXAecilebdEVCShF9flR+K5xqgwDp7pAdQ4G3xTdHg2zMd/QARY3mltBA7fXMxlA0QmjvBUDfFhfsZu0y9YcV4iKkN9P3PpmTb1L9Cuu6L8pcAtAZPmCaANvbKusP0uyMdW/GxT6A8URkG2FExU2FCx5BTwfNrkeTbm4/Rl4TO43M1qLDKJDIMxpxbyO5kmEICOfWjEYkX8366KBy93EILqEqBlfY7Cme0SuOX3RKuZf3xOABsnMLU1YPEHTLRlAwnnc7V6OpMt8s3B0d1o3QbphP+/4lYvEBV3Bf67gvzqtID2tVXAEbTof28Yc+xvbsjFxkqlIjSvYjnurfhMNPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=buq9RJz1rofWOOwmuy9uG+7EHJKi/MSlL3wYZcDf6CU=;
 b=b3KlINqSM0X1cWN7y7DOLDGuyKdGdHNxZpJiDpuW/MI5i+agYSL/FoNCWhJ5eXVUB1giQ3AjNUUnzBGPGCkrybTuKB9QtzV1eV8r6gGKiDpPBT6L+17p1NcXN6i0eUc5ocQhTrqK7uAaoVoQs8scWw2VihrKGwZwboLHSiFg6F4=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.21; Thu, 7 Jan
 2021 03:44:22 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:22 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 15/17] selinux-sandbox: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:43 +0800
Message-Id: <20210107034345.37200-16-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c39a937-d7d2-4d21-7bd4-08d8b2be858d
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB50736020790B94B30FF6D79BF9AF0@CO1PR11MB5073.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gAPjhfGG2cN9eBMgEsAsqJdZYc/Oit2LBHiy8S58ajteQ6W7Zb5SEnvXl4O0Pp5fLCCfsbGKPzT3jv+uZsL3U6NjF/0UTX1WNL0awc1f9mIZE7QClPTOlFnSS2LPlST/P2cGfbn8jsK8nNQc6INPuSXqaigEObkbd1pKN6YewG3elNFgjDOE92FpOWlajvhcDn7dL59P86uaHlxZJN8ObjGn1I8jqNOir6Y18ZpNcstjI3yJWEVI8J2yJvyMyjtl9weKoGtQu4u4QWAXCMpKTa8VVtpU+86n4LKo6lkytG0oC0cc8fswUQLoEan7k2LjwxFk7dLKPhyfmEp48oV3UmwWKbws8xVd/3l5QGX/t64G8jFB8kVNcKhtmuOkJ6Ml1e3ITY6bkNRoMDRMOctWxw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(136003)(346002)(396003)(26005)(316002)(66556008)(956004)(16526019)(66946007)(2906002)(186003)(66476007)(2616005)(6666004)(8676002)(83380400001)(6486002)(44832011)(6506007)(36756003)(52116002)(6512007)(8936002)(478600001)(1076003)(5660300002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?VrQQ+tJwn8ahjnTIZ+ZMhb0T7sM4EfPFUQhm+kkmyDcBIh1VJ4DA2uWcayrF?=
 =?us-ascii?Q?5GAVwYwFWPr+S2fkIYyOYcLYnu1c3kqgR8+pPT8L744zG2V/S/Pxrm6hEygD?=
 =?us-ascii?Q?ybAWIyGAf7pNEIv6Nct0cUk62Zvm4f3AxJs/URj6Wruy9yOaky0jm+qGFIPY?=
 =?us-ascii?Q?tu7FrEFlgUqgPFLaviNQ2eU7rK45uGT9/Qhaee5eDB+288CcRFioI0ttkqi+?=
 =?us-ascii?Q?HqlKB8ymb7CIjfMloa9+hguDD2GSBq2CYqGFYFrcl2S3qBo7K2wjcFLZUZqf?=
 =?us-ascii?Q?gibtWT7oyxKp/eDsjo0tdnn+tKkzTWl+JZezk8oclHLhnk+JqDlSw87zUi/9?=
 =?us-ascii?Q?uzOowhELwSDFkmIj+rJDAhKpzoIpAM/VLdGNeHKvBjVUKTWubUmx1+w/A+DQ?=
 =?us-ascii?Q?KxP6FnEzmI+Bz5RPAvrOg5tnoBIzbF5M++2+08AxS1LeMhP9nQnIGlgrrUZf?=
 =?us-ascii?Q?L9PT+/mrYEe5W/fiq+U1oFW4vAJSzSX+ASdhHCSY14wQLIwh/cGHOe9DvwvT?=
 =?us-ascii?Q?2tswnGsfstqdTWMQc8YZkfhqOIt8WjprhqvGQqieedNCYWSz4FGgZOne9p11?=
 =?us-ascii?Q?KRru2f89KuTginkJsC2U9cAUXCvjztWTqk1EOAVXh9FvZWHNmfGUJH5b+Drn?=
 =?us-ascii?Q?u4CgzG7qQWLdSxCJCs5/TyDhZswLWCF0xAqYcIIkK0wr79V8SCU7Xf2H1pSz?=
 =?us-ascii?Q?d3wyQcREfqdMgpBF8XNXQ2KL//u1xQBdN4GYGpCszPkzoonLIJB9ezmOQcNN?=
 =?us-ascii?Q?qy8wnCnzq/5sY6tAPtRLdDbmVsom6rVN8RQ4oZC3aruuR+dfuRLV4jcuzIvD?=
 =?us-ascii?Q?PyueU2HZ3SeYieglk2sWmU5orhT28LqokTx5LCtYwtsI4D+T31DdsnDzlk+Y?=
 =?us-ascii?Q?QKKOU6Di347e1IcUxNNkfiwa+F4xkqbJs3zTh8liovbTXLyKqbKrB6BR2ovs?=
 =?us-ascii?Q?F2aaA8wo2WnKSAzQkFwVdKMl/HyZTgJelxK/cojfeQAxiVnmkwYUYAsBqVFq?=
 =?us-ascii?Q?DS/a?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:22.6599
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c39a937-d7d2-4d21-7bd4-08d8b2be858d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5iINayVxUxvKmtE43/5ox+9L6zjQKmNXHG7B0MIV5sBSoGYkfEO0oFv8QSq048+xXxFy4nnr25WOXtf+nxb+FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-sandbox_3.0.bb | 7 -------
 recipes-security/selinux/selinux-sandbox_3.1.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-sandbox_3.0.bb
 create mode 100644 recipes-security/selinux/selinux-sandbox_3.1.bb

diff --git a/recipes-security/selinux/selinux-sandbox_3.0.bb b/recipes-se=
curity/selinux/selinux-sandbox_3.0.bb
deleted file mode 100644
index a60f52c..0000000
--- a/recipes-security/selinux/selinux-sandbox_3.0.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
-
-SRC_URI[md5sum] =3D "81447c46bf4cae9a5fa38c5fb8dc923e"
-SRC_URI[sha256sum] =3D "66fb4ea3a9e3d1e6004f13666b8390be751dd226a8496b99=
5ed0332788758d0a"
diff --git a/recipes-security/selinux/selinux-sandbox_3.1.bb b/recipes-se=
curity/selinux/selinux-sandbox_3.1.bb
new file mode 100644
index 0000000..8a95044
--- /dev/null
+++ b/recipes-security/selinux/selinux-sandbox_3.1.bb
@@ -0,0 +1,7 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
+
+SRC_URI[md5sum] =3D "d38fda12b028c06f751be9c25e309c6b"
+SRC_URI[sha256sum] =3D "c79b958e2f64570a59e60638fd13c15fd77c7c2bbac31c7a=
d4afb03718432b84"
--=20
2.25.1

