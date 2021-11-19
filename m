Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A7C1C433FE
	for <webhook@archiver.kernel.org>; Fri, 19 Nov 2021 15:18:41 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.10427.1637335120044931694
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Nov 2021 07:18:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=nmb8VoqE;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=6957fbbf1c=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1AJEZbwR004010
	for <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 07:18:39 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=5NoB7NoQdexYK6HDRKdr0Xz0Na1hRAjtxmKl9caM3iQ=;
 b=nmb8VoqEDeOnWXJl9cnqc4ikzNImIp6itkEY/1XGCgqz6THHP2TX0CVpRJuufERSzLy8
 g8IjMd12oLniZZZXhgvyyglJMbm1LQJLKbx7qUBX+r4l3T+Dl2RrZPUEYZUyqaahZZjn
 B8cGBRNN68kFQsZ6pE2oIqFR+XPIkw7Jw2qhHP6+5vhsghFO80dR1RajXR6Gkx02fgc3
 3xX7hXMhg/rYkFF6Yh97yHylaRR/jyuwsYhJ8bII2zDyYG9qanplDLnV1SwtJyl4TlVJ
 aUyh7Ko4gG2F90ktP6rqFiQK12Fv1wsbRgC5CZZAe66Vrjt7ZLpAhn9asbOjFmjSpvCB 8w==
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3cdssgryab-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 07:18:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HyU5uO1h/Y08Hy/uycpH/TQYbbo7Rmbp0bjwTikWJmoY4JmSrbCys0SQxUWr2Dc89rI9fV9Fcp/58c1aU5yqivsxmjLeOubt1NyYNPV63nuxTBW2pjaBlfEzKKhxY/B0xK9RmakTppZLGH01T7Hk157I6JUZD2WcWe8bgOBUA2/PCGCikmQkwlea7PETHh1h8xCOUM1wN7Grx4Qi6qhqxYwD1qYVD9rhbmtYfJoX9vXJtSVzZ19QqPCnA3y1PW6R9q87SjFXFt22G9Zc/okmyz6FBJipEDAFdCFdgNNlWeUsEVRR2/PpUMUNOxeBUZNZrpB6YMS6BalUifFS5JDd2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5NoB7NoQdexYK6HDRKdr0Xz0Na1hRAjtxmKl9caM3iQ=;
 b=Ic2TGWaDYCV14T2rOvCpjPTD7yeK4jb++DWjPR76pV8XqtcQ/jSD2QjGQhWms5DtJ3HQcSuV4BaaTAmud6+hE2SBZZ7OPFr/GZZtM3jwvAb+qgNUxAef7nzGICmC6acM4+xmlYB7NZUEAVUCsz1uuGxaT8qtH8/OGqkHvLD5cYSqZn10T3QZUn3/xdDU3HUXruZw4ICaYxMeUPXNvDeILwHtiyaafCN7RULXFVR8uSiNeWBlcjk88JKfktZfdbGd5WpXELcOACIQLNCV9Xmo3C8aPuSEmrrvQ1N8dVxCYDcIji7tjdQPzckivNLiP6a28u62fYMxu6Qh7cegmAr7Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1984.namprd11.prod.outlook.com (2603:10b6:300:110::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.27; Fri, 19 Nov
 2021 15:18:37 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%9]) with mapi id 15.20.4713.022; Fri, 19 Nov 2021
 15:18:37 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] openssl-tpm-engine: fix warning for append
 operator combined with +=
Date: Fri, 19 Nov 2021 23:18:24 +0800
Message-Id: <20211119151825.530200-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK2PR06CA0005.apcprd06.prod.outlook.com
 (2603:1096:202:2e::17) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HK2PR06CA0005.apcprd06.prod.outlook.com (2603:1096:202:2e::17) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19 via Frontend
 Transport; Fri, 19 Nov 2021 15:18:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fb1c01e2-9355-4dec-7d03-08d9ab6fdbca
X-MS-TrafficTypeDiagnostic: MWHPR11MB1984:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1984CA14F09B5992181C801BF99C9@MWHPR11MB1984.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aTQQ9FgVZhMm1HTOV5EcuIG+S1OAxU0h4s00ctSNfo4qjxnDMaw31HFG3dYqj3T0HkbSY96lZju51CNtbX31xOFyOlaFtFV8BYZkh29fQ+HU2doYnMGhA8BGbjcd3p5QIen2fiZkdZNWb9JFgnCd6rIbGbjaDDKl0gTssLufi9AC86RhFhYvMGY1XhYgYpz4nP91eroDuzs4yoy1k/l9AhZ/x6dc0Bdm5SFAYop8wiq/9d2g9A4vi8epiXfwJPU1DK1u4ThXJOeCoM4OxA8lUqbLpHgnaxh8nM9MX1/QFdIG2XbsTDccC33qHXzSihfYJ+wA4rcOO81EzeX6EnfoFnLXP6+GUqSB9O6WRVTa0Mutq9Sg0GA/wp44afArd1vEfZpWiVY99t9uEHnTOdBQ69rLw44e54JytOdD68Wm8ylr3L1wg8FT0R9wzq+SRJ79mRCkkpqEAWgy6G5QcG76uDyN19nrAPO/i13ANBS9QdMVm9g2VO3a4kReNVn+fuWzsyN2IcL+o9a96TbQj1l/stzP6VkY42CTB6YnvKsUuW5zE2ixzUUBm7gkJiQJMAKdoPqzizlBxAb4sANLfuw5YO9WZM/uX/7OmV81i1EBGeBmbkX+Qg+GkS8MtqYKhr0gWuCI2fiYG4mhHByHPeAEFjv0mRi02J3ItF34Zs61DLGLAduLXXdzC58ioks2fZE8RqwyvtrdZMBTSkeZ0fW5Rg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6512007)(2616005)(38100700002)(316002)(186003)(52116002)(66946007)(6486002)(66556008)(6916009)(5660300002)(38350700002)(66476007)(86362001)(8676002)(6506007)(6666004)(8936002)(1076003)(956004)(26005)(44832011)(508600001)(2906002)(36756003)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?WQdmeult7I14iPFHTfDlRJ63RHaMSTRGUs3U7yYahQGTeRgVTrTD/Jzrchxp?=
 =?us-ascii?Q?efn1C3kCPKDW3t7P9EoPc4Dw10cemvVqN4k3Gpl7A0FHmn2bDNTiX/8V4aeT?=
 =?us-ascii?Q?p79Zz1Xu1KHKGausKM3rgpXuQv7HQtLyuyaL9BnpSN7YK0VgOniP9sWOfNGB?=
 =?us-ascii?Q?druUy2Tcf6+h/61U9SodPTWYvzu3B27x5vnWjV2k4LqYsiwFTzAFqm6azlxm?=
 =?us-ascii?Q?0mK5//VJerqnb8EXNjogotnidUYf1VXJyliNNOkZPDqL4/io1bBt9Oxsbegi?=
 =?us-ascii?Q?bhUP00z9sKNHVnIQdJFD9ieFDi8eulC3+C8Z2nqH0aI67TIpDDr1ED19+kBr?=
 =?us-ascii?Q?Xc/miux5+gBvILtJSjUhvv5Hudo1VisunQhx3aJkAFKyc0MVgLkE40i62sRo?=
 =?us-ascii?Q?m61qQvFhAiBlSm1v0ZyQ+4s3g6N/hRoZ8Ks4U/6iIcN0GyZnvfKe9Way4HFt?=
 =?us-ascii?Q?e1k5DM2ffkleK3pevOAJBiSonqu1AFQ1NGA93SFLLDFO7omX9nQ/rlexMYxs?=
 =?us-ascii?Q?nZdawTnSgy2uwUhFbt+4smjgm7CXrX3x/RDuieZgfWucSGRsJy7Yv4nXlIkk?=
 =?us-ascii?Q?Q+SpIcp8+BkVLbDW2QNzog8FEjr9BuRvHtl1Og3JOyWVfhsso0cfdIMTwJZH?=
 =?us-ascii?Q?bSqjWISOzjTEMJeWWg3Ncds5DRoZQknY2BBQsCAo39DGfp79fwB4dVILJeZ4?=
 =?us-ascii?Q?/0sO6/jO+bUs+jIKsJFIRGDris80ZmY/Wk6Cfg9HTiDOAsjjDWzM+31ZMMAh?=
 =?us-ascii?Q?ZYsQWJIFl7QORP74qfL40y8zqsebCYjGR2YXtPzIdldpxgNo+nA4WD7ede8K?=
 =?us-ascii?Q?LQxLOSUkuvlAgvnHsLIz/qXZAtSpzwWya5FbMokjRMV/RYsXINbbllwm06xE?=
 =?us-ascii?Q?2n07uExxb/D261aWFdpCaROezwHVInC/utdtNvtz/gGCpEYP7/y5SRBVXuW8?=
 =?us-ascii?Q?okEaXSAN1D7tRvA+H+VvFEzNOe0NIb7/eGAmM0nW/SA63aEFQj8GOY+m7hw7?=
 =?us-ascii?Q?mTHNlI/E9+EUbLOlQlEOxroWLB6Q1xLxuYxk0CW9LIIF9wZccPMLPdmRqjqf?=
 =?us-ascii?Q?oboX7KB7JSYTREl48dUkC9IL+kc85WSv0IY3hP176k0scigUQeoYYNhcDrMk?=
 =?us-ascii?Q?sNDmc/BLMeawwwPM8mBT0tlOFfwNS6NGAMwiofWEo3T024Jp0cPiwfp3ewas?=
 =?us-ascii?Q?M0NZPz1feAkMswLK78zOKgISXYvf2Seh95fmfQ+Mt+GJ57ekjexpZGIa47/w?=
 =?us-ascii?Q?bciTSDnJ7PpXuop3rQL4E3KOJzNnf1FDdAk7JR544yDE4v5S/LTrF4gU7Ezr?=
 =?us-ascii?Q?te7p9EU/bJZSpeY/C6zbjm4MDVLM11ZnulXOJvdSKKCpWQl1IraRtFgC0IcG?=
 =?us-ascii?Q?/B0zY4NjyASYrpWFyK0NlzA2kFnM8WxrX2cInXpkAkgOLU3kzyQIeMv1aiI6?=
 =?us-ascii?Q?1/tvAVOAZj5Iw2myw3K6zUw0ETMtqCuA07F7sTaZ6PBOEGXeMfDcqCZCZWVd?=
 =?us-ascii?Q?111ljHQhGvJvS0aPDTBGQgFr9S4eKMS1uOucXMAiQ3x42HsP+0J5kqUCJShY?=
 =?us-ascii?Q?xWQomKn9H3oT61pOyHPJ+BMcACuyPAf5rVFB5SZQRs7czdQ5QXOGq2QlfQ1X?=
 =?us-ascii?Q?0ob3tiRDnGeHWxjecZ3rx10=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 fb1c01e2-9355-4dec-7d03-08d9ab6fdbca
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2021 15:18:36.9384
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Yn2bObLjPeWTiTb85E9oGueWspm7ueNThnwumYb2x35pNrveV7C2nGMA6a7zCbkFRPgqGveY83IikzJLEbCTcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1984
X-Proofpoint-ORIG-GUID: WR4YHvqyJy-r0MUQcObIFFewNT2dpKCP
X-Proofpoint-GUID: WR4YHvqyJy-r0MUQcObIFFewNT2dpKCP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-19_09,2021-11-17_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 phishscore=0
 spamscore=0 adultscore=0 suspectscore=0 malwarescore=0 mlxlogscore=612
 mlxscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111190085
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 15:18:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55378

Fixes:
WARNING: openssl-tpm-engine_0.5.0.bb: CFLAGS:append += is not a
recommended operator combination, please replace it.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb            | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
index ef663eb..2b969ed 100644
--- a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
@@ -35,10 +35,10 @@ inherit autotools-brokensep pkgconfig
 srk_dec_pw ?= "\\"\\\x1\\"\\"nc\\"\\"\\\x3\\"\\"nd\\"\\"\\\x1\\"\\"a\\""
 srk_dec_salt ?= "\\"r\\"\\"\\\x00\\\x00\\"\\"t\\""
 
-CFLAGS:append += "-DSRK_DEC_PW=${srk_dec_pw} -DSRK_DEC_SALT=${srk_dec_salt}"
+CFLAGS:append = " -DSRK_DEC_PW=${srk_dec_pw} -DSRK_DEC_SALT=${srk_dec_salt}"
 
 # Uncomment below line if using the plain srk password for development
-#CFLAGS_append += "-DTPM_SRK_PLAIN_PW"
+#CFLAGS:append = " -DTPM_SRK_PLAIN_PW"
 
 do_configure:prepend() {
     cd ${B}
-- 
2.25.1


