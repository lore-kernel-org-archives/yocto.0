Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3741.1609991040800815047
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:01 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=poLPUyIs;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2055.outbound.protection.outlook.com [40.107.94.55])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1031D38C0528
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HKSgqWRVq+7egfl12pyA7m0W8cjCsFuuKMkSUbjriAc2baJ7r2UlBc94QTRHMuA/ROGLho/wPUD2SImjpHcO1FrU0/d4ft20L/R3k/FGPcEif/qkZMwU+JJgdr6P/5uyR6ZlHCeYV9fTk19JhikWurGBSmLd7R1ktFtgwM6OW2TKvg36X2PVqouALhBYy9SLSxB5f+JLcEMNTPvZ1x1R/oX1N/rwYx3/XDD+deNkOnBIKDiEp168A4p3gCf147fCzaY5+FC00Yj9TnHp5wnCLC+yKNEvwnR9dYUv5Qygzzr04A2dUg3NpNUFx7A1XGRvHzO4P6Tue8gW5vqKsnBZxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S/bRHb/EhRJOK4o/iOhRK2ri5iLD7NGEynLxYWQVUdI=;
 b=QQUIBrCn/kh5bpD5dTPdHBpkgooprhh7uVFjGrYn98BXWx63NcKmgDPrrzWKm/urJqFXes21PP/bd4SuCNAxY2G/UWLyLZP/ahX90i3kYSjXVIzNbIhnLrW4XSskQstKOPsFCrs6ZiOwhHxVF4W/M/++QMbZQA4CPlNnGMWeRE17FhblCLwNELPaDdCVYOwadG6/E7O96Zzy+9Dv9nyOu4RpoFC787afMub1AZz20jxHOx8XsQXAV/9yiAegOx7rsqlIG/6C+tAWK9KG+nfXZRZABb2zDctGHi3YTc40S+HQFWOqnfD2SlC8AFnS9SYX3XTltpkrXjZbn216GV/29g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S/bRHb/EhRJOK4o/iOhRK2ri5iLD7NGEynLxYWQVUdI=;
 b=poLPUyIs17OOXlITEArJFNQ1okoPe7Bx4F7cVB/UoZQpn83tiKolFSqSqUL5Nr8wJ0NQFQsLHkF57VJdslyNZ36qXBvhEiYHf04TbLc8tWgjIgRy+YH8McWzcE5548HWQ0btGzVK+yWNwU145TX5bL7Nf6vQxpxl1EmU4etTWqo=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 03:43:58 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:43:58 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 00/17] selinux: upgrade 3.0 -> 3.1
Date: Thu,  7 Jan 2021 11:43:28 +0800
Message-Id: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:43:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ece5e470-486d-4a1e-d38b-08d8b2be7753
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1584067AD6497CC857ECA35AF9AF0@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	e27WqJ18nTTuFbKmD5GytEzDxsw64UL/T0+E4aP1eN3ZGy7EHtwmWvElPW8SvxDhvrITEsv0zq6rXLzAJdk75EDmYIrI5cbqMEZhJAsgIv0Sy0vKK+ONi5iYL5pCMeMZu5dwZksJ/qyMJG5aF5Q+Oa4/zZqUeVSlNelid8T8grEk9gUonGOnZPhmOSRQIYXq693D/vishYQ8vI4P/rSQeLUgwN/vMnFN43OM/Kw0tRdWSOdORoIs3sYvPn+l6LI3O8MsjxDi0h8POl3O1JeYIDAkWYih8NmotzQkvil5Ycnd77brJcbYl+83mnPAL3A3zqs/N/guSuvQ0JU5kXEYJNtkkOw+x01cl8AO2ygATGiyBK2JSR1ZppdqbmprPeU7ppRM/uIgUcXBtg5gTqliRA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(316002)(66946007)(8676002)(478600001)(5660300002)(6486002)(66556008)(66476007)(83380400001)(8936002)(1076003)(2906002)(6666004)(186003)(36756003)(16526019)(44832011)(6512007)(86362001)(52116002)(2616005)(956004)(6506007)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?YvMcdzYlLtPBCSrwYaTBP+pA2Fxbplqo3/rIrmSf+X9CWKFJgAi2KOqLI4Xs?=
 =?us-ascii?Q?0PP0qkMYssl3ZtRhUpsUNabyinCqnYFVK34Pbu4eib51fxlHUjFUvMw0H/su?=
 =?us-ascii?Q?YL9mW2v+eeLOrFG/b2ha+u39WMgPrK/196a/FM7/zMnw8chOVimh1/L+Dk6z?=
 =?us-ascii?Q?D2qybbV8nK/RIv4Dy7j7ofxK9sXBc1O0Mcqrd3MgpgS+FZcVCelIPL6YwN/t?=
 =?us-ascii?Q?jqttQ42Iq2NZxgN9SzBlzveyeNn4TGe9oAFgRAZ8aCWf7Hk0xGOlJ0OpkxjI?=
 =?us-ascii?Q?ePZ1bBW76nPie9Hiz3APxk5dUgIY6ZdeFzr7cc6UJIEWxHYxa8D/OomtXCmu?=
 =?us-ascii?Q?NNx/hr9RDeK7LhMGxUktBmehmHGHrnzKWD4oSvwCznAWZRFIVssyomS7SYMG?=
 =?us-ascii?Q?zfaAJyXVn2R+et9w9qRaBUl2GIfkORIa2cNrxRtkPy4MBzZUgr3ORqEbKai0?=
 =?us-ascii?Q?onSZyPS4hcE/yg3iwRFGG4O9wkD4/rhqIjPncL2O2ukMYDJt7Z0beIHqxgNo?=
 =?us-ascii?Q?UJx3yizLNlZNEz8KDMKxobHP1RUzA+at4qZxeC5xLZxlH2fYDxBzreEeofqv?=
 =?us-ascii?Q?BsxOLXObYtO0LSrqUT2LXH9RdkuEsWymhlgiyGsTK25t/FVvIdz0pkN03c/2?=
 =?us-ascii?Q?JYx1tWV8mF2sgMZ0OVkw3d1Czkz2O7hyha8f+S7ip9ag89wywC374Pr2Mkbt?=
 =?us-ascii?Q?1Xp+3dvUz28q75yOh9rp4q8LtljhV76Rac6FgefyneH7fU9ZpcsZ2jLsxFaK?=
 =?us-ascii?Q?ioohimZVMYgqJmgI4XitO0dEl396aGZ2MBuO/CQCyUo0Xo7cYBqPfwPIG09J?=
 =?us-ascii?Q?2LjhddCUDfCwLK0IIQeWO1OW+OFT56yAn+8xTOfN57EZtNPex1DNv+lqyUxj?=
 =?us-ascii?Q?3Zf4pQTQylX2f4YHMwPf5CGG0uOq33L0/qkuenrvLODc/n6Z9UP5WRkVe+5D?=
 =?us-ascii?Q?NqdkhR7WrmSDRViDBKszbOOPD5kVjTuJBEd5GlO6pwURxcjxJxC8FSK++zG8?=
 =?us-ascii?Q?P05G?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:43:58.7920
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: ece5e470-486d-4a1e-d38b-08d8b2be7753
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PnEq7vSn992UIzKEtcCyJPjVS+zw1jP/jB682m4QLMiYsMh0r2u7CAYAszZ4nSebt9cPi2Bba0EEn4hsvMfbWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

auditd: upgrade 2.8.5 -> 3.0
selinux: upgrade 3.0 -> 3.1


Yi Zhao (17):
  audit: enable arm/aarch64 processor support by default
  audit: upgrade 2.8.5 -> 3.0
  selinux: upgrade inc files to 3.1 (20200710)
  libsepol: upgrade to 3.1 (20200710)
  libselinux: upgrade to 3.1 (20200710)
  libselinux-python: upgrade to 3.1 (20200710)
  libsemanage: upgrade to 3.1 (20200710)
  checkpolicy: upgrade to 3.0 (20191204)
  secilc: upgrade to 3.1 (20200710)
  policycoreutils: upgrade to 3.1 (20200710)
  mcstrans: upgrade to 3.1 (20200710)
  restorecond: upgrade to 3.1 (20200710)
  selinux-python: upgrade to 3.1 (20200710)
  selinux-dbus: upgrade to 3.1 (20200710)
  selinux-sandbox: upgrade to 3.1 (20200710)
  selinux-gui: upgrade to 3.1 (20200710)
  semodule-utils: upgrade to 3.1 (20200710)

 ...ns-need-to-be-external-when-building.patch |  28 -
 ...001-lib-i386_table.h-add-new-syscall.patch |  42 --
 ...tue-functions-for-strndupa-rawmemchr.patch | 133 -----
 .../Fixed-swig-host-contamination-issue.patch |  12 +-
 recipes-security/audit/audit/auditd.service   |  26 +-
 .../audit/{audit_2.8.5.bb =3D> audit_3.0.bb}    |  32 +-
 ...ckpolicy-remove-unused-te_assertions.patch |  45 --
 recipes-security/selinux/checkpolicy_3.0.bb   |  11 -
 recipes-security/selinux/checkpolicy_3.1.bb   |   7 +
 ...python_3.0.bb =3D> libselinux-python_3.1.bb} |  13 +-
 ...T-and-rely-on-the-installed-file-nam.patch |  12 +-
 ...ainst-musl-and-uClibc-libc-libraries.patch |  38 --
 ...hon-modules-install-path-for-multili.patch |  12 +-
 ...elinux-do-not-define-gettid-for-musl.patch |  47 ++
 ...nux-drop-Wno-unused-but-set-variable.patch |  26 -
 recipes-security/selinux/libselinux_3.0.bb    |  15 -
 recipes-security/selinux/libselinux_3.1.bb    |  17 +
 ...anage-allow-to-disable-audit-support.patch |  12 +-
 ...age-drop-Wno-unused-but-set-variable.patch |  28 -
 ...{libsemanage_3.0.bb =3D> libsemanage_3.1.bb} |   7 +-
 ...IL_KEY_-build-errors-with-fno-common.patch | 530 ------------------
 ...e-leftovers-of-cil_mem_error_handler.patch |  65 ---
 recipes-security/selinux/libsepol_3.0.bb      |  12 -
 recipes-security/selinux/libsepol_3.1.bb      |   8 +
 recipes-security/selinux/mcstrans.inc         |   6 +-
 recipes-security/selinux/mcstrans_3.0.bb      |   7 -
 recipes-security/selinux/mcstrans_3.1.bb      |   7 +
 .../selinux/policycoreutils_3.0.bb            |   7 -
 .../selinux/policycoreutils_3.1.bb            |   7 +
 recipes-security/selinux/restorecond.inc      |  14 +-
 recipes-security/selinux/restorecond_3.0.bb   |   7 -
 recipes-security/selinux/restorecond_3.1.bb   |   7 +
 recipes-security/selinux/secilc_3.0.bb        |   7 -
 recipes-security/selinux/secilc_3.1.bb        |   7 +
 recipes-security/selinux/selinux-dbus_3.0.bb  |   7 -
 recipes-security/selinux/selinux-dbus_3.1.bb  |   7 +
 recipes-security/selinux/selinux-gui_3.0.bb   |   7 -
 recipes-security/selinux/selinux-gui_3.1.bb   |   7 +
 .../fix-sepolicy-install-path.patch           |  12 +-
 .../selinux/selinux-python_3.0.bb             |   7 -
 .../selinux/selinux-python_3.1.bb             |   7 +
 .../selinux/selinux-sandbox_3.0.bb            |   7 -
 .../selinux/selinux-sandbox_3.1.bb            |   7 +
 ...inux_20191204.inc =3D> selinux_20200710.inc} |   2 +-
 recipes-security/selinux/selinux_common.inc   |   3 +-
 .../selinux/semodule-utils_3.0.bb             |   7 -
 .../selinux/semodule-utils_3.1.bb             |   7 +
 47 files changed, 233 insertions(+), 1108 deletions(-)
 delete mode 100644 recipes-security/audit/audit/0001-Header-definitions-=
need-to-be-external-when-building.patch
 delete mode 100644 recipes-security/audit/audit/0001-lib-i386_table.h-ad=
d-new-syscall.patch
 delete mode 100644 recipes-security/audit/audit/Add-substitue-functions-=
for-strndupa-rawmemchr.patch
 rename recipes-security/audit/{audit_2.8.5.bb =3D> audit_3.0.bb} (78%)
 delete mode 100644 recipes-security/selinux/checkpolicy/0001-checkpolicy=
-remove-unused-te_assertions.patch
 delete mode 100644 recipes-security/selinux/checkpolicy_3.0.bb
 create mode 100644 recipes-security/selinux/checkpolicy_3.1.bb
 rename recipes-security/selinux/{libselinux-python_3.0.bb =3D> libselinu=
x-python_3.1.bb} (66%)
 delete mode 100644 recipes-security/selinux/libselinux/0001-Fix-building=
-against-musl-and-uClibc-libc-libraries.patch
 create mode 100644 recipes-security/selinux/libselinux/0001-libselinux-d=
o-not-define-gettid-for-musl.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-drop-W=
no-unused-but-set-variable.patch
 delete mode 100644 recipes-security/selinux/libselinux_3.0.bb
 create mode 100644 recipes-security/selinux/libselinux_3.1.bb
 delete mode 100644 recipes-security/selinux/libsemanage/libsemanage-drop=
-Wno-unused-but-set-variable.patch
 rename recipes-security/selinux/{libsemanage_3.0.bb =3D> libsemanage_3.1=
.bb} (60%)
 delete mode 100644 recipes-security/selinux/libsepol/0001-libsepol-fix-C=
IL_KEY_-build-errors-with-fno-common.patch
 delete mode 100644 recipes-security/selinux/libsepol/0001-libsepol-remov=
e-leftovers-of-cil_mem_error_handler.patch
 delete mode 100644 recipes-security/selinux/libsepol_3.0.bb
 create mode 100644 recipes-security/selinux/libsepol_3.1.bb
 delete mode 100644 recipes-security/selinux/mcstrans_3.0.bb
 create mode 100644 recipes-security/selinux/mcstrans_3.1.bb
 delete mode 100644 recipes-security/selinux/policycoreutils_3.0.bb
 create mode 100644 recipes-security/selinux/policycoreutils_3.1.bb
 delete mode 100644 recipes-security/selinux/restorecond_3.0.bb
 create mode 100644 recipes-security/selinux/restorecond_3.1.bb
 delete mode 100644 recipes-security/selinux/secilc_3.0.bb
 create mode 100644 recipes-security/selinux/secilc_3.1.bb
 delete mode 100644 recipes-security/selinux/selinux-dbus_3.0.bb
 create mode 100644 recipes-security/selinux/selinux-dbus_3.1.bb
 delete mode 100644 recipes-security/selinux/selinux-gui_3.0.bb
 create mode 100644 recipes-security/selinux/selinux-gui_3.1.bb
 delete mode 100644 recipes-security/selinux/selinux-python_3.0.bb
 create mode 100644 recipes-security/selinux/selinux-python_3.1.bb
 delete mode 100644 recipes-security/selinux/selinux-sandbox_3.0.bb
 create mode 100644 recipes-security/selinux/selinux-sandbox_3.1.bb
 rename recipes-security/selinux/{selinux_20191204.inc =3D> selinux_20200=
710.inc} (90%)
 delete mode 100644 recipes-security/selinux/semodule-utils_3.0.bb
 create mode 100644 recipes-security/selinux/semodule-utils_3.1.bb

--=20
2.25.1

