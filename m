Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33B17C636D6
	for <webhook@archiver.kernel.org>; Thu, 23 Feb 2023 01:44:26 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.1258.1677116659512573147
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 17:44:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=DkuZ/lW5;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=141849fe7d=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31N1hRP9013923;
	Thu, 23 Feb 2023 01:44:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=rozbxeRjiLcJ6gaWy7d3Tt7omo0vgxug8kJGxmPoE78=;
 b=DkuZ/lW5rACQysHvA4quksliipNcFGtUSO3M5koJjerpg0tr0ftNG9ikE7N6hnHFtxZH
 WK+59Mwql4KeRZkkA6mO0Qo8CKXPJf0ukBw4sy4duB/8B8JEOtLimnqLoEEpKmDgka+C
 anDgFyThorq8sIbxEP3hToQQizSbrQQTn/XwT4zkLdwnnYkYxCuPrQFX+UzjLUtkHRCQ
 qXyrk2C4B0TB4GJdvsFsi895RcT+Xi+TjCfvgS9xDoSH0NgbycVlFHGSneM52TaPh7xn
 Fy1T6n9IJVTg78mQP7Q+LUwh6Yo7M08E738UKAC1si/2dmFxWJoQoqHJur5jkijwHCB9 eA== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2107.outbound.protection.outlook.com [104.47.70.107])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ntpem4cg9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Feb 2023 01:44:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SudpcaGcExIRGIfSVLG+My+XnwHtwHWV471Y64lD6yE7Rg4r0oEOZx1uT3k9Xbi7od4j728sxrQg7h5EsPEu9n6yTwymYX50aLrR18AAXsQy40MR69f3AFJw/7G4mJ2Odg/zdSKwUJHwAkaCNnb69gZvx1vBvwaNZuHr79waNBM6HlabICEFaSHH6NY9xtn5CTnwDE18WLLoveuQNhOZQpY/DeOnLWKIJAqfhEmkZHGnsOV4lwqcIaTxt4mWD0CitAguZ5ebiFF4foPojvxZl2oKcxIe1VGrnW1QVYldkKz0n3yFCJUnwR8si8Of+ask7eYI/vwuERx2zM0B1fnPMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rozbxeRjiLcJ6gaWy7d3Tt7omo0vgxug8kJGxmPoE78=;
 b=VcF/Y2vdNr75oixk6eznQulwvWIogDF0GEgcTTksXugP6ag4QPlNQBCdTqj9U8nJmcnKbA+ls936SwhwRd7O6AIbhORZTz+TQyuWVnQT2LngK6ilekuwh34rzMabAoENVkU1ktdNOjeSRoaYDCjQovrqfeoE04jRqWJeDmCSVrt0HXmaIaDlx+key932J32zyXdq4aCDVaOzO+ET8X+V3zBF7te8VzPJq7c+JBokl4j7irylo/2za6veGucPVo3KHHut0y/ePTmsHZQdA1MEER+WwC4jj3LX2E9YzDWoRJruvsG46iQtc6OgOHHCSg1X6Du0DMjSpVbGULHcPSui5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by PH7PR11MB6857.namprd11.prod.outlook.com (2603:10b6:510:1ed::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Thu, 23 Feb
 2023 01:44:12 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::3cb7:edf3:7304:982e]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::3cb7:edf3:7304:982e%2]) with mapi id 15.20.6134.019; Thu, 23 Feb 2023
 01:44:12 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 1/2] setools: upgrade 4.4.0 -> 4.4.1
Date: Thu, 23 Feb 2023 09:44:00 +0800
Message-Id: <20230223014401.1558363-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0191.namprd05.prod.outlook.com
 (2603:10b6:a03:330::16) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|PH7PR11MB6857:EE_
X-MS-Office365-Filtering-Correlation-Id: 93f2e799-f3a6-4101-562f-08db153f766a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	I2hQAnITQoNzikjy2y+r02P7TczMRFExW+LswSo8Od1o85e8no3r+6/IWJTcGSKfMRDlAU8SityDMiCDXuI7g1iZ1rFU8RF12C7Yhg3+bOcBghE6vGW/BoJEQkK02lVlvFl9GZCN19vyPdhl1QhrBA58CIK9fs1EGYG0S2tp67I8gmclW/ryPoRo2ex3hgRd+dTnjYSjDo2Z2Nm1LYZnWSQpbZ3yYGrvuH8UO3ntN9zzCO47P01Ubm5WeTfRVlN3hTJ/MGJHHRBTtLebAbQIjilSviVMYCIFPFiJFOA8tjBlLpsVqpuzrrRWhGlB/MsAdLK914IaVGxY9g1M6EofxuB6SXOnbQ1m7jiOO13NtCEPkGfr3h1X+zaNQoudMnKv7VJ9HgFl/jIv6bZ/lUq6unjSfu1zqHmKQr0TphwrhUSRqIcWnI4CV81KhHBFe+k7andsuS/GTcwpZ/Qh4whXaZEA/37YC6II+5wS5/FgVCcZQ+Wyv1KYu0VSR/oRws82+bTvcEE52RQ7nMpEr7fvuTJs4MoWs+KGjsY0a/Y4JVw75KqFoEfa9FFVhufOX6ONadgg93ljUl7ZgwchegUWS7PwNu8KoLgrkgVlegduy0E2YzRI/jIONtxrm3Uc0RcLtyphhU1ciStgYMqpxFRVSQ1FyTmSbIewq12IIIMcf22ysGG/sUTgksYDjBKNnYVrCB0ShXn7CbGm7AzoFC6XyCMycmfyBoJYyb3m2gDFEEI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(136003)(39850400004)(366004)(396003)(346002)(451199018)(44832011)(5660300002)(41300700001)(8936002)(83380400001)(66556008)(66476007)(8676002)(2906002)(66946007)(316002)(186003)(36756003)(966005)(478600001)(6666004)(6486002)(6506007)(26005)(52116002)(86362001)(1076003)(38100700002)(6512007)(2616005)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0LmY9HKVfRq7ckSOMeeorywIfJQ5NGPQH9q3Xn9nmWwMUp0Eo5u5jZDvfJ0e?=
 =?us-ascii?Q?HwbJHsSbYor72BnFW4RUGZgQ8Pesw9ALX5mwyaVrxtVt4s4gym1Lo/uDZQOR?=
 =?us-ascii?Q?M6kc8CgaUhuLmp0kWm197I5t6098PPLQ5nzTwh6wVC+X/kHv+ayp2sfDn/Ka?=
 =?us-ascii?Q?9AXrieiRBaWaet39CwKcXrSxSmmvfgck6kyqDHiE4xm7RpOhySKlV2HRi9RX?=
 =?us-ascii?Q?gWq3gNfpAQoSUf474Gfy50SzYcjEPVGSp9brfW2Zm8EQg3RIoe9HEGGrt9aC?=
 =?us-ascii?Q?vTK0rGgB/F6oP6FCVgFpfWlz+2p+vNurk2/tZmDP6+rv1jq60fbdKKWwaikM?=
 =?us-ascii?Q?ccTvgtF3AeNtdkhmFqyhiTgRoFnrVkV2bKb6u3MbcAMYNymALQ5VtBc+Lgcu?=
 =?us-ascii?Q?4+xO/G/q/FYSWqq4/4GwNzK2GhBP95/16U1RsgNRfFlxT1e0KT6GrTzYtgiT?=
 =?us-ascii?Q?Uvq6hYK7xZdX/PVWyUSO66dvhVu2DA6WRSSGHUg91MeOC64OTuP0mATCmh41?=
 =?us-ascii?Q?iBD43QHa8B4SPrxANz6nduRscySVaQookig+py8Ytax3sZqrj3RDMCh4qIg3?=
 =?us-ascii?Q?opxSiftMfgGRdMPmitG+NTPt+oTAylnLA72LGyA8+R2Z3hrNlJh3VD/LTBgS?=
 =?us-ascii?Q?SK3agzyv0KDvvv4z7FypQLV2MkzKo1aDn3IcNn4huNpnTxQXBZCmwvQWFcgb?=
 =?us-ascii?Q?hFt4t8yKUuNv+BynzKvuC5ha6NkcFtEuRSn6G5mM76o4t88NbrXGdPKeoFzF?=
 =?us-ascii?Q?vXalesbkS8dWqUCKMZAhTm48H+kFvCjQDfD3ITDMIZM4ivlX5KF2t4LbhHeE?=
 =?us-ascii?Q?NWMv+getBOGL2jZVCdnHaqgesKYvEifmzJVpc0qYTV4E6dzkmgZwzTsSaDQ8?=
 =?us-ascii?Q?dFkyOdrYyH8nuwOH4359TTKQi2o0T73d+Urzg4OXp32eoEASJJcWlF2UdTB4?=
 =?us-ascii?Q?BJGtalnGs2U1PmndG15T17E6Q6iuAD8OdK9uguewhAH9wZSwmcVXJvQa+CAr?=
 =?us-ascii?Q?TqxAO+1dufSuQ+RSURUksokm9nYwqicG2LealFQVXsS0kVQgyK8tADdbz5UC?=
 =?us-ascii?Q?4w7r5Ok0JRrc9vhsL4YrW/UmD7+/c767QUaDuM0WFv6NGQVBFvD7VEmMUDNV?=
 =?us-ascii?Q?6f/ZAtYn12cLFi2qqFvgSGuBUuEB7s0lis9jGiEiwVuNruExfGQHPOGmUHlV?=
 =?us-ascii?Q?7+P9/Du+wbVRp7zX7EebX5/VaFcP0WkR6HMsTay3l+R8LzCOvkndVQ5/ryIo?=
 =?us-ascii?Q?ZTSU1ML6aw2sCLccX1kUDVswuzK5qFy549DgCpmFm8p9fdRGW+Ym9Hd54Mh7?=
 =?us-ascii?Q?mBu7poir5L0hbhTgvJ5Z48X7jVHZRPVEyONqcOAOniqSREk6QI/xPkA0FCZV?=
 =?us-ascii?Q?Jya+yuWWdSb7zr6RPgAuDuoj+ItmNcO8CtjqO7KRXnvlTa5nWnpMZnRZ701g?=
 =?us-ascii?Q?uMYxHQFEVMPF9O9IUEyBnamNjSoPNZxdDDtuRV33S/FxG2lSU8Q+oYt87mqo?=
 =?us-ascii?Q?WeDrzODT9OOGlUGGYlSps4RM1Wf6qtQwM3LJPrjII3cvXP7sXemyHUAlYoxP?=
 =?us-ascii?Q?DFpkZpSIX/V8OVFmCa80vSZBOz4wiTUFWbC50oJP?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93f2e799-f3a6-4101-562f-08db153f766a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2023 01:44:11.9516
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vBvIai858CIMNIFFn84soiY8vzmWj8iJb5+DXqpMcuAD7J2JirEKLFFGWeNsT/Q/t8MflJHRXsSEc1/Hf4f8mQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6857
X-Proofpoint-ORIG-GUID: 3yaZ07ev5nc_J4LA4v8hv5OkXIE1WD1S
X-Proofpoint-GUID: 3yaZ07ev5nc_J4LA4v8hv5OkXIE1WD1S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-22_12,2023-02-22_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999
 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302230013
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Feb 2023 01:44:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59289

Changelog:
https://github.com/SELinuxProject/setools/releases/tag/4.4.1

License-Update: Refine COPYING text. No license changes.[1]

[1] https://github.com/SELinuxProject/setools/commit/fff1906ff436835108b62bf46616e19705183dfb

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../setools/{setools_4.4.0.bb => setools_4.4.1.bb}            | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/setools/{setools_4.4.0.bb => setools_4.4.1.bb} (90%)

diff --git a/recipes-security/setools/setools_4.4.0.bb b/recipes-security/setools/setools_4.4.1.bb
similarity index 90%
rename from recipes-security/setools/setools_4.4.0.bb
rename to recipes-security/setools/setools_4.4.1.bb
index 81b0bfb..8ed8f19 100644
--- a/recipes-security/setools/setools_4.4.0.bb
+++ b/recipes-security/setools/setools_4.4.1.bb
@@ -8,9 +8,9 @@ LICENSE = "GPL-2.0-only & LGPL-2.1-only"
 SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
            file://setools4-fixes-for-cross-compiling.patch \
           "
-SRCREV = "4758cdf803d93274f49cb6445cb2bab527d6549f"
+SRCREV = "bec5c81d4fc41c45c63f0ba19f132fab94f8d2e5"
 
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
+LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=69a7b68f0a4a570d7c0c43465333ecbc \
                     file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
                     file://${S}/COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c"
 
-- 
2.25.1


