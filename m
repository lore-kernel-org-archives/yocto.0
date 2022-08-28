Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4662ECAAD1
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:29:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.55595.1661653790825106550
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:29:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=NQDnwx5y;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2OSeL014728;
	Sun, 28 Aug 2022 02:29:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=f+bys2xBebkyEIUy6weqQpKCG2hDgkLIese/E7+1aXQ=;
 b=NQDnwx5yeLFnlF+4Lxe6WloQ1h11cwTdDpfW2Hy20TF24aCJW/BTKMrtycdMLXAo7e3k
 7fgP3DtDb2cGlN5JC82UrYb7ad7JtRQkhAX5wn8tmfO/qyRkDXx8IRGiDkcBzOE5oudS
 yX4/HnsnGqnR/uUw3kqUO26ncnp/vsNe466+yzPNritTisv9Lu3V7x89V8sKkIwcfbBh
 3pQtmFrI9vnmXb7l4Nt/GTltkyUo3Tv5PDi/icWRmTV8hz3ijUHEedoe6P4+LPr7uMVa
 YJ/iPEUPsJZXQuxPI9yK4AiXAhtUgIsqXRJk5pvirAX03duN+0L91+2WYbwNqehBpVpN 2g==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2106.outbound.protection.outlook.com [104.47.55.106])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7a89gncq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 28 Aug 2022 02:29:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hDRqrTu4LDxj0PK7z7w0jGTkcEOPmO3xmW15uFUP8itZAAL4UC3wc3gZqKSE9tm9qTPh2UoGu3ymPMA/k7nxZ3X4Px4Bwe/vLXvNcU4Mhs1of8hMCb94IGgYkgzJySa7X+gJ6e7sKZm3MSf86QlGArolJkvzA4Pu0qIWIisH2CW+Wtd6w1z23kfhfMc86w0rNrgFVpvtjdA7i7qw98YrVxNqlrlEECmGXJgwRyE4cICJFsPXTAFTSkCEPR5YevlA0Al4R2O+fmVrXQZN7hKgXcRBLswbq60lXYG9t8yWcaGGsfVkxvPT8kxGSmP4Xxe+tKI9qOmKvUNpFoJyfN/G6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f+bys2xBebkyEIUy6weqQpKCG2hDgkLIese/E7+1aXQ=;
 b=DXBeGoyZFyuwWKIwVcyqjmZsCHcX6vEpKGBwBLIG/qdugKqWhS20KeK4FruCJ4vI9NJgPcEdpe5M6HkCpMKGHYN1LeRXgkrcsURk9pl0YxLgfzFBbjfuCUpSTtVtjTDwIJVfqcYtO3FNjbH9FgqAqbdGMDiQaiwTo4JmLsQmT7eIG+sgaTKzU5dlj0lClDLHdX85/Ps5c5FW7Jf2ORzkCHxMTwQQHXiPamYJ0B/2xVr2tKPF0MLj2ReKqavGtmcP1xAp8VsVnQSBRr25ErXyEAKfnCr2ZQVwIrSof/FX7oNr4hJ+CxSFbfNwfvsoTR7k661v6v2QpVbrvC6O2J/lRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by BL0PR11MB3473.namprd11.prod.outlook.com (2603:10b6:208:6e::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:29:46 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:29:46 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 01/16] selinux: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:19 +0800
Message-Id: <20220828022934.47592-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:54::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 28aec2bb-2523-4f02-d1ed-08da889d2c43
X-MS-TrafficTypeDiagnostic: BL0PR11MB3473:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	977uveL7ZJiqyD3nsIvPiufhjq0df/BBFbrog8L4BgQXwss5sHKCndYBxJJs172yXfNrsHDGq+IZ4zHiTpQ5Xm3gns4T7xIX324fvZXm2Y327g8OrCwpeZhhDeH0XrP30pGTQdFqXjE0q+5QbQC70fO95kq43YDSI0yGo+46XeCAXTQhld9Vwby2r5sPHRg5xAWe5Lp36fHx0VbxEf8fR4zyYzmJuzlbOu5AC+LDCx26OBneHbEkuzX1C2cAWf8fR4cQxvHKcTDhdS/VHgQWdqqPX804TlhFp+KMuI0Q9+aCHIKrsz89FK52xf68Wc2fOzglPNV7peSbLFvw7KorfjTfC/tBx0BTDA9yGFfs02Hzdg2eJKrD1iSI8y2wUK7bKYgQCQa+WuR8S4lYk58/gTwyb5CJRSa9FWPgXc0B0jE4ZrKO7uX9wG2txdN9XIKJQ9pN3I8kYigBDbk/Hr3HTeasiQ8DKBaG68ZTz6wLZOJO8holHKMBZZDkD5zz8GvqIgIXYgXXYHQrKYwqIMh+7ediIKt8PJRsPKD5g2D6gWhpT+7bchRayB3DaOuVmKVnNQry6CWmLXq5UWwEBh+KoS+Qy9JPtsF1WJ0VoL/vTuWphPj4ZACQtMMAvxQtXQwExXFaoPwOzzjNliLOVvVP+a8CaZZe+tKevceCtC4+kWZPcVsPa22S/lDV0MBOdTPhIWYdh6Ept2H5aJ8EeKwx2nSjmgqHLmUEIWg1Yr331f536yW19MpYybm2QgNbPDiQbiqFUTeaSJcZ66kMmT+9NixYUNydUmcZJ3v18LRKu1I=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(366004)(136003)(396003)(39830400003)(6486002)(36756003)(8936002)(44832011)(4744005)(316002)(38350700002)(8676002)(38100700002)(66946007)(66556008)(66476007)(5660300002)(83380400001)(26005)(6506007)(6512007)(6666004)(186003)(2616005)(2906002)(1076003)(52116002)(478600001)(41300700001)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Ew0in12IZd/LXgVC1h9D0CktV7tvOD5RAjV2TaywRYrRGqOUGMYsMK36ZIXU?=
 =?us-ascii?Q?AU9iI3clzle15e/Iq5P9Gse7i+rTUgTH5kQjDrQ3w1FFwEz19PV6kmPJCWhq?=
 =?us-ascii?Q?oT/IJv2nI/iMChGbsEQ1azrk3/0MTVc3w5QZCM/s24WJlnfUirLdZWQ2TxWE?=
 =?us-ascii?Q?L/74aW7KF7kMN9H6mBoOCXQA6lGZDkCj7Vbs5Tet9Q34QEyvwETkJMkfy8Ss?=
 =?us-ascii?Q?XTn71spPzRt7G2rt//DnH5O0gupYwowI/8IL7t0PtHlWgIJMW72TWh/iLiMV?=
 =?us-ascii?Q?50orsgXhVqtehkIxsI6ZcrWCDKN2SpgUfPCDa+rD8TVvS3dMYysHJ74qx7Ru?=
 =?us-ascii?Q?KcWd2rEXwVmCnUtB7Id1d9jNBnE3uR+XZ6hpxvhBiouclYZu5CkDmLsu5haG?=
 =?us-ascii?Q?BUk8Wx4oGJj6NkCNUHn6mCy2FKgdJEmqSffHdiLbcbZzKXASm8CP9DkxoNAv?=
 =?us-ascii?Q?iYEjt9DGxwcufvTWl1aPuLSw5DplD53oL5JsmCaZwCsfplwsRsVhoq+GhM80?=
 =?us-ascii?Q?OyGyU5zPH2atoCMg5lREk3QqSFhUeprmni3rAnYJLlLf6fVAbBst/6E44tOl?=
 =?us-ascii?Q?MFn869XigBpF822t+SUU6cB7Pdzhs1k8584ss+tkQwjVl8Xc2T/xfIoeJjV4?=
 =?us-ascii?Q?MojfmhGw194D9OxNuYgY4cL8ImZpXNT5n/ELU8a8rjh4h8idL/+J7OlavboY?=
 =?us-ascii?Q?k9hM9Ct/PwRPKiI6LYCjgIvGHdOsGB1R0rRDWqM1jcKbZandWsw0tjZ4jJrF?=
 =?us-ascii?Q?FbTa5vJlLomFtBkyKo5lxk4cGKjZz1bu8OGVfh2xipCWGFhM/A52GFAFbvxt?=
 =?us-ascii?Q?B8HvQ4wNEpQuQuX+xfOOeCF1FnTBIORTpCCq+2XRlCgetlewJYo9mnQzCtsD?=
 =?us-ascii?Q?m+fOkIRRkY8TYpnbNGaUTNnxctlEc4XyzMiE5EDo7ExJS4Ry/phxYCQmFpVF?=
 =?us-ascii?Q?KcGGa2I6eO/McwkozuKGR0gJ4+c3rnEeH67kJMtzjL/xDY6OGcRxhbCIpA04?=
 =?us-ascii?Q?Qc7zHA3ysY4XVywOOAEiQnFD5RKuxD8SWVkaK+SdRpriLDOMACVAojI1Lxto?=
 =?us-ascii?Q?smBLiAlL3Xtj7LN22H2OUGO5JwuVe/ngcQn2062IA66nebY2VZcKSRk5Yycs?=
 =?us-ascii?Q?efwOtVdhEh802+p2vkLuisH6lyL4VIFO5zTvIQUZ1QEV4pmfjhlTk5oeCCrw?=
 =?us-ascii?Q?iluT/J+savs/PuC5KHVoV8Ikk3e/N3GJh5UH7jhY8qiHuS5E1SSnmo15nWX8?=
 =?us-ascii?Q?ILD43nxPyKcwapSXOJXKToMgd+m4Ggr10MYlEvHa/C6YtlVXVZP7PFHZv3/1?=
 =?us-ascii?Q?MSfcRzR1UEeOW0lL1SfruR+zAqgFOZgg6gWOjG/6AwpIGVgNZECvHPkKqElH?=
 =?us-ascii?Q?Vc7hBH0xmXnM2QODIrPVNL7ZnRhpuqCiKX/DrtyYj3MIsRJnXumLQ6RxyHCc?=
 =?us-ascii?Q?EX5ai4AAHbZqRySLHUDOJyjtb9PO4wNAPUddsrE/5nq3cqxTZ1Q59XxLJfx2?=
 =?us-ascii?Q?vuU+gD56rtA1pbupDGH3Ty0njmC3GqR1OXi1ZD/jdEABkm+dPReSkmsG/nBG?=
 =?us-ascii?Q?faoQTZFFCC6NTIz+LivH5ViM66bPtPo7rUKsRi02?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 28aec2bb-2523-4f02-d1ed-08da889d2c43
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:29:46.3356
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 XSE9Xwd8M8D3G2SM55ORk49G4253zD5+dno2OwKOSOq1I6LY8zfYZKgqsJsPnye8XE41GFk/J+9XUwsgAw9ZKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3473
X-Proofpoint-ORIG-GUID: 7yt1cjSGCFBgbcyA_g8LvVODStbDQjBw
X-Proofpoint-GUID: 7yt1cjSGCFBgbcyA_g8LvVODStbDQjBw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=713
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 phishscore=0 adultscore=0 spamscore=0 mlxscore=0 clxscore=1011
 impostorscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:29:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57916

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux_common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
index 8bdf8ad..86c748f 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -1,7 +1,7 @@
 HOMEPAGE = "https://github.com/SELinuxProject"
 
 SRC_URI = "git://github.com/SELinuxProject/selinux.git;branch=master;protocol=https"
-SRCREV = "7f600c40bc18d8180993edcd54daf45124736776"
+SRCREV = "0a8c177dacdc1df96ea11bb8aa75e16c4fa82285"
 
 UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>\d+(\.\d+)+)"
 
-- 
2.25.1


