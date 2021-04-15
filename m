Received: from NAM04-SN1-obe.outbound.protection.outlook.com (NAM04-SN1-obe.outbound.protection.outlook.com [40.107.70.53])
 by mx.groups.io with SMTP id smtpd.web12.2083.1618456487621442189
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 20:14:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=aLSWzwA7;
 spf=pass (domain: windriver.com, ip: 40.107.70.53, mailfrom: meng.li@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=afjIVu3j7ARZXyZeFG1jRbBhdRvinfNXGOb7OmouXIj1caPA6m2s/PhcjAA/HZ9fhfDntdCpxCISe06uUg+B1+/BKhnPYEPi8K4IopG+nwuwhb4SJZ0Sw7mg1i5hJp10lCj2fRGkCtfA2wIkdkrWMzxhsSJZeiqus3ufWiYTnv4yd/g2gFMZu9O7ioMCK87mU1oVQ+l9xbQKN/aUPoifcW/9Q9XPKKM/pUAxyi3gpoHk0tuxBBwe/jPB1PtxREKKxcKJwF72AtOjbEqLO2liNn5BKw0c0E//mM5avxq8p34f3hc1XdbYSYUBShlyPJYVSi9yvxUaPuEKE6pxQSuGgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mL75o3L2AysbPpCoFzGE5tL2L2EI3GFDFjikfG5wUFU=;
 b=RObpg6EC0g/jJ9QA2ppzNpSd++VogQCUymhwFIo1qd8Awz0GOx2Qej5oOJyh2Mr2803Y2VTUj5LCUUeLc77uNhTQMbTbszVOG4iBqg3frZ7Sz1IO0y3oOGOrJmEGor+ys+3oKJvmzN85zQlNSSG7k9sNoWelhzjnZ41k79w5DDjcU2g7j8dhjKQqd+HguhFAkMgos8lhkrrLVTOJR8zPmvM+75f2f3jJHoWo7bStxUQkjcjr1Y+IWYtxYsN/aXFxzLmUI3jaeyqMP1PVshy2t/IvwCLPRQPQ/1c3gxVXjN6B09ScLiNXOmMDwJUK82fkeUFBxgH0eV2oXuJYg5XxzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mL75o3L2AysbPpCoFzGE5tL2L2EI3GFDFjikfG5wUFU=;
 b=aLSWzwA7MPk21cwonS6hM8A0oGAYaWghdReeNFWScSJSuNTtfIb2nuPb2s9zD5k4DTGNRlkhU87FVgqS9lCJPauIdcPLA2b/NOn0JV2hRRecU2gaIamrLhrh9VuBy1K0oZiQCTgNGZFrdPTISIWL47Org4azbHlptZ9LBZaTVDY=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from PH0PR11MB5191.namprd11.prod.outlook.com (2603:10b6:510:3e::24)
 by PH0PR11MB5126.namprd11.prod.outlook.com (2603:10b6:510:3a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.21; Thu, 15 Apr
 2021 03:14:44 +0000
Received: from PH0PR11MB5191.namprd11.prod.outlook.com
 ([fe80::35d1:d393:5e05:4efa]) by PH0PR11MB5191.namprd11.prod.outlook.com
 ([fe80::35d1:d393:5e05:4efa%7]) with mapi id 15.20.4020.023; Thu, 15 Apr 2021
 03:14:44 +0000
From: "Meng Li" <meng.li@windriver.com>
To: yocto@lists.yoctoproject.org,
	rebecca.swee.fun.chang@intel.com,
	raj.khem@gmail.com
Cc: meta-intel@lists.yoctoproject.org,
	meng.li@windriver.com
Subject: [yocto] [meta-intel-fpga] [PATCH] layer.conf: add layer compatibility to hardknott
Date: Thu, 15 Apr 2021 11:14:28 +0800
Message-Id: <20210415031428.9050-1-Meng.Li@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0155.apcprd02.prod.outlook.com
 (2603:1096:201:1f::15) To PH0PR11MB5191.namprd11.prod.outlook.com
 (2603:10b6:510:3e::24)
Return-Path: Meng.Li@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-mli1-d2.wrs.com (60.247.85.82) by HK2PR02CA0155.apcprd02.prod.outlook.com (2603:1096:201:1f::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via Frontend Transport; Thu, 15 Apr 2021 03:14:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d949f414-2a6a-4821-3a2a-08d8ffbc9dfd
X-MS-TrafficTypeDiagnostic: PH0PR11MB5126:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<PH0PR11MB51265459608CB53A90853134F14D9@PH0PR11MB5126.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:626;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OCx3PxEwskUi07BiMztGaKmAeHCoCbJr5V8kACOeS95zClNIs6G7s9tu5qYgA2R0fCnkGAEI4V+g3nUCeLbcMZL2V5NOFEfktgQ5b+X9dX4ORfFe10NalQpwuXDN9tn2J1NYxBGkr0OVNUWHKwVAyEDZeU0nj+bSbbFsbduKs7bS93EQ958TiNNwrMhHaLL/w5SbnO9nL/0g6Ew+EqKCyCLSFZowdJgXdPS0B+o/Zie78bOPQstni5guPlmqSXZKoWc1cmA56ybrZ4OM5TteaWdqzxbxgYrq1S598zxbL/DZvnd4KmeV+6GsGpRnUywJzJ7SFpvwyQvfOJTqkY0s2dOfzMIFs7wqlNfEnPZaqjMNeS713QzAOzxuXFoyZhB6YQxegp1g2HBQJvRwb3dfnTC+MyWO+THEuVFq5QM3auxh7wmNaI10DVS6TFTkDJBiKVv7fqaAb25tdj7SDl7mKOzCAg7ovZ2FE+lldDp6GKoE29faQwIk/Njxw9i2vGlhaTCHDIdOsdlUEQspgIkdXR/9lwmCquu+IYcDBjNqN2H0DQbC4iHnj9qYdMq4JqOKgzB4H60OeVNwgqshyFILLKJaUfukaRGIvVZww5GmHFP0S8g+MSWwkTQkxXnwyBKJufnJNLVpl/qmntAAxPeBBkW7LdwAfjWw07jf6DzWejM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5191.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(346002)(366004)(376002)(39850400004)(36756003)(8936002)(86362001)(956004)(38100700002)(38350700002)(2906002)(6506007)(186003)(66556008)(107886003)(9686003)(6486002)(83380400001)(66946007)(16526019)(66476007)(478600001)(4326008)(4744005)(2616005)(8676002)(5660300002)(316002)(26005)(6666004)(1076003)(52116002)(6512007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?yqH1NO435IBfcOeha7/iHzn+9mJlJ7r5zzGRZMYC/VKf7d3AH/0BbYRMUl/X?=
 =?us-ascii?Q?Gqrf76Rpp1dV2JedYVStDJ1vbV4smXBUzxya0D4pGbVJYJ5fwIGeqosaW+4o?=
 =?us-ascii?Q?lS1McjvmjRWYxxO0fgVvaU2lee78MYMVj5RpKe9ckquN2HnBscoFxoY8B2Pz?=
 =?us-ascii?Q?sxiqS83HX6rhitptu+N5eKxnGMag40YwKubyyprpcrucJDVzGjweOLjgD3v7?=
 =?us-ascii?Q?YmnsU/BZZ0RkRv/uGMnhLOaXZzRXeOUDKRZlhWhxbbiX8eqBIl+U53vB2xQj?=
 =?us-ascii?Q?GrKhiuIWCVLG+4/GYa7aTcOHWd5b8KB6DhejRaW3Fm3gu+ltioa6wqHmCdKJ?=
 =?us-ascii?Q?TBiMEnBgQbgcEmRNaRav2OOwKeF4DOLEavlOXZQp8gU9vkGmQVRC+WlLofhI?=
 =?us-ascii?Q?+sdfNuvvA0x3YTDgDDRW8tgW+4pnMxzkSic+n90s/a1ZuHEdtDLf6GFp/n3V?=
 =?us-ascii?Q?1kIANPcWftXkJohXnhOxErSEgB3wnGig3vi8elRIxKYO1nnLGN2Mf2hLX/Lm?=
 =?us-ascii?Q?0QMWj5wN0zm6cehG+ZeY7bVcbq9Cau4BxBvl0jKkqafvj+1X0VpArBDdz/R4?=
 =?us-ascii?Q?O7rm9tMdAamKlgg5Thg7CnD7hRDuKrarrIHwCuZuRG/KsecauHYeDVKXxvpo?=
 =?us-ascii?Q?BGZ76x6PW58R48idWyAsViVA1ve9F2ONpuVEJWY1dpaXySM0eGT8fd9o5yvN?=
 =?us-ascii?Q?8h3HPilDg20vsGECg7rWwJm4XMLXB910zEboT2FU+6ybx0ycsz90iIkhzuq6?=
 =?us-ascii?Q?sV7uXLbjP+ZypN15JiPo/Tc2cjX+xUogwE08jC3PutH5LwTCaGDs1cUf5AHq?=
 =?us-ascii?Q?qv3hTTC06s9fSHU2zKqFXQ2WtgfSqGFJ/IZydkbUedKW/giSd2xAUncVpZ8p?=
 =?us-ascii?Q?fcLFEf9AVgwm1J6Wfh7/DzLBx2N1MyA+8WrdbrNfdN2MXebKdJMGbMk314na?=
 =?us-ascii?Q?nGYuyIjytLhXw0DlbC204ED69e1YCJLx/tbFcg5hmEAJrd4NhtPx/140ewzI?=
 =?us-ascii?Q?2WSLcVQTqRiBmmbq8H+k1N+PQWvTwr4liCqub1942FGz+hHqGc/keqLhdnYq?=
 =?us-ascii?Q?PCaaTdR60xYeqa2aBzXZgy9+fyk3rsPWPWF6dFfNpli7Qf+iDpII/4/UiSUe?=
 =?us-ascii?Q?+6t1PL54jZuLKPE7s8EvoVTZwylJ1GF1I+VH6bT3F/PAREmLfSvF6rXw0Thc?=
 =?us-ascii?Q?wY/UOeabhL9emKgU8bHt96c5HMlrRNOO438meNcMrpM+QZQqAU53rhbOuXy0?=
 =?us-ascii?Q?m0y2tILp/1sdUXkojCjaJFEWUO2rWavakgLMFlpu713U8c4supHdDw07PZe0?=
 =?us-ascii?Q?9nYfnMdGiTZszVd8yu2srf5m?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d949f414-2a6a-4821-3a2a-08d8ffbc9dfd
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5191.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2021 03:14:44.5365
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AGtyCaYiTCCwtGFeX+UciAXQHsGd3xLkPWy/PYxW31NCFgmx+Ym9kXi+gf6MX50LziJLhm9NX5n89XUqwNND9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5126
Content-Type: text/plain

From: Meng Li <Meng.Li@windriver.com>

Signed-off-by: Meng Li <Meng.Li@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 756e7f4..4b45db9 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,6 +9,6 @@ BBFILE_PATTERN_meta-intel-fpga := "^${LAYERDIR}/"
 
 # Increase the layer priority
 BBFILE_PRIORITY_meta-intel-fpga = "6"
-LAYERSERIES_COMPAT_meta-intel-fpga = "dunfell gatesgarth"
+LAYERSERIES_COMPAT_meta-intel-fpga = "dunfell gatesgarth hardknott"
 
 BBDEBUG = "yes"
-- 
2.17.1

