Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.51])
 by mx.groups.io with SMTP id smtpd.web10.117.1615614665239514055
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=G28Q0JCW;
 spf=pass (domain: windriver.com, ip: 40.107.92.51, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eZR5upJP2BF2VpFXJ6dbfuuNg2GFboTUFMCFVaVoIo24UOnDyhixuUlxFKLq3nC4h+GGuVsi1gi30E7fjeYXq6kkZv+CmTW33L3ruqggILq4pyHkrLCJdXvmkAcys9K3FFw/WsAFRQMbQj6Zdu7wix93JI/Q7m3DjQ+981p5TampCG8ZFUidSjzWCVaAFi+UBBPaScj9JoaYqUdXh81SgJCETPi9GqAPr5+zrsXU/0Fuekc7remBfuyeVmMoeeRZJX2CocmPDAYuexHBZKOvJsTBJRA2xb01M0Uj7IXBrIBUhprl7auInRs4QQujzD14HtEQLzU3Mdv5YyAr5AQl5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/gkKCvl8p5v2ZLrHTWNmcFOSpIpJFhiNc5ObjRRScwM=;
 b=Zn8fYVCGj37dTsdL36n6ga5QeQ1yPF/Jz0ZL3jX0UY1C4G28SWx7zwrXlfaO21Ob5oF+K1FWeZhVd/tSMR7Km2/9ETaAw0zu1xW5N2NnXao3slLdKhyIyc0K7ak1HfNfxaslLq09GpiEq4r/O7QDDw3R+LhGEJESInFk1b5zLeOgmLE0b0I7vEJGowYbJ42jdXirsm3fElClNdHvY3KSrIKb5VjbVxdiCHvi8YTlc4QLN0u2PdwiGGXpAanMmyrQ/Uc+Zn9ICRKMiWdI2CXEsu6XZHrMHQ2y4B+icjYJDFNigmrCzjfncRI9qXVuIAD8i90gQwgiHzbB7+mpJ1wMfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/gkKCvl8p5v2ZLrHTWNmcFOSpIpJFhiNc5ObjRRScwM=;
 b=G28Q0JCWe8Moh1e5F0byu299q/uFo2b82RMgkXir1r/3PQY3o4EK4aFV9G9LsRFI/1qGheimY1aT6iPot3wZMrZYboer0pyQp5j2S6CgfzAAQXHp1tGjerHKIUD2LWVevujG/Y1Ga+ce0MAJbcdBT+Su19kJ6j6GkoIzqp4IzZw=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.29; Sat, 13 Mar
 2021 05:51:03 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:03 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 04/16] libselinux-python: update to 3.2
Date: Sat, 13 Mar 2021 13:50:32 +0800
Message-ID: <20210313055044.239776-5-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1a802279-fc10-42ab-affc-08d8e5e3fc83
X-MS-TrafficTypeDiagnostic: MW3PR11MB4556:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB455692246A8642DC917FCC4AF96E9@MW3PR11MB4556.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VpQw6iA5jskOA2MugEUi8jIFQnMDwp4yMQ5ULjuqo2qi31map2YA6qxZdsbjCym1GhFDZBACSWBE/UIz8njdpYHulB2YhaR0EOCJrwBS1yE5O1Gd5GPwZN8I1F29rFcmiPMzd4OXEiOPBfCGyn4Mri2HNLvD2wgbdGB0kVwQN+WR0YpiAXYc8GNVrGvVb8Jv9O3tlBL+5iIBzvoq4Bpxwg/ZG9ZT0kQ/Gk2vA8xJExCht5JE647N6RbBbrfX3jU98zYDk1yAlP86qQYn1rKFaAWkj4bQhU39F4iqBWSVard42vUcXc5+OcweH0LrVKo2AQTyADZ+gNzhguaPpH8Fmh/EvZX9MufPpBkWfN0E7WDRx/sQC7jTA8dp8pnNGU2Plhlsz9pBW28u1ZdvS1y5X+CSu7kKtvd/+0ZGcvLBeRWNrGzIKTDZoFpmYZ12mDKjl25GLMpvOAeSYZml3AViBEWfAwPhidbeo/wVb3tZnrwH3aJtKlM3//3x9D5fVEDYbubTL/Co8U8Erdm5kUghMfhHracl1SqBROPdqsFB0HC0eqt/6/IsVhYVIYDG0mEdQVk3HrVplwp2oMQy1N+Menc9iOXxNq/mQgAXIYdIm3s=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(136003)(39850400004)(376002)(346002)(66476007)(6506007)(6512007)(15650500001)(36756003)(1076003)(8676002)(66556008)(66946007)(83380400001)(16526019)(86362001)(44832011)(316002)(6666004)(186003)(26005)(956004)(6486002)(5660300002)(2906002)(478600001)(52116002)(2616005)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?YnnlWbUy6FjFeB8R9pYY5NJsl0aEtXYEMqD/v5a2oJUWrRzXyCrY/AcArCd4?=
 =?us-ascii?Q?yawsWD4or+fhLbGdmEqZeoeRbGiiV3mZgbhh+H3EFpnIg2lL1fN2WW2M5I+J?=
 =?us-ascii?Q?wXG16RvaJ29HBnncIV+zoulVTreJp/+6K6y7WrtA8j0e0mlV3n31ObDeSxXg?=
 =?us-ascii?Q?cA1WcYeicBSPaZbPJHNvrDi0gSx/ukAfcBqpqdn8QtSU7nFwwoIxTfYOiZ4C?=
 =?us-ascii?Q?i50je805mIwT1ROd8XdY0DIpfBBRn6UFNrwuNf4y/6Lx2dbCmQm3KwRk9/mE?=
 =?us-ascii?Q?qv7u/1QO/JyxKSn8QgzB0pWWwXRT6je4DSLZ6yY84LFg8QoV6qDYrdtzN1et?=
 =?us-ascii?Q?Njs9SdkUVdlkV2TlHFTwnTeY3iMmEvS4lfLxubEGRV5i8gJyUBA4fJFuyvVQ?=
 =?us-ascii?Q?YoU62sx3aS8Y4cgoNZ0YPD5wehe7Vl3zMw1TSDAWK1qhHj0tzH/cEIuH//fn?=
 =?us-ascii?Q?mH2qUZwxMC0Ftxj8BsXw+E96KkK7XZ6cgCL3Xu1RGltKGvI+09jakTAUoVD7?=
 =?us-ascii?Q?K0pqNzgT/uqsQUxSgh/TLaVdVQzxib8mY8Af0aaZ+OZ8+aXBVKld5ERe//tl?=
 =?us-ascii?Q?EzQEs177kGpQq5p5qNCZid6v/HPzVGAhtVkDfJuFUCvhyXQZI4Thvr+GXE0c?=
 =?us-ascii?Q?1LQrUSoCplRId8XnOZTVKvYbhaxMRd0pGxCPylBRyFeOZ2UKWsh0Sfls5HPX?=
 =?us-ascii?Q?D4WvdpeyaxW9I0w0qHfAHk/537PTaFXXdEqPqX+Z+JtChCB1LHPLCwpgluEU?=
 =?us-ascii?Q?NVeEwyyECLST5994NRlxDBJYQuDQNS8oeXSmXNvMN7UHKUNFwVwHlFKIeD8d?=
 =?us-ascii?Q?XfY05CvC8QC8iLiOnHyJKws/mnAwWmMfeHk/udjTpT4nGs5ou4jrW0rpi0pQ?=
 =?us-ascii?Q?/Va31aaByUjCABsyuaoI4yAn/es4/hpAEu54YOWAkaR9izTFlBQptXjWNJ0e?=
 =?us-ascii?Q?YH2UhvJTO4JLzSNngTBuecT1y0uLFpdaY9M0F9G3mLy/VZTV+6noThIabAG0?=
 =?us-ascii?Q?iNSvNBBMVlYbH9RNxKdQpkVAhFQ+FGIFHhPJnjEwbd5CXaVlxwL1Zd32WlIP?=
 =?us-ascii?Q?Vh8dxmc6RShAXAoZ2eU15TIRR2O6P95SkPXT4ZFJSZGbh3OahmM3KjBNiqWO?=
 =?us-ascii?Q?VGe9eKF6qgp1uyijOWWdzcSappfMh11fhu70NF7H8aqngujJ/QLWTkcE72aF?=
 =?us-ascii?Q?o7LUrAl6DIANzTB0j4wpNWYBUzhbLad8SYhgBkHWYzmtBkew7WMz9PLhyCjW?=
 =?us-ascii?Q?kRxVVtWfLHY55f4kkllxgAPK/Anu4uLh9KShXpGtbgdVw9KweNek5zNrMiE/?=
 =?us-ascii?Q?aYILCeuDgJiViCR8CiM0xS1J?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a802279-fc10-42ab-affc-08d8e5e3fc83
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:03.8133
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hQPaIDv7CR+WPCczuGDGA7qb0HHc0fbbEQchrc3hoiVcjl7TRxHymYdM597XsDJODRaNh4gGMXuWFsB4A2xevQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/libselinux-python_3.1.bb          | 26 -------------------
 ...ux-python.inc =3D> libselinux-python_3.2.bb} | 25 ++++++++++++------
 2 files changed, 17 insertions(+), 34 deletions(-)
 delete mode 100644 recipes-security/selinux/libselinux-python_3.1.bb
 rename recipes-security/selinux/{libselinux-python.inc =3D> libselinux-pyt=
hon_3.2.bb} (61%)

diff --git a/recipes-security/selinux/libselinux-python_3.1.bb b/recipes-se=
curity/selinux/libselinux-python_3.1.bb
deleted file mode 100644
index 854eca9..0000000
--- a/recipes-security/selinux/libselinux-python_3.1.bb
+++ /dev/null
@@ -1,26 +0,0 @@
-SELINUX_RELEASE =3D "20200710"
-
-SRC_URI =3D "https://github.com/SELinuxProject/selinux/releases/download/$=
{SELINUX_RELEASE}/libselinux-${PV}.tar.gz"
-
-require ${BPN}.inc
-
-inherit python3targetconfig
-
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e775a270d0d=
0"
-
-SRC_URI[md5sum] =3D "693680c021feb69a4b258b0370021461"
-SRC_URI[sha256sum] =3D "ea5dcbb4d859e3f999c26a13c630da2f16dff9462e3cc8cb7b=
458ac157d112e7"
-
-SRC_URI +=3D "\
-        file://libselinux-make-O_CLOEXEC-optional.patch \
-        file://libselinux-make-SOCK_CLOEXEC-optional.patch \
-        file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
-        file://0001-Makefile-fix-python-modules-install-path-for-multili.p=
atch \
-        file://0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.p=
atch \
-        "
-
-SRC_URI_append_libc-musl =3D " \
-        file://0001-libselinux-do-not-define-gettid-for-musl.patch \
-        "
-
-S =3D "${WORKDIR}/libselinux-${PV}"
diff --git a/recipes-security/selinux/libselinux-python.inc b/recipes-secur=
ity/selinux/libselinux-python_3.2.bb
similarity index 61%
rename from recipes-security/selinux/libselinux-python.inc
rename to recipes-security/selinux/libselinux-python_3.2.bb
index 7149d94..b741449 100644
--- a/recipes-security/selinux/libselinux-python.inc
+++ b/recipes-security/selinux/libselinux-python_3.2.bb
@@ -4,11 +4,20 @@ process and file security contexts and to obtain security=
 policy \
 decisions.  Required for any applications that use the SELinux API."
 SECTION =3D "base"
 LICENSE =3D "PD"
+LIC_FILES_CHKSUM =3D "file://${S}/LICENSE;md5=3D84b4d2c6ef954a2d4081e775a2=
70d0d0"
=20
-FILESEXTRAPATHS_prepend :=3D "${THISDIR}/libselinux:"
+require selinux_common.inc
=20
 inherit python3native python3targetconfig
=20
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/libselinux:"
+SRC_URI +=3D "\
+        file://0001-Makefile-fix-python-modules-install-path-for-multili.p=
atch \
+        file://0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.p=
atch \
+        "
+
+S =3D "${WORKDIR}/git/libselinux"
+
 DEPENDS +=3D "python3 swig-native libpcre libsepol"
 RDEPENDS_${PN} +=3D "libselinux python3-core python3-shell"
=20
@@ -18,8 +27,8 @@ def get_policyconfigarch(d):
     p =3D re.compile('i.86')
     target =3D p.sub('i386',target)
     return "ARCH=3D%s" % (target)
-EXTRA_OEMAKE +=3D "${@get_policyconfigarch(d)}"
=20
+EXTRA_OEMAKE +=3D "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE +=3D "LDFLAGS=3D'${LDFLAGS} -lpcre' LIBSEPOLA=3D'${STAGING_LI=
BDIR}/libsepol.a'"
 EXTRA_OEMAKE_append_libc-musl =3D " FTS_LDLIBS=3D-lfts"
=20
@@ -28,14 +37,14 @@ INSANE_SKIP_${PN} =3D "dev-so"
=20
 do_compile() {
     oe_runmake pywrap -j1 \
-            PYLIBVER=3D'python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
-            PYINC=3D'-I${STAGING_INCDIR}/${PYLIBVER}' \
-            PYLIBS=3D'-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
+        PYLIBVER=3D'python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
+        PYINC=3D'-I${STAGING_INCDIR}/${PYLIBVER}' \
+        PYLIBS=3D'-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
 }
=20
 do_install() {
     oe_runmake install-pywrap \
-            DESTDIR=3D${D} \
-            PYLIBVER=3D'python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
-            PYTHONLIBDIR=3D'${libdir}/python${PYTHON_BASEVERSION}/site-pac=
kages'
+        DESTDIR=3D${D} \
+        PYLIBVER=3D'python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
+        PYTHONLIBDIR=3D'${libdir}/python${PYTHON_BASEVERSION}/site-package=
s'
 }
--=20
2.25.1

