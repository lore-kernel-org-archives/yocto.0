Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3711.1609991060341399669
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:20 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=iLDUKygl;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2053.outbound.protection.outlook.com [40.107.94.53])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3E06B38C08E7
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aH2at00aMJY/atmRhDqPMmACb8W18hR7fSMiZbZVj17vVX8a6C0wPk4VEuSClmhxzLPIg9Ok4P5nChIhfkEOai6o1Iok5jgzkKgc0tl0kpbEKy9V8ehaUyy/tp/VAeJQoK/JT4AYCd6fpD+ShLdGbW4Brnb0nBaRJl3WRu6YO60i7wuTv+9yfaSfetGXYY/7qRyB9p9juKamGqxHfkrkLXo/eFJlD8HOiFrRBr5Q/VhybpDLMlgLlytTNbwx8WF+X1HALEtXNtrPluyA0JyrvNiFm+ZosdcrinBhRs66NuJ5VBv1Ae8qm4mm/We9Zf4HCfSF2qkfAMvJS21/bC3RKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b4HrH0gxw3Zph5gaKp5Ps1vdnMJIQpoEdHNJN7pxT44=;
 b=UNtmd+6CXq6XDbvvfbeYmeBgayBBEWPf/oitK/hOWlT0hyt3n61e7mquzSIMduXNZgPB0u6u2z+SKFFtDyzvM0n/9LPbTKYgH54rSXuN/iOhyDwIp1KYO60RB5aE8nSe/RQVw70AXCPCWMAlWD4WbgdX1i3LF552d9/MibmGDmCh4kzqPHIfsle6A0Bdmb71Fq7jnjuEtiA0Ihn5WFTwJWGKVyjSzCP9jL1YhpNtI+CQDPxjrfiZ7W/DYquQhw8zA8usr7UwQUeXkfA3sV0EzazOl2kqKuuVtjvZdbXKMwKacVrlNL+4uhbkK7van46Fv+WOwntAKpIhA9X+iXBk9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b4HrH0gxw3Zph5gaKp5Ps1vdnMJIQpoEdHNJN7pxT44=;
 b=iLDUKyglNxzYFlGdX8R+jjSATLJSxkgiaZZIKpciyzzUkkCaMtUL0AQ3LKHIOTeZRvWDnYEHsi5S53tmOd3ThLvKXQBwWA7o8iXcoywQOmq2z72Got6eU1txlNcxfP2qOHwWxsn3oc2XtlAy+9sslcYPppGwiV+YMJIi0JioIgE=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.21; Thu, 7 Jan
 2021 03:44:19 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:19 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 13/17] selinux-python: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:41 +0800
Message-Id: <20210107034345.37200-14-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7d83f309-0e27-4f26-a1e6-08d8b2be83a2
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB507314C0C819DB8E1E3F6F5EF9AF0@CO1PR11MB5073.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wm53QM1QdhQNNysvKpUl+6/MLV9J0h+ST4DWwGuQ11E80DfUG89NKq+mWuI6dh/mnqOFp409LIijucxotMFO13tln58zER0Yy47pjb3pLvYcPvgJECT4atiONnKKiQ2vFiqX9iLz13uOdtbgEjxIu5ZpBx5UOtT4SPbtjai/RJHwxm0rOHFZdJtMdu80CaalJs1gRn9TdEK9n8fFATh0ohC9jEDZ5MxPrjJyzouNkW+7RVmYXUXHzrgRthKJPZyhA8Vxb9qKh/5mIIwaMwB1vtAI4V1pfZl33vasvTdN5cBKRRwTZf080Dx2KjpSU+XBA/z+FCS7b3JaE+csNwDUHUzAfBD62mmL0aHt+omb6lthSugsMjGsPw23RA0FbLOOrPq9ddCVKy3VRUtYnVHMfw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(136003)(346002)(396003)(26005)(316002)(66556008)(956004)(16526019)(66946007)(2906002)(186003)(66476007)(2616005)(6666004)(8676002)(83380400001)(6486002)(44832011)(6506007)(36756003)(52116002)(6512007)(8936002)(478600001)(1076003)(5660300002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?l4jJMxNmblm8rPcfffI/0Ykly/nwqZfDtBUHD+cw9Nda8U5FFatJguY15rXT?=
 =?us-ascii?Q?pjJDjhnjqhcut+tzRSwjRvpmgEkIOuGF5zxMOQrstGUNENaFRh8LyFBr4Lcg?=
 =?us-ascii?Q?xddLm7Ow9TbRWmKE/txywdE8De2ByKnFGxRd2S9pJ1lfhMFHHWYNmz8wSKGx?=
 =?us-ascii?Q?MaJpE1RvcYwtj6hO0DPP9EP0CvHII973+5nB/5LBnHIjcSuXpWIphS4BtOmk?=
 =?us-ascii?Q?tWo4Bx5z80yNVQ47HEgvz4GU5gzP5bY+OczizWI5/efjMb6EUNdH/B29mNGa?=
 =?us-ascii?Q?gpHMm8q48+fTAjqz6j+5kuqQACSQgt+2FXZXGiN98Y0XFyB69/OCHv018WRJ?=
 =?us-ascii?Q?5EJhiMTkiSvqQdBdhL0X1+veM74MOLnMbIDLk3Q2qV+ONpQK4pBPCYp/0dRJ?=
 =?us-ascii?Q?BViP8KabTUfeM99uS0d0ZX2o851war6HtyZLKQswg5hucw7O05Fs6nL5AdWH?=
 =?us-ascii?Q?o8Zlr7DuWJ1bOQ6Un2t+kBrYSswj0B2bqkj8jOQKG7EAG5ke7qQzIIAZPLiz?=
 =?us-ascii?Q?7JHSWxnY2zE+yFtINAmIc8kilgdx6cWtKKTu+Uns9hZ+qm7Q3+8EUKqiYmm/?=
 =?us-ascii?Q?6pu12BNTbn0/cr013wBESV3qkf+cvTNILyYVcyusyCMNy0hkehlep1AoLYug?=
 =?us-ascii?Q?HYXSm3TWYchwlmdYMXV8ZIHk1ctr1e+mCRL4ow3esOqNWB2KWzKK5WX/JDyq?=
 =?us-ascii?Q?tsJJo9AJObGkCsgBVEuzNlmw2AVcODKKcoqVOzjwkJY1roMao9DUFQ3Bn4wO?=
 =?us-ascii?Q?0/liVhmuwUrTZfqDxxTED6D0OjLCSasr4stiuI9W/YdGYzyPXc9P2TkGfLcW?=
 =?us-ascii?Q?PCfnzDgHpVfBiqohMl1NgkhqCb39bqHkvnHwdxb5IfZUljn/BEoYFwiU/8pz?=
 =?us-ascii?Q?PSAKzX/q/obFB0V/3DcfJMByJWReD8w8eDnO26RglE+3bf1EGgHvSe+jst2Y?=
 =?us-ascii?Q?hB5w1Uum+khfJpC+W9vYNBB1qyTr+QdW9asY5h60oIb6JHuO7VEjhv7YLLQm?=
 =?us-ascii?Q?/1QL?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:19.4351
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d83f309-0e27-4f26-a1e6-08d8b2be83a2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UGFvx+d5CPxT3scQmGpsAgS/6d857VOzMpxKLTKefpBz9fuomU6t17ax1mQv7BqQWewAqu/cqeXtPcd9gY+oZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Refresh patch:
  fix-sepolicy-install-path.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux-python/fix-sepolicy-install-path.patch   | 12 ++++++------
 recipes-security/selinux/selinux-python_3.0.bb       |  7 -------
 recipes-security/selinux/selinux-python_3.1.bb       |  7 +++++++
 3 files changed, 13 insertions(+), 13 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-python_3.0.bb
 create mode 100644 recipes-security/selinux/selinux-python_3.1.bb

diff --git a/recipes-security/selinux/selinux-python/fix-sepolicy-install=
-path.patch b/recipes-security/selinux/selinux-python/fix-sepolicy-instal=
l-path.patch
index 527e02c..4e91df7 100644
--- a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.p=
atch
+++ b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.p=
atch
@@ -1,7 +1,7 @@
-From e8fdfdf96a84209118deff7782cf82f8187af6c5 Mon Sep 17 00:00:00 2001
+From df40fadfb251cc2aebdbd2e216f99a8ae7da7763 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 23 Sep 2013 21:17:59 +0800
-Subject: [PATCH] policycoreutils: fix install path for new pymodule sepo=
licy
+Subject: [PATCH] sepolicy: fix install path for new pymodule sepolicy
=20
 Upstream-Status: Inappropriate [embedded specific]
=20
@@ -13,18 +13,18 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
=20
 diff --git a/sepolicy/Makefile b/sepolicy/Makefile
-index 69f29fa..b474d80 100644
+index 3361be4..5842321 100644
 --- a/sepolicy/Makefile
 +++ b/sepolicy/Makefile
 @@ -27,7 +27,7 @@ test:
  	@$(PYTHON) test_sepolicy.py -v
 =20
  install:
--	$(PYTHON) setup.py install --prefix=3D$(PREFIX) `test -n "$(DESTDIR)" =
&& echo --root $(DESTDIR)`
-+	$(PYTHON) setup.py install --prefix=3D$(PREFIX) --root=3D$(DESTDIR) --=
install-lib=3D$(PYTHONLIBDIR) --no-compile
+-	$(PYTHON) setup.py install --prefix=3D$(PREFIX) `test -n "$(DESTDIR)" =
&& echo --root $(DESTDIR)` $(PYTHON_SETUP_ARGS)
++	$(PYTHON) setup.py install --prefix=3D$(PREFIX) --root=3D$(DESTDIR) --=
install-lib=3D$(PYTHONLIBDIR) --no-compile $(PYTHON_SETUP_ARGS)
  	[ -d $(DESTDIR)$(BINDIR) ] || mkdir -p $(DESTDIR)$(BINDIR)
  	install -m 755 sepolicy.py $(DESTDIR)$(BINDIR)/sepolicy
  	(cd $(DESTDIR)$(BINDIR); ln -sf sepolicy sepolgen)
 --=20
-2.7.4
+2.17.1
=20
diff --git a/recipes-security/selinux/selinux-python_3.0.bb b/recipes-sec=
urity/selinux/selinux-python_3.0.bb
deleted file mode 100644
index 8222d28..0000000
--- a/recipes-security/selinux/selinux-python_3.0.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
-
-SRC_URI[md5sum] =3D "aa018c9b1b26034f84f3f427adac08be"
-SRC_URI[sha256sum] =3D "43c08fa881ccc64251d396b1ac6c56b354bf98421b4ec937=
d54a8db190135494"
diff --git a/recipes-security/selinux/selinux-python_3.1.bb b/recipes-sec=
urity/selinux/selinux-python_3.1.bb
new file mode 100644
index 0000000..a0555d2
--- /dev/null
+++ b/recipes-security/selinux/selinux-python_3.1.bb
@@ -0,0 +1,7 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
+
+SRC_URI[md5sum] =3D "ec75687b680e0dd63e3ded05bd41cb5a"
+SRC_URI[sha256sum] =3D "f4d0a1a030bc291a6af498b26e0676b745075dd289a8ba16=
cdec86c3ea8f2f02"
--=20
2.25.1

