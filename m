Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.826.1613089279969663505
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Feb 2021 16:21:20 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=R94Mt6tx;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yifan.yu@windriver.com)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2074.outbound.protection.outlook.com [40.107.244.74])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4FDCE38C06BE
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2021 00:21:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jxcf39tnxbX1urhBBwaYjG9gFcNRWFN7XVGgmeyblHJPgpjaWoI7r5+gJXR84iYgvbKjVxaUG6cQvzos+qMgxEd/BHYYbu0vumy+WBtn5IPUJXVQ6G08V3rZncomGJUpjUYDfOkBIeQgPjeCHV3T6f0aK/bQIlOkK9xqCnE2ild8DyYrOLLCr1AzA49ZcdLKLSNK3afC2nty4laqRgeLxiXk6W15WkbqZT74Caj4GfCVCApg8NT/J0KMbgH2xhEkcdZFqpjCic2zfbr67t+0vlruuyUUDyGrjWE9fC1c28beJifUCxb4fehspPByyV9zumj8NOR4zrSFqQaMCMJmmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KIO8EFMZtPzmEQAdl9J+KCDAFY+nqNCh4hMAb8JjUgk=;
 b=Y6ap59rYYvn8u3MzFEWGsSvBKrEDHS6rwv5hHvJBDFkEBldcU8MHTNMXqqCctrXQeT3vUc3y9xpaCG5r47+uNAJt5p4wy6vSTsB0XDu8SOEFKTotduoW9XnsH7ZuHisi3Na9aBr57v9+u84zsvUrkeuqu/jilqZUl+B/zb6FIzm4nMIALaHEmAfnJTMZJle0qHhrsBGG3/CO/vT9XyH+ZMbkxhH9/NmTm5TEye6lg8U7JfhJINS+bObg9y2m0AATX/IejvZREeqU/Wtz5dXAPbgXwhDLWcJZZ4iVgBc360VsbYoAf5qg1DWmsae3rT/2OEDg232DSVWy30Yf2udJqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KIO8EFMZtPzmEQAdl9J+KCDAFY+nqNCh4hMAb8JjUgk=;
 b=R94Mt6tx4k1QXowl5P+wMZn5SasT+ZWCsiN+Xeq51DoDW3vgwubZ4DVn7SAQjJjDVuxZ0zj142jYbb9dDmxmfhPAfGq8Ga+ozmWtcwV5HvloieoPO9pwnQ7WhJYFDfpE+ASOLAUfwej2RZgsdNEsaMgnpyzG49zanMfQt8cinb0=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SN6PR11MB3165.namprd11.prod.outlook.com (2603:10b6:805:c0::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Fri, 12 Feb
 2021 00:21:17 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::1c2f:159e:f6f6:36f3]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::1c2f:159e:f6f6:36f3%8]) with mapi id 15.20.3825.030; Fri, 12 Feb 2021
 00:21:17 +0000
From: "Yi Fan Yu" <yifan.yu@windriver.com>
To: yocto@yoctoproject.org
Subject: [yocto][error-report-web][PATCH] parser: make contains_tag ignore non-str fields
Date: Thu, 11 Feb 2021 19:21:04 -0500
Message-Id: <20210212002104.16548-1-yifan.yu@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: YT1PR01CA0100.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2c::9) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yyu1-Latitude-5410.corp.ad.wrs.com (135.0.247.71) by YT1PR01CA0100.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2c::9) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19 via Frontend Transport; Fri, 12 Feb 2021 00:21:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ae0ab34-36e1-45ef-7117-08d8ceec1cce
X-MS-TrafficTypeDiagnostic: SN6PR11MB3165:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB31656A1B9C4A94925425D4F4808B9@SN6PR11MB3165.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	A2Qh8d5Fmk9YthE0U38ICeYwe6CryCQbYFIw50nw7qSiou3jJqIq8BPMps7dlStNTqXYCC5oZvHYTbsnXVnXs85ULTmS3a2WHHIHVlTBqD40T7BDO37cNdhQ60mRNGABnMSB+qp/QFlK7RytJtlh2Qcw5+qb8Akz9SgykVZpID7TO8ytUdoy6mPvHQV71NAQq9mKsC/Wu5Y4PLOzLLLMdjCeMiMwmwyNJwE9Ct5a/qVXjhSmhErrHiLx9bW1eVULX2/1v3QJdcGfV4RI5RweymG7Wl0fCTAVcpUemZN4M/KI6/8D5evxk0g/ltVHbMQsWkRm6JjL0x2nnczj95l/hLe1GRJhOJv7YrEsfsinexcgPBdLKHBvEz0e+w7SeAfriQXGTs71SjQkPpuKcgLs0eADc9B70+ANinp9srFJOhWlPeFF39Uo0pspzrSLUur9YEt80sX8Iaido32l6C2MeKD/MUh1C5HJ1Lvh4OGHZF7tM7jidFLTHD7xrbIZs6fjSQPfAmdyhmdLpIbJgyFgNw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(39850400004)(396003)(346002)(376002)(478600001)(66946007)(186003)(36756003)(26005)(6506007)(52116002)(6666004)(6916009)(8936002)(83380400001)(8676002)(2906002)(66476007)(66556008)(86362001)(16526019)(1076003)(4744005)(6512007)(316002)(6486002)(956004)(2616005)(5660300002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?fgb/x5Pb/JyVJG01UrYIvFYN02UsH7i3oteeP9dOxCXItt3tT9kbc2qe2QmH?=
 =?us-ascii?Q?AwC6fwBmuQXTJJFVktkAoLCE1BvOumjZZ65mCqvsgsvTVc4V8KjpIROeYDUO?=
 =?us-ascii?Q?Wsyo1xZJAIsfUOeNYfa524YZN8yoId0Y16aq+kg6KgGg2VJQ/Am4xcI5+Dsx?=
 =?us-ascii?Q?DG+kxA7EHHwJum59qR4foDEQut9gJko9F9zTGDdBSw9oMTqgXy7y8cJOPe/C?=
 =?us-ascii?Q?QbUS+aY3l0ajYRN9M22Wzr7wsBsJJk16YgvMnTlR5vavjyUl1z3OKL7LM25x?=
 =?us-ascii?Q?lvjJif2ZCVmK0P95YBeSyioyEycNpB/rl/p2CGp133WNOL7AeCDQ7DszJdz+?=
 =?us-ascii?Q?1ptmXqagU6HexP5bkDY6eJZPWO70BlQFtNJjoae/ntG7Nz7tnL4nlYjBv3Nu?=
 =?us-ascii?Q?MQKJ3oXH9ns52ReS98lM3jKqW6IrHjFa/u8IZfGqsPVLzweG025qQQ34YAIu?=
 =?us-ascii?Q?JsxtO9dD+6dQOcxbiaqpGlQ67VqeGzJwjmviWDkULg6ZydZ5VNnLHbPHzBNZ?=
 =?us-ascii?Q?CoR5XJ1+y25kURwGG7FsjJkA6sLkoDuzfiFpaU7eRKGpCyd9H2TGEANc2Y8s?=
 =?us-ascii?Q?/RWW86UECn1LgtwrVgTfHd1vfXMcfqbxd9LjEryWcI+KTsO4UtnYfoCF2Qed?=
 =?us-ascii?Q?XmsJFSrLM79oe8SiR7RY9pNVnM9fy3kBtVwOI45SlVGQNIVsCDQUU03qnvP2?=
 =?us-ascii?Q?19MQqga+SMxhNLlFBWd8h3Nw28wPbbsVTV4vA3JziSq6ZFmC6BwS09l+ttB3?=
 =?us-ascii?Q?uJlG4xf+BxrXuq5ZvuA5WpGrPOPD5mPt1sVf107ttjD5iUnw5yBbzlBtFm8N?=
 =?us-ascii?Q?THJVZJjEAMJgUm49Kd8vA3rguegc0zqPiCu6cOKrZtIYl7kWtpPzE2eVMzue?=
 =?us-ascii?Q?Jfc+uqJeutXpYBOl03+MOH+qf6QoJdOJwuQkMaFBPbqkNMdQKszA9qyY6dok?=
 =?us-ascii?Q?5ReBJBSoPZ6J8M/r7b50/FT/IcqBUetNghnEfyZeE1V1nQZb41j0Nl3RUoKN?=
 =?us-ascii?Q?ptI3b7ls2Xn9qoRgzkeFMOnQDslLJ7dM4nVNDEQebhd9P1b9jnM4G+4CcB9g?=
 =?us-ascii?Q?cknYCE1uvVYCRTLOFZlsrwaGW35f/ZmYWiVHGlPEELbdqEsFKGIwpa2MOSXU?=
 =?us-ascii?Q?+sPeCrOICe7boqzcl5rWOYY28BPVk+GhNE4c0Zahm8fpkjW4uxpl/bosugxu?=
 =?us-ascii?Q?9mt7f1wRaovcTIuHMjVAtASaL8ybd3YL1zKDbBm1CGD7TdGXBibeMZwn+phb?=
 =?us-ascii?Q?qfrnce9EgwHe0Tr7L+tAcQqu4F2Ndo1jkMfxWl3kJ3qLxxCANCCXaPz2d7ss?=
 =?us-ascii?Q?EWaYeo5uOSLSyQnEZIkh58qH?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ae0ab34-36e1-45ef-7117-08d8ceec1cce
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2021 00:21:16.9017
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eTWWQuULS9oGh1q45cvrU7M8bkiEO8zpui+FfjoQAJMrCRovliFgOyQCPvT8QYYFCr0OVx01QRVm9cEntBDaAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3165
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

if `MACHINE` is set to False (in a selftest build),
contains_tags should skip that field instead of
searching for the character '<'.

[YOCTO #14208]

Signed-off-by: Yi Fan Yu <yifan.yu@windriver.com>
---
 Post/parser.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Post/parser.py b/Post/parser.py
index ed65d4f..f54482a 100644
--- a/Post/parser.py
+++ b/Post/parser.py
@@ -21,10 +21,14 @@ class Parser:
=20
     # returns true if the values contain '<' char
     # Ignore the failures field (which is an array anyway)
+    # Ignore any non-str fields too [YOCTO #14208]
     def contains_tags (self, data):
         for key,val in data.items():
             if key =3D=3D 'failures':
                 continue
+           =20
+            if not isinstance(val, str):
+                continue
=20
             if '<' in val:
                 return True
--=20
2.25.1

