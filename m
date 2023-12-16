Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8EC0C46CD2
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:10 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.12143.1702714922362286286
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=tLJ7wJuh;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG7pS4L009366;
	Sat, 16 Dec 2023 08:22:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=v8T0fPTkoTAfOvMWi8
	UKaHrnE3j5xrfRkVHSzOEnFa8=; b=tLJ7wJuhumXoI3REEyGu1HQmwR0Cw023N+
	13SMfa5vyyipX8V79FDef+ryUAYeoS6S1Fpjten27gQeQb7VhjF6P83xb9eVHgwB
	INiIp7aDcqgL3R9lhvxCty5B3FEyIcbypYo+sIA/AWLuK9Y5BRSHKXDyEdBEy7gL
	tGWyYLNy1LKqFnB/nCEBH3JrLw0CFNJXHkCMVDuT2e+4LeCDe9ZBlEMrc6cRmyGk
	FNiuqnU94YvQLm782VW1vnta0ufLwhQEe2ii4VlOx0Yh6QOaV8iRl7qCJJLSTQBk
	h86jrU8Mt0P3lEfKtZIBMrg8/oBfuoBn3H9dXL233UriessAemdQ==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v113x87ft-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 08:22:01 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LxXAnEo9PPcTdcb1NMZ4lKAkZd8uaKXoPc75QDN06eX12WZgmSSwXYe1qcg8sUnibPEKtzl5PcdjTTn9fES47a7aEkgg7MBbA80Lu87toMRC6gr9qzVkzVPABF+qRQBYEHnUKkATDTpL05Dyr5bIvuuo2zz5mEeYk3TQGf6HViFZX7XiO2JErLUmYe0ih3QjobvWWrOUYkfEUSZc34dt3KHwF/hZO1ESsbMUHrFPJh/vVm93H4LAwZ2T8X5s6dlubGvnyAxMgDkgdsV4EPxUqAd9ZRP+yMBzAq0PcLHK4gykff1QvzoLfOUPsKMJ2E/Mh8z4avGCmWIKr7tlqdVbkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v8T0fPTkoTAfOvMWi8UKaHrnE3j5xrfRkVHSzOEnFa8=;
 b=mSCB50T1qwfQnJaOSjtFkYkIKtH//A1Eu9dgTyjaB69Pl446jKLcH1qAxMpRXNMvakRiv0x+jxJB12vTOYwcT1MdabMSxGKsBpYKyO4uhCkk3r0c2tKYZ3ryEHdLcgI42MThMxpd86AFWAwTOvthoxxcaCPze8vlSl/P4n2rT1Q2g3EMRCzK1+K9AZbfv2XdgxPiJjYywC63kCfnsIg7kV/Ct9eyBmbIJklhFv/OZ/HwnghKKzmBdtLjCg94q2TcZ7ApAnBjj3ZKo52GdVeROumY6xfWbwbbYCkgE5sUb7YtP9gKG7R31ZSxyIUqPYs+TNDpQ7RxiwMW4geb5gpOuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:21:55 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:21:54 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 01/15] selinux: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:28 +0800
Message-Id: <20231216082142.198501-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0033.apcprd02.prod.outlook.com
 (2603:1096:3:18::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|CH3PR11MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: d3437d9c-6ace-4810-f01e-08dbfe100ff6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OBkyU/Sbcvvac1/dSD0MAk/Cije61zFgkOL6U9kz4F5QwnrUZRdxHCRnSFn0mj6wTmK7GHyReOQrHQED9R1NBxMjPOnDEhtDzbHxDJIbF6zYf1U9qq6Ap220MG/rDxmImoW6HP9yWa8wwMowaW1MRD/o0RdesI0nf3kXtKTYRlgHI325GY8x8FNCu6CbZIgYn1APuxyzd9JvNR2IYgEJmjaiv06afvA1qDnUilMD/4/2imiiBPMDcdkadjk3C9zBbIezwTt8xeSufr6QntBNV8ghGoU1lCvXGpZ2LZtjrNeJ7QZ11De/aY5M1+gPXeACVqpV29UvtnMlC3E79HKlFmZezK0MfZE9Lpr+ViexW1yGgtTViE20iYQON0PxLNhCITnAvwK3TLrDGFkQXkyUd/p/zY/nlJ3QVFcBHOGT4HyiAoC6pRUxfVpLjMDDF5dzlcLriENC7ByaTLCAixom4hgPvTeECi6vCZP98YFVXU7g7oCtipJJ+A44uak192NnuZmsWW7PVrj6JREaJuj2hW2DHdpB0OXzX6MAtAIQQTDtY8H8QpFFW/9x5W/A0L4H2IHcdV0dU8zDnZgDlmLtM6SVBARX6UWQLjEvgtfD/+pJzzbrRL0MswrRrndwplEnz6Rmi8iy5bYfuET32G5AjA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(966005)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?w9wsiI5AhASW8X4exX/aI7pIomo+ihSnalk/6MKiyA976T51WZJ6ZpEHCOgy?=
 =?us-ascii?Q?qLkGHKDvDZsMuzZaqZ3EJsDDNhzDIU0KCaTcAnd/izznNeFBfAwhW8QsxhwT?=
 =?us-ascii?Q?w7bChlLRv+fSKxT/nfWJr8+6d62XqxvtGhKYM99QGYPJn/+q2PMU7cfS7Dw4?=
 =?us-ascii?Q?ottcX5+y2+frJoeZzHBYHwnyJeCYJ1s/cfQ+DaW1Kb4XqzMjJKOQs1JYvzuO?=
 =?us-ascii?Q?XnHt9e/ogWimOpQG9F+eOxAAwxy0NO/i6U0u2twT91rLUUAEPLZ4BluojF2Z?=
 =?us-ascii?Q?vt5GnHnBsktBv1KfmsRALEMZ0d9ESsr9XL0sIckD7+DAQNpLmQGJRUjLtOUI?=
 =?us-ascii?Q?wBxlAaSOsclcBZla9r9TQJ+ef0HcDl6VhkSL3FtLszi/lYNeueX/1Mc0Tmen?=
 =?us-ascii?Q?517Vly8buEZzXm1tlIFPrYv0yxgIO2RzSxXFlCQrDCUJg6Y6LcrCpW5noWZ/?=
 =?us-ascii?Q?0lO2W+ZRf2YFkrFrCweE1gPsYfnVqmMfvDoUAklEduEQR1BNaG0zfGXz/fDu?=
 =?us-ascii?Q?iNDD8IfN0lHy6VkF7k/Z3+zsmWICvhGGEhRNLwFea2xCHKveZhV4MyhK+lWf?=
 =?us-ascii?Q?dPQVcF7DFzoLJf8CKG7QZsOO+swPobGhsTboEUJmbGMRwCHR1q1rsUqexSFi?=
 =?us-ascii?Q?kGK/j9jv6lNNcv3447aXXz0FOSEckrejbIcHF2Wem1NY+dzDTBXXk5tz2aNt?=
 =?us-ascii?Q?SGSvWfbLo9VKiKERVCv29rgWQDRqAjhnYUrtlChRFx6tBaJowQ6GPU/M7SCp?=
 =?us-ascii?Q?l4AIX7u6TZ9KH5/SXR1gowkL4Lf79Goi6Vkbl6OXIYfioJW5ku2YqAnf6V7/?=
 =?us-ascii?Q?Ksf7AXOIVk/V+5Eezl8gsbiO3GQ5qPlLAR4v7golo4mv2qUuo73DCcLhUofJ?=
 =?us-ascii?Q?jBAbKv8Bvb2otXQAppz/bqCGVBhh9vX4ENmC3pGTUmqCnvMCwVQ9y8P/pS3e?=
 =?us-ascii?Q?8NoX48WVDjJnK/pfkUxyBnWygfJdLT4zVh8P8f3/rkywso0veM93YlT7HYa/?=
 =?us-ascii?Q?Hso92nmF5TVXOQNPGw0D8MPTKXMBF3DQtMCBXHblLPI4KlGYfGrULfPKSGVj?=
 =?us-ascii?Q?UX1RN747NywXmSQ0uux0Kp0VF/7LsRHkTV44cjQ/x2WgwBL89MgkMojz3EHu?=
 =?us-ascii?Q?zT+g3rodHMqmViWEIDjnUZ0oWhB2PCZOwVd6JruuTObi/wOcHBmYMlQ8iBqv?=
 =?us-ascii?Q?+IdZ3oxvwwkjnL2q3MMKan9S1fSKVlmc5zq23Hb3MOZq66/EPKPrVQLs6FtF?=
 =?us-ascii?Q?4glJC1krRtJf508TlFxyCZlI/3i5FhSSdD9D8BkFVPRaUEaGLVLg6TZgjfR3?=
 =?us-ascii?Q?CGkOhJDzDs0tswjDWKnQ1e12dv9zkVcjDOKhcxijODv+b9LZbNEH8j4VLeAm?=
 =?us-ascii?Q?q/nSJVkSxhDkHUNKTnUXMVZALPtcrnd4K2Wymtb5x9WNNYPjWg4w9e+v78wv?=
 =?us-ascii?Q?meeo3P+GKREyWIsF8mn0AZCbhSYk4XmX1GXrHvc7YI96JzAUtcvGZ1saB1Oz?=
 =?us-ascii?Q?Popib1cmfDMwObPVbrpMW8lBp5LGxOak7+h5nPBHj5RvoSfB39Q8UI05z0+N?=
 =?us-ascii?Q?Zo/OyvIkWBjqfHm7hLSV+dk/K+r8U4iChzhmqMcg?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3437d9c-6ace-4810-f01e-08dbfe100ff6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:21:54.7124
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GI3g4Y962hWdiT3BtZ5GGa4plHZMjbPKE3d95trAKKFwLwfDla6AvxoQr+coDvvfSB3D/T0RBGng3g1GQndRqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: im9LtjxS_aIkDGHTN-BWPozE-3WwzCiS
X-Proofpoint-GUID: im9LtjxS_aIkDGHTN-BWPozE-3WwzCiS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 mlxlogscore=912 malwarescore=0 spamscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 lowpriorityscore=0 mlxscore=0
 suspectscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61928

ChangeLog:
https://github.com/SELinuxProject/selinux/releases/tag/3.6

* Switch branch to main

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux_common.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
index 145b21a..cecb0b5 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -1,7 +1,7 @@
 HOMEPAGE = "https://github.com/SELinuxProject"
 
-SRC_URI = "git://github.com/SELinuxProject/selinux.git;branch=master;protocol=https"
-SRCREV = "d6e96c5929a3f1aa1dce93505edd9f0158757ac2"
+SRC_URI = "git://github.com/SELinuxProject/selinux.git;branch=main;protocol=https"
+SRCREV = "97fa708d867ecb26e8d1c766760947f8e3b9e59a"
 
 UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>\d+(\.\d+)+)"
 
-- 
2.25.1


