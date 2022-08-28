Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 848A1C0502A
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:06 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.55627.1661653803407306179
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:30:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=KdlyKFpB;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2U2Oi009461;
	Sat, 27 Aug 2022 19:30:02 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=pmHJzdXiTgMRqLbw3+4rIXFX7cBdyxcdxT4+BNudXb4=;
 b=KdlyKFpBtQoSfAgTZcN6KL6WOMLO3446A34g4obqx5qXPSk1UDAUM3GeIch8aINx9N97
 FsHh7+HeOv2mN0FumxZm/ogEH2FAngCbGbEsJlkKdwz0ckFh5vKEt6yHxH1lwRM/pHlF
 L1BAmYfgGSdt7fhA8BN4MczUj9F73BEeWqFMNVfQY5+3FoY7XcfHq+APDDxih1qZCaOQ
 FKK7fUPHadKk+W9m7tbMmMPXJ1e1+U8y9dpRlUV/DtpJm2D5MKV8Fupt/IoE/U13osk2
 3i+PK/naqEvOwwfkPHBMZ+vuqbkCrLBjdb4me3E2CmJQY15LCzHz+yVmCuJT4LEhBBxC 0A==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2047.outbound.protection.outlook.com [104.47.66.47])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7jsk8d5e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Aug 2022 19:30:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H0NkOGL7KzKBjz3J3ykuL1w20devTX6G+1kG6+s5IAmGU1rRnRtE6wOXgM+F2vELALRxvz79CZlACF18IGW98GUmvGAxIZBORG5wtiO38B7qI+fqHZzJNdZHjZu1x/GorXpMLiwikULlYgMeFeWa2Xl+YzVRylJp+BL/3Yd746T30RHDDKVX7kq57ey67BLWqDJMHO0jOyO04fL3bNWD0CHTADCcAezDxAABx9RTtm8LQWnzI0y+3mJjK4h149dJoQA1EDQOahVHQWwlpbsYdVdcUT4zg4hsh1kCFVJjGDYs3SgKPUy4sIbU4bcCUfWXhcWpy/go8M476iEbtOvTZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pmHJzdXiTgMRqLbw3+4rIXFX7cBdyxcdxT4+BNudXb4=;
 b=hzO+1fBE6f3ysMvWaFu2uRezRSfUoLxS7CJhmqppNbZfjRm3w/smiIDmNgpoCV4T92gYMJkb4nh++whP9lnQJbmdisD2hzqKlVdcSC9Ge+Jwo9RyjQhptlWd/pPIA44Ue3PH77y0Tx9bvzTWG8zGcdpnZDgM+OWO0U2FfTm8qppuUJvJwTRvPquZQfOkwTrhhhw1U7EGEAigPvTLF/AnrovVx+ow3f7MCXFOOfvDXd6qzXgkFPDZ686vyI7w1DvuLvCI5DvzeRqGtsryMwMjq50NWdILwENJPYDxH0VHA18+esRMM/TfD8zKLthBwa7nNQisbfKdtfoD660gLDnGDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:30:01 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:30:01 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 09/16] mcstrans: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:27 +0800
Message-Id: <20220828022934.47592-9-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220828022934.47592-1-yi.zhao@windriver.com>
References: <20220828022934.47592-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:54::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 150c1630-dd09-4314-219f-08da889d3522
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/HlMfd/AjUJXXv4t9HTCejWCvFe/dg9yEyAIBOwH6vMRAuRNAzbxeMmMclgfMzbtWMGXK8fcS3hadc5TcFrtKxb1ynJLHLRd9OA3PtsumDnuUu8wwG4iZdoUB7VyNxgaZIaBfcvY7UxvWz47UfJjgBWE+9OIz3OFR30vnhrOsEXdrAUhm112ryM/3DZry/S374KFWKRFoe2fRqGmTM1Y5BwLQX/Kb91vEh9fQRj853X4dcHHlBzespb0V28wHKXgAvuAeg3AS+Elpj8Qh20uWtbMr26+ayka/LRerNdyVhvss2vYFEj2Vt6WBlUfacK7gWL/UZ6hLUANTgqqb1AHQOxEMWFeQPLadmLQniSFeqBKYU70YBS2Dv/3f5D6+fpHuG6HGjXdjaS/g3Db6mp8mLcsTf5/UnPaLy+iClPTCFMOuck8MwLHTCTRKmLnKU6G6hTQX/RHZkISYAZ/rr38/CyV3W5YFVZYktCRN141Uqk4mlujRMd8Z/Y6YRPu/6rG8SD3X9ySIfhId8IdEsd6+C2s76ZT8WfHI+phd+ASaH0YFVFxarNJnzXKTCkzt6wPNS4vJwoHx6dkIAKSC1w+6KFkXaR5tOftm1IyI6i26ahoSZ+PCHVuMaRdKsza5FTC41WRD5Q2lifvvUgac+IN8Wulo2GXwVTiTDjLR2JzY/KAbusa8KNIxyoI6M5VWo/XJpErF0/Mg/2wf+o2brSdXX01fFtjJJqOiZPQeGvLpgTqSRAO/yHZsA3Bt6qqmMG+75fnNg0c1TWDhTObG5L+FA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(53546011)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?qpI5z+Q1u+X4R4hRWlaAE0SfQBIv5YUmcurhheejyAf7/pR2IsPtstzI/YFe?=
 =?us-ascii?Q?9vSbhJDXf3mYUuPzKr79nuLfMWvgXcbC+epLsClot5ivxW8sdDIHCcqBUEO4?=
 =?us-ascii?Q?NGTXX05M7xzl565PAYF9DpbZiNI61PFBKSQpdpFmf1T6deY1IFkZa/GVwmaR?=
 =?us-ascii?Q?CNWrJFR0MpxFEK9NDmzL5gMugWPP26PIb0Fc2ObNOKqBMkVGDpAt94yhcjd1?=
 =?us-ascii?Q?UhWgLLXny8C0USNKDjT8wYGO+Q4NSe6tHaMsfOy+rHH4ruStaSv45L0UY7Ia?=
 =?us-ascii?Q?37yw6cxLKQ9y9nbQEfIxfMW3xEq0ySElB2SInk5VR6NtYGDl6P08NXJgiLzc?=
 =?us-ascii?Q?ugfDv5ZVCKHIjlpDsSfH+FdgiKVwaKJckOLC64q2B8uOPpvtlLGfxjc2rN1K?=
 =?us-ascii?Q?tnmNYCrH9OGVIaYT7sQGaCo9wtdPr2dfdC0NKwkFNJXIhW4iTJcaVkhAkvaS?=
 =?us-ascii?Q?qBpd/0a8iN/c9AvDYmWZ62YjvB/Tg3afRdmKoVEnMzTTWP0obctvrLcYKTel?=
 =?us-ascii?Q?CqSwGRPhdeCzANyOjiAQiSt1DVg4zY8j7pU5CIL3W9snlDxKMPBaj6yJwKf9?=
 =?us-ascii?Q?NdF+GmrmB+QXXpbXacQX/Ot6bXBHwojvG3fWQuRlTrIDFgbRyi2tW/XJ/rKy?=
 =?us-ascii?Q?zy9qBRaSumx14DuHiQJQaAjo6m3yG/e8jio5BRb17CoIvngl8QsPlBHNCW2Y?=
 =?us-ascii?Q?WWS57wkzG7BIKt0yqhiZ27Kkc7oVL2sdnl4IpSwVbsO2y0LC5f0YS/4rD9bz?=
 =?us-ascii?Q?y8N41peKcNpI5Cj4G0COfGyDAQvyTKcadlhAfTvPRFhf9nz/Nx+udcLMEbfK?=
 =?us-ascii?Q?EqWpFmQjFyVnHdHTgBzMbkT4+5ShNhXMY86KHzoh5NWhnDK7AAJi+riy6pIC?=
 =?us-ascii?Q?iPxahPm+8zDZmP+ZsJHsmajUdRiYN0KrZCogliyOGw6auiw1wa8N2GAdA5k6?=
 =?us-ascii?Q?dlKKcUHyouj77CzLGWQF8P5Kxd3VnRZhUzgP9rP5lbvMHoO+0pcyBPa3133H?=
 =?us-ascii?Q?L/qrp46VvDJ196zU1GBaVXAbkoMrP/icF2rgGZfWjrJ597f5AandCAe4Xi1V?=
 =?us-ascii?Q?aNyjYQqDgU4CyDa7EkSM2EgVjd50HMi2Ahs1zwPmqKNTJ+eGH5aUU5aNr6RG?=
 =?us-ascii?Q?S8NLwViiZECqF4SMNywWBemN8SIFRmTWBt2SepHBO+BTj5FJiEM7BMdJNNSW?=
 =?us-ascii?Q?WhuX03CyFW7Xv+vpQGoDjJUoGZrhh6m9RJf308ehhuzFLorjn2rAbWwsFCl1?=
 =?us-ascii?Q?CIqmWiOo1X7uEMCcwX8TUDC4FOhhSO7WFS3Uf6jfMt//yfJ32/rzgEDNhAFv?=
 =?us-ascii?Q?KXLGbLHUq9+nk7ab/H6CMtZSMqS+J+0cY78w9hKvWHDXP9UUaaZBZh4E00e4?=
 =?us-ascii?Q?d3IYb1YQfhUoAo4gveG2I7T2d9Sjgnu8o1Z34PSeNcKhAUZHyeLEN/wy+UuX?=
 =?us-ascii?Q?zdjtlavzlKd5R6arPwSD/RccpizeuTa/9HACyS1Enlx79m89MYBEpwS4Gaf8?=
 =?us-ascii?Q?gIETwUQI1zoCNIyUIiH3j3yvYtm7oIFZdCsTpkEjyisC9iRQNuT5RYnDAido?=
 =?us-ascii?Q?IstBL2GIf5lx8sDAbTCbOOxIniYmZMNs0qaXNG+g?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 150c1630-dd09-4314-219f-08da889d3522
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:30:01.0268
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 KPQSR9cHuNaghl+aHxEyDvkTnuwTs8BaH/xL9y51ODD/467MLf0LEvrO7OaESjnk2RyEuYOIyp+CeuCJx6kTjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-GUID: OmlBt9h5DR8aO5pNukxNBHKjRPN6E7hX
X-Proofpoint-ORIG-GUID: OmlBt9h5DR8aO5pNukxNBHKjRPN6E7hX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0 mlxlogscore=891
 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2207270000
 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57924

Refresh patches.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/mcstrans/mcstrans-de-bashify.patch       |  6 +++---
 .../mcstrans/mcstrans-fix-the-init-script.patch      |  4 ++--
 .../selinux/{mcstrans_3.3.bb => mcstrans_3.4.bb}     | 12 ++++++------
 3 files changed, 11 insertions(+), 11 deletions(-)
 rename recipes-security/selinux/{mcstrans_3.3.bb => mcstrans_3.4.bb} (87%)

diff --git a/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch b/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch
index 27fd677..74ae879 100644
--- a/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch
+++ b/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch
@@ -1,4 +1,4 @@
-From 544b3c078374e5001e7fdc1b7d0b2eafda36f8fe Mon Sep 17 00:00:00 2001
+From 580a625e9e1266d92c248a5e3f471d12d42c149b Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 7 Aug 2015 15:16:45 -0400
 Subject: [PATCH] mcstrans: remove dependency on bash in initscript
@@ -8,7 +8,7 @@ dependency on bash.
 
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
@@ -27,5 +27,5 @@ index 2804ec0..8b4737d 100644
  # mcstransd        This starts and stops mcstransd
  #
 -- 
-2.7.4
+2.25.1
 
diff --git a/recipes-security/selinux/mcstrans/mcstrans-fix-the-init-script.patch b/recipes-security/selinux/mcstrans/mcstrans-fix-the-init-script.patch
index 79be090..a560722 100644
--- a/recipes-security/selinux/mcstrans/mcstrans-fix-the-init-script.patch
+++ b/recipes-security/selinux/mcstrans/mcstrans-fix-the-init-script.patch
@@ -1,4 +1,4 @@
-From 4d918a9679d2902ca2d41fe769a4d76f07a67b5f Mon Sep 17 00:00:00 2001
+From 123d5b6413905bfad535a072ff0ab5a495cb2a2a Mon Sep 17 00:00:00 2001
 From: Roy Li <rongqing.li@windriver.com>
 Date: Wed, 6 Nov 2019 22:13:33 +0800
 Subject: [PATCH] mcstrans: fix the init script
@@ -28,5 +28,5 @@ index 8b4737d..86c89ea 100644
  	echo
  	if test $RETVAL = 0 ; then
 -- 
-2.7.4
+2.25.1
 
diff --git a/recipes-security/selinux/mcstrans_3.3.bb b/recipes-security/selinux/mcstrans_3.4.bb
similarity index 87%
rename from recipes-security/selinux/mcstrans_3.3.bb
rename to recipes-security/selinux/mcstrans_3.4.bb
index cd8780b..b5d6b54 100644
--- a/recipes-security/selinux/mcstrans_3.3.bb
+++ b/recipes-security/selinux/mcstrans_3.4.bb
@@ -9,18 +9,18 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 require selinux_common.inc
 
-inherit systemd update-rc.d
+inherit pkgconfig systemd update-rc.d
 
 SRC_URI += "file://mcstrans-de-bashify.patch \
             file://mcstrans-fix-the-init-script.patch \
            "
 
-DEPENDS += "libsepol libselinux libcap"
+DEPENDS = "libsepol libselinux libcap"
 
-EXTRA_OEMAKE += "SBINDIR=${base_sbindir} \
-                 INITDIR=${sysconfdir}/init.d \
-                 SYSTEMDDIR=${systemd_unitdir} \
-                "
+EXTRA_OEMAKE = "SBINDIR=${base_sbindir} \
+                INITDIR=${sysconfdir}/init.d \
+                SYSTEMDDIR=${systemd_unitdir} \
+               "
 
 S = "${WORKDIR}/git/mcstrans"
 
-- 
2.25.1


