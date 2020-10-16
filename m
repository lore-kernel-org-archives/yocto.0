Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.25368.1602877928334137531
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Oct 2020 12:52:08 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 questdiagnostics.com}: parse error for token &{10 18 spf.messagelabs.com}: parse error for token &{10 18 nets1.spf.messagelabs.com}: limit exceeded (domain: essvote.com, ip: 198.145.29.25, mailfrom: michael.davis@essvote.com)
Received: from us-smtp-delivery-164.mimecast.com (us-smtp-delivery-164.mimecast.com [216.205.24.164])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 598B938C1637
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2020 12:52:07 -0700 (PDT)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2175.outbound.protection.outlook.com [104.47.58.175])
 (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-Nua18g60OOSZJ7GOd_zQhw-1; Fri, 16 Oct 2020 15:52:02 -0400
X-MC-Unique: Nua18g60OOSZJ7GOd_zQhw-1
Received: from DM6PR17MB2474.namprd17.prod.outlook.com (2603:10b6:5:69::15) by
 DM6PR17MB3210.namprd17.prod.outlook.com (2603:10b6:5:195::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.20; Fri, 16 Oct 2020 19:52:00 +0000
Received: from DM6PR17MB2474.namprd17.prod.outlook.com
 ([fe80::4014:9f67:6ee6:f1b4]) by DM6PR17MB2474.namprd17.prod.outlook.com
 ([fe80::4014:9f67:6ee6:f1b4%6]) with mapi id 15.20.3477.020; Fri, 16 Oct 2020
 19:52:00 +0000
From: "Davis, Michael" <michael.davis@essvote.com>
To: yocto@yoctoproject.org
CC: Michael Davis <michael.davis@essvote.com>
Subject: [meta-qt4][PATCH] qt4: Update to dunfell
Date: Fri, 16 Oct 2020 14:51:46 -0500
Message-ID: <20201016195146.108361-1-michael.davis@essvote.com>
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [23.152.176.73]
X-ClientProxiedBy: SN1PR12CA0075.namprd12.prod.outlook.com
 (2603:10b6:802:20::46) To DM6PR17MB2474.namprd17.prod.outlook.com
 (2603:10b6:5:69::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (23.152.176.73) by SN1PR12CA0075.namprd12.prod.outlook.com (2603:10b6:802:20::46) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.20 via Frontend Transport; Fri, 16 Oct 2020 19:51:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8e4977b5-64d5-48d4-fed2-08d8720cf231
X-MS-TrafficTypeDiagnostic: DM6PR17MB3210:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR17MB32104E3E11B1972DD52F674FF8030@DM6PR17MB3210.namprd17.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:568
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: he9M1xLA4YIrRUV750aG/oShAcgwD6IoF8O99XsFTpAnokDpjPoHHtaAPmUzsHt4smj2EqUxmPHPet752V+sIXn2OHvRbJVreOIBLX/TZzzAWoq7qdyBmq24JxUD5iNH4UkZjqsIyzSA24stfiodcTkPHB2Vxu8x0xsE0DZVIQdo/DE2JHnJwTDPaT24gHtO5D7PUCwfkfLL+qPAQJTAgkIQ/7GI+BhD2ni2aO5Sq1ZDeDeIluMjFPhwDGuZ4/WNfQ9SpDssBKW4wP6+MQdnOJK03Dgxvk4TiIc0S4Rax4hYtDS7SGPMf/qH5nm9jsfHwU/8nmrAv/WNGdBZI8ekm3FRv4PKmI8gT+xhaCWdhJO3fomlix0EtlLU3i7E/bGfBO45vnJpjuoUysSKLRP/8ZQ+476gHJ/ydbn+/xB+vz4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR17MB2474.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(39840400004)(136003)(396003)(346002)(16526019)(8936002)(6512007)(1076003)(6666004)(4326008)(34490700002)(6916009)(2906002)(2616005)(86362001)(66556008)(66476007)(956004)(66946007)(52116002)(44832011)(316002)(36756003)(8676002)(186003)(6486002)(69590400008)(107886003)(83380400001)(5660300002)(478600001)(26005)(6506007);DIR:OUT;SFP:1101
X-MS-Exchange-AntiSpam-MessageData: ko7aGjumgMImVvKHHWA6uOpUOOA0dBGY2cJxf3RAiF4OXOPcK4bFt7ESmXfQnQgx2Bl1L5cQF478bKOov2RQ5fPgHfS+iX0KyMNeASd6Cs9bHYpMJFMLrQKpAYlrmoYGMUKDqTQqlpEnSddimNZIdif3/eo+h+T+uAUNLA92sCTZTV01DQWpKNM86bko5G08dlpFx4IMNr/lQchEevDfk57CmbPeXsctLnKry37DkjKu/Zm0omB3TmcF+3Shn8F5uuJ9foVGcON5xhlay1UAA62+HDiQLpHXM5D9vWYN+lGGHPsUxPtxdy7SLICKSDZGUAb5y+FSFO+dEt4T5JQydLzb6dnPizrgJkV9uFs9a+hNbJM4HhbVwqa6d0VUysa8Q5GwlBRdiqi0uPvchqmf5ou2an8fAqHsBEfTqa7fsqhySZy+Uw4ZDicY5aFSSdelYiV5bbXuJNmlVexpAYCzYN9Uc5qOipn8CiCyejBfMidXOoQ8tTPC8b5Rjr4WcECec8Cv3vVzHZIpJx5argItqiJeOjQpGldlsyy+p+ApKMhV8gndtwIz0WYBki3YFWrGrVOItO1jp8dB4Av0qaYGGuf4RjsT4totFT7ZP/Wp8kRMb/ErN2qiByfOUeWDQnc7Ahnr8BbYPTmT6hKDoz5fPA==
X-OriginatorOrg: essvote.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e4977b5-64d5-48d4-fed2-08d8720cf231
X-MS-Exchange-CrossTenant-AuthSource: DM6PR17MB2474.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2020 19:52:00.6119
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 55818b27-dd2b-48d7-b7c5-95b96a0b1261
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b2VwgRebhddI9SkR7UZ0jXjvgIr5rlIdjOlCwL3EHuEqQmpeNFGuzN4Qaf2LdULZSp7ZK1IUmPcX84zmLJhYG2v3881QL+hIHbnvd8SItu4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR17MB3210
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA64A369 smtp.mailfrom=michael.davis@essvote.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: essvote.com
Content-Type: multipart/alternative;
	boundary="MCBoundary=_12010161552041521"

--MCBoundary=_12010161552041521
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

This patch removes the deprecated distro_features_check and adds meta-pytho=
n2 as a dependent layer.
Compability is now limited to dunfell.

Signed-off-by: Michael Davis <michael.davis@essvote.com>
---
 classes/qt4x11.bbclass                                        | 2 +-
 conf/layer.conf                                               | 3 ++-
 recipes-qt4/images/core-image-lsb-qt4.bb                      | 2 +-
 recipes-qt4/packagegroups/packagegroup-core-qt.bb             | 2 +-
 recipes-qt4/packagegroups/packagegroup-qt-toolchain-target.bb | 2 +-
 recipes-qt4/recipes-python/python-pyqt_4.12.bb                | 2 +-
 6 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/classes/qt4x11.bbclass b/classes/qt4x11.bbclass
index 6f06d34..7f65d81 100644
--- a/classes/qt4x11.bbclass
+++ b/classes/qt4x11.bbclass
@@ -4,7 +4,7 @@ DEPENDS_prepend =3D "${QT4DEPENDS}"
 # depends on qt4-x11
 REQUIRED_DISTRO_FEATURES +=3D "x11"
=20
-inherit qmake2 distro_features_check
+inherit qmake2 features_check
=20
 QT_BASE_NAME =3D "qt4"
 QT_DIR_NAME =3D "qt4"
diff --git a/conf/layer.conf b/conf/layer.conf
index c8d31bb..ab30e58 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,4 +8,5 @@ BBFILE_COLLECTIONS +=3D "qt4-layer"
 BBFILE_PATTERN_qt4-layer =3D "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt4-layer =3D "6"
=20
-LAYERSERIES_COMPAT_qt4-layer =3D "thud warrior zeus"
+LAYERSERIES_COMPAT_qt4-layer =3D "dunfell"
+LAYERDEPENDS_qt4-layer =3D "meta-python2"
diff --git a/recipes-qt4/images/core-image-lsb-qt4.bb b/recipes-qt4/images/=
core-image-lsb-qt4.bb
index 03d27f8..c5c8f2b 100644
--- a/recipes-qt4/images/core-image-lsb-qt4.bb
+++ b/recipes-qt4/images/core-image-lsb-qt4.bb
@@ -9,5 +9,5 @@ IMAGE_INSTALL =3D "\
=20
 inherit core-image
=20
-inherit distro_features_check
+inherit features_check
 REQUIRED_DISTRO_FEATURES =3D "x11"
diff --git a/recipes-qt4/packagegroups/packagegroup-core-qt.bb b/recipes-qt=
4/packagegroups/packagegroup-core-qt.bb
index b7de69e..1989646 100644
--- a/recipes-qt4/packagegroups/packagegroup-core-qt.bb
+++ b/recipes-qt4/packagegroups/packagegroup-core-qt.bb
@@ -9,7 +9,7 @@ PR =3D "r4"
 # Qt4 could NOT be built on MIPS64 with 64 bits userspace
 COMPATIBLE_HOST_mips64 =3D "null"
=20
-inherit packagegroup distro_features_check
+inherit packagegroup features_check
=20
 # The quicky and fotowall requires x11 in DISTRO_FEATURES
 REQUIRED_DISTRO_FEATURES =3D "x11"
diff --git a/recipes-qt4/packagegroups/packagegroup-qt-toolchain-target.bb =
b/recipes-qt4/packagegroups/packagegroup-qt-toolchain-target.bb
index 772c151..7e6f839 100644
--- a/recipes-qt4/packagegroups/packagegroup-qt-toolchain-target.bb
+++ b/recipes-qt4/packagegroups/packagegroup-qt-toolchain-target.bb
@@ -4,7 +4,7 @@ QTLIBPREFIX =3D ""
=20
 require packagegroup-qt-toolchain-target.inc
=20
-inherit distro_features_check
+inherit features_check
 # depends on qt4-x11-free
 REQUIRED_DISTRO_FEATURES =3D "x11"
=20
diff --git a/recipes-qt4/recipes-python/python-pyqt_4.12.bb b/recipes-qt4/r=
ecipes-python/python-pyqt_4.12.bb
index bc51d5b..5ff8a61 100644
--- a/recipes-qt4/recipes-python/python-pyqt_4.12.bb
+++ b/recipes-qt4/recipes-python/python-pyqt_4.12.bb
@@ -18,7 +18,7 @@ S =3D "${WORKDIR}/PyQt4_gpl_x11-${PV}"
=20
 PARALLEL_MAKE =3D ""
=20
-inherit qmake2 pythonnative python-dir distro_features_check
+inherit qmake2 pythonnative python-dir features_check
 # depends on qt4-x11-free
 REQUIRED_DISTRO_FEATURES =3D "x11"
=20
--=20
2.26.2

CONFIDENTIALITY NOTICE:

This e-mail transmission and any documents, files or previous e-mail messag=
es attached to it may contain information that is=20
confidential, protected by the attorney/client or other privileges, and may=
 constitute non-public information. It is intended to be
conveyed only to the designated recipient(s) named above.=20

Any unauthorized use, reproduction, forwarding, distribution or other disse=
mination of this transmission is strictly prohibited and=20
may be unlawful. If you are not an intended recipient of this e-mail transm=
ission, please notify the sender by return e-mail and permanently
delete any record of this transmission. Your cooperation is appreciated.

--MCBoundary=_12010161552041521
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><style type=3D"text/css">.style1 {font-family: "Times New Roman=
";}</style></head><body>This patch removes the deprecated distro_features_c=
heck and adds meta-python2 as a dependent layer.<BR>
Compability is now limited to dunfell.<BR>
<BR>
Signed-off-by: Michael Davis &lt;michael.davis@essvote.com&gt;<BR>
---<BR>
 classes/qt4x11.bbclass                                        | 2 +-<BR>
 conf/layer.conf                                               | 3 ++-<BR>
 recipes-qt4/images/core-image-lsb-qt4.bb                      | 2 +-<BR>
 recipes-qt4/packagegroups/packagegroup-core-qt.bb             | 2 +-<BR>
 recipes-qt4/packagegroups/packagegroup-qt-toolchain-target.bb | 2 +-<BR>
 recipes-qt4/recipes-python/python-pyqt_4.12.bb                | 2 +-<BR>
 6 files changed, 7 insertions(+), 6 deletions(-)<BR>
<BR>
diff --git a/classes/qt4x11.bbclass b/classes/qt4x11.bbclass<BR>
index 6f06d34..7f65d81 100644<BR>
--- a/classes/qt4x11.bbclass<BR>
+++ b/classes/qt4x11.bbclass<BR>
@@ -4,7 +4,7 @@ DEPENDS_prepend =3D &quot;${QT4DEPENDS}&quot;<BR>
 # depends on qt4-x11<BR>
 REQUIRED_DISTRO_FEATURES +=3D &quot;x11&quot;<BR>
 <BR>
-inherit qmake2 distro_features_check<BR>
+inherit qmake2 features_check<BR>
 <BR>
 QT_BASE_NAME =3D &quot;qt4&quot;<BR>
 QT_DIR_NAME =3D &quot;qt4&quot;<BR>
diff --git a/conf/layer.conf b/conf/layer.conf<BR>
index c8d31bb..ab30e58 100644<BR>
--- a/conf/layer.conf<BR>
+++ b/conf/layer.conf<BR>
@@ -8,4 +8,5 @@ BBFILE_COLLECTIONS +=3D &quot;qt4-layer&quot;<BR>
 BBFILE_PATTERN_qt4-layer =3D &quot;^${LAYERDIR}/&quot;<BR>
 BBFILE_PRIORITY_qt4-layer =3D &quot;6&quot;<BR>
 <BR>
-LAYERSERIES_COMPAT_qt4-layer =3D &quot;thud warrior zeus&quot;<BR>
+LAYERSERIES_COMPAT_qt4-layer =3D &quot;dunfell&quot;<BR>
+LAYERDEPENDS_qt4-layer =3D &quot;meta-python2&quot;<BR>
diff --git a/recipes-qt4/images/core-image-lsb-qt4.bb b/recipes-qt4/images/=
core-image-lsb-qt4.bb<BR>
index 03d27f8..c5c8f2b 100644<BR>
--- a/recipes-qt4/images/core-image-lsb-qt4.bb<BR>
+++ b/recipes-qt4/images/core-image-lsb-qt4.bb<BR>
@@ -9,5 +9,5 @@ IMAGE_INSTALL =3D &quot;\<BR>
 <BR>
 inherit core-image<BR>
 <BR>
-inherit distro_features_check<BR>
+inherit features_check<BR>
 REQUIRED_DISTRO_FEATURES =3D &quot;x11&quot;<BR>
diff --git a/recipes-qt4/packagegroups/packagegroup-core-qt.bb b/recipes-qt=
4/packagegroups/packagegroup-core-qt.bb<BR>
index b7de69e..1989646 100644<BR>
--- a/recipes-qt4/packagegroups/packagegroup-core-qt.bb<BR>
+++ b/recipes-qt4/packagegroups/packagegroup-core-qt.bb<BR>
@@ -9,7 +9,7 @@ PR =3D &quot;r4&quot;<BR>
 # Qt4 could NOT be built on MIPS64 with 64 bits userspace<BR>
 COMPATIBLE_HOST_mips64 =3D &quot;null&quot;<BR>
 <BR>
-inherit packagegroup distro_features_check<BR>
+inherit packagegroup features_check<BR>
 <BR>
 # The quicky and fotowall requires x11 in DISTRO_FEATURES<BR>
 REQUIRED_DISTRO_FEATURES =3D &quot;x11&quot;<BR>
diff --git a/recipes-qt4/packagegroups/packagegroup-qt-toolchain-target.bb =
b/recipes-qt4/packagegroups/packagegroup-qt-toolchain-target.bb<BR>
index 772c151..7e6f839 100644<BR>
--- a/recipes-qt4/packagegroups/packagegroup-qt-toolchain-target.bb<BR>
+++ b/recipes-qt4/packagegroups/packagegroup-qt-toolchain-target.bb<BR>
@@ -4,7 +4,7 @@ QTLIBPREFIX =3D &quot;&quot;<BR>
 <BR>
 require packagegroup-qt-toolchain-target.inc<BR>
 <BR>
-inherit distro_features_check<BR>
+inherit features_check<BR>
 # depends on qt4-x11-free<BR>
 REQUIRED_DISTRO_FEATURES =3D &quot;x11&quot;<BR>
 <BR>
diff --git a/recipes-qt4/recipes-python/python-pyqt_4.12.bb b/recipes-qt4/r=
ecipes-python/python-pyqt_4.12.bb<BR>
index bc51d5b..5ff8a61 100644<BR>
--- a/recipes-qt4/recipes-python/python-pyqt_4.12.bb<BR>
+++ b/recipes-qt4/recipes-python/python-pyqt_4.12.bb<BR>
@@ -18,7 +18,7 @@ S =3D &quot;${WORKDIR}/PyQt4_gpl_x11-${PV}&quot;<BR>
 <BR>
 PARALLEL_MAKE =3D &quot;&quot;<BR>
 <BR>
-inherit qmake2 pythonnative python-dir distro_features_check<BR>
+inherit qmake2 pythonnative python-dir features_check<BR>
 # depends on qt4-x11-free<BR>
 REQUIRED_DISTRO_FEATURES =3D &quot;x11&quot;<BR>
 <BR>
-- <BR>
2.26.2<BR>

<br><br><p style=3D"font-family: Verdana; font-size:10pt; color:#666666;"><=
b>
CONFIDENTIALITY NOTICE:</b></p><p style=3D"font-family: Verdana; font-size:=
8pt; color:#666666;">This e-mail transmission and any documents, files or p=
revious e-mail messages attached to it may contain information that is conf=
idential, protected by the attorney/client or other privileges, and may con=
stitute non-public information. It is intended to be conveyed only to the d=
esignated recipient(s) named above.<br><br>Any unauthorized use, reproducti=
on, forwarding, distribution or other dissemination of this transmission is=
 strictly prohibited and may be <b>unlawful.</b> If you are not an intended=
 recipient of this email transmission, please notify the sender by return e=
-mail and permanently delete any record of this transmission. Your cooperat=
ion is appreciated.


To find out more <a href=3D"http://www.essvote.com/legal/" target=3D"_blank=
">Click Here</a>.</p></body></html>

--MCBoundary=_12010161552041521--
