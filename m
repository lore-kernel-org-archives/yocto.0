Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [40.107.77.50])
 by mx.groups.io with SMTP id smtpd.web12.6099.1614675156084576918
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 00:52:36 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Y9ayd4lq;
 spf=pass (domain: windriver.com, ip: 40.107.77.50, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CG8654qXRWgeQ1sVQX62JlkDTwi/RY08L3uvgESAAwRNkonfTh0B+K61oYUGJSiurJdyvv0eQo1vQpnd5HRLW0sD2D9e4iBhfaGFYUOaljPmjdpZJqlC6srLSaEWEvsRfQ8gEVdj2XP2NRtpbRpatar3Xcnz13qoCm64xqtAOmKkE9SK3g7rVt0vSUbeNXSIgRUNH4uHCx9K9BF4anVDeNy1Q/MPnVvFFw7aBTiHqsEkn1s7b/ZhWMZRk77icSg0PDt0tLFAtyBNhUUbfkvuxeHgdGzLiGaHz+ZjY7IEPplGRfad7MnYPHXjGsmHVEFtiNr2w1YtRY8clJ5DE6OQGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HVmUKe8XAf79GMzubaW7/dhzxm64jti4Wep9UrI1Qbg=;
 b=jiOQ7l2ZqMvyT9JMEIFTCL739t4eP7xiKLAtwFcAs9JMgej84DCLvrdgCqkXM13z8ylKo/YZWgMUplJGSPZmGyEEajqNGvi2fGeVEeWIIopw+i3j6za7SsQyPChKMS1U2JDGTgKYu0oUo60hhnvLIsnPCXT2tDSfxnwiuDVS/ns3PbpO3vHlLzLSrhevtzEkmtdYMsi4Gp/lxq9ooK8RUTTSr90QQpcyHlKlgiC9sMiTAV2Rmu+GOed6o3yJzernLFZCz+E8+kEYI1SyHVuGBHq/Rm6v+oBh7dy8TImR0tlYJhtf+NWmNeSwfiWvz23FT6kV+bak5E/FaRtaTdeocw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HVmUKe8XAf79GMzubaW7/dhzxm64jti4Wep9UrI1Qbg=;
 b=Y9ayd4lqW21GHpOomJ5x0SvJVsRu+rH425D/g0kAreDHZZknnNNPbIHkBx+MvUD01KwnHEpdA9qATOZr0cqu/Jza3QxbrUlMhq9fQMAk1MTESR5LstcMmO9KClL0WgVzmwoFp2R/ldKTDg/GWMGwm7x6BH+Jmb+dvJGzQSeRzfQ=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4804.namprd11.prod.outlook.com (2603:10b6:303:6f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Tue, 2 Mar
 2021 08:52:27 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3890.023; Tue, 2 Mar 2021
 08:52:27 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 4/7] audit: upgrade 3.0 -> 3.0.1
Date: Tue,  2 Mar 2021 16:52:03 +0800
Message-ID: <20210302085206.56794-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210302085206.56794-1-yi.zhao@windriver.com>
References: <20210302085206.56794-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::19) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.8 via Frontend Transport; Tue, 2 Mar 2021 08:52:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f7753b8c-aa2f-4324-c026-08d8dd588185
X-MS-TrafficTypeDiagnostic: CO1PR11MB4804:
X-MS-Exchange-MinimumUrlDomainAge: github.com#4893
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4804FE4A29A64D47532FAA79F9999@CO1PR11MB4804.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:91;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rstV1QS3dI5hTX910S93i6Q1f3sEyamZP/fc/GbwWCs/tWrDLYW/YC7rDf/I2rMGGyGpnqpbvX2/v/1eZBmZO783YN46DF8e3NqFQFsHHk+hhQDGB645d4myQwCH+lt+xkQ2bkYP5OWU83gwbkEhCNIexj83rbH/jwHlWU+Qzo5E6otKRXk+mR4mbz+0ognS/OaaVJAt2Z0h6/Bg2wiy7P4YXjI4n9ILq4eS+4TKhkDtH+fGBxUXsZCT7CNjsx+yHOvOSO64tn3IAY050JhkFixGvTtFJ00UtxquowHObC4KtCrbC8UOSwIFGfT8ow0VqbBttDPFHDST1yKjBNTfZ6UTIzut4ha20I7yIYa0Yet0ZAl0GN8VcHeBDmcBhyJ+ypQL+nr4EsryMhaLA0m1gp82oKKgbq/tcD+zraTQd8FMvU9iiHDujaPORy4Lqphs1U7nO/gVycQoW0S3Jz3b6cFJSO4O4RNCpsbmUUwwXpL31cEDIG0yIot4c4OeZZq1hV9tspqzP2b5nLqhs9IWj9+EEjuhivKGaYYsXjpIBIHxUyKxC86F+9bbNUwB1Wx8azE7e44u3d+7AokHWe9r703sxa0hk1dw567Ww6wcYHI=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(366004)(136003)(39850400004)(376002)(66946007)(83380400001)(6506007)(2906002)(66476007)(66556008)(8676002)(186003)(6666004)(956004)(478600001)(316002)(1076003)(2616005)(16526019)(5660300002)(86362001)(6512007)(6486002)(8936002)(36756003)(52116002)(44832011)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?R9C1K0H7O/E+nRIb70+W1F+jhiiPTP6l/f3BE23T8j8XNMEcLsSMl5bCssVG?=
 =?us-ascii?Q?jTRuewZvN/PURvEbTueTPatd6jK93d8TVORoF2qjym3ZBCdjUONw7hRCnipb?=
 =?us-ascii?Q?xx/yifNzPQMYuEiLKm7I5meJNGdJeMJ0NGhXW4xJ9OMNWXhlPbtuXDTe+xHi?=
 =?us-ascii?Q?sITr2J7V6lxpAQl8lwXlTmoktsXJAnEp3G2+I0EvOEjLTShUIBVeEOWnki5I?=
 =?us-ascii?Q?EJnRdud6hi4Tt+31HlgalcJEKorwlham4SeJSzl2kic4UOZZyhsuVjmyzuWG?=
 =?us-ascii?Q?mVWV7q/aUwcP4XO2oO5S4gFy86gGXB0hRgdPeeB6sIRcD5Ayiv3eL5XJ5ejC?=
 =?us-ascii?Q?1KipuTRmGqhSpv0Y3Yl2O3e426sqqOb4lg6qoRQm42k4AbiMeOL9UGyvxFvF?=
 =?us-ascii?Q?uTiioWwQWU+at8bdpdHOILwvHjYraMH5i01FhCZKcNko4etZOVnJTAGhmkCi?=
 =?us-ascii?Q?zFXcTXcHmtHTeMHCMNVrj/Q9BgNsvM1ZqItUbnf7CAUljVlo6ckmJtAN+aA2?=
 =?us-ascii?Q?85kl9jyS0EbMnGMz5I3scq//p1t4nmPM+p62gZeTqUXHtuBvTHc6Yw7UBYmn?=
 =?us-ascii?Q?m8T42Gl68X/8aaXTpzsBD9/Q8w9DxIp0GBxfbb2HaM9hIemYN/cerGOdGL+X?=
 =?us-ascii?Q?vT2+jvTo35mU4xd4PFhD98AAse1EuETiDV7FRhpT/m9fqxf3f9QmTnOJxvPa?=
 =?us-ascii?Q?g0s24S36Etx8DK61FyQSz4+OgdSNBqIta2B0tcV1PcZGbCbNSlQ0ZyN0JjLr?=
 =?us-ascii?Q?CIlK/99ukjSaoxUzZ/Ue1ofdjAbqpeeFteD3ySwdbcbZ1XBvbXfwKTPflOen?=
 =?us-ascii?Q?Q8IruNYxxMz0uyEi0+pY6fDbeq8R9MSAbIpt/ubBzpQSnwCmtWRPHl64w/dh?=
 =?us-ascii?Q?gdCSHPf6QrOeljuyB2GUk7FxxPzZ+Q9NdZs0rCI/GVZDypubIKDkaFpfGZLf?=
 =?us-ascii?Q?9M3zRwzYTt7mOqeciqZQcmlX3BqQT1110HMF/6cB+3hQ1fj4hqJnqogtg6rb?=
 =?us-ascii?Q?MVYDBj71kQrFb+at5CIprECevkagxfuYHWzCD0xgFlcS5c3r7e17uQ6nPXfD?=
 =?us-ascii?Q?5yf2SyrRbUIC/ehJDpeQ+O4bgrz/6j+2COBhrnaBNcPWVz5BQnVoeB8Ntls2?=
 =?us-ascii?Q?ZAFbRfEuhz6KmEcgG15WZxmcJDBS6kexzyCqBV+8EaScjrpr2KCBHMCs/jRG?=
 =?us-ascii?Q?/jk0GrIdBNHI0bPAY6bDpkZSc4HRk7KdCR+zqd8ilfftOTwoGmrkehjmkuKZ?=
 =?us-ascii?Q?455p5tJcUvWru2/oYUtTQiAXmxaTsEGv7EeYrwZPeCHaT64CgR4k/9LbkBoM?=
 =?us-ascii?Q?mlkKuvfFR66LZvwoTPIimLbl?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7753b8c-aa2f-4324-c026-08d8dd588185
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2021 08:52:27.5888
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CE7jrJ0y4Gk9YU2FhgNur92lCjlk2a6w7zYYs/Km2OKcM9k3YXB8ALu2xCqhvPAIwnAEiH+c6ttY4t5fQ8AGNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4804
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Drop backported patch:
0001-lib-arm_table.h-update-arm-syscall-table.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...arm_table.h-update-arm-syscall-table.patch | 49 -------------------
 .../audit/{audit_3.0.bb =3D> audit_3.0.1.bb}    |  3 +-
 2 files changed, 1 insertion(+), 51 deletions(-)
 delete mode 100644 recipes-security/audit/audit/0001-lib-arm_table.h-updat=
e-arm-syscall-table.patch
 rename recipes-security/audit/{audit_3.0.bb =3D> audit_3.0.1.bb} (96%)

diff --git a/recipes-security/audit/audit/0001-lib-arm_table.h-update-arm-s=
yscall-table.patch b/recipes-security/audit/audit/0001-lib-arm_table.h-upda=
te-arm-syscall-table.patch
deleted file mode 100644
index 2d91aaf..0000000
--- a/recipes-security/audit/audit/0001-lib-arm_table.h-update-arm-syscall-=
table.patch
+++ /dev/null
@@ -1,49 +0,0 @@
-From b75eb0db2aed045787b8bf326c7a78e61855af32 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 11 Jan 2021 10:25:42 +0800
-Subject: [PATCH] lib/arm_table.h: update arm syscall table
-
-Refer to Glibc 2.32, add *_time64 syscalls.
-
-Upstream-Status: Backport
-[https://github.com/linux-audit/audit-userspace/commit/e7b4006239b5e2c1df7=
d501a422e39be79a13dc2]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- lib/arm_table.h | 20 ++++++++++++++++++++
- 1 file changed, 20 insertions(+)
-
-diff --git a/lib/arm_table.h b/lib/arm_table.h
-index 51a0792..5b0da7d 100644
---- a/lib/arm_table.h
-+++ b/lib/arm_table.h
-@@ -385,6 +385,26 @@ _S(398, "rseq")
- _S(399, "io_pgetevents")
- _S(400, "migrate_pages")
- _S(401, "kexec_file_load")
-+_S(403, "clock_gettime64")
-+_S(404, "clock_settime64")
-+_S(405, "clock_adjtime64")
-+_S(406, "clock_getres_time64")
-+_S(407, "clock_nanosleep_time64")
-+_S(408, "timer_gettime64")
-+_S(409, "timer_settime64")
-+_S(410, "timerfd_gettime64")
-+_S(411, "timerfd_settime64")
-+_S(412, "utimensat_time64")
-+_S(413, "pselect6_time64")
-+_S(414, "ppoll_time64")
-+_S(416, "io_pgetevents_time64")
-+_S(417, "recvmmsg_time64")
-+_S(418, "mq_timedsend_time64")
-+_S(419, "mq_timedreceive_time64")
-+_S(420, "semtimedop_time64")
-+_S(421, "rt_sigtimedwait_time64")
-+_S(422, "futex_time64")
-+_S(423, "sched_rr_get_interval64")
- _S(424, "pidfd_send_signal")
- _S(425, "io_uring_setup")
- _S(426, "io_uring_enter")
---=20
-2.25.1
-
diff --git a/recipes-security/audit/audit_3.0.bb b/recipes-security/audit/a=
udit_3.0.1.bb
similarity index 96%
rename from recipes-security/audit/audit_3.0.bb
rename to recipes-security/audit/audit_3.0.1.bb
index 88174b8..ba24d36 100644
--- a/recipes-security/audit/audit_3.0.bb
+++ b/recipes-security/audit/audit_3.0.1.bb
@@ -9,14 +9,13 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba3=
6caa9b7df079bae19f"
=20
 SRC_URI =3D "git://github.com/linux-audit/${BPN}-userspace.git;branch=3Dma=
ster \
            file://Fixed-swig-host-contamination-issue.patch \
-           file://0001-lib-arm_table.h-update-arm-syscall-table.patch \
            file://auditd \
            file://auditd.service \
            file://audit-volatile.conf \
 "
=20
 S =3D "${WORKDIR}/git"
-SRCREV =3D "ea8dbab9e0fb3fb2507ac5b8dc792ef32a97c87e"
+SRCREV =3D "46cb7d92443c9ec7b3af15fb0baa65f65f6415d3"
=20
 inherit autotools python3native update-rc.d systemd
=20
--=20
2.25.1

