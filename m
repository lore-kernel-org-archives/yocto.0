Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87A2CC4332F
	for <webhook@archiver.kernel.org>; Thu, 24 Nov 2022 03:53:27 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.15601.1669262006682014475
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Nov 2022 19:53:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=m/HPQIKy;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=8327d198c7=qi.chen@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AO3rQTw022746
	for <yocto@lists.yoctoproject.org>; Thu, 24 Nov 2022 03:53:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=nMRLSsKKvu971mtKY+yKaMw9jBP1ukN4HdBvIM/USu4=;
 b=m/HPQIKyOW+VE8ofejSVXKq/rk5izE3s3nj5CgmyDSl5Ht3SXid8Jny3BmQc0Tl0Uj9Y
 3/vVhtwV/mC7bT36ksTN/brBanH81qTvBPUlnhafyoICejjg0WGYTZtI4+lkvKLTM0E/
 koCrIX7aFHqlTIgERh3EddiBWqyHEo3BFHnoRcOy6OwRgG8o6Z1vdNBL0wKk2UFqRBoa
 Q5syEMyDQFAi88iSc8geGndGGcksEAryojY6W2MLvz/UtogCTNPDFa3leLYIy2z8y9g2
 hjD+vqOBTApSrq3nXX9fWyy3XlKqV6NghORTORpNgJC/lfy0x/k90HXM9Ns22XkGb3Lt Lg== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3kxnxj3y1y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 24 Nov 2022 03:53:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V6nPn/+P9GJHH5cMTXx4IeEe961IAb0W6mTKXQOpSz5b/bIWnAyC+1wbiglTzw2/te9Zfqu0RrRTSSEhVupPmtX9n+iIImLL79D718kniLGnw2THhR13IPF3wsE03LcM1wg9GvpF7JunBt9cq+9YDFE76rcSnLgFxtiiGiO2VKFpvjw4YO3eoYchtByyFgd12MJs8W83qQ/yrwu6dQadtcB1tnGUp9yyEk8PkyO656230alT2VeEItbHks540OoE1cQ+4NKZCkoeUTMsYnnuIF9f6+MKZ9TyUGHlBwo+TVnx5b1qg1cGM3XC/cwOc6vYjTZu/ieX2ENlmL/RPY0WCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nMRLSsKKvu971mtKY+yKaMw9jBP1ukN4HdBvIM/USu4=;
 b=VUyir3AxAmDZRPDVCA6R+Pz5kY4fn3oT0aS41d7ML6CHwhJ3N5Pruhaq+NOFNRmTw/a/qaU1sE1KoUF0QT4odIYIQJhI/kI6NgID7od/tJTCAbqDXRjRXM1sUytoYhhEyyOvivsxTPjqeW7swFbef6T9ADBiv0tW15Hon710NpQxWFPujWxxQ7jEiP8zfIxI4hhqneaIh2xd/YNDFKDy3NwOkq6x5P/5phufSxe4ZzNziLsFtAHPzO1EqqBhC9NKunJQeZxErV4fMaqhSMCAIGx+7ZxTYMkBvYW2ZRUeY/DEJBEq7M1UBAKgEKCsRbC8oy4NN83aHSjskZUMAecCBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by SJ0PR11MB7704.namprd11.prod.outlook.com (2603:10b6:a03:4e7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.19; Thu, 24 Nov
 2022 03:53:21 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::d8ac:d3b0:6765:63f7]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::d8ac:d3b0:6765:63f7%9]) with mapi id 15.20.5857.019; Thu, 24 Nov 2022
 03:53:21 +0000
From: Chen Qi <Qi.Chen@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] openscap: add libpcre DEPEDNS to fix do_configure failure
Date: Wed, 23 Nov 2022 19:53:11 -0800
Message-Id: <20221124035311.87684-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.37.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0025.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::30) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|SJ0PR11MB7704:EE_
X-MS-Office365-Filtering-Correlation-Id: cc9fc7a9-697c-487c-c50f-08dacdcf6df1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Dvc6jWbE9RFsKMk88WPXM2u0mk7WrgHCCqf5SVlRhO2mTjfUtE2P2Gk5Jfj4IWoOdVMBZnyycEP6vbxyWmNeWQcKhUbjTjJORWjPAnRDnBZehvz9Xv1FMRLjBpBvAmjsWODF1//HXxAqLHgX0eGtQwB2RJ7o6RHZux3qt96KMkQwwCT0f7XZEiya6kV8YlPCBcMFHkltV1K3WbO2IKbuBMTAjFv15kl55S/xYn+GkxyPKhOzDDbeQeplI7T0R5jT8/qtNgLirQfb1A2qQJVuazTLKP8pFtmf+z7GKx1g/i4hzGHAoSFOZ10HBP1+qPp27GLP8vbN/Yk1a7O/7IipJkQSg5eY6NR1SI6OkeOa+awRVlp6MxMSQlZdrNaOFgUGoQpTa1G/fAKpuz2AHKivW6MQ7fXVWXAppTLdb5Zo9IMK6NSSq9RsFrKB/O32UWnYRBSYXKdp2aoQKQwIBLtBxPSiqmecSu4N9fla8dOl3AGS6d/dhkqO5QnO9auGVrxoXE/oUHTojJweXlLsRSTsA29LRZwfMp7ojmAPQNGuyf3BphQ0dxUgAkO3nGjcWsiotnbMCPx46gxKiYa+SJ1lwgtsmhHsAoFA7BlvJ0TiJVMTKq25rrrX2cbRWDByr6nf/yJYPAP+XUmWU7Tn1ij5sKj0gUfv+Cphzj40Iq7P5xCozvae1eNiBxVOcmBuCiejxKTHgMZGBJ+T393kA9ChVK2VAd3x5XEB6oGYKz8s1F8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(396003)(366004)(346002)(39850400004)(451199015)(83380400001)(26005)(1076003)(2616005)(186003)(52116002)(6666004)(6512007)(6506007)(86362001)(8676002)(36756003)(38350700002)(38100700002)(66946007)(66476007)(66556008)(5660300002)(41300700001)(2906002)(15650500001)(8936002)(478600001)(6486002)(316002)(6916009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?V5rnaN1R2zv9MeI0jgZIGQaEtxTOk31TNzTqByuvtqamWJC7EKHj4id24O20?=
 =?us-ascii?Q?FwrS2VZYGaNjVcf96U/4cOvxPIbb+u8q88nTam2Api+i2+Xs0DCj7MrXTpcR?=
 =?us-ascii?Q?Ce1ai0TOFue6PdAS4VOQ49EX7MSMCfdAuvJ3wViQnjb3qO8N2wXg3WTXLBQI?=
 =?us-ascii?Q?fP8QvIVvAdOUoGuWQYp6Fj+1O7Td+ILHt7LZe1t73DJsHH2J+OaYfa23sCO1?=
 =?us-ascii?Q?MU19iJ6b0YyPc/+G1OkG+4Wexxf+YZSIFN4A/FZPwc8m99FJ6DWNRDRBlmPh?=
 =?us-ascii?Q?7PCO0BWioFrsyntxiWRD4agGrKWB3AIMSHFXrb8kcPyNV6RSnxLHusVpymY3?=
 =?us-ascii?Q?bObSDvKft236kLJBmmSN52beeWc+loRIeg5cMYCNl+o22re2EIWoQysaIGdF?=
 =?us-ascii?Q?AfnIz2FKaT8dq0lS3XBxiuMHkAHbLjHkA7PZh+RAfoxLWigoMrKwE/XKYprc?=
 =?us-ascii?Q?IlRgB1wFJdiv9OKUJigXqULEGA555oUcWbLWwCFln3S+OhkBGGwj0AVk0711?=
 =?us-ascii?Q?c//zeEFxD71Ui0Qz7vCNDaX9/s9gUq6SLC3FQUgZoQxMmCIGWCQLPmh3UodH?=
 =?us-ascii?Q?iYyjB+LMuCaw+ZV2dH9keYIwHgfhqRrdBoTW1gN6OtZlshcQ63z5+tms9xdM?=
 =?us-ascii?Q?QSlWoJ6MJUry4ow+vttd4irbDmmWiijhH0VRCtkkhW8Os0oJ69GyqoBFGddO?=
 =?us-ascii?Q?29rYIJBS/p5TmldJ1S9cJXYJuTFiAbLy84PdELfVrmLcN6fEtdaxqPW5Kz5j?=
 =?us-ascii?Q?AidP3RdAin7BuDcgfaRCYnbOfNBdTDmYwBJaA9omovunp2pNeqtuYMK+RsOf?=
 =?us-ascii?Q?TCxfUSwnW9HKzNwXL4jlzWcjUlZ2uqeIQRsUFeoygVJRSbskj/D2JdSda8z6?=
 =?us-ascii?Q?XvOU7wfhoUqSeDoprON5exqcZt/Ka9E+PJd0BnzOqy0wHE2vjmium9nJUEe6?=
 =?us-ascii?Q?sHPxnctIaFoJ3csqrbwoReqFScKc/B1wKSxEnrQwbXrdde5EgDtoatqd0Vgu?=
 =?us-ascii?Q?xJYR4sZ60Ut/98euacpeG4ZR+dHDaUUhom9vO1KXaI1ct7NvW62Chzs4cHL9?=
 =?us-ascii?Q?GPOqtAfxfXV5gX+3pRH1dNl1qJJKstoVFSNnSUfJ7mPjwG+4KFasw9jcXVIk?=
 =?us-ascii?Q?Z0pEwP7Q1WAB3i0WvojMUk23RY9uhcIvrP3lNlOruV7daf/8Am5a7x28Hqi+?=
 =?us-ascii?Q?yGjGNs/b8Fq4XpiiCvi6IJCt1qlmNeHThcwUgROY0xKcex/PT27aVQhlyvip?=
 =?us-ascii?Q?ylI94vhmOamHkrkevIfdiEtrtrYaxNsU/GiCzinZnUuPN8EcuW8TZOKsTc4u?=
 =?us-ascii?Q?KH0iMh/DYaNjk/ItdV9wGO/8kP37JgQudcJ3GrSBNai/0T/gKONE2MfmbTOA?=
 =?us-ascii?Q?wTysZg4v7AcEcDuctUnpUQH7GtPam6P7HCDHNXfQxBGV5tD6sO2y7ALYo+C1?=
 =?us-ascii?Q?qp95dOzQD+PFi+u9xC0TAO80rnWQsYily3SgVOhVvMzCQxVxGOxScNe2CceB?=
 =?us-ascii?Q?qP4jwEm1N1CJWgsJlVrivVrWhNju6JX4797cwbavLs2kajre4jQVYAhTB1Cm?=
 =?us-ascii?Q?5twhe5kIpjQ8Yl99WG8ifTukBiToQIyvxWpK6rtKeI7gxMp3OTVJ9xWoxeW6?=
 =?us-ascii?Q?Dw=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc9fc7a9-697c-487c-c50f-08dacdcf6df1
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2022 03:53:21.4393
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WZ/1+jMxIALaH1NOGSdlQz68VCkGszAQi5oEN+oSTdPdOox93/3rDEC83fmhEE9z941a3KZl5szM+6rKGw2HzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7704
X-Proofpoint-GUID: knkycsswCT2Ly1dNbAMSgSgit_Cx5XF2
X-Proofpoint-ORIG-GUID: knkycsswCT2Ly1dNbAMSgSgit_Cx5XF2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-24_03,2022-11-23_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=789
 priorityscore=1501 clxscore=1015 malwarescore=0 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211240028
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Nov 2022 03:53:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58630

swig has switched to use libpcre2, we need to add libpcre to
DEPENDS to avoid do_configure failure.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 .../recipes-openscap/openscap/openscap.inc                    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index 4babcf9..e875227 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -6,8 +6,8 @@ HOME_URL = "https://www.open-scap.org/tools/openscap-base/"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24"
 LICENSE = "LGPL-2.1-only"
 
-DEPENDS = "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig"
-DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native"
+DEPENDS = "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig libpcre"
+DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native libpcre-native"
 
 S = "${WORKDIR}/git"
 
-- 
2.37.1


