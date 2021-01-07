Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3746.1609991049725562112
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:09 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=jLy4HQUZ;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2043.outbound.protection.outlook.com [40.107.94.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9E72938C0895
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PiGltCzjZTZItw+ichJReP6uN6nApfV6Gpm/sEV1jGlbnV4nR7OT5NHPjsbDSPP+SxDgDwFxwcp8rcLsjCgJkrM0E+no1wKAWodu5liJuXKdVyylrI53ZjbuRmUHeLlR4Or2pPU2HSQRb+KXnLi2kPSgYkn8NKgyWO4xfOxBerv9am2kSoOapuxdhEhpezXV4chwZRFc7mmqY144Xn9+iQL7kCpllj6WZ0B+rlLJO30wfAnB4qnDKxtPosxKOOcjyjNYiv6eFaZ760ktzM08RkBAPrjG11HgHJ548rD3RE5OrhTm6uxaDe/Au3i4Z3mc1YHOyb9GPTikXBDGF16MMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IVMhATBgltWVqN71jeFgqhA0LVXD4cGEowJ/usWmn3c=;
 b=dXO3KDYouk03fyF1HYJwIuCEjEmpI6349B2Q42NX1EK5MwQsmYZHVO5tW3qGgOn3hiu2Um9RxB6lzS/MZfEdnBIVW/OGHdWrhOslBAB1XTByTJkCPhDSTOrAzv5fjyKgTfwnxJk7T3egf96IaND6q6aRDWEAqUkMGImoLsdg/azsbweJ74jhtMIdi0sO8FOQAT5XlUkK1iv7CytewevMfrQy1HDO96KTViM+W25bTzKJT5tA0qJaovyrkcP31g9k0VUPgEp5OXRebPuJFDVYPv2eHt4iHSwUMuXUzXyHPzMsVeczY0iCEdv0Ru2CZDs3cW4V+U6WtiM2XB2DLbIXEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IVMhATBgltWVqN71jeFgqhA0LVXD4cGEowJ/usWmn3c=;
 b=jLy4HQUZP13IFVGEsclHtklJ8V83kBFtOrutF9cowsguaowgszJ/cTPLx9YDT5Bi2movMjwMweQoYdMaHeQM27pIGJLVaHop7zL2zaR6j3mczGXjbPFlUPp6Usmc7SwFSKgm94/xREFAix1+C8qEmvWWRXpoocu7PYAgRHUeK3A=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 03:44:08 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:08 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 06/17] libselinux-python: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:34 +0800
Message-Id: <20210107034345.37200-7-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9a231d28-2283-4869-6f62-08d8b2be7d34
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB15844CA7B8A2A48B40111E16F9AF0@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1775;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Neik98Iyhd+T3LxXTQApewrT7s3d6ztPc9J+NjKn1zIleNmdXV+hHR6TvyPqqea+MaWhfXEnLxIOOcrUbXOBooGldzj+ssUF/B2thVjvAwRNP1wz7RUMu8RTdYbyCJKlTBddq7HHNUdj5hdMpYIwshu6+hg+TRe6G8mJX1Ro8ekEJIm+xoAZgtx5Jie+g+q2C/36KuHV568uCWsQ4MQHZtw+twKdhzW3XnA7d26K86vPcN1kSQ/7q2kVNShygrbKLEnr0Al5XQ+FfXBo4QBIbMWxtvgetFkuHZvLGSk4yU2tIxgjYbbb5B+KPXNttTsRjdW40nKy9WkX4cyZvhq9/X5a5NfgoG8O4lLv5DM8qI5mQ31GlleFd1Kdjp0V6d9PigewKkdbP/yd0/aupGgLT8jM7uq6TLPWB+NJz00Y7x8m0xfS0V4lKg1BtBr0VMTrPo5qMvQ0XZJKZ50rUNA8Gg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(53546011)(316002)(66946007)(8676002)(478600001)(5660300002)(6486002)(66556008)(66476007)(83380400001)(8936002)(1076003)(2906002)(6666004)(186003)(36756003)(16526019)(44832011)(6512007)(86362001)(52116002)(2616005)(956004)(6506007)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?PPiit8x9e2CQfac5/yDMaJ5HuBhT47BZ7Ht+1Cj/cOPL0D50Qfnl2xN6YkD8?=
 =?us-ascii?Q?G0O5EC06Gmf3LtPGT12Q/xvKuMYhBroq4QnSSfdNVNRr9P6Ps9jq6SIi50+z?=
 =?us-ascii?Q?UjguARs8Ler+7YhNx5/H9+94VfYq2j2VVBmRp7KLY/FsSGOvX2fAa6pg+0kg?=
 =?us-ascii?Q?H8X1PFeDSPrqsgSG2zqibKFTT2lsfl3ddQggsVVzJVdJ/KhhDhLMMcB34Vu7?=
 =?us-ascii?Q?nMwnnAU6scsYccg6/lcOD5k7rGSZxL570N69N3I8s0Ll7OOwqQ4ixPC0IxkC?=
 =?us-ascii?Q?pTcx+5A1jlBEEp7n5e3uR/DmMMK89fyOdSpTwsp0eZxuudfM19xLisQPNfRJ?=
 =?us-ascii?Q?HOvZQNX/7Gae1Ao0REnENxeigIB1zIU6tA3T1i2g4t49Tm0Qf1NYFEcf02ln?=
 =?us-ascii?Q?lcOKgCpn3Qigd6wiY0lI4sujM/9EggSWQV/bGz3om1t+zdn213zbJge7MFbh?=
 =?us-ascii?Q?+K1MobmVRjzLxOFd4UHokUnHrXwSazChW7xfcoVjuWeLDnNCeR2ZzhPOSElp?=
 =?us-ascii?Q?w2y9MXoPwymc4u4N//DAKuHLsvaN0A5Yx70Ebf61330yQbOVkHkcTy2UIxn4?=
 =?us-ascii?Q?xtL4VISb/WcWLSqjOrqbqAcYKxITEPThSWXHgpnZR4oVnh0LQaEpXwZU8Jlo?=
 =?us-ascii?Q?RduDmtJhFN560sMK+6pFkuVbcf7Y3OHpy+ANuU6GWMWFo2FdT9oi3HOM2ZLF?=
 =?us-ascii?Q?sRGp5O714OFyj7csuZL3RKCuhQC1ZOnvXoSEg7XtCILr+SJ0t4DgFvl9+t2g?=
 =?us-ascii?Q?ifXvGRu3j7nc0dkgko5Nz3HdQPtNzEmi1Xrnc3PEZmL/h1Bl8DuJN0+Uua5E?=
 =?us-ascii?Q?rATcTvRHVSxEG9Ke6daD1ewfjMo3xAXIGmssdpZuUaxpFG6sDZ796Vmc3xWU?=
 =?us-ascii?Q?4qJgidhiYmrh86DyPSC8hkBNbJd+wo8xwcSUhT2/P8j7efDITrr1sPRR9M2x?=
 =?us-ascii?Q?kao7lx7tquclcb/9bmuRgazcZ7evVOt6+bfGhoBXOYdQpZvN8L4f+hD1Palt?=
 =?us-ascii?Q?tu+x?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:08.6765
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a231d28-2283-4869-6f62-08d8b2be7d34
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e7eJqMhuxaTMydo/5iCbe9e7VcZjlhyrknQp4D3Ctc/gg+zlCzzuDvdOMRw3udk4e9fN8jJlVuNscl9fnqsY/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Refresh patches:
  0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
  0001-Makefile-fix-python-modules-install-path-for-multili.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...linux-python_3.0.bb =3D> libselinux-python_3.1.bb} | 13 ++++++++-----
 ...-PYCEXT-and-rely-on-the-installed-file-nam.patch | 12 ++++++------
 ...ix-python-modules-install-path-for-multili.patch | 12 ++++++------
 3 files changed, 20 insertions(+), 17 deletions(-)
 rename recipes-security/selinux/{libselinux-python_3.0.bb =3D> libselinu=
x-python_3.1.bb} (66%)

diff --git a/recipes-security/selinux/libselinux-python_3.0.bb b/recipes-=
security/selinux/libselinux-python_3.1.bb
similarity index 66%
rename from recipes-security/selinux/libselinux-python_3.0.bb
rename to recipes-security/selinux/libselinux-python_3.1.bb
index 2b5438d..9493083 100644
--- a/recipes-security/selinux/libselinux-python_3.0.bb
+++ b/recipes-security/selinux/libselinux-python_3.1.bb
@@ -1,4 +1,4 @@
-SELINUX_RELEASE =3D "20191204"
+SELINUX_RELEASE =3D "20200710"
=20
 SRC_URI =3D "https://github.com/SELinuxProject/selinux/releases/download=
/${SELINUX_RELEASE}/libselinux-${PV}.tar.gz"
=20
@@ -6,16 +6,19 @@ require ${BPN}.inc
=20
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e775a270d=
0d0"
=20
-SRC_URI[md5sum] =3D "b387a66f087b6d97713570e85ec89d89"
-SRC_URI[sha256sum] =3D "2ea2b30f671dae9d6b1391cbe8fb2ce5d36a3ee4fb1cd3c3=
2f0d933c31b82433"
+SRC_URI[md5sum] =3D "693680c021feb69a4b258b0370021461"
+SRC_URI[sha256sum] =3D "ea5dcbb4d859e3f999c26a13c630da2f16dff9462e3cc8cb=
7b458ac157d112e7"
=20
 SRC_URI +=3D "\
-        file://libselinux-drop-Wno-unused-but-set-variable.patch \
         file://libselinux-make-O_CLOEXEC-optional.patch \
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
-        file://0001-Fix-building-against-musl-and-uClibc-libc-libraries.=
patch \
         file://0001-Makefile-fix-python-modules-install-path-for-multili=
.patch \
         file://0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam=
.patch \
         "
+
+SRC_URI_append_libc-musl =3D " \
+        file://0001-libselinux-do-not-define-gettid-for-musl.patch \
+        "
+
 S =3D "${WORKDIR}/libselinux-${PV}"
diff --git a/recipes-security/selinux/libselinux/0001-Do-not-use-PYCEXT-a=
nd-rely-on-the-installed-file-nam.patch b/recipes-security/selinux/libsel=
inux/0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
index b7cd59d..0fafcef 100644
--- a/recipes-security/selinux/libselinux/0001-Do-not-use-PYCEXT-and-rely=
-on-the-installed-file-nam.patch
+++ b/recipes-security/selinux/libselinux/0001-Do-not-use-PYCEXT-and-rely=
-on-the-installed-file-nam.patch
@@ -1,4 +1,4 @@
-From 0d4da8093bc2ef92b7c6f7fd1f4804f6ebc6cb56 Mon Sep 17 00:00:00 2001
+From 1542c79660484a2f2e24ee0593586dba35c3ad13 Mon Sep 17 00:00:00 2001
 From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
 Date: Fri, 25 Oct 2019 13:37:14 +0200
 Subject: [PATCH] Do not use PYCEXT, and rely on the installed file name
@@ -27,20 +27,20 @@ Signed-off-by: Changqing Li <changqing.li@windriver.c=
om>
  1 file changed, 1 insertion(+), 2 deletions(-)
=20
 diff --git a/src/Makefile b/src/Makefile
-index a384a10..82adf82 100644
+index dcdeb10..da6f719 100644
 --- a/src/Makefile
 +++ b/src/Makefile
 @@ -15,7 +15,6 @@ INCLUDEDIR ?=3D $(PREFIX)/include
  PYINC ?=3D $(shell $(PKG_CONFIG) --cflags $(PYPREFIX))
  PYLIBS ?=3D $(shell $(PKG_CONFIG) --libs $(PYPREFIX))
  PYTHONLIBDIR ?=3D $(shell $(PYTHON) -c "from distutils.sysconfig import=
 *; print(get_python_lib(plat_specific=3D1, prefix=3D'$(PREFIX)'))")
--PYCEXT ?=3D $(shell $(PYTHON) -c 'import imp;print([s for s,m,t in imp.=
get_suffixes() if t =3D=3D imp.C_EXTENSION][0])')
+-PYCEXT ?=3D $(shell $(PYTHON) -c 'import importlib.machinery;print(impo=
rtlib.machinery.EXTENSION_SUFFIXES[0])')
  RUBYINC ?=3D $(shell $(RUBY) -e 'puts "-I" + RbConfig::CONFIG["rubyarch=
hdrdir"] + " -I" + RbConfig::CONFIG["rubyhdrdir"]')
  RUBYLIBS ?=3D $(shell $(RUBY) -e 'puts "-L" + RbConfig::CONFIG["libdir"=
] + " -L" + RbConfig::CONFIG["archlibdir"] + " " + RbConfig::CONFIG["LIBR=
UBYARG_SHARED"]')
  RUBYINSTALL ?=3D $(shell $(RUBY) -e 'puts RbConfig::CONFIG["vendorarchd=
ir"]')
-@@ -175,7 +174,7 @@ install: all
+@@ -176,7 +175,7 @@ install: all
  install-pywrap: pywrap
- 	$(PYTHON) setup.py install --prefix=3D$(PREFIX) --root=3D$(DESTDIR) --=
install-lib=3D$(PYTHONLIBDIR)
+ 	$(PYTHON) setup.py install --prefix=3D$(PREFIX) --root=3D$(DESTDIR) --=
install-lib=3D$(PYTHONLIBDIR) $(PYTHON_SETUP_ARGS)
  	install -m 644 $(SWIGPYOUT) $(DESTDIR)$(PYTHONLIBDIR)/selinux/__init__=
.py
 -	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux$(PYCEXT) =
$(DESTDIR)$(PYTHONLIBDIR)/_selinux$(PYCEXT)
 +	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux*.so $(DES=
TDIR)$(PYTHONLIBDIR)/
@@ -48,5 +48,5 @@ index a384a10..82adf82 100644
  install-rubywrap: rubywrap
  	test -d $(DESTDIR)$(RUBYINSTALL) || install -m 755 -d $(DESTDIR)$(RUBY=
INSTALL)=20
 --=20
-2.24.1
+2.17.1
=20
diff --git a/recipes-security/selinux/libselinux/0001-Makefile-fix-python=
-modules-install-path-for-multili.patch b/recipes-security/selinux/libsel=
inux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
index f0fee23..9dfd8d4 100644
--- a/recipes-security/selinux/libselinux/0001-Makefile-fix-python-module=
s-install-path-for-multili.patch
+++ b/recipes-security/selinux/libselinux/0001-Makefile-fix-python-module=
s-install-path-for-multili.patch
@@ -1,4 +1,4 @@
-From 930514c1b93335ccf6d70adf46ca7e3f8183603d Mon Sep 17 00:00:00 2001
+From 41540f5c4e3552a2806097613f016d1a2fd4754a Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 13 Apr 2020 12:44:23 +0800
 Subject: [PATCH] Makefile: fix python modules install path for multilib
@@ -11,18 +11,18 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
=20
 diff --git a/src/Makefile b/src/Makefile
-index b0ce2c8..a384a10 100644
+index 190016e..dcdeb10 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -173,7 +173,7 @@ install: all
+@@ -174,7 +174,7 @@ install: all
  	ln -sf --relative $(DESTDIR)$(SHLIBDIR)/$(LIBSO) $(DESTDIR)$(LIBDIR)/$=
(TARGET)
 =20
  install-pywrap: pywrap
--	$(PYTHON) setup.py install --prefix=3D$(PREFIX) `test -n "$(DESTDIR)" =
&& echo --root $(DESTDIR)`
-+	$(PYTHON) setup.py install --prefix=3D$(PREFIX) --root=3D$(DESTDIR) --=
install-lib=3D$(PYTHONLIBDIR)
+-	$(PYTHON) setup.py install --prefix=3D$(PREFIX) `test -n "$(DESTDIR)" =
&& echo --root $(DESTDIR)` $(PYTHON_SETUP_ARGS)
++	$(PYTHON) setup.py install --prefix=3D$(PREFIX) --root=3D$(DESTDIR) --=
install-lib=3D$(PYTHONLIBDIR) $(PYTHON_SETUP_ARGS)
  	install -m 644 $(SWIGPYOUT) $(DESTDIR)$(PYTHONLIBDIR)/selinux/__init__=
.py
  	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux$(PYCEXT) =
$(DESTDIR)$(PYTHONLIBDIR)/_selinux$(PYCEXT)
 =20
 --=20
-2.7.4
+2.17.1
=20
--=20
2.25.1

