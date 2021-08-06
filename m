Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.1724.1628233795261241056
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Aug 2021 00:09:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=jxy5rNhn;
 spf=permerror, err=parse error for token &{10 18 testsso.windriver.com}: permanent DNS error (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3852e488c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1766suVK007714;
	Fri, 6 Aug 2021 07:09:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=QtuUXpowqdvL/C1eeKptWkOk/emNJ69czOWuXncdWA8=;
 b=jxy5rNhnkBTxJLF05hAYn892vhwnOuq5jRoJqzqCXgMPQykg6J5JUXyeM72yVSN1F+zD
 LtcnHLy0MiJ63gLs9aF9PVcHY00AwnLmUwtChG/v+pDbQAHGSoLRjfVzDeqFT0DNj2i6
 8FF0u0iPjzZU37xF7CrcUUjApkefyZTaBzDk5yOFiOCPbW5BoexJ1sYinaU6AyI+4c/T
 pucLqjnm8fQfVkrsz8Bq9e9qkzDiEQKetARE7HJl3mXDEAdjJb03tRnG8ghv0NEiUG7G
 +biv+xN+w6GwIXTSp9VSEThDBqDfJgnCMDJxCQ3rqnuuCoMa7C7PyXlzpefj7cRrQT7o OA== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2174.outbound.protection.outlook.com [104.47.55.174])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a8nh08byp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 06 Aug 2021 07:09:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwUDcYFHE+4ESG9qE/RsBVqDBoFhZ5s0BejctaE14U2M+FeT5zqqQcvUIKS5tYDmavqgIKVVTEfnonXf3gbiHFnvKpHw3HtvlvO8G8Vuwy8P3E//TJDaEy8NRVIvZfzJRelZ2zohS6dVJQ1GKoDJEtVPkEf9CpX1P4+9wNvxR+QRIiXeSl7iZUZCGf5NfzXxg2EJNi5bEHMA0UnDHQOXeUuVLiYNgL+GcqHyGuPtQhO2QHjecuff7xsvV/sTT079wU6Kh/3Ce20XzSB/WpnX168DCyio26jwGYteBNgWX/S9jyXhn87DblWlQai0rFmC77aL1/V42uhuBY5h7E7CNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QtuUXpowqdvL/C1eeKptWkOk/emNJ69czOWuXncdWA8=;
 b=MDAv2QRlTEHdHLLamWx10/ltpArAwieTbv3ZSFr7/qSYPqeA9ohvjK2FoEd08KxEihU6QJ1niUTBM11YJnEDw4JlweyDc+ZWrkG5ETKYNqzokfn5uicE/odfY11pi7usG8MNy4/by+Na0Cx7Xe7h4x004YGBWU4q60zbZJM7e3MVUCj/C4gB69yho+kyA92ymxXX9BIo0sESsed7nhS95LSV7e2ymfvZtBeT76Bd0HXTxXsGboUD3uuFJAFY8OiYgGt2EImSynye7JTdaOIXtqhlVeeWGp12ymj7Smp9YIuKI/jz+cavz+4EojcrGQEcyGILf68Idm68nBeMHeq8OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: kernel.crashing.org; dkim=none (message not signed)
 header.d=none;kernel.crashing.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Fri, 6 Aug
 2021 07:09:48 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4394.019; Fri, 6 Aug 2021
 07:09:48 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: mark.hatle@kernel.crashing.org, yocto@lists.yoctoproject.org
Subject: [meta-openssl102][PATCH 1/2] layer.conf: add honister to LAYERSERIES_COMPAT
Date: Fri,  6 Aug 2021 15:09:33 +0800
Message-Id: <20210806070934.413792-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: HK0PR01CA0054.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::18) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR01CA0054.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Fri, 6 Aug 2021 07:09:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d386a887-1e7a-4c68-742a-08d958a92d40
X-MS-TrafficTypeDiagnostic: CO1PR11MB5009:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB5009773FCB9C24F77E868FC1F9F39@CO1PR11MB5009.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	697OGpwbFiSfOfdodAV9UdViKw7zmx/Zp12puauJOqx1gbw0+zcg2GIFaBAQMwVBt490MfJlTSerDQzW+T7pdPo/VprTmG8ILoVzzAWrmYvGr+fBne9A2LMI25u4nNUxD9tJoboNkIAL9mXQz9bxIlLE2kAPnqPa9r21AWDSdnmcNFEmBdXlEhvMEryY4L0vl1nW5uZ+2AdOXAw7Dt/GbpDJdHv8eApZs5SAud7WyT1L7OrG8met0A80qDXxY/i4hMvkZcV/Q7QiV/t/S0iTDxqAKHspW37J95SRo7u/U+zMw//tzsYPcxS697Udap6ZY2rcSDZwtCn0Wug3IVpgoKueEOT2Jhcdo26MrjVqXHsan0mGe2DV6S93RO/ohiJSAwxlFrRTV9MuwXNttKvumYRvPNj7per49CxtmQ081NVvXy8d0G3ocaSFIZHbmlNctCMPxdt35iXaUEgd76XSE7KBlpYU8U2PXVcRSXdWeKUqM0FYrt6KN4FTQgOJYRdm64y7QbCKziAySToYr/X34LwnnSC4aDW+k9oN6Cs+7HMzL82Q+wV1AEPNBNjqN7Y3JYnCZ0sU32hPjgKQbRSlCf+G72rPEadAhD2Ss/X4uZm3Xn8kjZGVWvqEe/yN4pfbbJ1mwXb6bkqjsU6YiFZpb0ulvGvS3EY4zOsTWQyJup4b7LLZwOqpmcQngQUGoj0C5YNLMH7tCQ5Ul00/KVzjJg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(136003)(39850400004)(396003)(376002)(86362001)(1076003)(6506007)(8936002)(38350700002)(6666004)(38100700002)(52116002)(36756003)(44832011)(6512007)(186003)(8676002)(2616005)(956004)(26005)(5660300002)(2906002)(66556008)(4744005)(66476007)(478600001)(83380400001)(66946007)(316002)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?QDXFN1K9VlgK9NY/UBZyPRd5DY6GaoNMj4sVrtooxgsXwj3r6E0cWa0eQlmI?=
 =?us-ascii?Q?kvm3XJJzN/FfwKiwVD87CQqS3gmLgH5Spg8mEL5Kx7oIo7r8tW19Ms8dPWPQ?=
 =?us-ascii?Q?AElXCZefH+kVDfu9SGe/8dNGt4PWyguh1Pf837mwfvDg4KJLP5ercW3RMUXS?=
 =?us-ascii?Q?hLmJLhHGJbKuR7yGRIIDjjWJdWNw+JizmgyybtS9orCgvdKV6zxkfERV5wwP?=
 =?us-ascii?Q?+rDrJgZO4S8Zra2ti8Aa+Wt72qkIiSIub+vo+56DjEWP+vG+Md8X8rqk/eYN?=
 =?us-ascii?Q?idcd4Ca11ykoBMWlsLA0YF/mq/r4rshBuBzknMX24DnmsiiJLqXXoydqfYRg?=
 =?us-ascii?Q?PRKcNIb155iJRt+IX8t3gqQKgH3sYRnZ0TVkiTnJvGlgnwzAkuO7CNwfU7w8?=
 =?us-ascii?Q?Aly5nE7FJlOvRgsUJ67uUINfGk7e00al70lNjtN5r0/8KAw9St1TbYhVaQpe?=
 =?us-ascii?Q?3HCJ9hCQ0i7e3tSgiZf/pJNN51Oyi1UPJt0UT8EIWgBBI8nYlxDfv1Ifi3Os?=
 =?us-ascii?Q?0ZLdgumZc7wPeOrudGsUU+rAYwwrwatiJ1rRiuKw/sy9/FHu8v2YZjhuNSDl?=
 =?us-ascii?Q?oBFlwmvfpzV9trm1DDN6PvaZgYIX94n0AurUk5ceg3Pw320Airnl+yIVWvlJ?=
 =?us-ascii?Q?7kj2Ft/Fj1Df3xv9+IWat/8EMSr4HY6rvsk5jvY0R8V52avWJHvy2Fb40Zfo?=
 =?us-ascii?Q?S0MQKjrsIo3CZ5Ex+dizwX/OCM6DoKXuqMXK3+MAaZ5HRbENB0v6EJl90DQ0?=
 =?us-ascii?Q?jRGLv9jwcTtxJgRYGT6yA8ISHk1vYWyl+M45JYlo9im9iYfH7QtYA9mzxGm5?=
 =?us-ascii?Q?z97I1LWll8F7fUnA1wpAHF2CtIcR9QhVZOGR1ybvxh722mMeZFJpqOgfGFhO?=
 =?us-ascii?Q?PxTwB+RoskG+BzP2KwJOAwWCvfLscJmuHwPwTmzyNiEara6oTD6s1mtPIEaW?=
 =?us-ascii?Q?vVmZuYvf4R1uLmr5hHDEhw8dWafS2YLJNPLZ+8I99NLhWjRt2S3ahoX3jBOM?=
 =?us-ascii?Q?vUkgLTMM3uuxngXi9TL8/4nowouwyw9ygc9j1NRfJRiLnQqjCcy9EJmK1wZH?=
 =?us-ascii?Q?lhfSAFyISymepBMdyBuboO4vTdD8SyU3mOipWPj4PI8CkI+RadFMlbq3eDU6?=
 =?us-ascii?Q?mkvsfwSlcCoZQX23u4YOibp+C64emvcAr6x1zLPSaCCSd+al4yd4qaADvG4W?=
 =?us-ascii?Q?H1uk1lQgsTTJAzvmNfcMwukaJDZef84K4KU17EvdO3iZ+Dj1TY/fvk9H2FWB?=
 =?us-ascii?Q?RIfPB/GVN/ZffcYqo4qhFgF6MR3jGk455WXvtiubtEMX/R8hxQNhx2qRiL4Z?=
 =?us-ascii?Q?h6suQYMlnTqRV44w74KUtzzl?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d386a887-1e7a-4c68-742a-08d958a92d40
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2021 07:09:48.4021
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JbeV7tOE+rhthJqmtTVrzm7xsMyMy09mkvo/9qBPmbgPgh+KwPLN5fsrWCHO29IVuxIdZWK8G+ot0+XUjRFFEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5009
X-Proofpoint-GUID: Zeu91vAnYJKfBPPtOiz1wM1AC3L2jWi0
X-Proofpoint-ORIG-GUID: Zeu91vAnYJKfBPPtOiz1wM1AC3L2jWi0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-06_02,2021-08-05_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 suspectscore=0 adultscore=0 clxscore=1011 phishscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 mlxlogscore=784 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108060048
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 4ea1009..2997785 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two = "5"
 
 LAYERVERSION_meta-openssl-one-zero-two = "1"
 
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two = "hardknott"
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two = "honister"
 
 LAYERDEPENDS_meta-openssl-one-zero-two = " \
         core \
-- 
2.25.1

