Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.44])
 by mx.groups.io with SMTP id smtpd.web09.109.1615614675488456771
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:15 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=gIrjhcd2;
 spf=pass (domain: windriver.com, ip: 40.107.223.44, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EjguLT4zHMHm66bqLpc3qmAMPpvVbrKzjEqbvWfB+Ye7UZeqpkjJKuS8C8bHEIFioSQ1iFmeomdHUTWyaoDXPtB+S6Ava98Vt8GdrRNC5HVBzJseWolPpqc2TQ8I4XtC/LD8qd9ZaZcIgrNg41ZzSMDnZEIdJzfXWaYhE1sNGhExRdcBBW/RJMixXNg7ryNhqUnK8xMVReSj1qtfj6uyK/x+Z2MM4wqYSyxNhLnbvCiVvNtsV3Tn/fQoLO3xg/nwGD/s/+aWXUNrF9LTIl2AMoSD24p57wiTzR+Z95qzvyH1bvlF7wKF5WcvzPw52oxX5FXxHIiZ8TSgM40XbXe/Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEoD1X0mq01/NbkY4udYpShwtGDaYsXPLexsYRsaczw=;
 b=PY5PmhSx3+kqky3u2Sktk6fz0jo5Nd4CYTM6B+hlkp5FtcWXqTtwyqT60Wz/EiyNf/B7UFY5Aj+65LbCK43LtyR2SmlaaIcn/9EfqePn6KxTQ88Jj/Reo0TUG4t9HWqevC4ribrqbZ7yMeQDqpbpmsIeFQhUG2I0/GZkugKr+Wpu+AnCoFqxTZzMRBI+Ggu1K/3yEoyi1E+UofJWUqxU5oFVWXKOXTjNTSwy3lSlb7Kpvbi0bXSBmakHuqktHaV1mWc5LpfSDZDNRcOe9w3As9LCIiepL671zDeMqxoGeIK+XSeWJcqE4dbcp8HA8WPsaUDP/3JLL/TcFRFKrHop6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEoD1X0mq01/NbkY4udYpShwtGDaYsXPLexsYRsaczw=;
 b=gIrjhcd2xoNM7N9hOGvj+ufmJoJj9Oc1UXb+i6pFza2BTu8cAeAkYisLyc+Gc0WOiJ91TolxYI/GTww9Pl2gZmYt/0Lpr9zMs9S22A+wIvz/7vObZHNYwLr5zQbFIMRyTLtgX8W3C0QIlrzREs04smyFuxRMwH1+nqQdWNmpNHc=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:14 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:14 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 10/16] restorecond: update to 3.2
Date: Sat, 13 Mar 2021 13:50:38 +0800
Message-ID: <20210313055044.239776-11-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210313055044.239776-1-yi.zhao@windriver.com>
References: <20210313055044.239776-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BYAPR11CA0084.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::25) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a9ad0d36-3788-4f1d-977a-08d8e5e402f6
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB2318A1BB642A507A25922A70F96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:369;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yAkKPLHO/Cchhk1y5/gL0La4Y5/ib0jR+A8g1ws2KXAwlbXCDSMz6x/dG6soD7/NbcyrurSLqbq3vN+1kCckvhNieU+AaXsCN9G7dLptSgHQPRuBjHBjm9WUu+nVEx2+EBNZbFjtUPO4joX9UrKnPagSAWnm3NXAjXFP6DkQcZdXQ70QXOo7bXVK9h8ucpXoPpCaNL6wcF56O2J69+xrtbGdBY093q8GYD1ofDMtFHwOZx9flevvFMxR02e/9vAYFCCv9hICvS61tSIxQNLGsqO4R51+iuDMTiP7WOtm1WEFyvTNM/GSbzOjdwBonaQsJi6dizJxMKJ9Uh0nFH0Tobqm/WWHRfsKWIySFonpPWQ0rVQjEac7gbq8pg/Jruf4Puaz6atEyRkwveyHXIti74CzY5TB/Uf69itwdVXDg5v8HTzvLxQZhBD4UHXz+lRj7Zkr2FZd7WPht3BghXuAQuLFz83SuG0hCJVTK8TNhGQu4qspvIM4EFn0PDrP+RdKHiULThC0FMQvWzWeN8wALmL0f3Zs4FAKJSJi0jZTIfh58URWjGVVx8Vanh3yS7a78avbyCs6VGR6YaAX/SSwlYKEYlc0EccE2BIO+yIRaZo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(966005)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(15650500001)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?adG9VQC62WFbhrEOVhj0mmkXoPkF9+8DjLWh19tuFJKywgxcoDImNny7MHqd?=
 =?us-ascii?Q?ArUFrnTosYgaf4iXuook9+DwDD2noZp9d0bztCiFbfkLsU9NdvjQuvJh9QJM?=
 =?us-ascii?Q?AgZkq1KG+gUBFoVFwlUpKqbfH4Kse4NGcyi8IytOLt5sXXv5FcNv25T6KP5q?=
 =?us-ascii?Q?iBNfevE3i7G0lPuSUx8OVFqc+yD93BbEUAE7JJYsVE75bvzK/KEFnv7GkewS?=
 =?us-ascii?Q?8ljYmPfu+2hT2GXPM40fHl7EjGL+9hHYWoLTbvIrlxf4IxPt4AR49JlrfD+y?=
 =?us-ascii?Q?4vTJU66ZzaRDs15IaSbr1UyOtEy7ErbvElIR3ssZHLb1lkzA/fILZGWDKlXe?=
 =?us-ascii?Q?schvHjQoqsTOWUXLSONdyClHwT0qtYFrQp+84X2nztFLGaD0xqNjZU14DyMr?=
 =?us-ascii?Q?8dz4i5MigcK5iijxF6UQ6dRAykvCMYOckpyYa5qTGE7JXWJrwu8qlqSdqCYP?=
 =?us-ascii?Q?NICCe7aAWQSEw5M94+rm1ZtuBY6Phrf31pP0YQzEiELAcKqwptLAF6OvlDUB?=
 =?us-ascii?Q?uD+yYX88cdvs8n4ztOJffhvATjl/KmgLgZ7P3b83ukXdaZa3pT6uW96G1rpP?=
 =?us-ascii?Q?z9PYla8JiQ/3xT73g19JHqY9bXz5WznDez9oHVv2zB6IWq+xP44M8qQKP5oy?=
 =?us-ascii?Q?4aesM0hG0ZihksgwE8Stw6eYQAHJ8BQDmPEWbFgYeI3CgPiESzLn12GZfwvT?=
 =?us-ascii?Q?nCabuIFIQnPbysCs0PyY7tmPzKL5mWGCt1LaL9r+uKT7wliJiQ+qtvkhtPio?=
 =?us-ascii?Q?diaH9rd+Aj2YxMvoqqRUiKBrTUYisOsJJaq24OGnURq4oqmeUmIYcEF28d8I?=
 =?us-ascii?Q?axsaxFdaQxUCIbBm+qm0lZ5Ioz2XSjahZ6G2bX6D9RbBY4rCN2atLk+vSRyw?=
 =?us-ascii?Q?l1vi/u8cLWtBkgKHi8bdaLecfazaen+OVJLwtQTw/vZCw8vlF7lPvEbnItVB?=
 =?us-ascii?Q?1ibYJ/3xlugQnTIF7AKILGuXQstEjcCVdAR42Y3JXkwV3jqab2aCxfFcF2J7?=
 =?us-ascii?Q?6wq595P5UvNjijllyyIBPGFVz07IZ9sd+fjSCgCJSuKj5tV2mc5KYzBIzuS9?=
 =?us-ascii?Q?E0x01JwR4SC/MIAqKHUdPJbpeVJwzuiFjyQ4P5Gs7v5UWarAiGwPplv+q9tE?=
 =?us-ascii?Q?7pPDOryLz6rsCxOKLdYv0URT3fzvtMUA/bBMpjNg2EhIJp+Lq+vREEF39Lhg?=
 =?us-ascii?Q?eBEFGPrE1p/8tPGDtPWHVWf8MgfB5oAyj/3wwcTT0lJpHCyOw0XHjnWw3xEr?=
 =?us-ascii?Q?L1lTWhyyKfvYerLhUQWueAjlhXX0ZSOdOpxNKf0A7rZVXytOUktkcWK+rQJk?=
 =?us-ascii?Q?71eBTaFSMDHY0QbMxmIMkHJT?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9ad0d36-3788-4f1d-977a-08d8e5e402f6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:14.1478
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GAZ6ezcvQAjvlU7LEy4pDah8qH//XDTJ4euWiXtT4byLxCoFrJ4YBSJfAE90ecstp1ZWkahQo3wOyXqEg6Va1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

* Merge inc file into bb file.
* Drop obsolete patches:
  policycoreutils-make-O_CLOEXEC-optional.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...icycoreutils-make-O_CLOEXEC-optional.patch | 48 -------------------
 recipes-security/selinux/restorecond_3.1.bb   |  7 ---
 .../{restorecond.inc =3D> restorecond_3.2.bb}   |  7 +--
 3 files changed, 4 insertions(+), 58 deletions(-)
 delete mode 100644 recipes-security/selinux/restorecond/policycoreutils-ma=
ke-O_CLOEXEC-optional.patch
 delete mode 100644 recipes-security/selinux/restorecond_3.1.bb
 rename recipes-security/selinux/{restorecond.inc =3D> restorecond_3.2.bb} =
(88%)

diff --git a/recipes-security/selinux/restorecond/policycoreutils-make-O_CL=
OEXEC-optional.patch b/recipes-security/selinux/restorecond/policycoreutils=
-make-O_CLOEXEC-optional.patch
deleted file mode 100644
index 83250eb..0000000
--- a/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-o=
ptional.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-From 4adc1c02e4da42f64249c05534875e732f043693 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Wed, 6 Nov 2019 23:17:50 +0800
-Subject: [PATCH] policycoreutils: make O_CLOEXEC optional
-
-Various commits in the selinux tree in the current release added
-O_CLOEXEC to open() calls in an attempt to address file descriptor leaks
-as described:
-
-  http://danwalsh.livejournal.com/53603.html
-
-However O_CLOEXEC isn't available on all platforms, so make it a
-compile-time option and generate a warning when it is not available.
-The actual impact of leaking these file descriptors is minimal, though
-it does produce curious AVC Denied messages.
-
-Upstream-Status: Inappropriate
-[O_CLOEXEC has been in Linux since 2007 and POSIX since 2008]
-
-Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- user.c | 8 +++++++-
- 1 file changed, 7 insertions(+), 1 deletion(-)
-
-diff --git a/user.c b/user.c
-index 714aae7..bbf018e 100644
---- a/user.c
-+++ b/user.c
-@@ -202,7 +202,13 @@ static int local_server(void) {
- 			perror("asprintf");
- 		return -1;
- 	}
--	local_lock_fd =3D open(ptr, O_CREAT | O_WRONLY | O_NOFOLLOW | O_CLOEXEC,=
 S_IRUSR | S_IWUSR);
-+	local_lock_fd =3D open(ptr, O_CREAT | O_WRONLY | O_NOFOLLOW
-+	#ifdef O_CLOEXEC
-+		| O_CLOEXEC
-+	#else
-+		#warning O_CLOEXEC undefined on this platform, this may leak file descr=
iptors
-+	#endif
-+		, S_IRUSR | S_IWUSR);
- 	if (debug_mode)
- 		g_warning ("Lock file: %s", ptr);
-=20
---=20
-2.7.4
-
diff --git a/recipes-security/selinux/restorecond_3.1.bb b/recipes-security=
/selinux/restorecond_3.1.bb
deleted file mode 100644
index d4e0d06..0000000
--- a/recipes-security/selinux/restorecond_3.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f83=
3"
-
-SRC_URI[md5sum] =3D "8daf761739a150a7a29bb491726a6cd9"
-SRC_URI[sha256sum] =3D "82ca45099685a45d718f11f8859963c1ba83d98e510312cbf0=
b7dc5664c60ad0"
diff --git a/recipes-security/selinux/restorecond.inc b/recipes-security/se=
linux/restorecond_3.2.bb
similarity index 88%
rename from recipes-security/selinux/restorecond.inc
rename to recipes-security/selinux/restorecond_3.2.bb
index a5b1635..d9def9a 100644
--- a/recipes-security/selinux/restorecond.inc
+++ b/recipes-security/selinux/restorecond_3.2.bb
@@ -4,12 +4,11 @@ The restorecond daemon uses inotify to watch files listed=
 in the \
 /etc/selinux/restorecond.conf, when they are created, this daemon \
 will make sure they have the correct file context associated with \
 the policy."
-
 SECTION =3D "base"
 LICENSE =3D "GPLv2+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D393a5ca445f6965873eca0259a=
17f833"
=20
-SRC_URI +=3D "file://policycoreutils-make-O_CLOEXEC-optional.patch \
-"
+require selinux_common.inc
=20
 inherit systemd update-rc.d
=20
@@ -19,6 +18,8 @@ EXTRA_OEMAKE +=3D "SYSTEMDSYSTEMUNITDIR=3D${systemd_syste=
m_unitdir} \
                  SYSTEMDUSERUNITDIR=3D${systemd_user_unitdir} \
                 "
=20
+S =3D "${WORKDIR}/git/restorecond"
+
 FILES_${PN} +=3D "${datadir}/dbus-1/services/org.selinux.Restorecond.servi=
ce \
                 ${systemd_user_unitdir}/* \
                "
--=20
2.25.1

