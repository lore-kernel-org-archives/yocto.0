Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.5933.1628149186520571244
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 00:39:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Tbgwxfmp;
 spf=permerror, err=parse error for token &{10 18 testsso.windriver.com}: permanent DNS error (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38513e44b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1757ZXKD029366;
	Thu, 5 Aug 2021 00:39:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=l1F9EZB7A4aqNouT1cS5NnFUqJatyzBrViaTX/fU8R4=;
 b=Tbgwxfmp+pk0W384y/EhD7pa8OINrcVo+Nx7WYcqm5w+giMbzroGT4/l4twNg7vyf050
 OmmglZDY5jCuUC5kD4BcqsDssxOVNjBVuqxTYvuDihq8XomIHXHJApJgY5BPsgHHAqAX
 6GpORVBbf5IWsM22YsgZC/Wgl/qqxroZBpJXeveXkxRcSRVSqOOLb0MWBU8WvZI6ktgk
 kvxl1nu/gVdybvr4fRQpOcu3oaBnRakWUQa92GYACu8/9hhqP1RSz8T0jOAlwLiHSDOT
 DPW93r5nxpEOfgt2J6qOj62+WGGNKTPZQzOwsGghSObl9aH2/WAMSZcXAhGAT8UL1TtV Eg== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2170.outbound.protection.outlook.com [104.47.58.170])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a800vrcwr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Aug 2021 00:39:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FGAI8ysS44pZ38Vk3z00yQIhe5CiNczWjmzoogk9Jkzz5gRp6VYfSOcYHSLfUn6yHiCTdOpfSsfgsW1vuphdq+i/U18OpfqQRVrztZnBpAELSDjz4eDwmRJ3H6ePjsmcZZ7EOCi4Tr0HoVgrDd9Nf5T4/PpXDsCfDzqXFY2WXy5kvrzeSHIt1SlCd+ZGXJJgLx1Nc2SD9XCbgxLyn/91FtiFQg7TTfPKbZYr+qJQgOstzvvUm182c+J8PQbJRCZkl8CzkHm99Tt5XJTEyLTcGwqDmmL6AgKVytCtJUebh4mtqFvi2l1U2+OFPu3m39VlGH0p/mgpU7bSQj6KE6quNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l1F9EZB7A4aqNouT1cS5NnFUqJatyzBrViaTX/fU8R4=;
 b=V8z3mqBGsWCAAU61fLdiBouypjegHJnxFrUdY39cyk4Lo9Yk3y8BbhAUhMyo3zPdCK8d0c9cHneBcGej8QvnrfS24ClmmppoS3kMjDT/mFRfr4vAriZ8ymBsT9gJcKhJZFqhgy3HRs+7mtaO8zfrkJjzU9h8mAe7GXFViTvSj7eHGuTHkJHpHugyz1LpofFNmETbalYvrDwCbYe8ewH+FgDtpr/LmEYhHdoUdxBySxpzzWg38WsWgXZtZlBq31cSdZ+Wlm/9nYvzS4ZJmRWwOjLSYJ8gCoPwMegwc96Ocim7KncR2mO9nP3pNFvbYAVQhOiA2IHSBdk7GTWhiblLJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1264.namprd11.prod.outlook.com (2603:10b6:300:27::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Thu, 5 Aug
 2021 07:39:43 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 07:39:43 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 2/6] layer.conf: add honister to LAYERSERIES_COMPAT
Date: Thu,  5 Aug 2021 15:39:26 +0800
Message-Id: <20210805073930.382397-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210805073930.382397-1-yi.zhao@windriver.com>
References: <20210805073930.382397-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK2PR06CA0016.apcprd06.prod.outlook.com
 (2603:1096:202:2e::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR06CA0016.apcprd06.prod.outlook.com (2603:1096:202:2e::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Thu, 5 Aug 2021 07:39:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5cc5f707-20d7-4412-6ef6-08d957e4309d
X-MS-TrafficTypeDiagnostic: MWHPR11MB1264:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1264FB506217E7D4A3065C72F9F29@MWHPR11MB1264.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:345;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PhaeIdzwaNCXMFhAqVEPvrNtqUX18j+IFOZzzwvKEgnwQ2f2NMPbINuoGZwbKm0ayX1nOxh2rxGFOtkjKY3Pv+Yuaq8Ud+IAqbXJRAusW7CX4C6fAlXjgor4cGMazaiRjbnJjEHiNblZ75upjCaFosLn1KgtC4bLiNRey/AxkEpQyA36rbW/AxWSezs+mkQmja/5QuBbZ40HxcBFdluZckpofeK1ADn6Fp9cu3LtCppjdqgC1N1VtI+ze9WBbUCJ0uF4mmsi2re8eUjMnkGabvUS2iPQw7i7bdcmylZv/W7eOZNn8oA3wF0+iCpdmvMbRVt762TOeVIOiRNYojq9puTtcJuh8rDlGaYSU8ERxVbPtCoDVUnVsDY8XKN1jd+DSI3hoo9++4CtVpKaJhSCrzcMF4zvBLiDRiXGYNhqeXHO9YTklPdkJzkcUCpUE0EpqNQivkKND4dQ3+XimEXB8kQMv4qDQ8GEHQIKClki1LExa/y4Jqd5xnppibSTKYU4vKxameOkm0p8YfV3unrGNZ+8WAKR7WbawNgLMmjattRIEbL98COOPPC5Yu1ZvHF9TB059RwweN87RXu9+x1XYC+d2Q80RAhoYOvEZ7Vyn6SbLHY/euUs8q7KSlt6/ZXpjNVHeAVi/gz+m7ELKls4Uhds1Z9YAJsju9WEpOICN7PR6fpNqthVYRK1S/9txu24VKwH1HGfswuZF/yioGKzMw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(366004)(396003)(376002)(346002)(8676002)(1076003)(38100700002)(38350700002)(66946007)(44832011)(83380400001)(6486002)(66476007)(5660300002)(478600001)(6512007)(6506007)(316002)(66556008)(26005)(8936002)(36756003)(86362001)(4744005)(2616005)(52116002)(6666004)(186003)(956004)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?7p/1/RY6TZkahyppFKRq7ir7jm93f3Ep5zJq5eNHLc4yqqiw6zMk//3+6oYW?=
 =?us-ascii?Q?RTxPzj1H3SoqqiVMqLxxwnIdu46weBhdNehPeq1tJg+Y6Oy+cxC1c3Pmjj3h?=
 =?us-ascii?Q?6XZmkMj6ELQ+mn5L7tDf4qdaMBG8v+Jc+huUX5Q9jjUsLHsALOIWt2GxUAmn?=
 =?us-ascii?Q?Pbmt8D/2TLXw16qTd86mY2xB4UDzSas0b5uTC+xYT+LJHzWfiSIrcGLs0Eg4?=
 =?us-ascii?Q?OdGGkNal2F4QiYGMWszBtJ/vU/7V67aIJjYCSdcgWPD/g6pERHICaIY8EWJ4?=
 =?us-ascii?Q?UHKZWchZthYmQ1aXjvPOuBwxyJo2LjgTIhloZ+RM6cht3s2C1NTs8zudkBoN?=
 =?us-ascii?Q?q6/j3zbtiWY/eqyRru0LWaVBoYAjDMWk7iM2CJjbKnTDmTUceGJFNvtBHrC/?=
 =?us-ascii?Q?O+EXfYQKjbR32c68gaKR6L78mURY4ZRf4bKGqOrx48AuEphLnG6TDKp4tYpE?=
 =?us-ascii?Q?/HjvN7OczU4EN66LI0oAgxs6ffgwaEPohOgjiDbHJDeCyL/CF7BrJH43K1dV?=
 =?us-ascii?Q?dF5CY2blhEUmC4TxTnCPoYgalloAIi5wDzFXKj/r8Oz2RkxZvuZwIdQM65vb?=
 =?us-ascii?Q?AnBoGAXUbsHx8ziD2IssGfXusor+eBYWaYPgX1Rdt92M2UoE/q/5dHq+P5tv?=
 =?us-ascii?Q?/NNDuoVXm57m1qPWu8Ci50toLsG7AAOkfJyxXktllyARbRzGTI7hthAqthca?=
 =?us-ascii?Q?3cRkYkOogGOUopUo30mF0sbrakE0UwihFvQRaaobXQdqMI7m8QteVU/DxuhM?=
 =?us-ascii?Q?NqvAsgEjqMdVbAD39MyhdjggvP2fLSJy5CfFMxya1hResukuPKAIb9oLp1Nb?=
 =?us-ascii?Q?P9nrEU5L6+IcX1b8rJr5CYOc38pBmO58tt7gqRwuWGjcnL3A7prcEF4QNRVb?=
 =?us-ascii?Q?mItawUztY5pjqJ9zB5+/WMGkCa2I2tpL9pxDt2Tl4jEOyCsT4LL/tffn6Yz3?=
 =?us-ascii?Q?JEq0m3JJzjWOJoAPKoucTTR6pwaY6bdYLmzsow41ulTzG9D15Us9L/F63Wgz?=
 =?us-ascii?Q?WNs1brTO59S3ViuwX/k3pTWHql4OmqJtDUgDvjO2v9Ey6QL8f8u994PzWmCd?=
 =?us-ascii?Q?sCOxUkqGO6pNOHGhsLciHfI6Dq3ugB4CoIu+4Rg1THMLFKlXcQFQ/AVmwDbC?=
 =?us-ascii?Q?M4tzcL5wvcedCP/AomSuCLCyLerrv2vbzaVFOMkFBzOsnZW0an5CeV5+gXht?=
 =?us-ascii?Q?tbJGaIfC+ApAMPK8XuGWKCojB1PT1DLyygTVfViO9vYmX9bwvn9/Otm9zQpD?=
 =?us-ascii?Q?fzX9TbmhVpWgW8wV4th9lwGh4B0XZK3hJ9fwjFEG3YIPC1s6MyPuVUIiSaLM?=
 =?us-ascii?Q?iYiepiGlobakqIPin12Amao9?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cc5f707-20d7-4412-6ef6-08d957e4309d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 07:39:43.1849
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5d2H7wQ3SXaHC8InWRW3nAZFI8OgysjnwFCzUSeqwMM8PvztO63FPYDXrg5Ekc4fedSwgD1arRGr283R5+zDHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1264
X-Proofpoint-ORIG-GUID: l_f_1NkaQWJGMApGj5nQYZpQkb8WEt0i
X-Proofpoint-GUID: l_f_1NkaQWJGMApGj5nQYZpQkb8WEt0i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-05_02,2021-08-04_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=990
 spamscore=0 mlxscore=0 clxscore=1011 phishscore=0 lowpriorityscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108050044
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Drop other releases since they are not compatible anymore.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index 56ddbb9..edc7cfa 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -11,6 +11,6 @@ BBFILE_PRIORITY_cgl-common = "7"
 
 LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
 
-LAYERSERIES_COMPAT_cgl-common = "warrior zeus dunfell gatesgarth hardknott"
+LAYERSERIES_COMPAT_cgl-common = "honister"
 
 require conf/distro/include/cgl_common_security_flags.inc
-- 
2.25.1

