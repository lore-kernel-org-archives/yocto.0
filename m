Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web11.5958.1614675142201534390
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 00:52:22 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=QDfGRDVv;
 spf=softfail (domain: windriver.com, ip: <nil>, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HAXx7dDlxwLF2OQS/LM8Q1cK2sUt0/BHJ/GWl25iN5QNiC08eRa5U7Y2jZwIPQhPUGKo+IlcTMsz4z/vQLh2xWjuEjdpKiXz/U9TSFa1BMCUiDDb8UDbTyebjROJBhG7rMzFeC7Rl/LrSkQ5fW18VAXNpOvGMTVN/NyIpz1iBh7FqeDj8Np/tu3xpj9Xfd8+flGZC3kVueuvYxDvc2lgEEEpvHdr8SIvIQdBcK0+by/AR52CQ+ZIVkLumQxAbZv7viJETOswmciiUDqVMV1wBXiIOEE5+kstqFoy3vJhaOQxDssNy57hi14dhbv6z5LnVIuewuxzfYRcYz0DcKceYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ox5H++apoGfot/lsIPcJB2FXgxerVFD0Ji2a9NLs6dI=;
 b=i2L2x7rn5oRv7b38F2DuDbKbpHVxnzoY3f6wWgFvNCkva6jF1sj2PoikqkzUvYt4SKkFxp4WR2a+mgQDmcGPrAr1ynL05nsZDJMon1dOE1bME9WKAzcgREu3Oiz+H0jcaRby7FlisQDbYyj0sSb8BNK5cS6Y3s9U+FUBUjVEJHfbHWTrMfm6xwAimXjQTH7hmrbDcbzPO/fUOuWLo5EEmLY2kKYu0Hn2zjzbVQhzd3ZIRfVMNQKsxZdhUGD1N37poJXsrMVOx55PtjviHN2tOyR37yQxQ7KY6OWBEzlA7qLF3nWe7ucQho8CvtFrNp0XBtPbQn/fqP58n2Pj9Q65xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ox5H++apoGfot/lsIPcJB2FXgxerVFD0Ji2a9NLs6dI=;
 b=QDfGRDVv87pfstv7++hwyumu8H4knuQQeeIKV4YBAWIPzVf2hD19ut2we1VYVIaOz7xG0+iFzuq58XKYUFrJIpsziAa/kfJR4jt8CZRd8VOVwUwc0mM+w7Jp0kEriDy2qkGYHrx+4WV8tLvjR0NZYhoor2ISGv49cfolqtjAXNw=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2352.namprd11.prod.outlook.com (2603:10b6:300:7e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.26; Tue, 2 Mar
 2021 08:52:21 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3890.023; Tue, 2 Mar 2021
 08:52:21 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 1/7] selinux-python: depend on libselinux
Date: Tue,  2 Mar 2021 16:52:00 +0800
Message-ID: <20210302085206.56794-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210302085206.56794-1-yi.zhao@windriver.com>
References: <20210302085206.56794-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::19) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.8 via Frontend Transport; Tue, 2 Mar 2021 08:52:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 113e0cd5-a061-4855-52a7-08d8dd587df5
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2352:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB23521F2278A550F7DAF34B1EF9999@MWHPR1101MB2352.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:546;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GcRSd7ilXi3vxMjMziRWCBafIyPpavEnNx9lfRfCRFLB2g0xUnwkAkpqjUDBeAtLodGsUDw4LUyIUyI4QGbWkhZspMGVENGAVzUVlsPMxNuO6BkL+p7DOdffMKAlTIyL031+CjvVZegXCxrQPiYJ6WAeLutyMqIzuMjMUAs/6QQJN7ACjAL+IQzsd8B/z4rhm+Tf/ERpx+A7uEkOXXViVrrwiI2q7BRz/eIdSGA9ZhysxG+VtZa9fZbwq54YphrflZzvIzNzBTdmcNv+nRM4uqx9eQ56tEtnk7KRoI7yQ6bzvoXwqGYP0GkumWXIliqPHZhNrmjS0keFI+zhnlhjRvv+843aZCcrvzssgOkOnXdQhtt/tAWhrAyIhU43YVpByHLFcwQNLvN2Iag+wZLFfCb4JbiMi7uTf8Oee1dnf2wKJfJXL7KhcdMtZA7EbjCbn5wdsMEdZ5onJvPUimm5aH7kUL2TcEPm9EjF/aofqQwlJtsK2Doffd2Czozh5RTakFxBafWiaK+XugJmLEMkde0PEzzhrl3AB5ocRSHJ6w14m21X0qheWt5lsOssmoV/
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39850400004)(366004)(346002)(376002)(136003)(2616005)(36756003)(2906002)(8676002)(956004)(6666004)(316002)(44832011)(478600001)(6506007)(5660300002)(4744005)(6512007)(83380400001)(66476007)(52116002)(66556008)(66946007)(8936002)(186003)(16526019)(86362001)(1076003)(6486002)(26005)(72063004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?hmQjg9DsCRg2J1/XgLBVb8l/cNjB/CmegEn5hJ5Dz9H8J+ZgnhMq+g42SCjN?=
 =?us-ascii?Q?uDeB7Q8s5s69T08BAD2KtOEh0aOtPwCwmTpEMeXpd01r0QLUlDH4ZOrj1yO8?=
 =?us-ascii?Q?RnbLmVDO6m8lFjotnoKm7ZpZhjw+ronMgq305+NnDOjTWarbdydjgcEkPmAt?=
 =?us-ascii?Q?xtko3MKstcax/YGrbTHitjFu7y5iLt8GHI/V1Ex2mcv91BjNyA8R20Q6XkBj?=
 =?us-ascii?Q?YqKgx9GdxNk1+tZYCecfdOcWMB3Z1L3CBwDGYtloJpQQ5d2enpCXAf3Q88RM?=
 =?us-ascii?Q?G4kmKfmnNI7pHUZWOpEhD1pT/vRMxdmJYcda2dJYXyt9syIcbxygbLQiV/cz?=
 =?us-ascii?Q?+i1ceebCDOO2Ok0HcK3p0smgFVhAg+8W6DUbtwV6/GLxF5fbNwrF+lcPol6P?=
 =?us-ascii?Q?WBTkLShhRaKvXy6/CfMF5duJLAoanahxs2CROuaqS9bNmqP7nmZZ44DNxYd9?=
 =?us-ascii?Q?6XWW0tsqW+UH4zQyhSR+WKxSOwys581XVn0NQWixLse+6E59SlTbJHX7k5+Z?=
 =?us-ascii?Q?nTYVXlOMMe+tUwRovuhR2BwKCpMFjbEoIDJC9q8OJ5yKa40AfLyFZlQWdSZD?=
 =?us-ascii?Q?+y5UVRncC7cmYLRb9QJ9nYhEp4XcQL9orRvNmrxZRdmZrHJWGEeDAhxigU30?=
 =?us-ascii?Q?q3T/W0vDZIceVePc1KXJTiaB2+I4u3eavL6ep78rV/WKqVw9zAvj+JjnxJa7?=
 =?us-ascii?Q?lYv+XywkIkQS1YDwgN07CM/kAYIwrohvfIlC/BLp/3KHG8RZGwKRbP4nhaFb?=
 =?us-ascii?Q?ns62uV7Xviis49ReaJxxKjrnSQDA9PVGTRHrNITYfuX+YPdtMMhG2h7AGgTu?=
 =?us-ascii?Q?NExP062xR6vkV3lZgQLsc0JY/Tok8C2SK0akIr7DPaSq1/IKaeKYygahGrkt?=
 =?us-ascii?Q?c0tUZ2YQxakNxyTG4kpPdWV4nK7n7Igt4B8egmvGNQ5sLpjXW7+PFrzmLcNo?=
 =?us-ascii?Q?xXOPTc8w83T73dhf1anknmPt/yPcDSKEFp1DJTAWs+wRjXwrAA948hZDFRln?=
 =?us-ascii?Q?PJCarPgED/e9tIbOvmQnq6PGdJf/aXYa5COo6QxPF/LSZflYHjbpoh0ptiDX?=
 =?us-ascii?Q?z0K8x7hZnjSRd6lCd2BULy8RMVB/heBOkc402C+0+iEejH7b0DgVvh4L+LES?=
 =?us-ascii?Q?kjSDKkGBf1VfV8895iPGBTZmBKHoRitLjd9IN1Bt8m7g+qHwlxDpj82WbmJm?=
 =?us-ascii?Q?4KQTD0BRWnkh/BIQz1FNcW4JmsbbCeO6kN1IQssPuJZ7zev5VznemDReGioC?=
 =?us-ascii?Q?LYpsq+6EtnN+NDtsb1zMtBwKHEG4ATVcpFxznw20IqQygfzYVvKF/OnptrGJ?=
 =?us-ascii?Q?saHetZ1fvoxl0O5qW0Rxdi1Z?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 113e0cd5-a061-4855-52a7-08d8dd587df5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2021 08:52:21.6639
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nnx5bt3hznNQhVu/UHtGymp/s4R4BQZi9C6q0qmtgcIxoIT2rLLPkZ6xNAYZ7tf3AaKSjTfPXwMpXQ2ll22hZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2352
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Fix build error when selinux feature is not enabled:

sepolgen-ifgen-attr-helper.c:29:10: fatal error: selinux/selinux.h: No such=
 file or directory
   29 | #include <selinux/selinux.h>
      |          ^~~~~~~~~~~~~~~~~~~

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-python.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security=
/selinux/selinux-python.inc
index e690ac5..827fa8b 100644
--- a/recipes-security/selinux/selinux-python.inc
+++ b/recipes-security/selinux/selinux-python.inc
@@ -10,7 +10,7 @@ SRC_URI +=3D "file://fix-sepolicy-install-path.patch"
=20
 inherit python3native
=20
-DEPENDS +=3D "python3 libsepol"
+DEPENDS +=3D "python3 libsepol libselinux"
 RDEPENDS_${BPN}-audit2allow +=3D "\
         python3-core \
         libselinux-python \
--=20
2.25.1

