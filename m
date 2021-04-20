Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.46])
 by mx.groups.io with SMTP id smtpd.web09.5081.1618886189315933312
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Apr 2021 19:36:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=mU6lVqMI;
 spf=pass (domain: windriver.com, ip: 40.107.92.46, mailfrom: yifan.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BDX5fRJn1mILIiQTcsizU7OWOeGyS1GpK+oXmGjt/NnLXRGdk79pvaVhhgofbZCZvf+YWzKryk6pbOv2qkhf6BFvcfOAcuqkjspIeqmBBkIgAw+jsT1J66+87F6tDYyZoZYYZQe9VzebSscKXHkFjw5wpRZ7613sRREcMDBL0JLQA8aNCO/1hDfZ/0NENd8UMFZZRBx6Lcez5awZesXb84NmTj3s7pkJyz1sfnf2SQ2nxxeekADY7P2vt7H6Hd532/xAz8MdzEkg5tBXYAKQF/BRJ1Gxc+eJcviynQY7667Fq9kttcR7nMRkRaAz07p2lLb63y9NtQ+2wJUxZBdLsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7HXw1fCf0wx0ZhoWO2rH5ZY8aCzIMzdSyOq05seR+BI=;
 b=LsgmWJG1z/HkzCYM+vpRX5wA7ANum6YruCSTPqAY1/GEcZn0FNhTHRnA9tLN5xMCgBFv1ZOww8YOSa7Q1DKrX94e4CP3iaxlMpxooRDOs3iJP8S0qU6mNVg6/0rLINmQbhbB6L6+L4VSDhY3Q77Y/liJQPqw321jTBHllpFBZQ8VtXkfLc46p8CrAfAmfve29Q3CK2X7+XMS3UDheMAYU9Yiy4cwnOsFjDCv/ZbPMucxokSA/ayuMxlN7zE98soGP5kRUSVFGJgjrwhTSLRDM1aE5lZG214NAS8dpnBuPAbunNchCfF5zpJsN5SxCuVtYRfPjeNu//HzlbL6Z57FdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7HXw1fCf0wx0ZhoWO2rH5ZY8aCzIMzdSyOq05seR+BI=;
 b=mU6lVqMIEWaHurZosVerKsR0JV/z9sWos9Hh/a72721VUM/7hto4o9D39IxSfj9KiS9xVyqwWmCEHzvM2hZ6qeMvg5l/q+OpVb58Qk4dl/xPzU+T4xf+2TRIjwLH5CsFR7h3PL1ZsfvDTHQwyoj+nE34vctQJTJ56L53IoJA85c=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SA2PR11MB5193.namprd11.prod.outlook.com (2603:10b6:806:fa::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.21; Tue, 20 Apr
 2021 02:36:26 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f%9]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 02:36:26 +0000
From: "Yi Fan Yu" <yifan.yu@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH] [yocto-autobuilder-helper 1/2] config.json: Add default MACHINE qemux86-64
Date: Mon, 19 Apr 2021 22:36:11 -0400
Message-ID: <20210420023612.29430-1-yifan.yu@windriver.com>
X-Mailer: git-send-email 2.29.2
X-Originating-IP: [128.224.252.2]
X-ClientProxiedBy: YTXPR0101CA0053.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:1::30) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
Return-Path: yifan.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-lpggp3.wrs.com (128.224.252.2) by YTXPR0101CA0053.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00:1::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.21 via Frontend Transport; Tue, 20 Apr 2021 02:36:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 714d0f02-1ffe-44b1-ae4c-08d903a5186e
X-MS-TrafficTypeDiagnostic: SA2PR11MB5193:
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB519331840C77D0D01A7AC22A80489@SA2PR11MB5193.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lFl4uysFRatncJYfeUdUyGy6+3/pWBH/EhWhHnAGUi74O5CN/JWbSCExXpYXjD4QO1CBdfNAg/xYp4Y8uT9DxnYQ5K1K8jIfRza4C7Kc4khFKYnzIVekM50YeuzUJIrT9VuTxMZQApNrSGwEY0hGjqC0vko3/YKhsovd5uotw529HRRcm0i430bjjNOUtqg6uX8sK2YgpvwKrGncisb9GjDMlpd+scgnb8G2bM8i1zqxGX07KVXTmAtPOfv7KQkwouraXvD/JOePGzi+qxmQaEBzyL/bQDDqzEhPSp2nEXf0hYOpa8ND1vndjGxb4g2ux2NRrYOTIz5T+YpV46jQsnhYzbi5i0XqNFj1UZXYpuq7F/49rpNRXGcJxGYmBFD6vW/lVC/25zF9u+AvRAEmnJbx6wIutjMWNqiazi+6qua0jFdQg8vArmzKffUsfjom8ZKfoVFxuqaERPcvz0+0aONUuXGghURiG21C4s444vJqZkZywm4x+xnqnAlKlOkuGWqjA0esw6YuvXbMAhUy/X6Y3nRZoqxtkuI68pyHR6y0tPGyTLBFN5PPNd1ATwxqvankTITwSyJBog1Jl0ucg5ihUBTDCZGwvYy01LvFptaH8NUGrT7BWZgxkOB3h90QdZdNmcL94ov47mAan6TY4g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(136003)(396003)(346002)(366004)(16526019)(26005)(478600001)(2906002)(6486002)(6666004)(86362001)(66946007)(66476007)(5660300002)(52116002)(6916009)(6506007)(6512007)(316002)(38350700002)(2616005)(8676002)(36756003)(4744005)(1076003)(8936002)(956004)(186003)(38100700002)(66556008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?ovShk1aGl26MnezMGrSf13Pi0UtVHVii6eXl6rnwzYkLZmFQQv4BShktS9dW?=
 =?us-ascii?Q?RZf2eqe/UoieKImRGeHq2XUF6KXNIZ8ZPHwEFcDIq4pjeloii0hrfZ+dL4oq?=
 =?us-ascii?Q?xmUBxqrlB9yaZDUdZLfrppsbi+oZPh9xwqqx+z7DxNq0PtH8UuSrlWBENC6b?=
 =?us-ascii?Q?m975FGHp4relzmgkNFvXwQ1vKr/+RJ2YHJFq7XWf5sw1CLQzTjLexRdam3+G?=
 =?us-ascii?Q?jWFA7oDkfANHqe5N2q5Bytl+vH9f+iechAxap3vK7mltOfgeVLiAHLXrf1Y2?=
 =?us-ascii?Q?SCr6g3GMd7C2Nail2EHVEWFpFIsZwKQr1JcIKMqQsYR9FXrWn8Hf7IHpp3Tz?=
 =?us-ascii?Q?cr2u4j8cabhgMY95CxIdcsTOZmIVwoNzCoLNeKkwOuWHMvFvDdazfhCZpxcv?=
 =?us-ascii?Q?r0rMMT5VuhyAdiygcVLhRLVv8VmG7/I6FtAuMc0Ake6xERK3p/2C9YSnyvK+?=
 =?us-ascii?Q?he+CDV347+JsdyzgFqM102T8GSXsXDe8M0ehQMB3PmOG4nIS9wXoiihomX4Z?=
 =?us-ascii?Q?LH+rk2QQGLWW1Frky2XlTyUHnKWi339F+B3jPVCDPoQ/AtWHymZrcYiXl6F2?=
 =?us-ascii?Q?Una/ZJDyNArIhb+9pPXZ/P4D7ssWsTYdZI3fCxrdRAfHX93+iGpGACv3KhPn?=
 =?us-ascii?Q?tT1aNWSQ++7MQvxHSHb1T/Y841wGxkaeeD9tXGhjVwhcHoz9IrPp00e2bdFQ?=
 =?us-ascii?Q?VxHm+54ETb5llb2tcI3BR73ifTJA6OJIOBF8MXOMiQFdqmdHxK4EDU1Enfvn?=
 =?us-ascii?Q?X+FtdWbVWAB9C+7whnnCelNQWPXl9axryVbE1pl3G2JcCW6WqGZV8SdSYgCk?=
 =?us-ascii?Q?RunrhYaZKlY9sm4pf/mOvQqQuP4lE9SAm84O636vKhXCaTWgBVb2C+XXhWQ6?=
 =?us-ascii?Q?w+kxcrMD2ILC8BrTQsUqovl3d8r0w13OX5xFQMTzI138Ap93D2ctV7X3IVdw?=
 =?us-ascii?Q?viwu1YIx9rd7ECyt4HlDzPYxQ+ItRUAWkGZOBYnhiELWDM4A/+bR8zNpbaeg?=
 =?us-ascii?Q?UxrxluZewTo48X9ZG2pGny7TREZ19+ljJ+KME4byk/h6f3CBcSmwlTC75tgx?=
 =?us-ascii?Q?a09C1dY1Q9v+ux7wKOeymaAvIEjAj54946+fklxPRyQLmxT6bDmQWhuDslHS?=
 =?us-ascii?Q?3IbNZLbN9EFjQ2YoJ1ajitkEcRlexT4EwAIRq/oKuI33yBzaDgmMwSEuSx9i?=
 =?us-ascii?Q?9Nw2D1aWy7FPEr+TPCIWVTNflW9UK1vGRGEKV4zlNl1GBwkwD7TFgCgmwOYz?=
 =?us-ascii?Q?ULkONMbpD5iGF9ebGXZbmEemYQ7BB+scXtObo5iD/FLxhFgMBtaFJ8TywBn8?=
 =?us-ascii?Q?fQONh0YF/8pxjYH3fcuS3bT2?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 714d0f02-1ffe-44b1-ae4c-08d903a5186e
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2021 02:36:26.6787
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IXRZeLuBG9140o2WkYBBfZgoj8rz2DZp+tF9+M78jqGYazrSyxO7o2pXzHRyXW6lpk64K8xHi/PoSMXjS+r3OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5193
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

This is the default oe-core MACHINE value.

Prevent error-reporting tool to report simply False.
It was seen in check-layer where the MACHINE wasn't specified.

[YOCTO #14208]

Signed-off-by: Yi Fan Yu <yifan.yu@windriver.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 962d8ae..2d1a698 100644
--- a/config.json
+++ b/config.json
@@ -26,6 +26,7 @@
     "defaults" : {
         "NEEDREPOS" : ["poky"],
         "DISTRO" : "poky",
+        "MACHINE" : "qemux86-64",
         "SDKMACHINE" : "i686",
         "PACKAGE_CLASSES" : "package_rpm package_deb package_ipk",
         "DLDIR" : "DL_DIR =3D '${BASE_SHAREDDIR}/current_sources'",
--=20
2.29.2

