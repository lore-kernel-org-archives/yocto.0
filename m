Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [40.107.77.45])
 by mx.groups.io with SMTP id smtpd.web11.109.1615614661382437800
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:01 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=RJznb4M8;
 spf=pass (domain: windriver.com, ip: 40.107.77.45, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C8x94vjWz4wZ7yS3m1/QSNCgH79KY17S8xhdcI81+c0AQikmhoPS0p3mW7iVi4aUJlYbhOL6Q3wXyxPjpnXmk7q5Lk6oqkEdyCgE5lGYzP2ho5lYpkQZ7Tw5nFFHxRg93f8oT1RS3hs+rwq8qBUJcRPuzbYTWDLy+vyAH4v8pGD0iwMNBJqw8Oy6uOk5fD7Kx11S15wIKSAqVyGWF24kq3aC7EmYLxE9uA0kbHyBZG2CxyCqLNGpLdbkJ3iDB1ICrlffEidW8KnFTp574ovJAy7w4Z/D8kAMs7I4tD8Fn1c8SF+IvRITdA6B8QrSxQJDhFzhMpb92a5SRR43HKunyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N3Yx9xPvnuvp7jh2ac6dOuwzZb+apn0lcpbY1/Mt1So=;
 b=XR267I3pNe9cz6tINSPmP++RvHVWdLjnZ+1QuhPCCfvaHiOy0jLOIab7V1m4MLH9QBq64LyQ7dxZJZe9OWlYHe9lvKXUfA3zcMygYi5OxDBtqJJuXPnUtc61He2QHJOlXiWi/SDfVmFD7UT/YT3x+VjfS+MSiDx9WCj6Eo6yVZgHUGiTknMs7qBfmgw+4s2GZjomBQzYLp1aZ8vdZ+wI0EqmKTPr8MRscc20inwe84Js450UNWlrLHN1fcGhp+DIkn5ys4xL/YoKdxOVaLKNJ02I7WNvGrCCJ6G6Tq12OGT5N+Q3sUweQtdnrkOdOuDwMQ0zqv4SG/jLQjT2NeSGOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N3Yx9xPvnuvp7jh2ac6dOuwzZb+apn0lcpbY1/Mt1So=;
 b=RJznb4M8K3pFmU+f8RXAeek3IsvOl0NjN7h6UES62PyHclYoSSiJXjLEpOw3upRMtj3LQ0o9DvTD6ZZjBL948gXQsB3dCT1Fnu5dqVKz3s3g8wXhwKxfWOqODyUwzlKKv5dK3qHSEOlXAdRCgqdXUR+9mu2haxvJSlu/eK0VaF8=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.29; Sat, 13 Mar
 2021 05:50:59 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:50:59 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 02/16] libsepol: update to 3.2
Date: Sat, 13 Mar 2021 13:50:30 +0800
Message-ID: <20210313055044.239776-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210313055044.239776-1-yi.zhao@windriver.com>
References: <20210313055044.239776-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BYAPR11CA0084.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::25) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:50:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d959033-69fb-4d10-1327-08d8e5e3fa25
X-MS-TrafficTypeDiagnostic: MW3PR11MB4556:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB4556A07CABDD186F29808836F96E9@MW3PR11MB4556.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3S6ThHdQqaOErvMP5FoDVYZGHyecI9wPvD1MhPJ+lGjIPPF1Pqo51nwJlkYau8MAw4ikak0sca5/AsTHIe/fLIymSBdoCCk1+7YqYww8BkHgwCid3FFl1zcw9pl685NwrUdcbTMChFpoB0y024AVR/dgZAOCaklnoHvCXlj6xMPaBIWIq4IGsMcUZ8tExKDiV8ehxEYPLcY7R+tYr6JW1sVgde5tDCBJ6ma9jiHrvGlmdeZSd+LGTUc7eZzlsf0zKRyWFGp44SeqQ2Np+SP1WjKXvChu7irOtPMkDAFblSu5RRyU2E+9XKaYOpo2cedS5oCeSme0g+Q4aVt8b0w7uXaH+r/WzKwvetao5DUU1pm4KnCiHGWLpxORnI5EgPRe2buQtHHIV4mdYAHHIaTCGOHwiTwB3c12J+gmY9awXXRLjB2+wnU6FDcsybpP+qoGy4UiyBLMg9vYDhRTy5guLLVWg9M3Yiuq3Jom4iuH1REdy/bC3OadeiyV/NzsQiMvt/YlGIDIwMVqEquF5FLslA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(136003)(39850400004)(376002)(346002)(66476007)(6506007)(6512007)(15650500001)(36756003)(1076003)(8676002)(66556008)(66946007)(83380400001)(16526019)(86362001)(44832011)(316002)(6666004)(186003)(26005)(956004)(6486002)(5660300002)(2906002)(478600001)(52116002)(2616005)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?DOZ1MQxAW16OI24grR1/xeXXyONtGSG1kWz80p14O3l0d8yzEiil0iT3oLZX?=
 =?us-ascii?Q?SVf3sqdP63iZ174uFh8DGEHZLInDWZAkFqztULUqoxs9R/6aTqRBr0Qv6h9Z?=
 =?us-ascii?Q?ejbXOMxyqTCa6eDjgvWhj4xxU4Ebsb0DK4SCYxCiNzciIoftFFllbtKMeUBR?=
 =?us-ascii?Q?T+lDTRUT8PbcbFxEjvJ7cUfenvdAGGME9ZUOvpLUSm5crhXvYxf8QeeJwtfv?=
 =?us-ascii?Q?/8eE6oWPnNKdEIounb4rYyijtSoanYdYCSlGviBnoGc2VG+8XdijGh/txmYw?=
 =?us-ascii?Q?XoZ5c1DNh1YN0eBdIOdR3CnuzEuXHjf8kNczuBHcouGL3zE1xXQFZztGr4EE?=
 =?us-ascii?Q?wohmy0oB+L+jVdV2IxMLcfU2qzBWwJRuAkBJzBWu6k/DUUKOQDg4OSNNkmZU?=
 =?us-ascii?Q?BGpp5ZFEogvxZLT2VXfFejFJWiZznjPu/mPqXnQLFOwZqaftspfYOyl8FvFO?=
 =?us-ascii?Q?l8Jqpd1w7WfBTWwZUT+zPIEm9e1I6FR8A6nvAp539FpQW+FG21OKRAU9/fO1?=
 =?us-ascii?Q?ICVUqKFvrODJOPBUXSOpqTvWIXYDhApgxEwPIRZAgJq/XOOB27lPGzQ/N/Zc?=
 =?us-ascii?Q?xQaLI1L8S924VjrxaF7Z4HeSarYqu3bd8EJ+BYzIxwMKZHxw9tAUc2k4CRPy?=
 =?us-ascii?Q?IbxVuk8m+AFSzuMNvO6mXACBluHIj0FGQ9n+As3XchlQ0Tr4zMJbAikoaRiB?=
 =?us-ascii?Q?bqCIAsH1ss6aUsSBQqkZc5WWTPSRcPtz10AgUwku1FUkQCOqs6svhpBQ2lGU?=
 =?us-ascii?Q?wQXzdCeQkHbJwDZ437feY4p0cggBD7Tvebmorl3HeF+E7lFxzdoR17A1w0eV?=
 =?us-ascii?Q?QzCH817nI2DRQf5yJv2DNdJVhv/rPYwY60IjoM9lYi8N582522iQYKcR5UUQ?=
 =?us-ascii?Q?wuLTFoH9lil/6+fVUq2R31mzfCM6k1DZuj1g58MuPgqONdK/uioNMBVE14CQ?=
 =?us-ascii?Q?8nMidklezjaz7lR47euUErE0QyNFnKAuObxo2fw5/HTgX4aJ4wBq4biWxouq?=
 =?us-ascii?Q?welCdVSE5F2U/Cxm+Jw7BxE61yhlbE6sSAyyU+ymTW5Uojg8uglqF/3RNMzh?=
 =?us-ascii?Q?GGk6oETi1YK2QBpK4d2h9EcV4W+8W1PEfqjeIqZv3jB4dm0vc5jzK12uy7UI?=
 =?us-ascii?Q?FELpZa8jC9C+1k5coyq/nn0EdfIp+stzzgw6Yv4CBC/hy0pnttLzQKAziq1q?=
 =?us-ascii?Q?amWJcfSt5AIjaA7LIHDNiY2Grdscvcsl+0pwmPHYI8IxnuWdq+bPaFlbi6mB?=
 =?us-ascii?Q?vIzF7j1K1Mj+VvP7V/hM2SIEhjdN4MUHWA2XJRH3muF5D31uNuAH+lOjO7kx?=
 =?us-ascii?Q?bYTHpnkNTXZ9Db199qwU7D30?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d959033-69fb-4d10-1327-08d8e5e3fa25
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:50:59.4744
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zwc66a9huzwuP6XUYJopukNfPp1FOGfuNY/mhLRhFXV4JM7azlcWg44Ie/2U3hjRcokcoyUbmnG8TH0jK44umw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libsepol_3.1.bb                  | 8 --------
 .../selinux/{libsepol.inc =3D> libsepol_3.2.bb}             | 5 +++++
 2 files changed, 5 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/libsepol_3.1.bb
 rename recipes-security/selinux/{libsepol.inc =3D> libsepol_3.2.bb} (81%)

diff --git a/recipes-security/selinux/libsepol_3.1.bb b/recipes-security/se=
linux/libsepol_3.1.bb
deleted file mode 100644
index 1568025..0000000
--- a/recipes-security/selinux/libsepol_3.1.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da6f89e2100d9b6cdffcea4f398e3734=
3"
-
-SRC_URI[md5sum] =3D "b56dc01b76b97dcb730ab4e2fd1c9dea"
-SRC_URI[sha256sum] =3D "ae6778d01443fdd38cd30eeee846494e19f4d407b098725803=
72f4aa4bf8a3cc"
-
diff --git a/recipes-security/selinux/libsepol.inc b/recipes-security/selin=
ux/libsepol_3.2.bb
similarity index 81%
rename from recipes-security/selinux/libsepol.inc
rename to recipes-security/selinux/libsepol_3.2.bb
index a8ee749..48d5f49 100644
--- a/recipes-security/selinux/libsepol.inc
+++ b/recipes-security/selinux/libsepol_3.2.bb
@@ -5,9 +5,14 @@ as by programs like load_policy that need to perform speci=
fic transformations \
 on binary policies such as customizing policy boolean settings."
 SECTION =3D "base"
 LICENSE =3D "LGPLv2+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3Da6f89e2100d9b6cdffcea4f398=
e37343"
+
+require selinux_common.inc
=20
 inherit lib_package
=20
+S =3D "${WORKDIR}/git/libsepol"
+
 # Change RANLIB for cross compiling, use host-tools $(AR) rather than
 # local ranlib.
 EXTRA_OEMAKE +=3D "RANLIB=3D'$(AR) s'"
--=20
2.25.1

