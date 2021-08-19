Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.65783.1629348459497677223
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=QH2kPvah;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4ivFS014493;
	Thu, 19 Aug 2021 04:47:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=8Jh/KPcik1Wz6mWnTiChc9NTTvruMaS3kbsw7Lw6yCE=;
 b=QH2kPvahHECs/o6hRsqN6myg1XVcn8YHdmoV4T7yhFJ6cl16eT5rjqZqbPF4pu+EfeR3
 foprl3I2yB3MCO8v3OY6Zbcsc2q755KvHM+fzyGqE2jTw3FsMrhvmr2OIM8eTkQvv8P+
 S+sy7MnAjDoaIHXdNZ0SwT1bjYAumqOl263g9MZFinyTi44qwlJkyHrfz1TJxqXPJBP1
 X2CTHxnPtmvm2InNOdhdvyT7U5fQgg+nYu7yIYlwT3DU3eW8dm3+OT++fGALj8FcQVy8
 cC+49lBISugi4l2tY7zyyqUlZ8LrovrB1FGDWX+EBfcIG63iIxdcoetOXXtvpjFMkZAE 7A== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ahfs9g0r1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Aug 2021 04:47:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npUDRjkwNtHWTdelN9TZeN3TKJeLfXIO7Jzu2uvB0H65A6mbRglsv+Wv4iR9VvuU2wwJ9NtNS9pT+o93Fz8QP/nZt50DxhuSiLgjo04kATTsw3XvSId3hpOyb4AMJvhht/AosGObfPBzywHn3/EiDuGdDyE6S/MhGMsrG4qy+potrgnq378vl4NXiE5L0epyMR2d6wF2KBJUwjQ4gsKGENXMVu1QcJXMqBfXG9IKn/acnRxP5/KAGbAMWni2kRRHNKruGGCCVVTR/bK3CkJeZKkHzFFuwfH6G6X4BYl21GwDmq4llKx4VopDPU8A9spbjHtJ/FYEw52hN0TLREF+ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Jh/KPcik1Wz6mWnTiChc9NTTvruMaS3kbsw7Lw6yCE=;
 b=mOakYsc7XaVDUYNTrErTFxm98k1a55RsjShPcjFF63TSchLkZYoLBvHzu0JKD+Noxmai20Yf6VtKklVnO4d7b/UN858Ll0qhXsJlKHKin7Z69Dfs52zt3PB96JOdr10f/wrRVWQyc0FParW1nC1Egrc9mFRfVMmHcNzlH3kyuUgvesf7c9FZ9Fl95j4VXFbMVKUtfC+6NAmefdlAflioSleIO2qwyYe99MlTJSStJJF5d6lf9PYYeoODnmF0D00VOedkPUlWDiKrLIRUNvIFi/XnLgL3pbgshyKG3gDKkfR3FZwvxEWDGi259L8flF4EVBZuwSbvkDl0TBwZqBXmgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.22; Thu, 19 Aug
 2021 04:47:37 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:37 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 12/12] python3-networkx: drop bbappend
Date: Thu, 19 Aug 2021 12:47:08 +0800
Message-Id: <20210819044708.105282-12-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd8e6a95-c900-4911-623e-08d962cc77c6
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4867EA66E34F896820FE66FAF9C09@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:111;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	y1wIve2dX3X9Ghv28GcraR7yP73MR7KebI+bb2+3+ShIZxaEJqvp87WZ+Vpz6/8K9mZglUOaryZh2X4XM1UTFHsFyy4FYCyh8EtK4wxU1X1nV6N4dkJc8MTjJpOmPmwUWfL1xUpeeRx8zfjtQoNP3Iec+qRI2R5z5ZZ54HrJ7aVue4xBf/S+28KAIH1Je2gRL85snhChkrzKL/GxALvTvZ3mgwzBq30Mgk5bFh76CgvVyBWD+ZfQHycxgChY3zuXcKxBmo7gAh5YjPax5zpcunsDDnIpbe7F+lIVinAg4IoMzDNYRbRMqTipO5W2uj7p0KmXEEtpOcTO+zEXqrjlEHahuK12P/AY4723gapSBixbOOWWtjtrEJw4sPTt9U5VzrwGLxreqmBTzQbTvUV+EB22uTJS6ryi5L1Oqa2a1mh+iFPvZTH/OlaJpMaaoJ99RsfOJDlLrSytb0xMHvz5qTNf048QJX3/DhZaYSAcOHfe4VeBCDs4s0nttbY5kez2E8xQRE9Aw2OTwwPRCEBIg5D8HT3HVGmxZ+Q18jebGWrurTSX8lSGnceTQdzbo/5wf0flPYakUk7hiPqI7scIetHybC5AxRTJr/eWaNttx/3CaCztsUw+qrziErmuLoOzzcnZyIw0LBYCj+9Uxgp7a9pfG3p19z/2T9HA982K5z91NoQ2GAyJrNAj9AJH4To7RblRZZvipYEJsGzlWyqq3w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(6666004)(52116002)(26005)(186003)(6486002)(316002)(86362001)(4744005)(2906002)(66946007)(6506007)(66556008)(66476007)(1076003)(5660300002)(38100700002)(36756003)(6512007)(8676002)(83380400001)(38350700002)(956004)(2616005)(44832011)(478600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ei48QmduUFDRo7gMSaYoKMvo2vPrL36CmCIyDn1nq/RRS4o1mq6LqekHBNEO?=
 =?us-ascii?Q?YjpeU6iMQ427Gh9aHINBryb41fQTNjtO8yJV548E6zwNhYVbLwk0WL2BWPxA?=
 =?us-ascii?Q?lIfCo3te8jhLdVc8e7Jz+ZlVIjspg8IP1JopAbS9bcx9OdSJMQfPPClDHUDK?=
 =?us-ascii?Q?PYjep1zY3fgQsymDeiu1hUn6DAixgO2GJQ/o7Aev1Q4XsLjqlqkHrIT4IC8p?=
 =?us-ascii?Q?MsDH9XXYpCbibVQvjYeOgxyODag3ai7rAml3wPezRYSsfmti5drPsNjDY05Y?=
 =?us-ascii?Q?6AyZh0G0AmQlbmBPqsiTRGxDv4cJYW4gOmTRj1MyGXAvsu01cZ4InpJw5D2l?=
 =?us-ascii?Q?Qms3HPP6jG2jMwMRNvdW5mJbStDtXlV/yBhklnrrYlZStKS9/zYH2tgpcGV7?=
 =?us-ascii?Q?WZcBJeyeNA3Cyf83B05njay1NC9w/1RoPUehv5/HizreXv596rVvvBmAeWcp?=
 =?us-ascii?Q?M/nB0CIwYf0hCwwjidKeNcEWbEBU3VgagdGXZ0BhwzfoRQ12fCRbL4kBOp8s?=
 =?us-ascii?Q?ndNo8d3e1m+4naWzAC4ObGNV8HMPQmatwtFy0YjexwM8zV0q0oqVatBEvgC7?=
 =?us-ascii?Q?RgpXaDX4yEqRgPZxg6jDiBk7MIu1i+T6CbCCgq77JUuq75VztgAkAQgPv/bX?=
 =?us-ascii?Q?R+IQk1WNMtbP01VzrJSK891uIKGPGQo0Som1fHq/gIIDThiZYJ+kvkm0AcHG?=
 =?us-ascii?Q?8osJVPL5PVDNA5ZfDQhB5ikPDwlZPCEMtEgApjCepIz/F0GLA+7dSwyIGbFj?=
 =?us-ascii?Q?yTQfRHMNB0UrD/ZHVsa6eC1OWWe1UfYeExbdYZmb3JUVDg9V2RkzlEuW16nR?=
 =?us-ascii?Q?ePbBc1buxmbbtx+AiPhJbX5XUzhALus5pRzDskyjCOd6swWkOr7Zy3OiCZI6?=
 =?us-ascii?Q?FLI/1oZxlhV+fCr2Hl+iR+j1xm1qpd4/2p928zoi/VlPJHXOm9NYM5wb4oDl?=
 =?us-ascii?Q?bJ7U6qzInhLV7u1v+3BlaD+p6Tq2WERzdbms4HVrot57xjpJUzrQVxsL/Ffa?=
 =?us-ascii?Q?IpAeQrc4I3xFDQck+wMX3pXgKsJ4xVGuKSSZwNYZvELlDqyA01yWlG95+z6K?=
 =?us-ascii?Q?6xjXxWQGkFHgaod1r6cxlsWBYkwO5arMMsTa5b3FD7r9PZFTePHS7kO/oEgh?=
 =?us-ascii?Q?xkqbJ3GEHAhU4mhJ8tgNL/u0LN4PBeL0BWxxL4n8UGiwiMwtaSUcWLN/Shep?=
 =?us-ascii?Q?eCSaXGnnER+IBSYM9Q8R0VI9PTKWFZDkRl0u5FBLpRJ8DU5E04QIAWIkwZbv?=
 =?us-ascii?Q?JULnQhjfq8hcGHaxRJHIyzfUSZy1eF9spiaEdcEllcJLv9ypFvaMinCCP/PX?=
 =?us-ascii?Q?u7uyKzBu9wS4XMdCDqryOuHb?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd8e6a95-c900-4911-623e-08d962cc77c6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:37.4763
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J1wl/rFT6LF66+IRHZfdbaskYGgDl/yPqiDwftcit8hmS3L6z6Ur2hjlc1B2Xp5yIUMV9YLRiJ+Rwz4qErom4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-Proofpoint-GUID: xP-MMBwpRZEHTwBgddJdod_iMME8OPQg
X-Proofpoint-ORIG-GUID: xP-MMBwpRZEHTwBgddJdod_iMME8OPQg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 mlxscore=0 phishscore=0 mlxlogscore=587
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

It is useless as setools-native build is disabled.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-devtools/python/python3-networkx_%.bbappend | 2 --
 1 file changed, 2 deletions(-)
 delete mode 100644 recipes-devtools/python/python3-networkx_%.bbappend

diff --git a/recipes-devtools/python/python3-networkx_%.bbappend b/recipes-devtools/python/python3-networkx_%.bbappend
deleted file mode 100644
index 3bc71e0..0000000
--- a/recipes-devtools/python/python3-networkx_%.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-BBCLASSEXTEND = "native nativesdk"
-
-- 
2.25.1

