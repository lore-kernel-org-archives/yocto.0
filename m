Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.84])
 by mx.groups.io with SMTP id smtpd.web12.105.1615614673486966188
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:13 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=fDb4UPyS;
 spf=pass (domain: windriver.com, ip: 40.107.223.84, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M6ahSpwNFBPLD+eUq6svAP+V8OfY+c8jTvWJkTkvh5krNqQQMaX6o4KBHG8Hv0rO1Lh/4/P1SEzCSfJ6QlSXPDaypCNFDjKQrIjUY+hCzwuphqx8QzIh6zv8vKpQRPpVtLW1+R9lTRe9XSC/eWFqann/Us4dSnAgWsJMUuSxZoj1iFJIOhf441EyJtGkJd25ToEbO2DFCQGq4bNkxdA0LIYURvZKoZ3jnPA/KFxMUTgndViu2bl6x0PJorAMr9e4Mw43dgTKKoZti6H7TLljCjCI9cTEdtq+nMQawNTo9BTJ0GYM9YC5Y8JKFAau/Ee2qyMzHfZkCZlVywTFCIZbdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5QuvgkP73VoDrDVdSPrcExLWClw0kad1L6WLqH+h3Ic=;
 b=EJIjEAejQ1DL2X9GklDHt3+Lw/HGpli48wl1P1xOyffwFXfDg3lYgnIAeOQDQS9kFrWwGaKkqw29/5Ih8sgDgZ/ibPX7sM8cUMHyuByA4aARnLnu0iMQNJXPfqm/V2s+6j6+YKhhaPNKtZAP91rC57jemP5nowHpQeUACe0hCdbgbKkgvD3bIL4zKdspxiPbOdXq7PBqSYga7vP9k7yz7Xa4tpABKGQQqU61RXiRm3zeVwrYHt30OFhTPXwvm6zPd80zFsj1m+ZyVDvsu54P2OkUsXAgHP03vQgjI/jjsxrUfn5WpsQsrwDLqxEBFMRl7Dje//Tk+IeZF+tPo/fs3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5QuvgkP73VoDrDVdSPrcExLWClw0kad1L6WLqH+h3Ic=;
 b=fDb4UPySScghatsppFJtJRhxJSjtOTG9EJDR9alKDepK4LaVOShxVi8ZUI46PFALwwNtaTt3ksBYXu6lhra6xIonJSCkjt3ytiCcangDcN0FuQZlkPChY+im5hGjvckREYqb5Zfqtxr/zaCW9/LjFY1cdfAMxdMO093zSzfSmcE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:12 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:12 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 09/16] mcstrans: update to 3.2
Date: Sat, 13 Mar 2021 13:50:37 +0800
Message-ID: <20210313055044.239776-10-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1e846978-e0df-4678-3da5-08d8e5e401f5
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB2318539A750AB156BCD01968F96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1775;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Pn0KymzBWupethgxEYOtG67wJ1z85kFDZsW/m9QEvIJQcdmAFRdvEeMPe5f4eUIuni0IOqFpXEZv+n7QruIEpZ0ZsvtNGjmss7XB4rEZWcwq2909gRxp74EzvJRE/oGWLWKpr44xpZfAtA/zUCwo3kUjAV0rviFIu6gjNRGFnVUxLPoqSK0GbIiL548yKrwtteQAILt8D1oK/70lnBuD0NX1S9iAY8anIZWQb2524ydhZZoK8M4nhtUw2X2vRshtSG4Te9rGPMj0yqBZPx/Xc53P1FvB9lmJ7tSW5Mqezsr4nNe68W5g9zTnkZuG3d5FOGMyL/YXDNd4oilWhMc4WGrcwnjS8WYQUEs0UlTiulzTT5R9EjKdIvRXdzlHwbIKOwjepvgzDXAbvUEUP1t5OnOSXOx3vEko8S3bDub1bO+T6LgvZn2BihUKZVxErajJ9215Z2KPGym2j4VHf15d5fjetKAHP4is/gXwgKSb1s7V4KsP7+OjyhCIdd1kkFuVVrYV0Y/w3JOz9STsVJumrg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(15650500001)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?s9YNAgLiZGlFv2RYYG+dQqcu6XTuE+GYbSLz53TNlOmuX/yZrX09yc3HAOW1?=
 =?us-ascii?Q?BVo28VRt+gIbDeqspMYEWIzZt6nSWGbO+KKI7uOI0zzSv11D663hCuo3VBjk?=
 =?us-ascii?Q?Kl4p6bibLhpU1/W0M896aiIdJmwdlNbOWoqyltvOiZsKVfmTYzvQpkabyKyA?=
 =?us-ascii?Q?8LmrncJIpDBFI+ofEdE1mN3YSiJAK9G4iVL9kfCS+C5+lFWxRQnz2JqLpQJf?=
 =?us-ascii?Q?DgIVP48YTMUcSs/cc8/abFOgwACubL5Q7YT0IUonYXHukJ+Lv+uKV/UaWTwX?=
 =?us-ascii?Q?/gi5oLiqBCg+0/UcjbBuCeyWHGvh3lYpEx+9LYnxLWSsgLOw1dDIm98kGkqB?=
 =?us-ascii?Q?luN1NrJ59nX4FIxKq9j6NvbvVxiMOif/BLgk8AqXqO0no/oxT5Gf2ZPwQtxZ?=
 =?us-ascii?Q?4NAu34ivnoT8mnPqvITGPC6BCxjyMKP3t09BOr2Xd8JsMXJpJE9EGyOPDRXO?=
 =?us-ascii?Q?pEaNi4eHMlgg5aJv0EfRI5wmIi5/pHH8mbkQ5+n+pYXUPvkgHRQ8Gn/TsdT+?=
 =?us-ascii?Q?XJZWqdOf9vOkyaTZxdQiFyX2PwLzM4AtnA7GUbgEsJQafcdP4M88ww4Fh2oO?=
 =?us-ascii?Q?tbmaPsI6/SBr5QuP+fdCvq1eH+wFTSnEAkV/0JRt0w17oqXABZXE+ldNr65n?=
 =?us-ascii?Q?oCOn48JP85qefHtB45Zq2Noa7//OOd+IaCgTXfjE0eCgLrDhtdylCy/1pVN2?=
 =?us-ascii?Q?S4IgXTmk4nDflpdGtqn73gFM0QUXCr0rFPfJivq3MFTNKsqOPSjs3g2cIJmt?=
 =?us-ascii?Q?HMjhZqLgtvm+knYgkVhjXrgbtVzZqFgLkasSqdhLrh0eMnYjgUpZvT9/iTlo?=
 =?us-ascii?Q?SEroQXZFI+WThugd57J/X8JuEw1GI/+sQBZ+7B+vMxQJcRuWhYrfNVv35iCQ?=
 =?us-ascii?Q?zDicyxGLAJHKYRCVPd+r+vswMBG2DLKbTGvMqRgiGOWe8A8+XV6R38nL38/W?=
 =?us-ascii?Q?J4NTgGc5oX66ewRZhwL67SXQ+SyOBJ8G1kdLmzizSL1/AnW510cotzOo948c?=
 =?us-ascii?Q?mnU/YrxACPOaKjiTltDEpgcBl9Pfmk0Q7HFH1lHcWMPgSDPmwHEQIqFjrMrF?=
 =?us-ascii?Q?8nFqSGXFKvCrBpW44JJq8DVhSHBi+zJ7Zs3NlTQsbjpXfn5gda7mdxTcArkI?=
 =?us-ascii?Q?CdWxDgHC77f4vvggc6IgI9ydR/9jadQh7FGvXZExF0JNjLZWxP7WeprZoZs2?=
 =?us-ascii?Q?x6sF918i9mj64EoCQkNUMHqH/Vulj9iK+8wDrm3koLbUgFdJljSvuG1cSDP4?=
 =?us-ascii?Q?efVWWjTlhEsNHvr84l/gib6+aG65X2wHsLeVKKPvgy4d1ZLsCuqjTKFzWhkn?=
 =?us-ascii?Q?0wda5XTT4RMc64RLkhAdWpJZ?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e846978-e0df-4678-3da5-08d8e5e401f5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:12.4404
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1nsa/ImmVLiXPSAHxfhf+Y/MyYtlgXwm72MYHX7vGbkxfKk2eNNeUrIvlwzlj0PcbI8K0uGW9iojYcv5vuCEiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/mcstrans_3.1.bb            |  7 -------
 .../selinux/{mcstrans.inc =3D> mcstrans_3.2.bb}       | 13 +++++++++----
 2 files changed, 9 insertions(+), 11 deletions(-)
 delete mode 100644 recipes-security/selinux/mcstrans_3.1.bb
 rename recipes-security/selinux/{mcstrans.inc =3D> mcstrans_3.2.bb} (92%)

diff --git a/recipes-security/selinux/mcstrans_3.1.bb b/recipes-security/se=
linux/mcstrans_3.1.bb
deleted file mode 100644
index 26bb299..0000000
--- a/recipes-security/selinux/mcstrans_3.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19=
f"
-
-SRC_URI[md5sum] =3D "18b7bf8193dd2360bc60f0e2639009ab"
-SRC_URI[sha256sum] =3D "cc918576c17340fc944849d785e2a7400b269ef079a36b871c=
140504164d6a45"
diff --git a/recipes-security/selinux/mcstrans.inc b/recipes-security/selin=
ux/mcstrans_3.2.bb
similarity index 92%
rename from recipes-security/selinux/mcstrans.inc
rename to recipes-security/selinux/mcstrans_3.2.bb
index 52b95c6..0cece17 100644
--- a/recipes-security/selinux/mcstrans.inc
+++ b/recipes-security/selinux/mcstrans_3.2.bb
@@ -1,17 +1,20 @@
+
 SUMMARY =3D "Daemon to translate SELinux MCS/MLS sensitivity labels"
 DESCRIPTION =3D "\
 mcstrans provides an translation daemon to translate SELinux categories \
 from internal representations to user defined representation."
-
 SECTION =3D "base"
 LICENSE =3D "GPLv2+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D94d55d512a9ba36caa9b7df079=
bae19f"
=20
-SRC_URI +=3D "file://mcstrans-de-bashify.patch \
-            file://mcstrans-fix-the-init-script.patch \
-"
+require selinux_common.inc
=20
 inherit systemd update-rc.d
=20
+SRC_URI +=3D "file://mcstrans-de-bashify.patch \
+            file://mcstrans-fix-the-init-script.patch \
+           "
+
 DEPENDS +=3D "libsepol libselinux libcap"
=20
 EXTRA_OEMAKE +=3D "SBINDIR=3D${base_sbindir} \
@@ -19,6 +22,8 @@ EXTRA_OEMAKE +=3D "SBINDIR=3D${base_sbindir} \
                  SYSTEMDDIR=3D${systemd_unitdir} \
                 "
=20
+S =3D "${WORKDIR}/git/mcstrans"
+
 do_install_append() {
     install -d ${D}${sbindir}
     install -m 755 utils/untranscon ${D}${sbindir}/
--=20
2.25.1

