Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.6800.1611026522040474737
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Jan 2021 19:22:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=d/MiNJg7;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2062.outbound.protection.outlook.com [40.107.94.62])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2ABC038C04AD
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2021 03:22:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eion1Jn0YFw4n9E+TX8qXOYPOX37b2P6zQBCH9YfKUXrZDLafaMHy7Spka4aKM/TxuF5D9zED/qrHbEWYeARCZlrHT4TYJlIexaXX6HQ3dVBWenjZxG5n79uXqXk7dIGYTM+fvMqj0NucDgLJExqC/9tlgDu+0T10eMv9Buayvih8sM8vw/JNCZcRB+BCBLQGagiaj8X824vepJ460Uexp6rZjIY2lgvMnmbAHkolNjNWYG7AqFWV4N5sh2+HdLAWDRrIZUITEw3I+ltDgjZYIwMdaE0999TvfosnW+XY5oL4TMwDhUmfFV9G7T2q3OmwnMCo55D5IM4CZKYqkkxvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zxsoqpEudH4VTpcOtt9l0hZBuYtAX2Dyd1ozOCl/6Gg=;
 b=IbEw/5nuEJe165gkoRUsPYCmSM+L92+6jxSeiLgGpPa9iHF5Nu4/6tItQCUTMLugV1CDC1zgQimkfavNh/hEM0mM2WaE9ZD27xtNRFx5Fvp3P7hL5CWUF72AGRwScUzurV4tRSEzQ3hNSRy0rn/XN1zuPhltGAJXXqga5uws2dNB5NZ9Jxe+KRItAB9DCFeueMplbXARge39PSgo7XgQXKNEY8FDtlXBpL5Rkc1V8KmBzU20lZfjI8Kp6cMvetxdzuZLvruxZJaCR2HgVkSuAbMw5mgFOMdiLH/M74/b03grRS3W2n3gJlH2W53LselkOw2S2K9/tOADDOegAXPJOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zxsoqpEudH4VTpcOtt9l0hZBuYtAX2Dyd1ozOCl/6Gg=;
 b=d/MiNJg7RTSFdtIc4RN86RouOm8JIkLYuC3f2h4ZiRN84MCkmE0ijC/uRyMl9QDlIztKbqK6mtfrrn4kR+LsopyKBGVtzsc9vxifiJhCWaf/Op2e9X3kZfXjXbPmpFyY9sFKbgP6gK37ZK4ZHHS6CUWgTWfOyUGMAhcboE4Ih2Q=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1950.namprd11.prod.outlook.com (2603:10b6:300:112::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Tue, 19 Jan
 2021 03:21:59 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3763.014; Tue, 19 Jan 2021
 03:21:59 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH] audit:: update arm syscall table
Date: Tue, 19 Jan 2021 11:21:38 +0800
Message-Id: <20210119032138.39959-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HKAPR03CA0030.apcprd03.prod.outlook.com
 (2603:1096:203:c9::17) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpg-core2.corp.ad.wrs.com (60.247.85.82) by HKAPR03CA0030.apcprd03.prod.outlook.com (2603:1096:203:c9::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.6 via Frontend Transport; Tue, 19 Jan 2021 03:21:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c3ac617e-068a-47fa-a5d8-08d8bc29619d
X-MS-TrafficTypeDiagnostic: MWHPR11MB1950:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB19501D6EC9EAA4B40DB499B2F9A30@MWHPR11MB1950.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:81;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PZeDtBCM61rKbsCH/kIHDyyuFyFsUi86knl8iQUmZo4krQMs2/CiFXwpTpyao+nRExmy0rVj1KdBpxVtAhrI4p8/QG1n8Ef0igTQJ4B1kwjlh/EbmxAIULQkfKIW2S99IN7SsWnXJQliqjZv46V1ntJtOgo/t0/HSuYfLKum3xu1j+db3kGpeBqsR/vOTjPNIBHDBh3OKZAG5+4MHe7NDSqRLD8n73RvMYyROIc/nsntF7pW1LhlRwpHfhsSjA/4invR+4h4K/8XjGSUMZyg+9gX9MQfyU1O2/msgkKuLerdu7jk4jlAfZbfIbVQegfs58uXBAig238h2dQN6nkWS2UiBTYv1GkXzLNHO03JYvziRd8O2mNVHXFXM6wCkGoUaHAniEkqJoVsPnC9tkzfsXrPzkdA38cqJ5dVgTrVRRBT+p5RWI4tFG6GxGz/1Rm5fY/u0xwTgSbXeOtB+OYODA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(6512007)(316002)(6506007)(15650500001)(66556008)(83380400001)(6486002)(66476007)(2906002)(2616005)(52116002)(956004)(478600001)(44832011)(186003)(16526019)(36756003)(26005)(1076003)(8936002)(8676002)(5660300002)(6666004)(86362001)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?AZjYDixRGaxKxYruk+Qo9GHf0GYnQZjjCnQOod1aj2mresTOW13sGRb/UEfG?=
 =?us-ascii?Q?gWqNfDOAZOc/TNkIsDeY/qERcJE/5o/UJ0J/Gq3qPCRPYhscY0gS0vOW5hTm?=
 =?us-ascii?Q?PPQiOPhKzTKd/TVGkQ5K249mjfy3WJ9jkFUeV6G5u/sZvNl88QoNRmHnT6wD?=
 =?us-ascii?Q?UkH7gIHSC+BT20IECE50jTrn77GhVspzkSPjx7HM4f1YqCmH1bBb1rGcfje9?=
 =?us-ascii?Q?VfQUbU1LI6Mc1cUptrAiqsuw2vKDbVGIi5/2fQn+EFx98qFB6Jn+W+lu8sKb?=
 =?us-ascii?Q?PbdaCschxt3SG3FxD/P3lEfXRnOjOyry1l5KzqiSFnZpqvShFANSsimUEVUJ?=
 =?us-ascii?Q?J4J9iO+sQydfbCTu+0AKSjq1ysrlSUSLP1sE6Ry5pEHTIvrv7LQdDM2X4ipq?=
 =?us-ascii?Q?OnUmFXYaDJMF/IxAH/M/b4jd12DHgi9vnCVTZKNa+cuWCyCqbPSX4+QFouAf?=
 =?us-ascii?Q?O5Rgl2efWusiLd0/12KEuYRlv3X/HNeoQXGMfSA4siX++3Q80t7uEuhXP/Ly?=
 =?us-ascii?Q?JtP1eE84rmsk8kY91AVIjmjMSze8UJ3tuZQbp6pubpTLWbj5qjvBX2xnKfUf?=
 =?us-ascii?Q?m+Fga8+RVV+rK9YT+MeGNpjy5TELg/MOVab+YMRroLkzUOFtub83Nl14NmpH?=
 =?us-ascii?Q?oA1K3u4EgdhCk1P/NQfs+qk6GThc1DTGqpVBxJJtSNpgPvFTOc9hDffs9JJp?=
 =?us-ascii?Q?LFePSYv8cTGUsXskDe7RbpWVGBD+bIrkXG4Kf6Bbwjh48GOW849qk5ztnSsY?=
 =?us-ascii?Q?wYK+gnvd9/J1q6CVvyAtSN22EykxBSpU2I4Y7cVHEFnn3ix0eFWE8TkXJq2E?=
 =?us-ascii?Q?rWEMuhNFZtlMkM6XP0nESRs5PpDTJ/lHNfssi1yK+PjFG4ucJTjFo5l9HPgS?=
 =?us-ascii?Q?It2TJWudB6+QLpgCdN1FVfCBV8IM7qS/Ri3qRhFC2e2aamPP4XG8eM0H3IGT?=
 =?us-ascii?Q?qM/GzqRJ4EWgG2bGeHbl7cgmfP5O7KxgqaYdbY+XmecqYpfK7lE1+4OIyCOM?=
 =?us-ascii?Q?LusF?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3ac617e-068a-47fa-a5d8-08d8bc29619d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2021 03:21:59.3314
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ee2pWeSm6d11Qwi/v/NS4uUDVdy8vrVo53j4ax/qOVdkdMg9s1et6Bl/n4RiMoGWX6gcXgMj5y3gC+BoWjqMiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1950
Content-Type: text/plain

Refer to Glibc 2.32, add *_time64 syscalls.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...arm_table.h-update-arm-syscall-table.patch | 49 +++++++++++++++++++
 recipes-security/audit/audit_3.0.bb           |  1 +
 2 files changed, 50 insertions(+)
 create mode 100644 recipes-security/audit/audit/0001-lib-arm_table.h-update-arm-syscall-table.patch

diff --git a/recipes-security/audit/audit/0001-lib-arm_table.h-update-arm-syscall-table.patch b/recipes-security/audit/audit/0001-lib-arm_table.h-update-arm-syscall-table.patch
new file mode 100644
index 0000000..2d91aaf
--- /dev/null
+++ b/recipes-security/audit/audit/0001-lib-arm_table.h-update-arm-syscall-table.patch
@@ -0,0 +1,49 @@
+From b75eb0db2aed045787b8bf326c7a78e61855af32 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 11 Jan 2021 10:25:42 +0800
+Subject: [PATCH] lib/arm_table.h: update arm syscall table
+
+Refer to Glibc 2.32, add *_time64 syscalls.
+
+Upstream-Status: Backport
+[https://github.com/linux-audit/audit-userspace/commit/e7b4006239b5e2c1df7d501a422e39be79a13dc2]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ lib/arm_table.h | 20 ++++++++++++++++++++
+ 1 file changed, 20 insertions(+)
+
+diff --git a/lib/arm_table.h b/lib/arm_table.h
+index 51a0792..5b0da7d 100644
+--- a/lib/arm_table.h
++++ b/lib/arm_table.h
+@@ -385,6 +385,26 @@ _S(398, "rseq")
+ _S(399, "io_pgetevents")
+ _S(400, "migrate_pages")
+ _S(401, "kexec_file_load")
++_S(403, "clock_gettime64")
++_S(404, "clock_settime64")
++_S(405, "clock_adjtime64")
++_S(406, "clock_getres_time64")
++_S(407, "clock_nanosleep_time64")
++_S(408, "timer_gettime64")
++_S(409, "timer_settime64")
++_S(410, "timerfd_gettime64")
++_S(411, "timerfd_settime64")
++_S(412, "utimensat_time64")
++_S(413, "pselect6_time64")
++_S(414, "ppoll_time64")
++_S(416, "io_pgetevents_time64")
++_S(417, "recvmmsg_time64")
++_S(418, "mq_timedsend_time64")
++_S(419, "mq_timedreceive_time64")
++_S(420, "semtimedop_time64")
++_S(421, "rt_sigtimedwait_time64")
++_S(422, "futex_time64")
++_S(423, "sched_rr_get_interval64")
+ _S(424, "pidfd_send_signal")
+ _S(425, "io_uring_setup")
+ _S(426, "io_uring_enter")
+-- 
+2.25.1
+
diff --git a/recipes-security/audit/audit_3.0.bb b/recipes-security/audit/audit_3.0.bb
index b7170c7..c7776c3 100644
--- a/recipes-security/audit/audit_3.0.bb
+++ b/recipes-security/audit/audit_3.0.bb
@@ -9,6 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=master \
            file://Fixed-swig-host-contamination-issue.patch \
+           file://0001-lib-arm_table.h-update-arm-syscall-table.patch \
            file://auditd \
            file://auditd.service \
            file://audit-volatile.conf \
-- 
2.17.1

