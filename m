Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web09.5081.1618886189315933312
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Apr 2021 19:36:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=mxIx0i5Y;
 spf=softfail (domain: windriver.com, ip: <nil>, mailfrom: yifan.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ie3+E3peYZGPkCmjCUMEtzODDMOcW1Ag+Wa4x2oJHekWXwsigho/O5UjM+tPEeVd+LJtIplug1wLLd2+rIf6IQF6nymeIevZklfDvCatMQgIAYVak8mBqkfbskjzR/nMotAZFE0DWz9Hdh8fmj7vb8P87BBqvNaU5/Oxty99oxmRh0UMIdWWk6R3qhUgWdfT5T48faiSlbQd5KoZru67nM3AD4WpvlWKUkubPzwSgh0YnNuVkiHfoIF+N2VRSXh9vo4jW7hkugJFbZo7amVAM/9WkR4eSCaCBik1TuyuZoC9ZFIpNAQzUipktZBlt2L6SEF5w2qxx9HV+mvi4jTD4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NVKAYuPUD0RAmJzpR8rTwlM0vYAHHOhx/ALdR8PH1JY=;
 b=Rgvi5pNWYV4LJ3dfMcBFOP5VHYcqZLeQg4yUlNo0FSunLy8RboNWi5NwnBW19ukYMDCWD3pJORpm5En4X1tI+l3zHvuvolj8z9D5yk3bdKybXaS4CihKvGlhhDshUaOwWvojTBXn1oy8HcrlmQEb4wtVo7aBlPEAOLxDuuKtnubl5M10iPPNPH/khEc+pKNsUct2cROHLQY8VZ1bkuXEe8us4WlxdIUfO8t2pBwBlZnscAMQUk5DHArnQBuXkrInge0ARaSsso/Q0XKb2QRPiWNpiD+JjsVSvuYVClHGt4qvI92FBe9I6XMGgrwIytzfMPGErPBaFLktKByPx160kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NVKAYuPUD0RAmJzpR8rTwlM0vYAHHOhx/ALdR8PH1JY=;
 b=mxIx0i5YiWhcXZaqitDd8L9OSO8YxbC2IY6n2LPtrUpkQ4LNAWkOqz2XYAdqykpaP943sDUfeuJSYfCwrO+ZwEGPGh9c2JwGbeH/DfAej/NpQGVF7pNJQk7APewEhVIbUiEaferEtfgARtbb5xvAB2bJjFYsDPXCnyFVLeOmyKw=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SA2PR11MB5193.namprd11.prod.outlook.com (2603:10b6:806:fa::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.21; Tue, 20 Apr
 2021 02:36:27 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f%9]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 02:36:27 +0000
From: "Yi Fan Yu" <yifan.yu@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH] [yocto-autobuilder-helper 2/2] scripts/utils.py: Add reporting for yocto-check-layer
Date: Mon, 19 Apr 2021 22:36:12 -0400
Message-ID: <20210420023612.29430-2-yifan.yu@windriver.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210420023612.29430-1-yifan.yu@windriver.com>
References: <20210420023612.29430-1-yifan.yu@windriver.com>
X-Originating-IP: [128.224.252.2]
X-ClientProxiedBy: YTXPR0101CA0053.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:1::30) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
Return-Path: yifan.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-lpggp3.wrs.com (128.224.252.2) by YTXPR0101CA0053.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00:1::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.21 via Frontend Transport; Tue, 20 Apr 2021 02:36:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 91a9ea4d-3d0d-46ac-dd99-08d903a518f7
X-MS-TrafficTypeDiagnostic: SA2PR11MB5193:
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB519364A3D489EE80D242E2CE80489@SA2PR11MB5193.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PKnVqJ+bE6jE99y/AW5HTNLANt/drXYECjDv9eItg9fK70SCwjhA4pNs2Cc0Lqi9ZLOx1VE3RVHKixy+Q6vqcs4CtlRRcx6m8P53L72eASgROt2w6Bp4txi3+R6PxJTI/Kw/tx77NZ1Yom9/WDV9yDP2vuLeje5MAFPZjYJ/STHWcFfcWg1i7g5jeAnYmS+hGpFCf+QxrMznsNWsJQQqxdtFyrRS6eykJF71JcEEhDOeM/b9VmUz65r42rFm8Do2ebvkaiqbBSiedmV+mVaMpB4eq6vS/EvQpj/ruUkSGFrhFSEQxE6rNpby24iQmuuZR7XMmPfZ2JxYbWvvaHFDuK6jJp5JgA6nNVs4zWFpHAxXFWKQUA2Ru22jAq3b6S/e3nIFp40jpoML+pZYmeXD6p7ebSg1zrWZmkTrTwSEiWpV2VtKDUUlCX75jQ8OfC2lQ447jj00h/vMhR+AlPPgjFCwJShlomvFznb2sVllO2Bz0URzgUiuXDThZXoC+n7u8WU7Ao0CMrVVCsy+RvozAPW+a8lJ02HptP9WOwgkpaPj0mk+9sO1m7f+PtpUjjFzOy3/Ixq3Hozt6VDmWK360PjU384bzlgcN2hAaBxjuMGPQjkv3/O64lS+/P8zotEZOcRq7kojf/usf46CCh3CnQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(136003)(396003)(346002)(366004)(16526019)(26005)(478600001)(2906002)(6486002)(6666004)(86362001)(66946007)(66476007)(83380400001)(5660300002)(52116002)(6916009)(6506007)(6512007)(316002)(38350700002)(2616005)(8676002)(36756003)(4744005)(1076003)(8936002)(956004)(186003)(38100700002)(66556008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?bcwh3ARVIfOxuBm24mwqyOqeb0INZiouN8+/G7cyQRcw0EMWmtSDvuKKA3Ty?=
 =?us-ascii?Q?SGB7iFN35XrNtdP8WQBP2fEMiMrmwClg9ee0LB3fWQWONfbpor31VWeQ0yDE?=
 =?us-ascii?Q?SnGWxbhPufV+KPPpY5Hk/VT8sGEihTQq83aXXrp0o6CiP1JTQQ+kY7F60Vzw?=
 =?us-ascii?Q?WT0dKovEQ6d+uQt45d06zFWBBzLqvmu/Od5Fa7Si1533E5w69EgYga8ol+Q9?=
 =?us-ascii?Q?pQpYzAmRZ6Nt0HUl5SYfcxqkuxnrdBfNPUqui/iIZwHPKbb9nkd8lHn1/Z3j?=
 =?us-ascii?Q?04tLcMspQGt+yhkNEIvOl6RgZ+zh0RSC8+Nu3wTNLWwBKpkD0ICVI2FDTzSj?=
 =?us-ascii?Q?Z6Et0nHFid1JdP6ZIZr75x5sbKpVPnbI/tDsWKFPB6DNMDcvqoaNfAIzXzS6?=
 =?us-ascii?Q?DXiqLSGSasdSeaIo90KPD3YNtBX5qlmX5Bz8w2Lz/Kijd/+yQLSDR5I4d3vX?=
 =?us-ascii?Q?IE1YY/vGAsojzJsPM7Gt/rqhtPnjPd+isRp0PyQ9bs7O9AcEeqUHDTQU0o2O?=
 =?us-ascii?Q?aIpdxVB+aDMGJuhCb7++Jgfze69wD1qGLlN941u4I9CkSd1F/pTUiNOaJZKc?=
 =?us-ascii?Q?tADL2JwTVHsk+IJrptSu1fwlfXHXWl3hme9/7mPzfpKh9OJnGt4hz/kaOEUe?=
 =?us-ascii?Q?yP0VUp1rA9aHwGhLg1SzRwXGdqLL9aWA35rhznIxnTrjytWiy9XgVYbZMe90?=
 =?us-ascii?Q?4CAjuXRVKYRhCB5qJMaRgJeJTKh6+uxTJgpaVJ4E1H3EvqBZecq6X73IL3wm?=
 =?us-ascii?Q?/0rJ0UZrZvhNsYgpuJDH9Y1pk2W0SCeVG+UfyQpqywytje9mbOq2vt7MpYc1?=
 =?us-ascii?Q?Zwht/CS4XKxn7DBrneElgMGfr63/FDOnx8s0u7adEkZpdRbBe8CdAUqZ6cpO?=
 =?us-ascii?Q?raEAzWrwaofDjd+0JBeW2SShjwLlkj40rAE/MRisuqmMOdVaJRZ+IrmIKO8s?=
 =?us-ascii?Q?OScMT2TDexXmGIob32dxnWHZKaTg489upbs0dB6D0sAkk3CbpIo7Jcazip7m?=
 =?us-ascii?Q?BHLkESqrlqGe9QTEVVySMScFBpJElPLElrqzByuqa1XyZQ5Ir4pRwT0MPbXp?=
 =?us-ascii?Q?9x3VYi3mmdeQ702S4HzBKPm9w683tMFnfRht9RCj3om4yn7eEFfXk1qtURVQ?=
 =?us-ascii?Q?/0boEJX22jjEO64RTP+ZKrg2hhCZTZAan2FfvoCZl5jmSHia9PKe1ZzQ0m+C?=
 =?us-ascii?Q?vn03rgmOyt61a9A8EAOP5DAlpKYYGzd9830UYLvYN96Z5XGFuWfPz2Ljz5n6?=
 =?us-ascii?Q?/avY6VvzjKnkyH8a4RrTxNZfSton+vHLTtGZPWV9OD0X4ZTay30g6Y2qyiXq?=
 =?us-ascii?Q?fMm9A89teOZ/fHU714mkQNcH?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91a9ea4d-3d0d-46ac-dd99-08d903a518f7
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2021 02:36:27.5031
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7K302udJaqDOCyoXYHMJCI4O0RxJ+/Mlv47CWtYhr4u6BQ3VEv1UnObaSF/aq6yNiQzMyV+DOF/L9oKrxn4E8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5193
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

The default behavior is to look for a bitbake command,
which fails and produces a confusing output of [-1:].

[YOCTO #14208]

Signed-off-by: Yi Fan Yu <yifan.yu@windriver.com>
---
 scripts/utils.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index bf1d989..4c73f81 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -330,6 +330,9 @@ class ErrorReport(object):
         elif  'oe-selftest' in command:
             report['error_type'] =3D 'oe-selftest'
             failure['task'] =3D command[command.find('oe-selftest'):]
+        elif 'yocto-check-layer' in command:
+            report['error_type'] =3D 'check-layer'
+            failure['task'] =3D command[command.find('yocto-check-layer'):=
]
         else:
             report['error_type'] =3D 'core'
             failure['task'] =3D command[command.find('bitbake'):]
--=20
2.29.2

