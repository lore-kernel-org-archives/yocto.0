Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15AD3C61DA4
	for <webhook@archiver.kernel.org>; Thu, 23 Feb 2023 01:44:36 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.1259.1677116659513008547
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 17:44:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=YULGF5DZ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=141849fe7d=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31N1W6QY025210;
	Thu, 23 Feb 2023 01:44:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=ryec0o3Ze7+6o9znPKcvbEs8Su6v02CZ9jcvWv5e2Xw=;
 b=YULGF5DZDoZ210fuCm7O5z0HWarydFyIXDulrvfGyh9dbDsSzrwfWJluwHyU9K/2cQ2O
 dFZaxXFHMG7kxf6b/Lv0JfVfnjedJGQUK3EjtOSb+2Rp5KeyqSHNAEanFpTp+LZvz+pQ
 o7Q03U0CS9adWHBVJYfgvpsdAkE9JxsgNx0eVaIngHRBMbdJAyWRE8V60Oiu0DEvDqoH
 5q8g/NmrRM11DJGqvSxe/bte+aXXKAxvef98xFUjx0iPIuOAPSF0KPkwkpO3JWGHdyvC
 2I3Loli2TLBUUqUmZ3ZW4wLvdivWk9pgwC9x1OO5S0kl+0VmD+0GhW3c1WCDCKRPIwWe OA== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2103.outbound.protection.outlook.com [104.47.70.103])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ntpem4cga-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Feb 2023 01:44:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npsW9X6oTYyO6pi6iQoYNIKqwye6LKPjRTG31chn59BzWqb5ED2kToM0f/YIGIsxTCXSNuae9ToPrNZLaLRs7JbsiUAoIKZYcIPSr5iaf16H0FX3sXQIPlfCoaX8S/vIyVoUa0NNqOOzPK4Nt5W5pz4tU2yaEGN9fsGuJ2PZOPBP7JORLG03sOhjmaCzGZ256iR/M8YB55z77h+Qpy0JEzowVi3yD3tMwQuPEEYXZiwAsuAP+ZyGMBW3TWCSnrauwm+PAX9e9DNBWYxTwAIpsTOUGLVl2SKngL+a5MEEVuY57dv8OckUc2pP6HdRQGfKjQoK6xSc301b0EuyXNy65g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ryec0o3Ze7+6o9znPKcvbEs8Su6v02CZ9jcvWv5e2Xw=;
 b=gCh2ceimmsuJg6IkvD284mwQRiXoOPDJDvlknybX3k0ySMaoSCXMXEFHVALZlG296ehcSO4uY2TTCcSRaoKFYGHKK1jdxoCVASYpy0ZORn6RvIrdljSkqmhDxCZD2iqfQuH/HwBzpy2kStecV3cj3mc/RDiF3wWb2uzrM2CbUAka1VmWCmEfJRZQuK6FBk/0AOPoYhEclnSaoDRxQ/YrgZSMF3OJihsHVs7GVhLCJUPyx2QzdcyCY9HdQQFXg9DvWugC1q4Ybw6yNrlRT4V8sYjTLKQ3v9fQQqr7Yqt5tuufhrou0/Qd6HqgduFeHMiKU2t6W9l8himA82rG6i4I5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by PH7PR11MB6857.namprd11.prod.outlook.com (2603:10b6:510:1ed::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Thu, 23 Feb
 2023 01:44:14 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::3cb7:edf3:7304:982e]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::3cb7:edf3:7304:982e%2]) with mapi id 15.20.6134.019; Thu, 23 Feb 2023
 01:44:14 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 2/2] linux-yocto: drop version from bbappend
Date: Thu, 23 Feb 2023 09:44:01 +0800
Message-Id: <20230223014401.1558363-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230223014401.1558363-1-yi.zhao@windriver.com>
References: <20230223014401.1558363-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0191.namprd05.prod.outlook.com
 (2603:10b6:a03:330::16) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|PH7PR11MB6857:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e8b3e40-9141-4bee-f576-08db153f778a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hz+uD9lUFYcK9ghR8JwVPg6Amh3fxNdzKLz8ZXCvfQ1H0W/A/L4mR+STZe5lW5Coy39+AA11lvIiKwFvIEXUQ9kb3Cm1Avyw6cv7WEzTJ6YyqIEkNvXrXec5WFJXhsZc1yRZx1pgxTDTfOzJHBkQWyV9WtieCGNg2sAM1j2JxtH7stJTGRJ7RgQSemVRzti7AnznvlNP3sT/rHI7ElDttF04iI00V7GwXWEVvZdhaNSLSC2+Wj0y8N54dc21QK/kSV28KxyzHCzCrAfgN0TVCh02+1kNCn4SKoT9cE69bV7mQ5al0e3g0jBueS73fovTq3xFDOQd+mc3n8WqvA82UIHjHnZDeeDwehNukUQeKu4li1qr5B+k2oNCVLt/qmdWyI6rGjwSmoF+DjlLDNRP8UXz++mKJ30Fq/ZIqO3bcsi/GIBoaE5DJJqW5/+XgjQJIDwrIZCdz82dMVAXfZb3TyZrfXug1YHf8WI8i9Eci8UvFB1N5hRNOGNwcF+otksu7Ev7SOfHGOk2pzm5koUKdiSQIXBJpQ+jnVDp93mbvZ2YjXt0zx7vAdZmIP0B7393jyQ71Lf5Vg48++8G08En3F1zM+jcQUtX0BFjy0pAVCAS7WB8n6YUnZZl+v9EZpsZ4xH8ucxYT+5u0Dtn6jpmji8+vSmITuMvX75DCaoWRUTVbRQ5CK+BfIct7t1558wH7RFL2iSk34se9z7UoQAblg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(136003)(39850400004)(366004)(396003)(346002)(451199018)(4744005)(44832011)(5660300002)(41300700001)(8936002)(83380400001)(66556008)(66476007)(8676002)(2906002)(66946007)(316002)(186003)(36756003)(478600001)(6666004)(6486002)(6506007)(26005)(52116002)(86362001)(1076003)(38100700002)(6512007)(2616005)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?k+ouTWAUXYedl7TBhJHjxUowon1cFgVjqFzCLjMwrSp/EXPEVbHYEkgn7Vpn?=
 =?us-ascii?Q?Vo9r+lOgyFbR3i2zONHtEf7l92FVg+oFNLNoFsATJrc9uQSQlXI9ACWuSMlH?=
 =?us-ascii?Q?dsEFOLLvGB2rkTiYtbiC3C2m407xrptOriJKcmPU9ZK9CtwvYRY4o3q57hQt?=
 =?us-ascii?Q?iQFM4BaKV5XFIQ9Tnezn6bM4zB0KP/gDnGg24xk9KMArcgW+url6gnDWQlgJ?=
 =?us-ascii?Q?I92oEBeZNMPCbLvgYX3PjWD+B980acSiLkWvA5xwOoYiiCn3694ZwUNzTbA9?=
 =?us-ascii?Q?wEghtrvQdikZXyXo/PJ3wg8IXogVlWnjia6Q4+G9WvGDnS0bQHCVmTrGIra5?=
 =?us-ascii?Q?In4jZyi6+sJqqfVt8qVfEt2gOjOL0Zxlhstc/KrlMtItktdRowbxbVcNkWXu?=
 =?us-ascii?Q?7l9UD9kf8eMmnO9A7a1XvW9npOcezzziQZF4yLe19oSy1mxyBQZrhMancxdN?=
 =?us-ascii?Q?athrbaCrXisuk/VeayhYC5fZCxOcyeixlTKwPnD43f3f8e0byctNi+ac7VuP?=
 =?us-ascii?Q?pnhXOzW07pz2/MLz/TLWdzofxeL6c7PTn218phpcJ6CvTKsxN1Eh3fcUTH9f?=
 =?us-ascii?Q?IYOxBeBxvitNi4kxRMNU0Ww+HpXX0gusiFCwvX2QujNNdEtfEFZewOX2r+Fw?=
 =?us-ascii?Q?CDzrfcIm64z323WQa1jxlaXCYWePCJiGql7tgP6zwLvuGexfISLzXjwt1NQm?=
 =?us-ascii?Q?s5l3d2tCOO4otNogGiUUdDnQ1mQThWBzmpNzyjx18b+rKNfVJoGPAkmtpcQz?=
 =?us-ascii?Q?7Iu/Ha6KzJjYtbHT+KB2Kz+IfQyLx6P0C0BO9g7o7jUVqOXNTKEnQLYCVooR?=
 =?us-ascii?Q?iFGy+19LUSVyq7aSBNEWXCaKUnkp51SeJsSBwrHd7wGjlsHi3t7HOJlVNJpv?=
 =?us-ascii?Q?yA9ZVACRKZHKOlFWONmpe2O9co9F802bjGNixakP/qEhD/Yc5WK4Cq/Ll3F4?=
 =?us-ascii?Q?5jTs62V/7rCYKcXxw5E0mhtculiGSIGGxd6mFEO/k5KoUxpFu4NFIPMdVCnc?=
 =?us-ascii?Q?p27JsTgO5r82NeWeN4L47JZ5hm6cy9/839ssH/YePQQPMM68354u4JixnMCW?=
 =?us-ascii?Q?jsJw7BmMr/fwQw9KQb94d8TCufSMAmBy8nZJPS6dICSxle4n3sBsXN8Rwjf2?=
 =?us-ascii?Q?KTbZPUQb469EmsJlTLqo9SOMLCEJVC9rMRFG7Kj3YYj5pyeTQRTTz2J5BFrt?=
 =?us-ascii?Q?FzRGII4n9xxRwgtTO1ttSzn4yf1JckhAK6FfsRVdqcBp9G9SC9c6ej985OBl?=
 =?us-ascii?Q?h7w4nMTJx3L18CvhKBasBoukN6zjyX58ibys9U+KCWmSk6VnxBRaO4X9Fi5J?=
 =?us-ascii?Q?2VVY0JhiMfCKG87aYhI3cEG5zxy5z7YQqS/FNMHPkB5NEUl4Wq5jS87oV7MH?=
 =?us-ascii?Q?5Jq39jjrShMIOP2MljlI66uTXjghXZcV+CFPUFNDp2U8VjIdpAJcqLpNN87C?=
 =?us-ascii?Q?+DuaIybwKZYw1zYyMzamd99bALe3rkxEIVHUs8s5Tl6DZeNwgVYpc1bLo1bL?=
 =?us-ascii?Q?6eBjucGL3u50JeAi1STPgaFHrosgKLGknQvKLrmHt6nP5P6ayVm904VScnAm?=
 =?us-ascii?Q?UVOd+9X8PuV/S99RfjYy3y2JHbtwpXET2ID7zkGj?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e8b3e40-9141-4bee-f576-08db153f778a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2023 01:44:13.9212
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +0AtFKQGGi4MWe5WqCWW1CuB18CG1MKJWAPez3FJoILzQs01FB+srWfSE8zrfr2dl2smUtq5r1GUvFjqi0CZcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6857
X-Proofpoint-ORIG-GUID: SWD2J-hO5MdXnOQzUfDVTpAg2w2RU2GO
X-Proofpoint-GUID: SWD2J-hO5MdXnOQzUfDVTpAg2w2RU2GO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-22_12,2023-02-22_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=837
 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302230013
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Feb 2023 01:44:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59290

Make the bbappend available for 5.x and 6.x kernels.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../linux/{linux-yocto_5.%.bbappend => linux-yocto_%.bbappend}    | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-kernel/linux/{linux-yocto_5.%.bbappend => linux-yocto_%.bbappend} (100%)

diff --git a/recipes-kernel/linux/linux-yocto_5.%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
similarity index 100%
rename from recipes-kernel/linux/linux-yocto_5.%.bbappend
rename to recipes-kernel/linux/linux-yocto_%.bbappend
-- 
2.25.1


