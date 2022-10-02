Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6819C433FE
	for <webhook@archiver.kernel.org>; Sun,  2 Oct 2022 13:54:03 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.7758.1664718840964481755
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Oct 2022 06:54:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=XeeBLcUm;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=7274699444=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 292DmDwK012274;
	Sun, 2 Oct 2022 13:53:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=7H4qs+GRhA9Bm400/c/pqlHlrvS0gV3XWnzBeuQwDXw=;
 b=XeeBLcUmwU7qOFA7dwjMzpjuka4UU5U6xnzsvNZXobDXeh3+dnvfze37bpHfYa2iQSsg
 o65f8WK93LZxl/QQeAqzvGiXZF3+Em3I+ko7NF0no+MxoPJuvI58ymaY7ZBFG3WdUFn8
 UYzWSYSuRNHQTLx3oH4w7SNxqx0cFVl2bUzxx3lmm1w/YshEnxnewhKqo/8AF4MeCwZs
 MLDj/qO2orI1gh5SaT6J30hpxB+wYTvIB4g7iC5Cq7zfIzRVIe99VDj7qVS8EeqBCqv8
 O0LrcaVqSlJv5wdbNWQT+mW1xvNbnoc4lKkEgXYpgpAggKKWPnOlQmCIJhkREede7mm1 2w==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3jxch9rypv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 02 Oct 2022 13:53:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hJsiQgwhGZaL4WBihuhpCkcvF+7VoQ8u5gy8GEo3/1FFjqvTzh4jmmqvQZjSL7gDlEZi20LvLGGPa/Bu1hDrp6YgDFdMj+F3bfdeOcHps5uVGxsfg0KffJI9JuanCBZwyj9h2lf5h59vc3rfUCXpKuomZdXFfGpUHFNt25cfktKleP78kNcSY7V+07uCSKejEWV260JR4MDNcmDFrlsTa1Z/0boHVrgfauETe9OoTpYAvSlfOzKvMVLFexUoIItkxlaqrQYkq/WclewnujrCQ5mo2B8VEulyfpyk9gWTYZVUND/Zrvl1qMn4Vgi6S+SuG1IXJAM+dvDfEgd4BFZJgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7H4qs+GRhA9Bm400/c/pqlHlrvS0gV3XWnzBeuQwDXw=;
 b=E8ye50SKKM8PCkA51dDd/2EORBz1SdAMABA6BBJmI860cuDA8kPezBV4rZD0ZPA4MKna3qLfrN5VsZCShYrb9bO6iIu9Hd9u9hi+rFReRuB8/r3/aBOVQBGjLJCR3jRbwTbeGVRD2dvpzF8YsN+k0Zar9XkAy9lK9LMQT1frski5ZNMIefObO8xET1qkq/iYptSxMERVvvb/WNpKwOtCjQ7e6ukMoz8b/Isc5xKd0e+kyqXrx08e+r1hB8l0zKpH4MKmQLq5I/UNjj3tbQBuj/tzTANLiyFxHENiPbnMRCq4FHqRt2mFe9eBn3X7uIQD1jnROZp1eT/YjQAoh0oihQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Sun, 2 Oct
 2022 13:53:56 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8957:e965:a52:2366]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8957:e965:a52:2366%3]) with mapi id 15.20.5676.028; Sun, 2 Oct 2022
 13:53:56 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 1/2] layer.conf: add langdale to LAYERSERIES_COMPAT
Date: Sun,  2 Oct 2022 21:53:42 +0800
Message-Id: <20221002135343.3039016-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0012.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::24)
 To CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|PH7PR11MB6676:EE_
X-MS-Office365-Filtering-Correlation-Id: 45e9d8b8-eaf7-461a-00d2-08daa47d8c80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IWc6ubwKZWmkEXsyRLfEa+qAOE+rAaj1u8dGpoRIuiUJSVY2oGbF02X8qOzyfVzXb5nTzVkFEJ+vQimIZr1y9F8dlmU1+V55ReNLw0Qu7xCIxV1w06Sni/baI/5wxYacJ/IhsUq0FIBZMsor/H9cv378RWD2Ju1eu94aD5gzSf25+6szoNAlkfgNUUgd95RQ6bboUdpCffctwMgiR4BxbQ/ZWFIRjnRHpsdvTZk6+pSz29BFu8e1BnH5wEPB3jjFjbPQdA9Era82HxnmeFW33E4ZZavsCzrN2OEkfnfXbNJ+bSImJ/KD+sIOLSPWXQAHqo1+QC8EJyC9ilbQjgatSIKnWhvHLr4n5swzvBPVLMAJZdZtyZhx7xsF485gBe71naJxRhCxFg+ps5tXf86Sz664Y8nY4a0j7TnThoAuTwzLdRm73f6CVuoJsyGFDWDZE6xVKt361LXAwNt8rP5KvzpdVhITWamA9jO04faBCj8l5Mn2AwHq/5zhIQAKm/aBiUATxSRb7ZV+rSXs4WdqT2uj9HXnqhAYuGcZfI38CcD8nofv4cKYt1+kqKI9zIiC9NB3cTCUcuhBQtliZA3V9VOL0JAmv2LDVlif5+VUkNdtt7IZmN5xkk+HdJ1PLZqsrFDOA7FZfRFwsy8q6VBnh23+w+A1D6Xursx5mY6JBPPMx2ktZcKQOjgVpzvhv8C+3jjdNwUyrYrgWZLxE6QOzx0zGuzG++rmAhvFKrwp1JmGFa2RMCYKTkutzn/o4v1H
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39840400004)(396003)(376002)(346002)(366004)(136003)(451199015)(86362001)(478600001)(6486002)(316002)(8936002)(26005)(41300700001)(6666004)(66556008)(66476007)(36756003)(66946007)(8676002)(6512007)(4744005)(2616005)(186003)(1076003)(6506007)(2906002)(5660300002)(83380400001)(44832011)(38350700002)(52116002)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?rhT2PE3VYwH8XAfklm1DWjPOrNkbx56FdDaAC+WOpuIX6FcXsux53N+u8vVz?=
 =?us-ascii?Q?Se3GQjkUfn5RZIikoPZUkNFV1jdkthtiYGX5ojAgtWI0qERrbw21Tzo5xUIu?=
 =?us-ascii?Q?gDP/lJFpSaMH3ggMbfMsdwaUytScUzhQBAIBRF7dJ3yQFUDSTRVvctndmts+?=
 =?us-ascii?Q?Dl/Z+cStEos4i0Gz/X0y+Q2Jh8RHpetf1MPewWBQbvkyvFEDAGVURnv77SEo?=
 =?us-ascii?Q?WhRNOJDMdKbTPQh4EW0OiDlJtu9xRdhCHqu4/CKQe6I52/0yVlbm7vnle9Pk?=
 =?us-ascii?Q?8K+AfOn/i+3GDiV0MrKdgMzs+as8bJT0Z+N8DR+DMJGMjwyGyJJb1QeiQJ/X?=
 =?us-ascii?Q?b2auHDtdGVV+TlqyiUQ/GzWBTwtDWG10wYokiBB6LFQXvtEf16m1nFhSOx9Y?=
 =?us-ascii?Q?xPtjcoeZ9C5atItARVF9cojoPfqF69AbXSNUtgfMRhgU8JMgIuSsstMAHCby?=
 =?us-ascii?Q?FaBt4VaF/g8SPkgpwbp1XxHImPBXpmrhqT/7M46Hil4r4OsUAJVeoFun9vso?=
 =?us-ascii?Q?pobHkWLLLYSHtZlmrNtRYtORQHguhgIJgAC0kv/GyBzKVe4+MW9YZwWfnP4c?=
 =?us-ascii?Q?0EKIEZ4JEzsuHKCNIIOfxN/4ssqxI0Ku4ZJ5MJscQyULBRzEqxF3sHEWNVvF?=
 =?us-ascii?Q?pXLpHwvYRBH+cMhe4v0cdmjgnXlmkEfIgQTSd4bcl86Y0n3LZpOBp4TG+iY8?=
 =?us-ascii?Q?9Q7o5UgEI0o5EqKspntjlouEKEt9SdYXpSYSNGo8vwRFERBFEij+bp0C6N82?=
 =?us-ascii?Q?nJiMcZqN5a9QJSfe2FoZrI9SwOkPYeDBFmTlFKbQjUQKvQ++YtBdtemThp8c?=
 =?us-ascii?Q?YoXzmlfxMPAOkXZf5uMcubzytK9j9JRTXWwy0bIsi8hnbXv+JB80ZwnHXY3c?=
 =?us-ascii?Q?hyMIEpoDawHfgcuElMzf6GHfwgD2WVLN+cgdsrt7ZLNfxKvTj4sV9S6QKMMZ?=
 =?us-ascii?Q?a7cDyscIZVL+02ZweXPy+XONr/YG8277ly631+WT+NinvkowWZWCx0A8U4EQ?=
 =?us-ascii?Q?SG0KaJCCH68jZUiqpZse3BEI+T0p1V0UpMYBx0SD92gb7RPKaurDRtprR0Ms?=
 =?us-ascii?Q?IlKcqQ19Bw4m9g6aaqfxDyq2T+dZxlbxnpbrXyBzu7AfSdyyJCi9xvW8r+MG?=
 =?us-ascii?Q?GVKyCoS2gU1/ySW4U7302EaSdpTt3YrjUlBJVV027UFFTKlDtqMXJqBQ6wWz?=
 =?us-ascii?Q?qks+PNnrONV/1NEcOKGSWRSmq97Q7GckZ+TMR8YpLdLnZ8wrWiD9YYCypJj4?=
 =?us-ascii?Q?ymv8sR7kXKCn3r3vdzEETFPJRNVxPWkj8ZGBMRJQYjlm7HY5NnRYj9nGmzOJ?=
 =?us-ascii?Q?/ytO1b9sXZFQ6jBudh1Mv0MeqAlMi5khfP/u6UIuE2G58iWqFfLCE9M59YPi?=
 =?us-ascii?Q?1KvokAru1dOedEzI2EAWhPjrtQl/wv6a52ef3++I1h36hM0SaafXzse8MEZI?=
 =?us-ascii?Q?N1zWQVTibJpxkLxSV7rtthjv4fRQYXqNrCj8YlXu+4GiZquuPezy60PybXvN?=
 =?us-ascii?Q?wBfwFa7t0vCngKA37wzfULQJuxwhzESK3lXD+bFqmR6TMa/IYzB/IObLZWA7?=
 =?us-ascii?Q?lFfjfLBl1eBonywRmGnBy+/Ap1TrRmD2TTUGChlH?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 45e9d8b8-eaf7-461a-00d2-08daa47d8c80
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2022 13:53:56.4707
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 26/AbHeqfPPRZlXGVAGuZxzIkNIfDiH760uY2sbsBY/5sTma18+Jof5m4xsFSfpUFKwRpUOmiK7UKvyJiHpukg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
X-Proofpoint-GUID: ERSYAdy2WV91ULnZP9FKr5ylmJwxt7g0
X-Proofpoint-ORIG-GUID: ERSYAdy2WV91ULnZP9FKr5ylmJwxt7g0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-01_15,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1011 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=780 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210020091
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Oct 2022 13:54:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58249

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index 2e21879..865ed9f 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -11,6 +11,6 @@ BBFILE_PRIORITY_cgl-common = "7"
 
 LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
 
-LAYERSERIES_COMPAT_cgl-common = "honister kirkstone"
+LAYERSERIES_COMPAT_cgl-common = "honister kirkstone langdale"
 
 require conf/distro/include/cgl_common_security_flags.inc
-- 
2.25.1


