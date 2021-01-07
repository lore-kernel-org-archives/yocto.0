Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3808.1609991057050748477
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:17 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=QQQYAypW;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2061.outbound.protection.outlook.com [40.107.94.61])
	by mail.yoctoproject.org (Postfix) with ESMTPS id ED05B38C08E7
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KHXFLa8l//NCXu08g+QrxZpTyirZJR149/zdPeSrPd0DFcK5z4iXxQL2iGBXKXGZVmbSf/PqjT83e+F7963b2L3kMVtBCzo1o91VpL8LtSv5eEhIUUCw6jK1M8Qh2reSPAjVYPH8sf1tDy4XlYMVbbMyfxKwpm+6nSDvXQ7f6KbEaXp5HyUEypahGHuUCcTAfxfL216JStHB0rRXHYchQriTv5NbjD260E8aciW3vdM1kJGZtwDA6P16/f3fWf50SwbplQpFy1RpZ56mRL5T4vFmCswfP1FJtgh9OEEEDb3tgywXeBC/VP1nng+ASfmuhmGCrW6TppybjnWLwE62rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J2PAuworslWgKEiUsK4Lpoc7KMpAFZMxvLL3NHEDrtU=;
 b=jWiudMERo3tNa2NUhULIQarB8MuUSN521eF05MzjoEGAhrC2C/TQNuiXcyr+S4pHLAnv13Qx0E7fl+qO/trouOw2eVlD/wSQKeNKiPY9hsADLnudEJ7sYumM9FJOjWJXw36HfblB6XHGUQz8TJ1nMUx/Ex1JkVE+BiSFwO/oZgnaclUW9qexmXtVetsBfCFZcU9IofCwRTzJszISkChz/6mfqHGcyBeBRcZCgPiSRWih3iMoOqBuRzBkfypoN0VNVIJXzhwdiEkoxUw9ysRASsapqQT+a3UPtrh7HqKJkewybeqH1BB36EgyGl2CFXeEZM+9DttmFA10FSzjB1czmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J2PAuworslWgKEiUsK4Lpoc7KMpAFZMxvLL3NHEDrtU=;
 b=QQQYAypWwEG54W3dz9cOrwdaMQW8dvqndEAHyk8r+YjC13KGvTQvae/3xy4WmEs0+tL70c4NW+7o53pdJyQShEnVqIbFYN5wy7th+p1zL3SDaHjfpcBt4yVbU7qiRpLWnDoJE2NJ73UKhLCt0zyxN6DjvoSBPPNwX+Wf4Di0Hpc=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.21; Thu, 7 Jan
 2021 03:44:16 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:16 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 11/17] mcstrans: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:39 +0800
Message-Id: <20210107034345.37200-12-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 93e21d38-6de7-458a-a8bd-08d8b2be81d9
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB50732BC3F55050321A1FA0D1F9AF0@CO1PR11MB5073.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:639;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QJdcYsMWI+ZlZJdSKKCEqsc4aMA2mcv3GHEAIQ3iN3ge5cY3HiyAPT+dqJAmwe+sMWM2/V4ghB5TtnAed3MI8eYF4L6Kae9Z6OONYFnTVBcMFHX11Za1cllNiXuZjhdiONCejDBvPeqXNVKZRFTU3mcqthTx9U+Ts/pyzsmox+pzA3Nndeth6mE4yVeo9evEXDvQ9OeNAMqSM3JBJMInCGMEYuJq+xHJ0spfH/5DPrE9zFykYDP2JtfpcIWN0gTYiNjgl7Ns0lyOwy3UOyfu+Ae/ImMTvjApVbnOofOadwR5K8dEJwN77L4y6xXkmYrqbwbbjsYumSz3YCFRNc9DnFGFKu0qxHZs3TIi+bpHmvMvd+q0+fRNjY8v2t00yWFdef+WOE2Y5cPesoGNi5fmYw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(136003)(346002)(396003)(26005)(316002)(66556008)(956004)(16526019)(66946007)(2906002)(186003)(66476007)(2616005)(6666004)(8676002)(83380400001)(6486002)(44832011)(6506007)(36756003)(52116002)(6512007)(8936002)(478600001)(1076003)(5660300002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?09maBr6yOcWSHin5FR2Juceq/QdzwSoSUKkjs+bYjwy7MH5FjXGC0CQjOYkG?=
 =?us-ascii?Q?KSC6bwnqK5VnyvhOV17xZZ0kiCNMbHDmgFAh76S7xtozL8nvzzfJ2IDgi+oV?=
 =?us-ascii?Q?vyhfXpncicxQRyKYRwoSJ2xDNKleh/XvYvGmbJ9mRGUaGrGkebUHuT0Yha2H?=
 =?us-ascii?Q?9l24scznUnDDq453vGKh87xNgYz+7bpKrGnkQ379VNuFmsnfpVS9PcE9XjlR?=
 =?us-ascii?Q?ubzh6Bl268cexnfoK6FQR1UNe+aQ8ARDI5FjBcyPQjaN7dVd+qkaUKeQazBO?=
 =?us-ascii?Q?8I9jq/Ib8vD6UnTdOh09+e9vlHaDFlEuK6IAKInwfi509abyUmYcImjYlVAy?=
 =?us-ascii?Q?sDrrm/IH6UxEnlx9Sgd8gG8LXRw8H0ITQ51bZJk0Yiz7Wvk5rBUOf4zexsIS?=
 =?us-ascii?Q?7vpvmBkHbxcXRHo72Lub1utDLXUGMfJNDIVlknszow7Kjgrf8v8VyOFAsDBR?=
 =?us-ascii?Q?CmbhHk9QuMd40hAG+mw1VENz5YpqCyy5CHhduaM4TKXMoDTJohonDzS0ginF?=
 =?us-ascii?Q?tnJa/2MwydsmT9ffxJI00OZK+KNsybesBLjGv5cXOICtOyA6CQExl92VOJ4q?=
 =?us-ascii?Q?ki071ohvfvLPJtHJmwp1wRVt3D3A55ymEEkmVm7KDjkoaPIS1qUM0LcDuapn?=
 =?us-ascii?Q?jh5ifT84Z2gxbFvB7aSU1KDJI7chhjZctQj9UkMLCNmRkhEaFpCrw5ZxHRJV?=
 =?us-ascii?Q?MX7grY+kJ/ISVbHgWn+AZdIFe/616b1HawhPEhufdnGTZxSPd5aDmBlM2XUg?=
 =?us-ascii?Q?p/z31rk4BN9Pa4Zgg1ok/36klHfjFFaHX0XKAYaPV3YocBLLH6Z5jcVs2WYT?=
 =?us-ascii?Q?5mOyg/FZBqvZ6HiLcL3SPWdfF0epe1qaYf7IJP6d+Im/kuh+0+U5i0jdnWBw?=
 =?us-ascii?Q?TxNn+YehxVMnnGdZq+BXLS4WjdmbJxIin+wSX0VaLNOAsNkWitfl8/ffhj7r?=
 =?us-ascii?Q?EwM2SJ4bpPFohRqcDR4YbEGrnLlXQEvDAaYU3WlveE4LWajc2mGS8ZdHv+tE?=
 =?us-ascii?Q?PQru?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:16.4035
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 93e21d38-6de7-458a-a8bd-08d8b2be81d9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ufez6UK/Wa+Zdm4aZvalIsSkiH/QF0La79DZZ+zCCOf6gjjw5NQi/t6E+QX0HN2cm1VP/2UjAAWYv2RLOwZ/cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/mcstrans.inc    | 6 ++++--
 recipes-security/selinux/mcstrans_3.0.bb | 7 -------
 recipes-security/selinux/mcstrans_3.1.bb | 7 +++++++
 3 files changed, 11 insertions(+), 9 deletions(-)
 delete mode 100644 recipes-security/selinux/mcstrans_3.0.bb
 create mode 100644 recipes-security/selinux/mcstrans_3.1.bb

diff --git a/recipes-security/selinux/mcstrans.inc b/recipes-security/sel=
inux/mcstrans.inc
index b9c670b..52b95c6 100644
--- a/recipes-security/selinux/mcstrans.inc
+++ b/recipes-security/selinux/mcstrans.inc
@@ -14,8 +14,10 @@ inherit systemd update-rc.d
=20
 DEPENDS +=3D "libsepol libselinux libcap"
=20
-# We do not need "${D}/" as a prefix anymore.
-EXTRA_OEMAKE +=3D "SBINDIR=3D${base_sbindir} INITDIR=3D${sysconfdir}/ini=
t.d"
+EXTRA_OEMAKE +=3D "SBINDIR=3D${base_sbindir} \
+                 INITDIR=3D${sysconfdir}/init.d \
+                 SYSTEMDDIR=3D${systemd_unitdir} \
+                "
=20
 do_install_append() {
     install -d ${D}${sbindir}
diff --git a/recipes-security/selinux/mcstrans_3.0.bb b/recipes-security/=
selinux/mcstrans_3.0.bb
deleted file mode 100644
index 27ddfce..0000000
--- a/recipes-security/selinux/mcstrans_3.0.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae=
19f"
-
-SRC_URI[md5sum] =3D "0edc58a4d65425ffa5d58d32bf412352"
-SRC_URI[sha256sum] =3D "0992b8e7c4de1ba5f98a82547b02418370be5a5f588fc6d5=
f1cd2c7824bda87e"
diff --git a/recipes-security/selinux/mcstrans_3.1.bb b/recipes-security/=
selinux/mcstrans_3.1.bb
new file mode 100644
index 0000000..26bb299
--- /dev/null
+++ b/recipes-security/selinux/mcstrans_3.1.bb
@@ -0,0 +1,7 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae=
19f"
+
+SRC_URI[md5sum] =3D "18b7bf8193dd2360bc60f0e2639009ab"
+SRC_URI[sha256sum] =3D "cc918576c17340fc944849d785e2a7400b269ef079a36b87=
1c140504164d6a45"
--=20
2.25.1

