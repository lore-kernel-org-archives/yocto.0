Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86780C48292
	for <webhook@archiver.kernel.org>; Fri,  2 Feb 2024 09:08:37 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.19028.1706864912972090112
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Feb 2024 01:08:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=AGICYw8f;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2762c4343e=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4124wNcn009833;
	Fri, 2 Feb 2024 01:08:31 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=lpUz77l8Ld5dSX+sZN
	OMRi3DEQ1hd+ywyRvYQrUvzPc=; b=AGICYw8fHw/+VI9A8yVBHgjP+i7cwRc1oj
	26tkfQDnrEaV/4JOTFh1j0qxHZ1ulpBufK42Tb2IIUktNnxkcSenYRj35eYlhEE6
	f4PsarwTt6y8bnaBb/obzf2Ppk7htZ9dM9L4M2+In2Djpu8hRgpVyal09HHphUa6
	6THPAeBTzoRzd65d+hCjnMUrAy2YEqCMnGnBVjsUJn7AJL4Bic8/cYmByoc1nJPT
	V7MwW24tBMck0xrmPRyt8vMubrbucSuRk7bHBnZF9ayqJ+DICwsQQWr5YS+E97JB
	8C7L5Lf205tvcoGJ0d1vCOBXfPNPedX4vLa4nln2cCneyhTK4BQA==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w0puv09bs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 02 Feb 2024 01:08:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ujxr1Fli/AA9M3FfixD9euV3e60Pg3fiBuEY3oH6qPN0pvhD/8lngTVVK98yoZIOp4a3ojOwpGWtAHzN+Z5QdYFGsdGW48TliDPWcw8vMc/id6uKseCO3ztgfOEPQkfUMQXpAR9Vgt0q/0rniraqXOSI/Q82JODtTKzCev9tqCmD4xu0Vu2oao5vxgt80K8gCJ06wKTBFIbDY822HolWLfKhxbGC1I5vHvm17ZKvlcjUtW1HZtLNa/eGOctmdlvF43DI2v+8x5IkPiJZGz9l/nzqdA8+5DJTsoJmx0quhHaodO9Cw6xZv5kgDcCw3ic93Gppb5rnQABvTFsDHvFqWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lpUz77l8Ld5dSX+sZNOMRi3DEQ1hd+ywyRvYQrUvzPc=;
 b=N1onzZn84VjVje5VCUx8XW7Yn/XQIbEXF9M2Ek32fs3Vx7n+HyX3maXhvP77Vw3zv9NA+NWRp6rjAgPYTGS/+wkbDMGuZC1vk/M7ykqg2XzErkaM6kOM1Ya05TETSBVX+A/h0Td+WyH4r4T8VK2Vdcw90wsFFAPFkjdGKGskfawc9Y72IvHjnAf6D1QJGrGPtuaXyg5H2MyovPtFjN2UgCRfYfzJ2euWR4e0t9is4Nuyvb8d6/JR4M1PmTfMPQp1D30ti+5fdZBnRb13tlET6L9FH7xOySZ8/fPVDnGgsaThRr+KA2owSqjgtX1B12PP2YxV7I9hxMSP9+senQFPkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.29; Fri, 2 Feb
 2024 09:08:28 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b%7]) with mapi id 15.20.7228.029; Fri, 2 Feb 2024
 09:08:28 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 1/3] rpm: remove PACKAGECONFIG[selinux]
Date: Fri,  2 Feb 2024 17:08:16 +0800
Message-Id: <20240202090818.285479-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|SJ0PR11MB4896:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dbdc2b9-3032-4c1d-c679-08dc23ce84d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OUflaSQNjVkd7Hywx8IfuMe8c2ZBSJwci0iVPN9JnZj8y7+rV1jFHzXK+pJ+q2WR3r8LhVupo6zyPq4SiRgg4Jjy2GpY12ZRkRUJ+7ICnEm77I/lC2g8kLCsFxI2ThfWqDJ938eNqt3zmZqDfEWtB9hNxMpyb+gdJ2i/fEKX4Sy8acYlSzjhoWuWUHDRBTq0ecMIpEz1WCXM34wx6zKu+w3oCHbaMRQZqWcaIdY2CihTdpnwG3M29l25yVm5xlcLDVcht9d2bpxgh0zv1i9qGnV6OVu8XlE8AsdT3U8zP06Nk1a8Km6zc0og0ujwO21v71FCsFDjETm4W7sQWqvZPgyQkO0KsWlLWNuH6y5Th5mAk4XXkcYYNf00yvf94M2zs4oXu7ld1o4B4SWN30jqnwVp8bux/sd6EfBBjzxn2WucGpgrGXtDf8ATxnr0NaVsbIQCje9oEWq0HGsLRAh/gU7x2tC+qhZI/RfUAA0/KHTVjgL0cN6ZdOm9Sd/DuQ9dZ+BUnhCMYp9+38XMhU0IJlWvrrh7ESCpECrLK+5zyNoUVr8ytIbP4gTWa4g0aK6aLlSGLaBKJsNA+AnchDtvoyxiPVCAb93Z4r/Vk/YAhP4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(136003)(376002)(366004)(39850400004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(26005)(36756003)(38350700005)(966005)(8676002)(66946007)(2906002)(86362001)(66476007)(8936002)(5660300002)(44832011)(4744005)(66556008)(316002)(6666004)(6486002)(6506007)(38100700002)(52116002)(478600001)(6512007)(83380400001)(1076003)(41300700001)(2616005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?zN3igGzMskD5egvqiqFyExgzK8bWsGC68ybY/b0tA7zWYzXBX+U8S3Y6WgPV?=
 =?us-ascii?Q?t5ktypuga6qOwG2kAoTL37tuX21SX+qxfoPO+oxSG2UP+tsuT7r7NuVLWkNt?=
 =?us-ascii?Q?Xici6ouF8x7wdP8OPdnskTIk+/txq7Y330ADutVOGWqdBowe7EuRperqT9rr?=
 =?us-ascii?Q?v/E7eiJCRWAdAAGw0Vp2HIyKOuDHfj1yTv8Iyue9QLUDfI2WA42eM9NR7a0/?=
 =?us-ascii?Q?g/r3SDDCoazktV1otLGamvqatLtEHLSX+1hn+N85QeNyyhleHK8NtI/H2rFC?=
 =?us-ascii?Q?QKT66cl5KgekoN7vd9n4/u/WWN5ZakANpIYZT6Wp/i6+pNCODR9/Cq+idgFQ?=
 =?us-ascii?Q?OgkCtLCvtrBJBOcI+PpimfmFHJizyt5lO5B/m6VyIddSsWWW9p6CCCc8IZ7L?=
 =?us-ascii?Q?KffuXfoWX7J5VTVNdZZmuyr7Vp4tVKe0hmEmsbToXnNk1sTX5Jp9N8mUUrtH?=
 =?us-ascii?Q?oY+j8pFzQdKxjwe470qtats2DMxE6KbVUIjQ6Fjm6fuf0w0tn5cpsIU6aHfg?=
 =?us-ascii?Q?uzdxihZSjQFYRdrmbgDBPkMIxFG7sStkFbPn5IXo6xeYxHusbLaWpvgiIMVm?=
 =?us-ascii?Q?+5kV7XCG/UU2Xe5ysvqLgdtkq/VC0ebjXzz1sf7VFihiJhrOLkm6BMqHjnD7?=
 =?us-ascii?Q?jhZ46PVwesR22rq8NA4/jhsqi/ZhH+X5Bv0AJ5MJ3O47OYUHVIpwShhKBTvg?=
 =?us-ascii?Q?CTIE1hDMjQvDEb2pZcNRh3spCPn9gA6Gq56nC5lfM3+LJCmUUCQJMjrnfoz5?=
 =?us-ascii?Q?0GU97y4UdDxypeRFDmQBmrUAkl6cO+uibWR4pTiN+ftx50CgqpTY0H6sQ8Ud?=
 =?us-ascii?Q?vXUdrSrfN5yf9njNTgKYeO/p2h0UMImjgf5Qh5O9+OZ0BDIDk77q9MQjGHku?=
 =?us-ascii?Q?QRY6t+pMm1iPqKn2LbX3dyVrX/sR7IAAI0oZT3eRp5aZnwfXEDTeG6K2s3ha?=
 =?us-ascii?Q?maXIUl5flE9kyAj+UfpCpDP51HT1k38NhTuyVkPg/gAMbe+QjAW87MEVQxEn?=
 =?us-ascii?Q?pZHMSDQD2lpc7jAXeu/n/sHFHc0ek+tzDbLP2rmDJHbRf1Y0f1h215SeWEXV?=
 =?us-ascii?Q?eKn3CxpbYvQYLA1vsMlTozM5RKUlnqBYnMdNoWjp6kYgM9DBppKnoTvXsPdo?=
 =?us-ascii?Q?z4pBsaiMGoBQLMS2GdRvPm8yBHs6C+zqSKpTxNxmOdLfQEofbj57UYOzNmMH?=
 =?us-ascii?Q?5mqAYn0Gu3bgJs/HbU09yZhlKqWvQarwt7NH+DpYJfzsjqd0UnEbSohiqITT?=
 =?us-ascii?Q?VtoEhSa+pO33bIDwZ1y7IMxhLe2j4KaBZlWp7qf9FPgMbJo7R6nTixqAOwgd?=
 =?us-ascii?Q?KgBI3ouZe+gVfaDhLabDyzx7Z2QHdJmfThsH/NEVyF/xZ1cYMy2joIiKPEjR?=
 =?us-ascii?Q?2Wkyiz5kxSlVKYv51zonOb61SmJ6bGsahkdEGDWMZ0N+4bvN8xb6l+32SkGR?=
 =?us-ascii?Q?B+jdB9tbG/CpyOmsfitwcNkv7faBaITN2r81rhLM2S5f3y5EX4M7aVkV2muQ?=
 =?us-ascii?Q?Y2q0JByNVI/zzL+wG5iBXTFyFFboRGX+0PvLEY7nUPfGytuKc2q3NPnvFSJe?=
 =?us-ascii?Q?nAeL4qB9nJoZHXTkFwhVxZQFsmoXufMWHPgVJtRg?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dbdc2b9-3032-4c1d-c679-08dc23ce84d8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 09:08:28.1698
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l0qS6Qvhxf45oi5p9G1H0/sXs+FQgUgNlAs05ekHbXnpW2Prp2P9NX8uPacrFq1NRWsynAqEsjmCzaDV9rwcew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
X-Proofpoint-GUID: qHj8gJbwg3AfJb73Kp4X8a_A-iiFdpD5
X-Proofpoint-ORIG-GUID: qHj8gJbwg3AfJb73Kp4X8a_A-iiFdpD5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-02_03,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0 clxscore=1015
 lowpriorityscore=0 spamscore=0 mlxlogscore=520 phishscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402020065
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Feb 2024 09:08:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62380

Drop PACKAGECONFIG[selinux] as it was added to rpm recipe in oe-core[1].

[1] https://git.openembedded.org/openembedded-core/commit/?id=38549d462b399e3a63335f60a44c8bbced98639a

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-devtools/rpm/rpm_selinux.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-devtools/rpm/rpm_selinux.inc b/recipes-devtools/rpm/rpm_selinux.inc
index b6e0e7c..8c11cac 100644
--- a/recipes-devtools/rpm/rpm_selinux.inc
+++ b/recipes-devtools/rpm/rpm_selinux.inc
@@ -1,2 +1 @@
 inherit enable-selinux
-PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
-- 
2.25.1


