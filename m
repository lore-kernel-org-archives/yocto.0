Return-Path: <Priyadarshini.Babu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADAAC88E7F
	for <webhook@archiver.kernel.org>; Wed, 16 Sep 2026 19:02:16 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.22803.1789585331735108722
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Sep 2026 12:02:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=jYW03lVQ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=37194a4f42=priyadarshini.babu@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GFdSX01452404
	for <yocto@lists.yoctoproject.org>; Wed, 16 Sep 2026 19:02:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=PPS06212021; bh=RKPlfe57KhNV3IQGKBui
	TEp9vsiz2nJS6JxQGk5uCxg=; b=jYW03lVQcXb/C6ZxKwjMoyRGeJ7lvRVvlGf9
	4HHwky0UqnJE5FkGMMbsqAsQy8yb/ytXo1FYgpfu2EGJut4G9ohTsu4F5pXiT9hh
	e+BatAd0ud82EP/MbHyvXKjHw01lstGsBJ+IDSQ41cYPMUeKMlN/t5APwBjq/BGe
	YTfyEmXwPvpwxSPr6cgHHRNUCApNlBLk45Tqarr1CTqAbuoKyPFxOszwZvMXD1o/
	wf5UScklAq/prASjzIYPH5ZnSVluzCPFJbZURuttlCiKs9a6YaUIwzd9Jnw4zxKK
	VpGdkJRfR3KpVUSvYfVrUi2bEug2mTIZMezhpOUytQa9InmzaQ==
Received: from sn4pr2101cu001.outbound.protection.outlook.com (mail-southcentralusazon11022094.outbound.protection.outlook.com [40.93.195.94])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4gqvxdrkdx-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 16 Sep 2026 19:02:10 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rcaahNMrf97XfF3So7rVcERbq6uGkkHyyzDEMLNa0L2MCd8v94eJ7zzoRpqB+nCYo8noASr7CGwSNXMU9LWyUyovIbDAdycWgvoPBGwMa8OtFHjXLnsOt4OrDmlAQ7kySnMcivg/javuOhc5+DPEB555eXXPcBVZci8rn4F6v2Fp9JuhsYxWmC+R/9ajWny6mmEqV418SyCzqufwUlev4MFIv9yNXSC+YLZNWr/6lSVgPG/m6rIvbZjm1eQ0bCN7RsMztu0DGv5gLR7tS5HlorBEkC9NgAJEyzRmjnOlt2EPDtbKqNxUslAPZyl8yyhNbgDcrwc9rvJEJPnOJ15VvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RKPlfe57KhNV3IQGKBuiTEp9vsiz2nJS6JxQGk5uCxg=;
 b=Peb85miqOex8bbjVkeC6xTThTyUzG3UQv2v3O4JmSrUPgR/OZINopnuKQoFTZLJJx2E/B7CpU0smvKrkRfayWLekU67aaIfXX5KpLW/4smB99egu4Q7nJBzxaMSLJL7sWIOAkKJ4hxo3v/r59h2Zw8t+derq0HY3YsBfVQjPCwXpFPiHcJzZEl9x6MDcN7zwmnjEKGMdJgAN8P0GmHFg4UpJpT9RLngn34hb6Jwx/Y/EcjKa0r/X/2+dQyQvZVJU+1ZOVlD2DAYQj4HWGEJx1TmFAXXhxP3bSB1SpqvY+ByKINpp1YEWpJY8dJHfK9Qq2RJGUukVbr2FPgxU4VnxWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8520.namprd11.prod.outlook.com (2603:10b6:610:1af::11)
 by CY8PR11MB7169.namprd11.prod.outlook.com (2603:10b6:930:90::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.406.12; Wed, 16 Sep
 2026 19:02:06 +0000
Received: from CH3PR11MB8520.namprd11.prod.outlook.com
 ([fe80::65f6:1d93:a783:d398]) by CH3PR11MB8520.namprd11.prod.outlook.com
 ([fe80::65f6:1d93:a783:d398%4]) with mapi id 15.21.0428.008; Wed, 16 Sep 2026
 19:02:06 +0000
From: Priyadarshini Babu <priyadarshini.babu@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-anaconda][PATCH] README: update maintainer info
Date: Wed, 16 Sep 2026 15:01:53 -0400
Message-ID: <20260916190153.321210-1-priyadarshini.babu@windriver.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CH2PR16CA0026.namprd16.prod.outlook.com
 (2603:10b6:610:50::36) To CH3PR11MB8520.namprd11.prod.outlook.com
 (2603:10b6:610:1af::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8520:EE_|CY8PR11MB7169:EE_
X-MS-Office365-Filtering-Correlation-Id: d54f25ec-4184-4c30-7ec1-08df1424fffe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|23010399003|52116014|1800799024|366016|18002099003|10067099003|56012099006|11063799006|38350700014;
X-Microsoft-Antispam-Message-Info: 
	p1xDOLYPrH2HQyTN+iYRaS9jvupVJM0p0/xD00BboBqLc5KZ3oJ7EYWaQ5k/fg/uUOzf+iErJDFk5l7vnlSEfAsbFIyorvumuBjDr5bu8PM1zkptXOY94/HwXd9HdD0szrRV/4KpJ8VJOUX/l6C1KI+gmcMOZoeDWWCTs1XsdIxXwhbxPjJq1Jo7b0vXE7w7jARUo4AATY8tttIfgNxwl1Zo1O64FfCt9qq6rPmSE3DFDJ9dwRuHSch7CVNauLKen5VDL1L7ODiduNIsBhb/X/Hw8xXkoXvlGD7faeqOs2q9JBiXMNbMPCM0gXy+PZSzv94Y4RFFNurkRGZ4mpIVdjX4cAuqLPWEzWLT6Gy5VCs5OBaZiW2TwlfFrJ3d//X/y03wqndAruScqsTXDuVXrmXxUVQV5JpKbQpT1XpUoGkcxJ2oHe2RZTLxwCkvOJdt5iJ2pOe3ORNqSemnz9YOvF1NkdLKGWalwQr9S98SdKjk8frk+SvxjqhoexcQdDav71WBXQx4TlU+OoMLfoHP/pbpkg+CYRrsDCYsYqYCZqc6ekFw6fvX+YKC3xqmHe82LDsbNyhW78eISzRsGNiQmsYqX0NsaU71cUbmge92IzOZKjVuOgZ5vLINh4vCVOroQmH+OwwFbM41Si7m9hi8CD+GpegTOrf9+mp6NWBE8NY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8520.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(52116014)(1800799024)(366016)(18002099003)(10067099003)(56012099006)(11063799006)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?F3f8+E911/RxCbE/bR0LeQASI6QH6/oQZNTekTdvakX2YT3MwyDqJAt/fEJc?=
 =?us-ascii?Q?TLOcQ4cGeu379ZrYAvjCc64TY4P/0x7sG5kbiCM6QclV8LWDFv5hBMFUUYXk?=
 =?us-ascii?Q?8Ju+GybI4JJbgS2VivaVEDRfYU02ksVyn+8Z+dFEFaIkdZTuRLrHI3DK7zN1?=
 =?us-ascii?Q?LVDekUOC1ypBUQlXKr2k8QP9SkoKd/liEr9zxMBlDyI1NXFhR+WLv7sM0DpI?=
 =?us-ascii?Q?esVuV+D2KMg0KevW7++w1T1P2XTbg5sRg/oGGxQyWw+1w+jVxmf3hMud2dL+?=
 =?us-ascii?Q?Ie7WNWhtYkF7SaYbLje+Ij2Ez9GHRfI1LmRGImCgkcd2XOPIVMiKouSM+hRi?=
 =?us-ascii?Q?XZPz4gVUgLTQruOyj8zDfM3qPGSaeiJnRPq9SZV9RYSodoVszkXWAJhIsDLW?=
 =?us-ascii?Q?Ps/S0BktjnQmJRkGTD43ebzDM6y8IlwnuO/rON20HKp9gMdThe3zB74dWuba?=
 =?us-ascii?Q?D1mca8ZCU531oMc309FTxAp3hcpTM1zMjqDSC2HuZ7gzhynBvNFuq8/l0AeI?=
 =?us-ascii?Q?azgve8hO/B2pBlQzAK659kWLFhZL/0dPeo+8Ip4JrJE7J8awQIP+kWZoEY+S?=
 =?us-ascii?Q?oBN6AeUgwmCKT4voRITr9y5FI3toT4gL02sBedxGir2m2sespnNRyhTjCBrk?=
 =?us-ascii?Q?egqYk300wB9sN98fK0NNkGOxcqDFF4B56HsMLiGuFsppUUBBvPP5FLInPzHz?=
 =?us-ascii?Q?b/+pMo+RUATb170yDtVd1dhLvXNrkTKO6a3NMXHe548IwvXERzy4829qlvan?=
 =?us-ascii?Q?eOiCENKRt8OejSpfuAQK3X67TTr7N6SCzRKnEQyfnBvT345uvw4xt4laYkIa?=
 =?us-ascii?Q?C/D5UvG4CusaBUYdto6MWtEE+EMsIJnrlvkJ/FbPsNzcPX26kbiAv6xfRCBc?=
 =?us-ascii?Q?T27fZxg44tsl4e7dDWQL0naXljuqTPezv8k0UOMxv7vdEN7Z7ZpmztSBh+2B?=
 =?us-ascii?Q?NkqmCyEJZfXgG/jP/gjfPIbRHViObLxlL4Q6ItGZTvd+uBgUoAoM32HMwY2d?=
 =?us-ascii?Q?e0RtFcfagWKRFSuEHmJbstdaiBA3Gj1Y48mehbXDaQvwD/UrCgN6lEmAK05f?=
 =?us-ascii?Q?j1ExfU6L+Ztrr2fNuqrNP3hxa7HkczuMdnFV1aZDYWWFrwEXj1KXl9doLwJD?=
 =?us-ascii?Q?UplmXMI8kWJIY0lVAauplVJxoQWvOgVSgYhcfblNsKYlLCHrBElV2fNhRWlV?=
 =?us-ascii?Q?shcZ4WkXpakmi+tTnmPHHSlGlVdcFw3wFy0XctypCRkmVdwJ/Bk3nIZ9heCI?=
 =?us-ascii?Q?s5wFHrKl7YwzRHcP+Ew6JFUDx9S6JGNS4VzJm1c9R6EoQ/kpr6eJLK8zSGt+?=
 =?us-ascii?Q?Ly/Ht4q549S3avSaAWRe94thz/sU5bdxy9jC65fVo0VaOZpI8ukuZk6N1dW/?=
 =?us-ascii?Q?VDEd7UH0OsWwmK/0cUTet3XKtrTvHk/ArAAuXx+l4rwmoZa9iR26FEj+QWwL?=
 =?us-ascii?Q?TS3BJJ+b8ygMGUPaz8gtH95mik6jWoLxPbeh0Dhz3ktU77Pzh/qSPNqn70vM?=
 =?us-ascii?Q?NzTeTikHhDAzm4EzwHmnqVYRdWaUYFzAZSHtIx4tF1eFxbZw/wvAsQEY5fV2?=
 =?us-ascii?Q?OOpvjMo/U2u54pCq2eE68u/YbwTRObfqH4c3NgjH7a1v7CvEDxBu2JC5Xmgi?=
 =?us-ascii?Q?mbF76tdXLrqt+4ChHSWhn9LWoMVV/l+E3f7+sDyZxfDBfuTj3V8VchvnclRw?=
 =?us-ascii?Q?EH+pAYi+dYAZQITiRxY/++algnOzGoRrxNZNB+6tXo8lRMhxPH4rMsA71Cje?=
 =?us-ascii?Q?BOWSffRRM9M2tWj22rTUqbI99vlFkf94+5vtlkbaijegCHhwICg7?=
X-Exchange-RoutingPolicyChecked: 
	ySHgvKGJjjsPoDilhLCY8iF3pLBXgRv7+Re4DaHUYQpBvLFV+qJO41CggBXzg9oGZXBhm0vtJuRs8hzXRdjRaXRxQ240AxhwmQbwmIp1DmckgFkgCRG4xQsxQdpCejGXWBO8KQ4D925Tb1oUbuuGxZzokD9nV9PgjQGb/CGkmGE9E/KQcRs2z1a/+1GLa4DN/76/Br3RUcgR0DQFbEmHxFv8zy/hkomvU+mted/B7p9vswoNBWzgbj8MIrVzjcFP+J9odILSCDlfJLUKkt3W7zTtA4OSGkQ8sU6+AyPoSx7PSqk6TKD7qRtNTjjZE8Ztlvxh0f/hprQUjDskgICo4w==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d54f25ec-4184-4c30-7ec1-08df1424fffe
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8520.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2026 19:02:06.0850
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RrtFOCCZPyva5uAtPylEPikg0Y5vXXpoMdLIjaoThELssyZ3pNFv/Ys/MbRwf9Pf/SSatGLz5xnvu8R+uhOcooUS2hJ9kL0Gf8mL0c9nimRe1rsJ0olKSht6ATTHkdEs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7169
X-Authority-Analysis: v=2.4 cv=OPayTiaB c=1 sm=1 tr=0 ts=6aaae7b2 cx=c_pps
 a=rF5r1hn1HlY1CZmlW+R7dg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=VdqzKS8jKosA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=bi6dqmuHe4P4UrxVR6um:22 a=fTW__CHxibyLmBMfj2wP:22 a=iGHA9ds3AAAA:8
 a=t7CeM3EgAAAA:8 a=Byx-y9mGAAAA:8 a=pGLkceISAAAA:8 a=omV3DX5TsgvyAcl63UIA:9
 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDI2MiBTYWx0ZWRfX/lBwenktuyQy
 vDBTnMTdU9bsENJqRjSLcdE/9kBSpQSxPp9ETbAnFcGYT4VaD4E3WkSWDRa1QgT6/4Gjb8VcLt7
 0Qq+G94e35XekTxNGjkBoM3Jfz3/82bUs3blWHd5grT37O78RnG9
X-Proofpoint-ORIG-GUID: 5nKh8ZwbYuCi_coMaVNIqOtoVddNUrvN
X-Proofpoint-GUID: 5nKh8ZwbYuCi_coMaVNIqOtoVddNUrvN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDI2MiBTYWx0ZWRfXxOC25WE+EYq+
 03FGTKEmpC7UyG+XdgHLuSv5mBfwrIFViOnSJgNoNxzZtEVapZlhXxtPovXnbPzojMnv+W/9r9D
 mO118oEPwfNIedE+09vpCqYNQ8rrbfJefgCwUx51TxqLiUiYbTLickLMzXPJqNpyy40aKW3PP/K
 LGdqS74LvSik2T3B6PAzlQno7rrc6Pu3Td96nByzCZjLNQq1/8IlyAHvzM1WlIA0ihYr4VVn5In
 dmSF+kENuuByrZd5uAEVMqSYmOGVZR/LGucSjV78u4Jm2KZ5Nh7/NmvBi43Bp0GyenvKj9b4SFB
 TcqfZ9PuFjNLa9ddqkXLjEWrlbK4vUtA0R5tqoWoJSmCBN/MnElJ1FJKjH1GoUr8RsZ//znwq3+
 qiM6XSaZK9FFNxIk1zvoZHkBelpZY+7dlS7TR7rrXl9E+bbecEVKoFbHJ/oqCFbuRiFbRM6kJpe
 LPukFaErjE9VHxp4kPw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 clxscore=1011
 lowpriorityscore=0 phishscore=0 suspectscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160262
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Sep 2026 19:02:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66728

Signed-off-by: Priyadarshini Babu <priyadarshini.babu@windriver.com>
---
 README | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/README b/README
index 111663e..de8c3b1 100644
--- a/README
+++ b/README
@@ -39,8 +39,7 @@ https://git.yoctoproject.org/meta-anaconda
 Maintenance
 -----------
 Maintainers: Hongxu Jia <jiahongxujia@163.com> |  <hongxujia83@gmail.com>
-             Robert Yang <liezhi.yang@windriver.com>
-             Kai Kang <kai.kang@windriver.com>
+             Priyadarshini Babu <priyadarshini.babu@windriver.com>
 
 Contributing
 ------------
-- 
2.43.0


