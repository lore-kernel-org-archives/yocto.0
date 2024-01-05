Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DA60C3DA6E
	for <webhook@archiver.kernel.org>; Fri,  5 Jan 2024 06:58:54 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.18658.1704437933538728162
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Jan 2024 22:58:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=BJ34LYIk;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=17340c1dbd=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40569ELS007274;
	Fri, 5 Jan 2024 06:58:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=tiCm9o/r4QbuK8C3u0
	vBzS5szivNXhQ4CMZ9m6QL4GE=; b=BJ34LYIkR8YlGsjszvKSeh5ycLL7d4fpIG
	+HlfDfJgbmxsQHWGvwnOTi3tNXeDNu6UWVPXF0rDLtBySE+H6XLBi5zEAOO9hSED
	BHhaihzAutzxOC5JZcLEbEytD35kwzNQWf06XwSj8XPfDWSh+x8xzUEFLu75sbOE
	qEmT515yDEHZ4O6vMjSV//Wgc7sfZM47LtRY3T+lxFjQ4YGB4+2DIIMr8AwrA0lj
	j+G2P68t/TKvZiIiD/lPWxUi7TQmwq10f2MogekcoyQmHy0YDFMHobQectgp4oOv
	4ptktzKJle3nmocK4wsRf0+UOTEqchJV/atopKdC8bBeCrBQhFrA==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ve1gu8k38-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Jan 2024 06:58:51 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HK6AJdECnjxDrGwbvGtm6rtKK506Bpsnql/gIAebxmacZ8Yy6w0ZzgdzswgvZst3wQbihQ4ToxjmHOTA/Dh+KvpuBsCZIMOX8SpL9AN5YTZetBKZSCKuCwKmociCVHobChtUjYGed7aq1WqbNtcn8rrfqBW74CY9iqFt4/eS+bnggYILKd7odoaKH3fHvg6CAXJ4ZYC86s3yVyAzuSytcVv+iixHOsvv6ol3ACWZEKHGSCHfW5wTjbbRILRzg4GjjevvNOpail/xKAYLlog2VjBsgD9gpWG4ovFk1adhVkF4A3YnP772cU8998NoYhXI7dTc2XoqtJPhBPcT+wWClg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tiCm9o/r4QbuK8C3u0vBzS5szivNXhQ4CMZ9m6QL4GE=;
 b=WVIDE0kB2MHApI7wZNs7cUs6rp75cVNa1hMOuMnGnaswLjKmDJznLRbopwJn9s3hlIt8vmVUuvF1V9HwidZ+ae4zYG7cMda4WdJdoNFdyHl47gGzIIDbXSLKMHhS2NnGORu0hRkIrSJiaHVknvQNVetlZrqYgn51Gd/k2Tw0Sax/vQCoqLb/KPwVOAU4VF+iCMvS2h8i3uFr92XWTrzfkYI62nBLaQC5t7YmCJPWIYIxcEWXnuc6lakAorawkZ0yZ/wTe1/kMyFlUicc80OIPMI8pN5whaA0AaDnBkTMHmJfkxX0YtiJQkHZ0JNmvhocDeNL5jRP1FmYBdBqMtTWbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by BL1PR11MB5512.namprd11.prod.outlook.com (2603:10b6:208:314::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.16; Fri, 5 Jan
 2024 06:58:46 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7159.015; Fri, 5 Jan 2024
 06:58:46 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH] libselinux-python: add recipe
Date: Fri,  5 Jan 2024 14:58:34 +0800
Message-Id: <20240105065834.3868016-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0053.apcprd02.prod.outlook.com
 (2603:1096:4:196::16) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|BL1PR11MB5512:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c79751d-6163-4863-587a-08dc0dbbc2db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Jyq//ztgGPePTvlr4P5Y6FHfsDcDQPe2IWWy4I3LsIKQb3t4ebc4f1vwVeJyutt1zvHYzZ4kBTkgQTYRX3K6UKcWPdhsYZS+yjE5As+cyqBIKUvJCxTK6vAKtNsvKoAF+dxIzvIkpWob1G63b0smWLKfB1JOZeej/laraRtUrJNl/jDqEt/s+BmEzNSWOH+e4HpkloXGgt1SBcMXpc2MCp6+Y6+bpcq0qIc7QGVx0Ta5oMjMmqvpGBqm09oaRrqUwiU7F7xFoZqlffVFWjlf+lXKli9Msh3ut+MbnbeKR3+beUwDVSVr6qir7srhpebu7UQSbrLlCmzyL58xhorSGIg+yfGgTkdNBKpDRwB8ccdiLlRj66il5PH+xGf2+ey4h5cUwrrVw2F61LwHGSdkU7c1IvmYaFjLWIzItQfK7A1y0/XWcjajE1hTtre8Wp8KoOCkrzlgpxhabd6SXAbzMBpEhl7lyf+voRLYmaIghaEHk/qvTn9Z8sF9z+Piuzdrx2Xniv3opmqfdleZh8jwok2bLwZ+A+0Kek1k3QHXvuxwpabcZuS/FoN6tBwbMFiRWUSIXZI7GC30mbPxWp0bZ4hr/NBqXAMUiKQZmQlF4SQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(366004)(396003)(39850400004)(346002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(2906002)(2616005)(26005)(1076003)(83380400001)(52116002)(6512007)(966005)(478600001)(6486002)(41300700001)(66476007)(8936002)(316002)(36756003)(8676002)(66946007)(66556008)(44832011)(6506007)(38100700002)(86362001)(6666004)(5660300002)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?o6LPJzbJoGLIFh5zoKi/w20n6IVSX5qpUIjWG3t1dANvDklF2tSLZ5ffLd5s?=
 =?us-ascii?Q?kMSlVL+qMWuJSSuc//NMIZl75D5tO0cFNnBMFnw1urtjBzzyX7KbQ7EZQK9r?=
 =?us-ascii?Q?mN49gMl7Qo82t1W6RPnlY77762fheZhFntQR7qRD+73Um5/3IcYqb8E2+2rR?=
 =?us-ascii?Q?OwRaSgVyJi3vniu674GMZs3mKy9INH3xGdWzs+oV3uTLMmKhOqMrsqjogNz9?=
 =?us-ascii?Q?TNxVNwGsiNNLOr90mg+6oRYy45ea+z87mdr7wyjY7iKSCVCrfT3EaC6FQst5?=
 =?us-ascii?Q?d6riRugaQY5ZZ/XMCdzCZRlfyErsULFQAlNbw0a/PGZeo9G5q70Y6W9XzJAS?=
 =?us-ascii?Q?Sv65yiqjwf10/NYlBUKEKm4VrbjBLAm7lxMKk8L1oRe7LgVJWWzodZOooPTS?=
 =?us-ascii?Q?zemUqkANRVafl3VCAQHlwL3rmZUV9tbexlitMNQIgrYhObed3loQs2aF2LEg?=
 =?us-ascii?Q?NQVSvYPvkH0nQWs44XYyutcbgwTahUdw49vvnf93INflWmPllv+yaTDhKfMX?=
 =?us-ascii?Q?r5bjcXXVif9u9XlUzdTku0o2MUVJoP5ilrylsp1j+VLfGGWHynoMN2uKy+ji?=
 =?us-ascii?Q?9lGIx5fOU9ezibFGt6pAOBYNC1ykSmBn7A9FOE2h6ggIBoJRMTVd3hJj9GFV?=
 =?us-ascii?Q?7Xvk8BEx3//9dRKudo7Ha41GBTe/0ushbmpK98oInzuZihe8on/SZVll4g3Q?=
 =?us-ascii?Q?8nbVHyHfzo7pocMw0MEvY1BoxyOmWHo6Y+KmfQnHGctYKcq40zqPTenWKV6g?=
 =?us-ascii?Q?RgOSTRE1sa/qCgpqrpKHzYGly/2/qGOrJhIzMLQFuWG6veLP5cPwZsIGh14k?=
 =?us-ascii?Q?FRNutxTG9MtrFL+Rbj0QDe9PYEsVu1nSbfnpB2C5rOAxesuy5f7KDHdGkpZP?=
 =?us-ascii?Q?o1hvZnFMlagW7pGP6E3tLC+NvpmUDs0n2sOW9ppClGiP1a62XVfFIn7P9AMG?=
 =?us-ascii?Q?XAkxixBFU96UKLHPST9x+aHY00FumiVrGYdNvQ3QJ3fdgc3584dG/+B/yxmp?=
 =?us-ascii?Q?fZFWXI3KssSoCreEcs489Qc9dJ81Q7dVvSOlx1sDkJe2f6XI2B98+9sBTfSw?=
 =?us-ascii?Q?z1JGlzByLcg/xMDgYid+N0dlbxQe1ERH+oK6aJWDp7nO0W51toHLXUPkYelB?=
 =?us-ascii?Q?5Jg6W0qKkAlZInEwmKqAHnvUxRKMZ5632yacAE0Q6GjGK7/zLxBIEaOvCgDt?=
 =?us-ascii?Q?Kfl16TXFcHyteiEWDRrmkfMGUgOznE9Hz7F7ho4Nima3qiUnSU23uLR/gIGr?=
 =?us-ascii?Q?psy9H8exKCnxeMAeuhl+mUBo5EN9lkzTqMWHib8NkfXMumGol2kgsRkLJo92?=
 =?us-ascii?Q?RXyu0fffdbEwYrH4cLwbuDxaALFsWpvD0MgpejOaXonpXKEO9CJG9LkvBYaB?=
 =?us-ascii?Q?hYrW8xZrzD5GVIZ6yaMrxk/4AAfhkdFQ5J5qx5M0Ohd1lnpd2enqgPzEFlMv?=
 =?us-ascii?Q?phE6yQcOrqCn/h85vc3dFxOLAHQj9lA+99UUGcW7MrlK5MQ9XrCzz01m9tVq?=
 =?us-ascii?Q?5oO1zAUomRxLzeQcFiTPwPlHHhCbXmsjths9OvZQy6KcXCjWDY8Iub4AGbq+?=
 =?us-ascii?Q?/I4IhpetsP2ewccxqh3p9LUVLoLTd9z+pqX89A4N?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c79751d-6163-4863-587a-08dc0dbbc2db
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2024 06:58:46.0748
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OQ2Zxhv7QrnyrotWLILcIqtpCcLoFBlUWO50o6Kx2sHOt1eYmng+DosmIQFcJfLvkfviscqa0AolNL1tBj6Cgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5512
X-Proofpoint-GUID: HV9kEEly65Ykjzkr-kn_X0AaomH5Kp13
X-Proofpoint-ORIG-GUID: HV9kEEly65Ykjzkr-kn_X0AaomH5Kp13
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 priorityscore=1501 mlxscore=0 suspectscore=0 phishscore=0 bulkscore=0
 spamscore=0 mlxlogscore=809 impostorscore=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2401050058
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Jan 2024 06:58:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62094

We merged libselinux recipe and libselinux-python recipe in commit[1]
because we thought the circular dependency was gone. But unfortunately,
it still exists.

Here are the steps to reproduce:
$ echo "DISTRO_FEATURES:append = \" x11\"" >> conf/local.conf
$ echo "PACKAGECONFIG:append:pn-python3 = \" tk\"" >> conf/local.conf
$ bitbake core-image-selinux -n

So we still need to split the libselinux recipe into two recipes:
libselinux and libselinux-python.

[1] https://git.yoctoproject.org/meta-selinux/commit/?id=62b9c816a5000dc01b28e78213bde26b58cbca9d

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...elinux_3.6.bb => libselinux-python_3.6.bb} | 19 +++++-------
 recipes-security/selinux/libselinux_3.6.bb    | 31 ++-----------------
 2 files changed, 10 insertions(+), 40 deletions(-)
 copy recipes-security/selinux/{libselinux_3.6.bb => libselinux-python_3.6.bb} (85%)

diff --git a/recipes-security/selinux/libselinux_3.6.bb b/recipes-security/selinux/libselinux-python_3.6.bb
similarity index 85%
copy from recipes-security/selinux/libselinux_3.6.bb
copy to recipes-security/selinux/libselinux-python_3.6.bb
index dab4965..3c5c489 100644
--- a/recipes-security/selinux/libselinux_3.6.bb
+++ b/recipes-security/selinux/libselinux-python_3.6.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
 require selinux_common.inc
 
-inherit lib_package pkgconfig python3targetconfig
+inherit python3targetconfig pkgconfig
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/libselinux:"
 SRC_URI += "\
@@ -22,6 +22,8 @@ S = "${WORKDIR}/git/libselinux"
 DEPENDS = "libsepol libpcre2 swig-native python3-setuptools-scm-native"
 DEPENDS:append:libc-musl = " fts"
 
+RDEPENDS:${PN} = "libselinux python3-core python3-shell"
+
 def get_policyconfigarch(d):
     import re
     target = d.getVar('TARGET_ARCH')
@@ -32,14 +34,17 @@ def get_policyconfigarch(d):
 EXTRA_OEMAKE = "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE:append:libc-musl = " FTS_LDLIBS=-lfts"
 
-do_compile:append() {
+FILES:${PN} = "${PYTHON_SITEPACKAGES_DIR}/*"
+INSANE_SKIP:${PN} = "dev-so"
+
+do_compile() {
     oe_runmake pywrap -j1 \
         PYLIBVER='python${PYTHON_BASEVERSION}' \
         PYINC='-I${STAGING_INCDIR}/${PYLIBVER}' \
         PYLIBS='-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
 }
 
-do_install:append() {
+do_install() {
     oe_runmake install-pywrap \
         DESTDIR=${D} \
         PREFIX=${prefix}
@@ -50,11 +55,3 @@ do_install:append() {
     sed -i -e 's,${WORKDIR},,g' \
         ${D}${PYTHON_SITEPACKAGES_DIR}/selinux-${PV}.dist-info/direct_url.json
 }
-
-PACKAGES += "${PN}-python"
-RDEPENDS:${PN}-python = "python3-core python3-shell"
-
-FILES:${PN}-python = "${PYTHON_SITEPACKAGES_DIR}/*"
-INSANE_SKIP:${PN}-python = "dev-so"
-
-BBCLASSEXTEND = "native"
diff --git a/recipes-security/selinux/libselinux_3.6.bb b/recipes-security/selinux/libselinux_3.6.bb
index dab4965..b0dcde6 100644
--- a/recipes-security/selinux/libselinux_3.6.bb
+++ b/recipes-security/selinux/libselinux_3.6.bb
@@ -8,18 +8,16 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
 require selinux_common.inc
 
-inherit lib_package pkgconfig python3targetconfig
+inherit lib_package pkgconfig
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/libselinux:"
 SRC_URI += "\
-        file://0001-Makefile-fix-python-modules-install-path-for-multili.patch \
-        file://0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch \
         file://0003-libselinux-restore-drop-the-obsolete-LSF-transitiona.patch \
         "
 
 S = "${WORKDIR}/git/libselinux"
 
-DEPENDS = "libsepol libpcre2 swig-native python3-setuptools-scm-native"
+DEPENDS = "libsepol libpcre2"
 DEPENDS:append:libc-musl = " fts"
 
 def get_policyconfigarch(d):
@@ -32,29 +30,4 @@ def get_policyconfigarch(d):
 EXTRA_OEMAKE = "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE:append:libc-musl = " FTS_LDLIBS=-lfts"
 
-do_compile:append() {
-    oe_runmake pywrap -j1 \
-        PYLIBVER='python${PYTHON_BASEVERSION}' \
-        PYINC='-I${STAGING_INCDIR}/${PYLIBVER}' \
-        PYLIBS='-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
-}
-
-do_install:append() {
-    oe_runmake install-pywrap \
-        DESTDIR=${D} \
-        PREFIX=${prefix}
-        PYLIBVER='python${PYTHON_BASEVERSION}' \
-        PYTHONLIBDIR='${PYTHON_SITEPACKAGES_DIR}'
-
-    # Fix buildpaths issue
-    sed -i -e 's,${WORKDIR},,g' \
-        ${D}${PYTHON_SITEPACKAGES_DIR}/selinux-${PV}.dist-info/direct_url.json
-}
-
-PACKAGES += "${PN}-python"
-RDEPENDS:${PN}-python = "python3-core python3-shell"
-
-FILES:${PN}-python = "${PYTHON_SITEPACKAGES_DIR}/*"
-INSANE_SKIP:${PN}-python = "dev-so"
-
 BBCLASSEXTEND = "native"
-- 
2.25.1


