Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0877C433EF
	for <webhook@archiver.kernel.org>; Fri, 29 Oct 2021 15:18:17 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.6786.1635520696121351710
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Oct 2021 08:18:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=i1MQdbHv;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=693691a099=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19TFI0o2026991
	for <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 08:18:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=wy7k0OAQJbfG3ffszrMaHih5/dXNUwKmlDC7DdMjLFY=;
 b=i1MQdbHv+8UvibPqKfPyo34Pm7IXLi1j+eiH25ldFopukwWRo7jw6TGR9+b3EWVIdE4i
 xq+iHqhfofH9v6zjLyH63q99RfaM5bPnDXLlyk5gpSDzbHoDQ4BfA857lZ0uznsn2eG6
 mHKtd52fmrCBm6uXr+CUnuJNIPpKQj2GVBk7iyhvc8VSpahW7Dqr/+qozXS+eGZDr3su
 ycKQCudkYm8tLWjFsPUH9JWVgMVkDt5bZta6SwFrvyQLsvWDew0WUxbw9mu+OT+xJ4UR
 S0gdwnOV6Rxi+P1/Z6ZyC5NTglSKJMvn3RmTOHTGdfQuN2R1NidgWVfKPBaP10SsBX9c 0Q==
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam08lp2168.outbound.protection.outlook.com [104.47.73.168])
	by mx0a-0064b401.pphosted.com with ESMTP id 3c0jekr1s1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 08:18:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h58PkPDSyNMLiYdsUQ3TynXO65mXDnXJcfb2qrd+Hc6eRFNlyDUUEXb4xWWP0cTapkXBqGk9QwTVm2JhsRiFsuJp9Hh+IqaKWQzSI5IuvmN5nb9RCIIDDPqFw6YlcCD+XUXWbaYQNGkqh9UPCIEtYkRSPaomZnBPkVXyn53poeQcSG16TVnIwuY+LybmTjufTjTEebQJUySE3rDVXqDcKyVBsqyOs2VdkPJODRkhRLKahO6hMHnesXU2dpANHj40KanZwoI36i7FYFP2r5dfJVaeAJOlaH1NfgsniphQ/kXyjjakG/RqPbIhvdARWueN45k+/7kyboFYSxiGvRL7yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wy7k0OAQJbfG3ffszrMaHih5/dXNUwKmlDC7DdMjLFY=;
 b=GTKyn01tZm6ilc/KKiYb60+l7T8555bTtgDO4byHIHh3aaEfztnkVI7KMN36ZShaTNyHA3t79pkQOargqqoHfIJMh/jKGPdKHuLdA5pW626Ew9SOr+xJ3Nlam6ZCDE+iCZPvcAOsGeErjcODrsNgahUF55P4W3VrdnFxLc3ZsFRfRAFdYgW7NmjqkrlgdNmcgq2e8k/71ZRtivbJ3JW866GOjvM0gcayUlDeA2Q8/3xDfWbRH/aowgVLzZk3koGjd0VsY7kOnIWMvhirDNKs4fxh4q60z17/5PhV/8FXkFJZIig6BQYG/UzTB4N8PxQn9nX54e3/CgL5fT8iMKPRSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB5039.namprd11.prod.outlook.com (2603:10b6:a03:2da::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Fri, 29 Oct
 2021 15:18:12 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440%3]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 15:18:12 +0000
From: Trevor Gamblin <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH] builders.py: fix bonus time calculation
Date: Fri, 29 Oct 2021 11:17:55 -0400
Message-Id: <20211029151755.210448-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.31.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BN8PR12CA0029.namprd12.prod.outlook.com
 (2603:10b6:408:60::42) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from yow-tgamblin-lx3.corp.ad.wrs.com (2607:fea8:c29d:d7c0::60cb) by
 BN8PR12CA0029.namprd12.prod.outlook.com (2603:10b6:408:60::42) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15 via Frontend
 Transport; Fri, 29 Oct 2021 15:18:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 711f7d35-9a9f-4c21-9a67-08d99aef52b8
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5039:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB5039284C35ADD131876114679F879@SJ0PR11MB5039.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+9a+pruc8xx8MW9nVwYOjaG/JW9PIVZvlIwviwxwlFzzNU3lBI9J+MpY4ciuk8sCMUch3lcOIXIcjY9Si2WDVb93XwaUPyDFnmwB4rGBqT/e+huxg6DUmyFRxB4nSIZc5LppxcxSCvzhTc1nZNgbmk4H9zOEnBK17joazHuLtGsb8JKsiGpgxvPpCkmjMpN98z1a/4WSt+C7QfhauqlFVCTdLMkTLdSABkO56oFqQCBvLvR+zIRY4/RA8H2jf40ImNhr6ljq0JpG6d5L+UXimERJL25QkmUUbugqe49YiYMG6yhCbGXlmvbjRmDTicZ2CSMJQQDFbH0fBPTuWESrvoZbpDsO7I3md6+idmfQx220zAOM/XtmhnrM+zPtl0tbYZji2neKy/+NLzpzM4gJLSKjbTE8+kjJAG/iKluCT5ReuilP+TlALZJuqrFHq0dfOtEmhetJTc4/GVk+s2ivqtcQGPneC45zqoZ+nzMRF/xSdWot99Wcdzx+G/5lv/QQzX466mL6El3dr9nU1zb3VqDP/bhH8gDvUbmyifu9owmJFQnfd/so9E8Lc3n/3CSPoi+Y6nxcCznAgsV0nu8UksSGbHOtPeDaWBipVyqExd7KHfc7Oyo3n3rAR3tJ8Wia11p5y4dQXprFFgrXV7x1Ng==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8676002)(8936002)(508600001)(2906002)(83380400001)(6506007)(86362001)(6512007)(38100700002)(66946007)(186003)(6916009)(6666004)(4744005)(6486002)(66476007)(52116002)(66556008)(316002)(36756003)(44832011)(1076003)(5660300002)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?jsQ0I/z31Ef4O0dToi9vygWR3iw/oIrU8AaM88mrLDjO0lIaDm6uyIFAhb4y?=
 =?us-ascii?Q?14LU80i/hgJXgm7BSM6k5LRkWpxBZIlcq+rAXUym+cBjYidqeoWdbZG/kxO6?=
 =?us-ascii?Q?ZC4YwNuHCWxV9XObljTbecdY+NfUXLeazbUXKwa8+y1M+77L5GBNI7K8pxvW?=
 =?us-ascii?Q?MpplhF2XaORdB2/7uR4wP7SfzRZBokpaQmcHG0E+E7CpTT+X2kSsLB3zYwv0?=
 =?us-ascii?Q?qxScPTvzcV0887t4/0vUzMWZG8rlb9qT58cWJdPxgMLBuLpTjmvJYbn77U+Q?=
 =?us-ascii?Q?WXPU0CS/eYgWmu/iIRC1E3EAIcJe+UMSmEAiGjz3ZmWSLCXRFaEvPY18R2UF?=
 =?us-ascii?Q?JlHJy+U/Q4iYhPMedD2cGMj2a3ISKtYT3c0CEkwa7/+uG29aiZ6ZihezJrj7?=
 =?us-ascii?Q?1jI7q2+51r3UIpSJkZF50Ot8VEGVQOlr/X7HzO8hRckddEG5a51m1TYNSBqm?=
 =?us-ascii?Q?T5KY8okPvsVbOWtfWHaZ4RQabMMq138EbUXftzQUS6SehQWLbXtjosluXEvE?=
 =?us-ascii?Q?FCTSodS5fZacfJG2NgG3Is+D1drAAlDjuWrQzkZDTQ9kak2Iq0NXoS1LFl2t?=
 =?us-ascii?Q?IunPhhxCOEr7GknA2O/tG8ywxTAvS8iW+H4qOHau6IqiERDuRYSTSCCZepD3?=
 =?us-ascii?Q?Kee7aLk0dhPm5E8hpg/fAkO9kWAtbESfE2MsM9u7/jbKLXonUKdHqh2D/inH?=
 =?us-ascii?Q?++qMokpER2gB/A7w1ZoCglEC4ntnY6SMdNrfq28jB2T2NYwiAGuK2U3zHIHW?=
 =?us-ascii?Q?f5WLjTwa7gh/wr8o8AnZl5Vlzsln/9oCpo4mDo2b3kG9ms/9O8G1FWKz3Dcr?=
 =?us-ascii?Q?VzTulfX1Usv6YMkHc/5YXmboQbn1TzWfKr46EI2hI58UpqHj+qt7O95Z9PmC?=
 =?us-ascii?Q?umv7TxviNU1mR2gcoSmIw+FxWnKDeysOWuC1UrCr+aj95bx/BvLsTAEN0Cq0?=
 =?us-ascii?Q?IRlo5n9/ofUcTqu7vtQjcOgK21hofw8kwI+c81Ru5AdhKRJS1kzH3tlsF10w?=
 =?us-ascii?Q?KGpEWaVWTTu/D+ac4f3mO6fN6+xdtDWTb09huuUqCytQ0EvEyWEyUCEeSXaK?=
 =?us-ascii?Q?ne/VquRkixw/vQDNMQNFEWbGkN9Q7ltn+QvqATJoFSIOsb8kMOVp8kuA+IhX?=
 =?us-ascii?Q?4zgmI3q9npOxvFzanvEwrb1jDqFBDBBMejVc8RbgHK/HyNeKi5vVnq7qej6X?=
 =?us-ascii?Q?HW1mz8D7AdYx/irPCdolL50fhvqvwBX7RnMvMlLbHse0WLCMsIkhGdLe+Jgh?=
 =?us-ascii?Q?nAOdbJiYY1YoF8EJTIaTjk+f9Z9c1BjqpgZPMfPD15BHX4cojVBG5VuzcQtq?=
 =?us-ascii?Q?uDEQL0KuG7/WRXGX/OUYfPRX53RcbWKGybeJAkAKA0eebd3FXZD1pD7FDMDu?=
 =?us-ascii?Q?CC8WR8/wI5Fxx/gkxNCq90h8jf4CYdSEi++AucmsxSzILfHOHFFCbgpS4pjb?=
 =?us-ascii?Q?uY4Fssx+NqHCwlxJ4I+c5lDyagjZAD/kt4CDU3lmMYm/R6RG7UmVJ+F08LTL?=
 =?us-ascii?Q?v4ihaRC8E7b0/UljM9HYiZZ40Z0MMUyknRKcksrkIAuIMeUQ25pfL8PYINRH?=
 =?us-ascii?Q?NNkiGCspG3fqjmbFkoG9lIlX1eQSErmKTMy9xcMBrTerW4mobl1JjNbU4DV8?=
 =?us-ascii?Q?cri9JVl3o6O7W50ETnA4Hr6UWH+4oX+hXVkiWkU6y7uPAF3OmaUPt5VfT37D?=
 =?us-ascii?Q?nM83s3PKMf6JF9aA46UWcy4jGJ4t4/RuHqsh5SUGutEvm7sl?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 711f7d35-9a9f-4c21-9a67-08d99aef52b8
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2021 15:18:12.7495
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 IT5+IJk1a3uJ8WrBqKKVGMpLDML5HwV++9S+dXY1T1aTc832eYBY2s4JAZZaeo8nXCOSJwpt2yy4iBtNNQmuK7gwdj7u19/0AifX2K7lveg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5039
X-Proofpoint-ORIG-GUID: qZCW9BhD_L5ZZZL68PQyLEx0cZ2on1nS
X-Proofpoint-GUID: qZCW9BhD_L5ZZZL68PQyLEx0cZ2on1nS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-29_04,2021-10-29_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0
 priorityscore=1501 clxscore=1031 mlxlogscore=947 bulkscore=0 spamscore=0
 suspectscore=0 malwarescore=0 phishscore=0 mlxscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2110290087
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 15:18:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55186

Modify the builder_bonuses calculation so that it provides variable
bonus time based on the builder, rather than a constant value.

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 builders.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/builders.py b/builders.py
index 5773950..f94d1dd 100644
--- a/builders.py
+++ b/builders.py
@@ -145,7 +145,7 @@ for builder in config.subbuilders:
 # Add 2 seconds * length as the weight so tightly constrained builders go first
 builder_bonuses = {}
 for builder in config.builder_to_workers:
-    bonus = (len(config.workers) - len(config.builder_to_workers)) * 2
+    bonus = (len(config.workers) - len(config.builder_to_workers[builder])) * 2
     builder_bonuses[builder] = timedelta(seconds=bonus)
 
 # Modified default algothirm from buildbot with a bonus mechanism (thanks tardyp!)
-- 
2.31.1


