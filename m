Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A60EC6FD18
	for <webhook@archiver.kernel.org>; Tue, 25 Apr 2023 09:46:37 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.75043.1682415995933980521
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Apr 2023 02:46:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=DaYfTsjD;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=347927f1c6=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33P9R047001743;
	Tue, 25 Apr 2023 02:46:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=MXCedExUjrbV9nfMfdhTHBNYOwBI5piRyYjT8+gJq54=;
 b=DaYfTsjD31JJwc8CKsRmU7L7llCBlyRmSyDV/HaToOun5qYIpMmewqn1GLLi0aFqAsYF
 PHixa2nNjjq31eqkgTVv4IRZahLnd6decrcGhjfeMOW5lfen4uuDSXCruyvMa7itMZDo
 KSDYm+2FumXKkvszZiIjtamzG6G2PocSgII4wyR9p1BLqqKPxzvmJ7n17JrclVuTuOOV
 6gOC9mFDQhnFLR/0Wx3llEfQsglbRK521UPxcBQZ/34YtI8YaPeRCP8tDth07cDE5Dgh
 bkRcyfCFTjHfSUFkoip9LrP3lSdSX3fmy3+BtxmcGOLqECYj4zDhzK4WzQUhTfagVsb7 Fg== 
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2040.outbound.protection.outlook.com [104.47.57.40])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3q4av5k03a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Apr 2023 02:46:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gqHz9uVxRWt4JrLEcDhvrrqjY0Id+ibfhet/r4HIgRSnzA+2iYKIAwV4w8vmp5J0xOZ1LVi33SXwFazgLeSSCIBXaHrmFjJmh66iegMWmxi5fH5IB5jp7ItvsHzyJFc8FvDslxhdtXXyuZ2aMP6PHjkx+uiJSBHM6x9ySKO/phidK1FWM5cBUHBwrDxTYQkc1j5c01n3vrjUGx9duPUSxM/c8nNCG8p0aSoeDuEVh70qPBwiV0IlQKbSu+LosNxquhiXwtS9sOmbZfmxjZJgHIH/SFEPCfADhpCZO+XMU6xq36D4XSv7cuzM/NLi/fxzpZUd5bAHiwYA8QT5EIu4hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MXCedExUjrbV9nfMfdhTHBNYOwBI5piRyYjT8+gJq54=;
 b=Xo2kbVMsCbWrGtOGXZtJnFzA01FFgcVKP0Dmi1F7S7a8tz8Yc9XzQLx/tinAeqtgAfyUqgDtYeRWGMvpT0p6jl4u8GY/gihe04aQ+7UFynrtWGfYcEuoy8607gcQAAY+0vwu+A9e9GUDaPAfQjDXkEr0y4+JcbJWvtF/YiYM0LHQp3oH+MQAaCZy0Gi/LwxIpBw2CGo/0emEe5f9+Z57bTZuLDtkz7zkJn+H6AG4KIyKfuHYQkyU2yvWYFxHcxYNL+a4+n0P+xbYaNbRtd4lsilK8NgIBCWPQkyBpFQ/xjDShYM3FGI9TLmHrl9aBbaXjlDwLrkTzJSsG9oeGz0Xfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by SA3PR11MB7527.namprd11.prod.outlook.com (2603:10b6:806:314::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Tue, 25 Apr
 2023 09:46:33 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fab6:ffe4:3a56:6428]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fab6:ffe4:3a56:6428%3]) with mapi id 15.20.6319.034; Tue, 25 Apr 2023
 09:46:33 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 1/2] setools: upgrade 4.1 -> 4.2
Date: Tue, 25 Apr 2023 17:46:19 +0800
Message-Id: <20230425094620.1517154-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI1PR02CA0044.apcprd02.prod.outlook.com
 (2603:1096:4:1f6::6) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|SA3PR11MB7527:EE_
X-MS-Office365-Filtering-Correlation-Id: 12a68656-a073-423c-5934-08db4571f3ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2Zztqt3+0JR5/+xP2HKcTae7X7iPdMB8/3P0CbVnHTY/e6UEMQY7ec7dnBFB8G+hGX1UjyG2XWCDeS0aWJ9VSLsiy/2nflZqNrpVL7UUotMu/2qTsvIX/MWdq7jev4b04lSfXkScwwcSKt8+fyZRQO5iTxmXTLuT/pdPjttPA9KbFCb1C+CFhrHJ2t+Q1oNQ+TSWPq7MhufMObTFC9oZLwnlvWJwBvaB2yt+d8+mYU5vP84IjRlXwqlC0vBcRXUJhBLMsG4tjxqXOi62HnllNJ5SxknikvWTUFzYvPlXr31+3OfIjS7XL/c7jVauMYYIVgZVPWZJNnw7vGNhwTw8InJU04nJFBMRpnyYIQkGVn9GkEOqcbm/8X3khHukRktoB7KjH4+X4jq8d83LQbqL68C8piPA0hPUHUSq3ooLDRBeKOZ0t9WxejBO4b8yelHLsRkgCyIyVe0KbQpN4VNH8CBAoBNdnIaqtfpTYhiU4Ii4AuRSPK8ucPnxVtr3Hlf7YwFyXUcDN0pYrSs5PTrOuEZIuqY4rcV1gjMBBaFg6FPhQQS2oJPKhdKo5BalU/A/OaU06pqUAMuZmv2s6sPaYZC+vJILtRNzwgvBljoqy8A=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(136003)(39850400004)(366004)(396003)(376002)(451199021)(36756003)(478600001)(316002)(66476007)(66556008)(66946007)(44832011)(41300700001)(38350700002)(2906002)(8936002)(8676002)(5660300002)(38100700002)(2616005)(966005)(6512007)(6506007)(1076003)(26005)(86362001)(186003)(6666004)(83380400001)(52116002)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?mcGxO8sprIaaknDOzLSMNqmkrq6V8xuis3Mhch/M2NW1UPf0/Je8QdjNx3DQ?=
 =?us-ascii?Q?sm6Gmm0Ukf7rkq/DybJwIES6oVwgvPuHYJ66t9xhYhReK4/VSR0Bd6mGbpEm?=
 =?us-ascii?Q?9U7cdegyFwtdSBXqVK7xWI9lk7zlMJuUBIwwKxvY6Oumj41zBx1fIhF56h4H?=
 =?us-ascii?Q?CR0a7HL4tzs+5HM2sZ90adQH1QLr8Zv7RRdevgRoTDiwip1Imx34p4QQFEew?=
 =?us-ascii?Q?HlAtcUh9UNp7zeMiqKVJSERC7Zh+xJUMeHb/Dy36AsmnUlNyIln6zTKsm+p1?=
 =?us-ascii?Q?wyN4dRN+TwHlPbJUxNiEw1JmbSeufeQhT3ruYTPwo8MUkKU2KjWQsHuJhQUf?=
 =?us-ascii?Q?f7Q3gUf6UPE3DN5IcHoeYYEBom3X0Q56Ur+uJ7k3zewxgRNERJ504finwtxb?=
 =?us-ascii?Q?ppCcZWu20hRcNd8ma/WZQBZHebYzqPmhGoMY2fw5uKVZtssJVpPD3NRD1+To?=
 =?us-ascii?Q?fzB2iu0nd+SebizkWzvJs27MuqS9DhhckY1u5TnGnR1/HUfv064Xo9+I+zmR?=
 =?us-ascii?Q?yPu65XFo/4k4+A3C6eFc0Om+bAH3jwUdHyT5mjMUCoveHBxjBtyea5KX8W/E?=
 =?us-ascii?Q?TRbz6EXGdArhUc2VcGqGmmdHtNvEmgqPjS+fx29HzEIi840YGS6f3GzneyKv?=
 =?us-ascii?Q?llxJ6ixjKnblByc1svmVAgBCdWNeDTyUFAR6O5YzNmsXWCEE40eJgKOZ4AI2?=
 =?us-ascii?Q?1ACMdtG2aWHdiOLL7E0orONr9EB/28gXzyFgCFe1rFXlYSp0OhxadLPAHJJp?=
 =?us-ascii?Q?8uT9XoDvnmp1p+N0CJSrWz7AlNoOuG6xsw0/gzV6F9pEQlM+w7rOnOdTRUDV?=
 =?us-ascii?Q?e35AqZlgV26kGqcTL6QnLMcZy91RBSzEVutwDFxZWEDPqWCOZGblhUUqAlYR?=
 =?us-ascii?Q?+SI9ZI6pWGzi+lq7PN/9lbxpf7TZDfBRcZ8qk0tlw+gK6qlxQzmnERuwHT42?=
 =?us-ascii?Q?Omx+fp1RJk8IfvPwkkSFYJ9BgazJjlwFLenk5BKmQxl2gcDHMb1HlT08w6nF?=
 =?us-ascii?Q?rGdQoITx+1hXmVoBBJIxGm3XWOP2k07ZCLTII2/QRIiC1azKeTqRng4kVWk4?=
 =?us-ascii?Q?C1bNiSwDUVnSrZct7dwz6ytAIWt+BryWie2ngo8EyxYhyMUBATfhGvl4tqph?=
 =?us-ascii?Q?Ib3NwByKLI4iu0Eq2xYSbcrPKRjoM1bZGMzDUKIl3AOdim8qUhd5UTxuzEpa?=
 =?us-ascii?Q?eVfKJ7qDzvJOreA25GZ5P5YhCF/Bj74ekymMZtonzKUmz97gCnBifCovlm6s?=
 =?us-ascii?Q?bINeFtml4OOxQPXX4QhXVbrhQy4NBr+zWPPUjny8uA/foIDW5u4tPBMCiuP8?=
 =?us-ascii?Q?XvnBZtH6nld3PHweFTiM68nd8kVDykxhFqeHFzUCoAj3naU+79WDOKh0ym6e?=
 =?us-ascii?Q?dC1No1+8mvxDZy4Zq5rfSzvzz6TUxXxU27qkayr/P0ruxK048k3ectEUbnax?=
 =?us-ascii?Q?D2gkOv6zq6r/sr8gDCG1nUi0HBSJp2fOqRooa/aZDK7l3t1ycNtaIhQKJhKv?=
 =?us-ascii?Q?J1LheqNsC01yoJI5l3ZLlqjFEWHfRI0xWCfQcM94lWs2RwPmtrXaMeJnVAxm?=
 =?us-ascii?Q?ElJbTW6LW4MP/K1qp7Ara7lX/bpHvWgqVN6hPOyk?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12a68656-a073-423c-5934-08db4571f3ca
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 09:46:33.3651
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G6afWDvrbX8wBrzy1fGtbc1wmok5ivPZp0ws44SM3VsNzNSi6gGdHgtyxzAa9i1ScWmXwMTd3EAJDTfBIMVzaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7527
X-Proofpoint-GUID: CIdLmYvPUQ_nwbD2u37m1zn-4e0sS7oW
X-Proofpoint-ORIG-GUID: CIdLmYvPUQ_nwbD2u37m1zn-4e0sS7oW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-25_03,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 spamscore=0 mlxlogscore=999 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 mlxscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2304250087
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Apr 2023 09:46:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59775

ChangeLog:
https://github.com/SELinuxProject/setools/releases/tag/4.4.2

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/setools/{setools_4.4.1.bb => setools_4.4.2.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/setools/{setools_4.4.1.bb => setools_4.4.2.bb} (96%)

diff --git a/recipes-security/setools/setools_4.4.1.bb b/recipes-security/setools/setools_4.4.2.bb
similarity index 96%
rename from recipes-security/setools/setools_4.4.1.bb
rename to recipes-security/setools/setools_4.4.2.bb
index 8ed8f19..4e41c69 100644
--- a/recipes-security/setools/setools_4.4.1.bb
+++ b/recipes-security/setools/setools_4.4.2.bb
@@ -8,7 +8,7 @@ LICENSE = "GPL-2.0-only & LGPL-2.1-only"
 SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
            file://setools4-fixes-for-cross-compiling.patch \
           "
-SRCREV = "bec5c81d4fc41c45c63f0ba19f132fab94f8d2e5"
+SRCREV = "d8d0dcc4c70c858784b56c5400203d52dfe01755"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=69a7b68f0a4a570d7c0c43465333ecbc \
                     file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
-- 
2.25.1


