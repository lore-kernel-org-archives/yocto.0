Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3809.1609991058653747331
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:18 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=G+A92k0x;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2071.outbound.protection.outlook.com [40.107.94.71])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 84B5E38C08DB
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bQJdqYR8uf43HQmBo54QRR4eXX5/loBwLEt00uF0rpdq7shw3s0tnVE9bQIKqrBS6f0wHD3mJaGk4Z8CoyDwyJKuO9C7VXthflVjyMunqqoQ3e4ofqXP5PUS2sTnKfUovIh1gx9rUKGSDBDz21khalCHJAv7wLX0oitA1f9QdFeaP8msfrv1oyAS/7RW1vsCohduXzqFS0yqfvp5/oNr4TT//tO9WoOwjvd1enI8RZwit8lUiKWwPPO39E05toxV8iKv9xHlY0F42NiNx89U+pCftDKRyDuKEhWxr8pK1nj+/cMRRaqKvC1qJDfoWRGqWxRhsmbZ3je3y9O77dxNTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WVpkKQxlri7khwHIF/2k6cTFqlwQPUl99nb/JNsg7Jw=;
 b=Z06SxPTuvgTudzdvJQ52gfmMXB1r430EjCSrO0tOr2vdDlOL9jGNni9OyXTyszQsc5cO+IKjJ8CNu9cPDWlQgrBMRsrwefuk94tunaTh3ZWeHnemzbdZOlo99oihU3v8CoO/4hbO7O6LzFmzuRvlCwzk+QFStr4DOAl6uzD72xC/Xaj5aMAATt/fk6H/7NOKHPqIPPdgl2fA6xbSNBSwm3tuEq3pdzSSNmBpD8WMGF8iOWJq6jXpmJsGkFY5WaeRgbom2itLYFqv7XOk3eD7aqMXDczxQ/+abvavv7Qho5xTKu7mg14y93SvWY0ZDzV2mvCSIu0doNuw4YjOgRf7bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WVpkKQxlri7khwHIF/2k6cTFqlwQPUl99nb/JNsg7Jw=;
 b=G+A92k0xszG9YpNSOy+H37rqAolrtQiAqbz6uCSCY0JWY+b9OP4U4C5iiOWMOtiy5jj8snpadppHFv8QvusH+SXvS6dpW4wIhhSQK4bvfX+DcwTj6Gzr/K/gez/AHs45UNfVlYR2aZo4DKETZiyBvO5s3OjW4+VQlfhXf3/NwDE=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.21; Thu, 7 Jan
 2021 03:44:17 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:17 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 12/17] restorecond: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:40 +0800
Message-Id: <20210107034345.37200-13-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 877c6473-ce8a-4cbd-cdb7-08d8b2be82ba
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB50737A57035697F68F463AC0F9AF0@CO1PR11MB5073.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:346;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kmtPptEo7PoUd02XEyJDDZWb7Fx/IhwvJr4O35DQMyZF9dMRs1QDEC/ttD7Mi5UYwFf2x28f+4Ay8UleedtBDAAJKDdQ//ini3xSyJu7y1xw8bf+2sroEaNPA5oOroHPDAyIdY2Wk/kbBnU9j21t+YCH4wbRn6GJnwOuKfRkoE4wjrSiVgoIJbgZs60b2fvOwGJMFpXQe8Tmt1qtQfAsSXTwBnMGWqKA3unB/hd6BpVZZStINOzXl7X57lDwWb2zUwPpP41fw1mtYqw5aNBm1OB3KSQgpqL9oDbEbAat34mdjWxjGiZLwvVVGTxGZyllgvEZFIKPiT4jyos1aIn73r3zkS40WLF+kPqTGa0pCc3tqiNNaMIjz1WB6tK2KjmbKJaTgEaKe3aZZLpPcqETDQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(136003)(346002)(396003)(26005)(316002)(66556008)(956004)(16526019)(66946007)(2906002)(186003)(66476007)(2616005)(6666004)(8676002)(83380400001)(6486002)(44832011)(6506007)(36756003)(52116002)(6512007)(8936002)(478600001)(1076003)(5660300002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?M5jUyKF5FfObILUYgry6OOG/NAyyUhGU8t3NGaCTjIxslwXCdHmg2QkT0Zq5?=
 =?us-ascii?Q?ZUICi0PR6Ghm5WVQHdD/pUZuR2O1Q1aM/w1EqXptVZA1STNTM23mBKgmtPbd?=
 =?us-ascii?Q?Ff+efTtWCRYUiD43ACR0BDcufNPCSRTW/l9DEWtbMflgj3uRm6bnqyMbRHmG?=
 =?us-ascii?Q?Ys8A22hl39C1PCSsPDgFsv0qlCEdGjhByMlyca5hku+lVVQebUE+VDMvn22O?=
 =?us-ascii?Q?nFZkz513OBz1hEFmkf0bp1lksn/y06yDTzBElSIcH9gPMnnCEIfoOGgaoiVY?=
 =?us-ascii?Q?N4f6hHxw77JmFUzoJnPdN4b/D81BEZp+P17ksJt1YF4JBca2cdbgvWoLuOsd?=
 =?us-ascii?Q?oDeewLhoRFHK4E6FtsCS5evFBtW03gmojD6rkTG909j0vR1Xq9oG2kMqQ1Wy?=
 =?us-ascii?Q?zKP1eAsOwOYnxgh9PoZA84M5bmbp6iFogf+s5lN3ZxcvW5SBKyVuJU+LuY9/?=
 =?us-ascii?Q?UhEfUC22QSFlfTabawZAe9K5ADgenOUNii1q5khOtmlmgXgr0rN5qMSptgfb?=
 =?us-ascii?Q?EwIxJvm3C/6rfPh5BegxIsfYuij4ogv1MUCX7HYDCHrW+0zeJEwWIpLdBlAS?=
 =?us-ascii?Q?GbQ+Yo4j3qYGYAArK7fVtLWhD7AZoM+/ei9kPUM7DaBtnjYqvLZOsSyhqyJo?=
 =?us-ascii?Q?uZcMJqU09MWq1prHc4FJAJXyxYKgauIDERbRHWMGXs2BnhT9tYlzIn267iX7?=
 =?us-ascii?Q?PPjVpRmesfhk6MT6P0dXKUZmgJChtdD4bbtijG5fpcKxfLy46pBnEjvGIOjd?=
 =?us-ascii?Q?+QX3mHyyiNJ1dWcONibhITVqjNa7fVobpcITjo08sBovuBw/mlxnGQWxLGSZ?=
 =?us-ascii?Q?XLjE0XvUBAbS0N2xWpYpQXV/D2HIYCCUqYZtE2xUoEPSQVvnq3x5dnNbaxgE?=
 =?us-ascii?Q?3PPu8fE11iPTZLharPMFbE7qD1NDDceiJ/Bm74djNBAftJN7Ve8LDn1d17kZ?=
 =?us-ascii?Q?JvVJvjEjfg3A5LRV52HQA3MCygSPBBKoX81SJd+nSNKGr9eWiCaE+sxUYuq+?=
 =?us-ascii?Q?T6uo?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:17.9497
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 877c6473-ce8a-4cbd-cdb7-08d8b2be82ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PBhzcf/oyc57UctEtAElkdEFWFCFAHXYG/NXXGTS+7MGZzBPbnneJjWUkTmnEdbhI7HlWza7tRBLl9exXaZHjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/restorecond.inc    | 14 +++++++++++++-
 recipes-security/selinux/restorecond_3.0.bb |  7 -------
 recipes-security/selinux/restorecond_3.1.bb |  7 +++++++
 3 files changed, 20 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/restorecond_3.0.bb
 create mode 100644 recipes-security/selinux/restorecond_3.1.bb

diff --git a/recipes-security/selinux/restorecond.inc b/recipes-security/=
selinux/restorecond.inc
index d168303..a5b1635 100644
--- a/recipes-security/selinux/restorecond.inc
+++ b/recipes-security/selinux/restorecond.inc
@@ -15,10 +15,22 @@ inherit systemd update-rc.d
=20
 DEPENDS +=3D "libsepol libselinux libpcre dbus-glib glib-2.0 pkgconfig-n=
ative"
=20
+EXTRA_OEMAKE +=3D "SYSTEMDSYSTEMUNITDIR=3D${systemd_system_unitdir} \
+                 SYSTEMDUSERUNITDIR=3D${systemd_user_unitdir} \
+                "
+
 FILES_${PN} +=3D "${datadir}/dbus-1/services/org.selinux.Restorecond.ser=
vice \
-"
+                ${systemd_user_unitdir}/* \
+               "
=20
 SYSTEMD_SERVICE_restorecond =3D "restorecond.service"
 INITSCRIPT_PACKAGES =3D "restorecond"
 INITSCRIPT_NAME_restorecond =3D "restorecond"
 INITSCRIPT_PARAMS_restorecond =3D "defaults"
+
+do_install_append() {
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'false', 'true=
', d)}; then
+        # remove /usr/lib/systemd/user
+        rm -rf ${D}${nonarch_libdir}
+    fi
+}
diff --git a/recipes-security/selinux/restorecond_3.0.bb b/recipes-securi=
ty/selinux/restorecond_3.0.bb
deleted file mode 100644
index 8c840c9..0000000
--- a/recipes-security/selinux/restorecond_3.0.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
-
-SRC_URI[md5sum] =3D "f32edbd8a1f724ef1e4fa70bf9e22685"
-SRC_URI[sha256sum] =3D "32a92c9f4bf48c613f9f467ced58d8c369eec8892239cd44=
d5d0e139b41926dc"
diff --git a/recipes-security/selinux/restorecond_3.1.bb b/recipes-securi=
ty/selinux/restorecond_3.1.bb
new file mode 100644
index 0000000..d4e0d06
--- /dev/null
+++ b/recipes-security/selinux/restorecond_3.1.bb
@@ -0,0 +1,7 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
+
+SRC_URI[md5sum] =3D "8daf761739a150a7a29bb491726a6cd9"
+SRC_URI[sha256sum] =3D "82ca45099685a45d718f11f8859963c1ba83d98e510312cb=
f0b7dc5664c60ad0"
--=20
2.25.1

