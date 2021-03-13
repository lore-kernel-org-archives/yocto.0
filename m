Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.43])
 by mx.groups.io with SMTP id smtpd.web10.120.1615614676958060964
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:17 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=KC4r9amU;
 spf=pass (domain: windriver.com, ip: 40.107.220.43, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mxXY9lVuXIhEFJUiPy1tQ2f1Zx8iPmzSlxQONX3b6tnl7j6iy6jBXx1A6cNGljUL5t4jSBI9sOd/B595ttZxeSF/EjW6MfyR4xgNFhhhOcyD+5I1wKNI8KlRQ5BSiqO30BgUeI6Y6UO9EiqI7udedEj8SypfIgBciV8PW6UEhviqHaQkLcLGGU0brpBcqPbJp63XvXMBmEb2AlNFD8+yIPjfG9/TVcSAZcC5AL5yc5XLGJfVVcRVoMWPLIi2bPuMAntEW5myuIVzJt7aKG41yaPYTr5h/WHlO395hXV3CBQzPZivWlPj2OkJ2WseOQPnVqr3vMYiwONjNWUnmUmz4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GAwyLszt7rJdOQHr98CbmXN6hhS6RHupejmKYAmPd/w=;
 b=Ydbya2jVvHcLb11kSH20xW7J1j1nA98l2sg9M3dkswWvclcCh6yTz7uyyvFFUMUeNB28ig6dZDfzs2C9BxXTsKmLme4Jf5LroHrPQoTKAkowDgD6NOiSqIt5aWPsXDZvgRU/hkRJ1G0bV/oak/EVISGUSXe3e3Xn71Y1+p5mrvJDXfSaeBzvS3VuOdhAaoE8eZ+9s2zi3vO6p+tSDcyC1p5Ffwk8pSJXM5lH8XeRfgw00xvmpetX5dNGkapl6d4skjKEsjsXyyTpNgneLr1xWTtc8T5ahle9TLAF9KTlBGrr8YmM+V5AnRuEzwuUmi/NJTt5E+hSFDDzM6xv01tCiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GAwyLszt7rJdOQHr98CbmXN6hhS6RHupejmKYAmPd/w=;
 b=KC4r9amU+cUpSf6nR+90taL9djgBmDSq/U1hRpwiDbDIVMSyQs9D+0kk6Kvn0ckgceBanb2ufDxBD/7BavwCa4Ey0p19x/XtJfRuGO8QzjbRse61sJvpZl4Z1IGGIkNu2iff4ltM2+Js+wJXDD0J5mxl57M7NHXz5v2XfFFzU3E=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:15 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:15 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 11/16] selinux-python: update to 3.2
Date: Sat, 13 Mar 2021 13:50:39 +0800
Message-ID: <20210313055044.239776-12-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 69b36477-f218-4bb1-323f-08d8e5e403fc
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB2318CD0F2610D68348E94FB7F96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1002;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3J48PnhyRe0Dmb35UURuUrN0akWpQUuwJeVbf1z2Wyog3Jk0Z8pCwY+gZ2C7s4hGBn8pVUO8IC/+cm0zU+kAEgA1L//bdUgSA6wMN9deqsIuYGpEueoePLHEaG40u+iMATMoDZdg5cjoq/7BspE5u9P1dk1GEHnnb15gHdAfo9lzPkDBRItwUQTX35GVbSnr7PTPmlmSCzlqXiAaWdCKdlBjUGai74KPgVV8ZB+kS7jcfPK9Dj+b42vDj4D/cHIUgfWUp2v9qnYIV8g3YKvhGaxAMpxq4ebH5c0jbnPN+cAL/PQZ8RVjqWh2Z2Y3oudSB1uP3SsjNTP+FV59AvUCB/If8Da/7cEJDPnh+iP+UQHVSgrFJRVsU9Z4PG/Mq2dapFr6dNiceYtUNDThBLthetwwnBTC3fVxjwjlXKsm+IN9DQiw1OClNtKNFIbJyUqoaLV+K/e4iic6RNDRi9AmO0UHwiK9GUBaTWQPEF8Al5+gMm5xYK9mxWPyUZois4ZVboxKuqr8hzOwwSr2N2ClGA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(15650500001)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?eAa5Ccc2EQ9CsGARM/FtqsHusxGK3YlzZMcWbsG8D1u0O8DHMzL2HqMFeXnW?=
 =?us-ascii?Q?C65Wsoj7TyB93mjZPnmK5E77mvMcv0tUzCocZSPv9dRIhjQky1K7SVI+eGOp?=
 =?us-ascii?Q?vSbs2PpmZFUfYfOEAnGQ2VvR4QCUlh6N1hXiFbgXTsyAoEdgWYYOcoMGSwIQ?=
 =?us-ascii?Q?wjvi+JLK7GblufFkHJhoOBEMZciTaEABK3mxza80eg5ixN7WBhJjE0i9fw8o?=
 =?us-ascii?Q?n5U7b15vMifBnWKKRkgsb3tsEa8vSQr1EK9HCYbOBiJ/0vR1FvUFlks9O0h4?=
 =?us-ascii?Q?hCBkBNchnnTzKfG3QMccNiU0rWBHIFrfQyL04zcMHLF8AatU8UtfkIfJeiY3?=
 =?us-ascii?Q?p9bmtOFcAA5xasgHQgFSeKbRA8FkBb9mt/NAp8RDqMp0SvZ2AfaY5dISdN85?=
 =?us-ascii?Q?jcNowcY6CRoPnvw+kzL5QchN4yqGr4bDWS8uIcwKBHCr3R8FxSiabT3yCbbD?=
 =?us-ascii?Q?pt+1woRpzpEuFDNAN/tbclCj5o9Yw2Wk2czi/60HVX8IN/ZgesRhs1lJiWu8?=
 =?us-ascii?Q?cMhz2cnRuGFmHU08i7dVeJbVa3Z9dv8VwmDFCVHdq+uDDFNJsQ0qKoh4b8Dd?=
 =?us-ascii?Q?Kbfp4g24zgvB4y2U+NPpJb0AkpxOSJQXB3tDcSskYM0rSOrj+YaabQoKtXg/?=
 =?us-ascii?Q?rv8pJb1i8m00eeDQgVUaDB7LQOPPvR0B7Hm1NS21JU8MNA4BRdczsyvD5mET?=
 =?us-ascii?Q?w9JpZ75sbRICciUpjAa6tW6Kybm+4bpTnMaox/z5yy6RM1VMe43wVNdNuA9s?=
 =?us-ascii?Q?CUs2JnlvOEsplirhzz5b7Xlw06L2P9STnUfVcenBxTVtK4Sjuo6eZx+BaEU1?=
 =?us-ascii?Q?0Az+WyvMReZdcZmG6x2ktOMALaotLvQYnZjYoROR8v0A40QPfJRhcMyga/zj?=
 =?us-ascii?Q?uNmbBkxxkKGjH6LDvmIZu+AKsibEIdh48nKZ+YzRMAeCQiZS6Ytq9Gq0oqvX?=
 =?us-ascii?Q?YQEGt98y68XLnv96KAccud19Ca4dr4j4ugEraigPhZUOm6UK5XXpn6MuqIn1?=
 =?us-ascii?Q?fE0Z/9+gPbM7m8US5jXSPPo3FOWnNN5C0THryTsSEUEMEIsb4c63EdTvH6vg?=
 =?us-ascii?Q?kenbtZWv+r/fmncC3ecX/TPaIOaoCUVs672p7upld/hfFbeK/7rgBJ1lVDs6?=
 =?us-ascii?Q?yoIioK+J4Bwh6d29gXn73jf4pcWUMTnaYIDCy9YnBRb/a/o51OzknjL5h8UF?=
 =?us-ascii?Q?MaUmtl2U0WxBAcMnV1xz/Ovib3cgOd9F8ywcWZ7ZvhrWzdqBGeT15hUkYl4V?=
 =?us-ascii?Q?R3H+a1+C3NkZ4kc4nnCgpIJ2QOHcmohwlM3mFpBiTdlw9+9JoX+zDSEHNFAt?=
 =?us-ascii?Q?XCbmXiSAZQLWPTfn50H/0VGq?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69b36477-f218-4bb1-323f-08d8e5e403fc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:15.8513
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CcRcge6yiAAtrpMWyQPj6ZeuDbnKwSTkL1inj8BKhhluc8PLQriKbDgcnEqXdXZ/9cnDAPPyVSBI/v1yruN9+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/selinux-python_3.1.bb             |  7 -------
 ...linux-python.inc =3D> selinux-python_3.2.bb} | 20 +++++++++++--------
 2 files changed, 12 insertions(+), 15 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-python_3.1.bb
 rename recipes-security/selinux/{selinux-python.inc =3D> selinux-python_3.=
2.bb} (89%)

diff --git a/recipes-security/selinux/selinux-python_3.1.bb b/recipes-secur=
ity/selinux/selinux-python_3.1.bb
deleted file mode 100644
index a0555d2..0000000
--- a/recipes-security/selinux/selinux-python_3.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f83=
3"
-
-SRC_URI[md5sum] =3D "ec75687b680e0dd63e3ded05bd41cb5a"
-SRC_URI[sha256sum] =3D "f4d0a1a030bc291a6af498b26e0676b745075dd289a8ba16cd=
ec86c3ea8f2f02"
diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security=
/selinux/selinux-python_3.2.bb
similarity index 89%
rename from recipes-security/selinux/selinux-python.inc
rename to recipes-security/selinux/selinux-python_3.2.bb
index 827fa8b..a827a90 100644
--- a/recipes-security/selinux/selinux-python.inc
+++ b/recipes-security/selinux/selinux-python_3.2.bb
@@ -2,14 +2,20 @@ SUMMARY =3D "Python modules and various SELinux utilities=
."
 DESCRIPTION =3D "\
 This package contains Python modules sepolgen, sepolicy; And the \
 SELinux utilities audit2allow, chcat, semanage ..."
-
 SECTION =3D "base"
 LICENSE =3D "GPLv2+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D393a5ca445f6965873eca0259a=
17f833"
=20
-SRC_URI +=3D "file://fix-sepolicy-install-path.patch"
+require selinux_common.inc
=20
 inherit python3native
=20
+SRC_URI +=3D "file://fix-sepolicy-install-path.patch"
+
+S =3D "${WORKDIR}/git/python"
+
+EXTRA_OEMAKE +=3D "LIBSEPOLA=3D${STAGING_LIBDIR}/libsepol.a"
+
 DEPENDS +=3D "python3 libsepol libselinux"
 RDEPENDS_${BPN}-audit2allow +=3D "\
         python3-core \
@@ -97,11 +103,9 @@ FILES_${PN} +=3D "\
         ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/* \
 "
=20
-EXTRA_OEMAKE +=3D "LIBSEPOLA=3D${STAGING_LIBDIR}/libsepol.a"
-
 do_install() {
-        oe_runmake DESTDIR=3D"${D}" \
-                PYLIBVER=3D'python${PYTHON_BASEVERSION}' \
-                PYTHONLIBDIR=3D'${libdir}/python${PYTHON_BASEVERSION}/site=
-packages' \
-                install
+    oe_runmake DESTDIR=3D"${D}" \
+        PYLIBVER=3D'python${PYTHON_BASEVERSION}' \
+        PYTHONLIBDIR=3D'${libdir}/python${PYTHON_BASEVERSION}/site-package=
s' \
+        install
 }
--=20
2.25.1

