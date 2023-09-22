Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DCE0E7D0C0
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 02:23:04 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.13136.1695349375176317429
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Sep 2023 19:22:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=rZ7wH+Eo;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=76297e7a8c=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38M0SXnW017701;
	Fri, 22 Sep 2023 02:22:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=3mLCp8cvW8hEFHJZ/iggLDn3Ao4lJjnq+aAwTsPtwyY=; b=
	rZ7wH+EohLz33ZJWhvu0I/YxUqHfNDz9F6saYOtSRmKHwjyrlvZXgQL9CG15Wodp
	mrDsCnCL38KxdLs123txZvCGsqiTpByreIj0nasgqdHjZC+pgTqOhux/SDTk8QWh
	eHYlF2EOdBvRniTo9nxLzwM9WiNvjlXU3scpbIFy+xF8QckenxLjiKqxa43H+tWs
	rFJstwA1pN4BpM8Jf1xjHYI84j/NORIva7HhE6sur1hvszhSQIB8b6wMhQuCtziH
	u+ExRFFghearldR8AZxYOUjW5C566BgGAOuPnNmp7wOxSx6s0iTRxQp8eEDBbsgj
	Mumoxy92Kfo5eKFLzEHoOg==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2176.outbound.protection.outlook.com [104.47.59.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3t8tvxrb77-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 02:22:54 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OJL8xPN20nbjxosZrIJsNsKKxcPtHPlue4KIYmV2vcoaXKPEzPNHp6HGaQrS8ICWGBalISNl1IDWuzG0Yx5eB+rzDy5N57eV2lrAXLMMa7vPEKhZwr+VLYgfWFROJTeYXEgpxQ/lmO6nzNQtu13Eruy1LThXXhhAG88aivznAc9oyW8lKud9vUvJxMVpJhOb6qyodRINvdORdBqTeObqsiPjXxIupxxcOH/SPZ1UNdBgpd4LvNpcjpFdFUpgEtEbltNH3Y5cj9F8gq0UXxmJWn8jq6j4p2yzqDPnHp49baqjmP2aSMwjIeUjR0Md6PCEpaWRL8swIZLCGcNEN5dMSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3mLCp8cvW8hEFHJZ/iggLDn3Ao4lJjnq+aAwTsPtwyY=;
 b=NeClIZ5Js3Vx56wvlbn3PaWX2I8PxzrvY3NE8Zhl0fY44qVpMg2hEoYBlxpH4YiUcdWxYjmocP/dEMTw+KpwU/lL7CvRa3SkMbND1+dc7bmo7/hyHJiDn03H0BzgNf/5XGgN5ffvyZA9RIXfpyjGuqCVE2BvfDzvBBE8JM3Nx+ycTiWo0JK3KQpTQKyR3tzj2N+PRKcXklzoj5d6vZ9/9YS8Z/qwXiIT88H6+0DzkSHbZ22jtuZqUsK0HWoMTsJsc09B7LWUpWKMc5+SidWI3EJsD2KR3y5lH7fwmWvvVaTZiK7hUbfoxH8zeBaiGyCqsjf1p/uMuhb3MB4k5PDF2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by SA1PR11MB6614.namprd11.prod.outlook.com (2603:10b6:806:255::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Fri, 22 Sep
 2023 02:22:52 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306%2]) with mapi id 15.20.6792.026; Fri, 22 Sep 2023
 02:22:52 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 3/3] README: update
Date: Fri, 22 Sep 2023 10:22:36 +0800
Message-Id: <20230922022236.3578345-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230922022236.3578345-1-yi.zhao@windriver.com>
References: <20230922022236.3578345-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR01CA0028.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|SA1PR11MB6614:EE_
X-MS-Office365-Filtering-Correlation-Id: bc07b988-77ea-4941-20ea-08dbbb12d2ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1Ffz/m29PdVjhMImJIXo78KNHXACdsd3wp5nES2dIyLjm1SENJG2nZrJ7AOT4YI2AgFZbUxO0gH1YHadUfMRyMVdrQP0YQbydwrCMzdIjpMCHRSVZDsAwngkEpQver197TyNEu1EYcBszt0HOPCMmOxfiQlH83VjYtyfbNLs/5+W2EfSwRGibszpflYuTKdXYv1fZdJhyIDRUlorbglkoqMJUQBUAyG/UJ9AxWVYVd4EeLojfZJOZFJ5HL5GG7P0vBhi2BmuJh2MPyx863bj3vLk71XmkIvmy14auyYZiQ6nar9JtHNq9UVrFWrP7Xg4mP7Bw53WWCjJt047ayFtdoY//SMjCVSEzB1DsutXr0c2jscbhurmI7KfsUSx/tfkgmaJZ7Vy9MZOHOL/mjQzKCAUJRsgGGpFe2w0Wd6LAtNmJFxQB5pch6zRPa29483+b/GoNmU8QLD3EKTeXCazVD4QmPqR09QtH6fHWBIhatySu1/H0/imZkNrlmQTj0YAuNLcw0smS85Ja4v5im9LuKsmGiidiJ+/nRRFeU293exZYVTUteMAXQ009ET0VPFKL/5ep+9bV79a4UAi95iqr2yzbqY2ZC9VM8FYeykaXg2JZPAYmQ8yxwmmG30Vmayj
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39850400004)(186009)(1800799009)(451199024)(8936002)(66476007)(41300700001)(8676002)(66556008)(316002)(66946007)(5660300002)(44832011)(478600001)(4744005)(2906002)(6666004)(6486002)(2616005)(6506007)(6512007)(52116002)(1076003)(38100700002)(26005)(36756003)(38350700002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?TN7xw19bLqcK80Ws3x/6VJXDiZ9ixZQYr2zw23PfBGJtkq/YcriAdEoppufQ?=
 =?us-ascii?Q?qgrKkk7Vnskfgy/HBEvXhLd5FW/MEHDkDrCW4lyBzNHd9IhaW+uUyDDxEXl6?=
 =?us-ascii?Q?oBQmZzgxB6mE0XTGHEOwvc3PnZMVUDJnfoC6RHaklFWtcVpvHPpZnsRWsH8G?=
 =?us-ascii?Q?OTh1N+F3FfuH27xn4xYH69HrVikDEvsyihYsRIk5Ujp30t0hYdZ6bRQXzwsi?=
 =?us-ascii?Q?gR+c1swrODId07+tcqHlH8LxG6mb6FS5qKW8l6kn6t0GgDwBEv4SHzaAxVVl?=
 =?us-ascii?Q?pWJRr2LKqwIjWLgPcjVAGXqSFTqiU316DXB7prjt5RlQCxcymJDbBu5VCPdC?=
 =?us-ascii?Q?LdfKmTIMLG+4zzWUlA0wu+pigv7HzknZVrC96M4ORV3CQMUFeh93uMpu5uIf?=
 =?us-ascii?Q?VDKBQ3ATeK2SG3zm6ogGO4aKDZ1VhFF9HUcrB4EybV8sJr8duygTTG34Hgzb?=
 =?us-ascii?Q?WJ4tSBK+i0UzW/zr8dE/FhzwVB+zGdUov0sbVJz9EMy8EBnpEB6GiyvKXuOp?=
 =?us-ascii?Q?5uJDTAcbjdXyR+Q234zUAuO9EYwBCiasClOmLpVPrT0BBM2jit27GrbYDve7?=
 =?us-ascii?Q?hdeblLUhRJGW74upyUxZqJYSIAGNIdlSkT1AJGdnHJm0xULeSDmSDCztr5ce?=
 =?us-ascii?Q?CMFK9NF2uQGhecC/dxoxZ44Thi1au6QC/AuxrG0Y+Iuu/HjZPpYOqPLzMtFW?=
 =?us-ascii?Q?A1B1ejHji/xCMi0W7tDmHoqNt9GhMZoL31VijwI4OdmwwkzLRrgNWtAzDZJL?=
 =?us-ascii?Q?mCslduJk82voPUQZWaZblNLf1nwehcusG7ewjuOrGfQIolaulmc/wUr7MoIa?=
 =?us-ascii?Q?66G5+x00fPb/wQI6nu8uqNdYeDasa09Kd/2sPP2tLrk6C5XENXnwSmT0Z/JD?=
 =?us-ascii?Q?8AGhNcQGViVEvJzQGbWINzalPIxipwGjHPb/8THeEkdGPxv60mavgmv2p8D5?=
 =?us-ascii?Q?G6IPK2RwMg0xkHI/29fV3a0gaIXXrb51ydwwEBHQ2HGR7ODaH1J/y3/rOExU?=
 =?us-ascii?Q?SniTGiNK0x12sPWUS5BqgeAFGQsgpwhpctjKMEnU7hksA4IsgW56ItnGT55W?=
 =?us-ascii?Q?B+l1cW5QSWLpnb1ayMfCh+ErNYHISmsIpKNYv6OmprQSqrChXv+s/PL5Hnx6?=
 =?us-ascii?Q?nC329tf0IbkovzsB+395vx3oohZtK0GDO8s8OgUGOWf4KQ6J2hAzJuPxOPsi?=
 =?us-ascii?Q?ekV1hI3wceOXRH+8hCH6i8t0iLDT6V3UewkD/ghf/L80wgH1PWCZnsUzFpiA?=
 =?us-ascii?Q?pffQ/06QnBGZmO/c4ORzWgzfL9IqA121YLcMRd04+OcP9f0z4s95P2FQztCC?=
 =?us-ascii?Q?kdhuuo/k1HBjtpM9qMxmYhVqPsmG2rfyJtgzpLJ3IUGQRTMvbaw7VW7Nj/jr?=
 =?us-ascii?Q?2Pfd5rOR3PgkLkgW1UgveiBXi0vjGd/BPt11Lx2dhEEV2rwkQmUvYNyZDqu5?=
 =?us-ascii?Q?eYtiaxnxjj4OyN6yYWWZjwt6xLYGDJFadGOhR90FFZWnxdd50tZ8RbglGgxL?=
 =?us-ascii?Q?NFfOxirW9DA8rFWo4D+FQUzB6Bems0b3A/IDZuTADBufMaPUhR/r37v9dwG4?=
 =?us-ascii?Q?uaZaRClR2W4Cdfbg8JPZ4m7WSzLEBHY9BvZJZHVf?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc07b988-77ea-4941-20ea-08dbbb12d2ed
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2023 02:22:52.8452
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kYYXv3p9oTtz2PZMrqAgEsTv/j1Xh4xF9PcYaAnqkOBdR+WpDhUD3en1R/wxS1l2E7hb9BsKowcNy8IIgWMH1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6614
X-Proofpoint-GUID: HtpuhZe93bwK6t12oduiF6ILpF4erz8o
X-Proofpoint-ORIG-GUID: HtpuhZe93bwK6t12oduiF6ILpF4erz8o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-22_01,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=826
 clxscore=1015 mlxscore=0 suspectscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2309180000 definitions=main-2309220020
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 02:23:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61072

Add how to enable labeling on first boot.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 README | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/README b/README
index 77b6253..67708f7 100644
--- a/README
+++ b/README
@@ -75,6 +75,14 @@ VIRTUAL-RUNTIME_init_manager = "systemd"
 DISTRO_FEATURES_BACKFILL_CONSIDERED = ""
 
 
+Enable labeling on first boot
+----------------------------
+By default, the system will label selinux contexts during build. To enable
+labeling on first boot. Set FIRST_BOOT_RELABEL to 1 in local.conf:
+
+FIRST_BOOT_RELABEL = "1"
+
+
 Starting up the system
 ----------------------
 Most likely the reference policy selected will not just work "out of the box".
-- 
2.25.1


