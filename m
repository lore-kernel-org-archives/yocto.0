Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.5156.1624439722167840709
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 02:15:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=em8hVHy8;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=18086a9b12=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15N9ERYw023442
	for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 09:15:21 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2043.outbound.protection.outlook.com [104.47.66.43])
	by mx0a-0064b401.pphosted.com with ESMTP id 39bdsc8v6k-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 09:15:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pq0dKsJK7mIcMqEbkQPis1w1CS2q0LhA56UBm4gzcst085h4VpdYwtGZgJ3pu3fNuZsPsuczXTu234ukwrJN+wx586uf8wssZAiRAp5hOYntiNPgIJTlGfEXB3Vq6z3CARFqSAb3obbVVbuEcjuhA3heG/fIyOyEGjV+ahF3cg+5Cd09UNqIlrfGAR6O1grw+X2k69M2sH4I2uM2+smVYKrzfmXLAzGCARlIUxk8AxRgoigE3a2mvuGDxJ39qADtCGuCcjBQgAfoy8DNJ+9uoVRKgIWRMIJCz74ipPzHluNbXFq8jh9LN8ItBqtr3Fkb+au2J7+G4Qn7AcizOWX1nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q3w4hiqqwEJpbqBzHYQnsQVuNJIfvLRs0LX9eH2zO64=;
 b=XfTj4idhRIIbwquXf3AsvVObbRtfPVBUUvlBR8M3VZsaeD+Gy5n/inFQn13PD7n+tOu4HhCLZUQ/elyym/93MtPo1xW9fpC+RkOnBZ9NDVdaa8FcQxp4rKcQCTfULzbynhjb925528HbdORq8FirAIAVXr4Ud8E7xlOu8DvTYuffevtaEg+OYOTi5VE08602cb+D8beLGbOUiC4qnwa75nYNmfOADvW+VJRIVRJGza/Qo4PoLKxNaBMiEnGUutY266+8VRcxZ3Fw1VYuszDlFTmh3jYOGqWJdLfNUlXcc6+MZRp/GcLQw1a/2dsvs+gixzZLpTP7TbzV1OgtWKMjrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q3w4hiqqwEJpbqBzHYQnsQVuNJIfvLRs0LX9eH2zO64=;
 b=em8hVHy8Kg128Z5lhB8jxAO+8WClRAoMeU1KvzGf8lkcJit9zs6REgeDwsJ9qP3itluebw1jcQX1d/QXeRE2L2GXG/NRqRYoeEC/Dk0odNilpHxzjIIa8+joJLuRRNsIFDimLbjqy+DoS/N2/PyKHvZeKIFdWn65AiGisHw+os8=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.22; Wed, 23 Jun
 2021 09:15:18 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::91f4:8d17:8e0d:a122]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::91f4:8d17:8e0d:a122%8]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 09:15:18 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] apparmor: use its own initscript and service files
Date: Wed, 23 Jun 2021 17:15:04 +0800
Message-Id: <20210623091504.1283317-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210623091504.1283317-1-yi.zhao@windriver.com>
References: <20210623091504.1283317-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR03CA0102.apcprd03.prod.outlook.com
 (2603:1096:203:b0::18) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0102.apcprd03.prod.outlook.com (2603:1096:203:b0::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Wed, 23 Jun 2021 09:15:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 46e16c94-8692-4179-1d9e-08d936276b19
X-MS-TrafficTypeDiagnostic: MW3PR11MB4556:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB4556735CA3C26C329264E39EF9089@MW3PR11MB4556.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	b6QehePqSEus0CmQwzlps/tDxBKCFtdzqMOIibtqO/RaMMLicztjZuC06C8u5aTOm8VhD7BLAeZRtZzilqmGcC5G8zvrY3zYNWKiwTL5vIRM5w8c63AMHVxLaySwM9F5xNKTwScatVbF8MXzAZHiXr8jS20uM0Ye7WwENV/4SDmTK4uBtU9KV56HXjkQrAYfIfAbAtdDhWXX2hqoh2YvqT7Op8Obvf94PLTiqe6/5GRIDYt4m5IFqAywKRGpChQh1zV582/djXB6HqgRjwgPocTK7TYLRiqiTyL+cNORqwox64KAUla/tyZ+ooOSdlvnKGlPzLpYnuepcT1mNnyYT7BkVyPfMkvPqgGQr2b9dA9LlZ0nWFtE7CTtdcMEHoIWP3aIefVX4/J/Xe01yhSIqAmUIvLJyUBCY8Gbq/I1y3SSEhSkhhc/6uvEH2uYppAXHO7zIbqlpdEKhlQWT+d+4bpRxqcRHkaST8SkKiRHMDNZmgqJUdnoT3nlpSCm++xqbY7We8oXxVjlmhjkTY/i5Iu3BFT0zX8rIKHCUgjy+KYCtOtqdVZako3/jv2+73NlgnbZtKokO3RDTf2VjBKd3ehA41uwUZQuCBgY09FmPlSXq5Te3AXP7xqo98gw9knSeu860/bJFi2Yl7VvBdrSCzwN3eI2zSz7Q/9ZmpcMHeCzMs7w3E22COMA0ZPjZTYVpIdTvaEMumH4wmCVnRAWFxLp8lcN6VqHOlZtvxjP0QnRyP18ZUzvmC2YDDtSfb1vJcyYQM34yeM9xqy2fROH3HuXveTZBgjCK6Qn0o8y3c4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39840400004)(376002)(396003)(366004)(346002)(136003)(66946007)(19627235002)(52116002)(30864003)(2616005)(66556008)(44832011)(6916009)(5660300002)(956004)(66476007)(86362001)(1076003)(478600001)(36756003)(6666004)(6512007)(83380400001)(8676002)(316002)(26005)(2906002)(38350700002)(6506007)(15650500001)(8936002)(38100700002)(16526019)(186003)(6486002)(2004002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?BIeWVuLUETewnnStBNeew47uVTld+qgFyhi2oqrGK7mheV05LdHF+QYPaSY9?=
 =?us-ascii?Q?Qbo0aO1HwLu3kJ+sMVV27TSOJ+xEQUBBd/hH35U5tTxJhuUcX0CujHi1YcxD?=
 =?us-ascii?Q?86mNxiop7MMA59McXWvuqoPD6jSEu5lZy2W8QAVx+kEt+Gc6VS5QMK3Qyzxw?=
 =?us-ascii?Q?+XHfWJ2OBL9F9uAh2r4yosGEfXmTB6KqRO5IwmNOsvaqQB1lHL4svzc0poj0?=
 =?us-ascii?Q?5k3drLMCXuQDxOJtTFKEjdk53fQlXu+kiZwbP6szAJUCl54blkyDZOyJuNYr?=
 =?us-ascii?Q?ttZ8d7wygeaho+xSsgOS6k5NRqbiNl4UR08nPVb9PmtGA+xK6smbewAN8oNB?=
 =?us-ascii?Q?LPm1rByV3jQjrzw1q2iOqBooL33Yo/6hOzfD8mRyjg6/3JqwUb+9RbD8IYrH?=
 =?us-ascii?Q?xg6Nzmo/TrB8qMFZXzRl1OwQ7yi/6HG8SCQ+UrvOAqykJP6/way82h5lbTWj?=
 =?us-ascii?Q?z74HeKxDZrOzfUyTOqJpvr/VxOnCNcjwN8WSKYpVd/rSy/6dRH5/P7xK2NaN?=
 =?us-ascii?Q?HiEQMZ4k5pwdsjl79x1LkZatr9l25ALCoR/Mk4q7+DiLhpU6LXBgEj+ofKZL?=
 =?us-ascii?Q?w9Z9RBUl0Ba61toG52ZHzh/a7axlLou8B9Qh93bw76hBK1q+Zkg1EsIDksCw?=
 =?us-ascii?Q?Jb8TmIg09KbmuDYSHDZNfqQ1YJDPHJL+fOVS5yd1OJB55kf7FiXacuNdTQxG?=
 =?us-ascii?Q?YpcllauEzpPPNTrXSmYj96EoJNBgznEG+71+TgsYEbGRQVqJDua5GDmOnKce?=
 =?us-ascii?Q?EDt54HVp30tSf36dGbi9INQ/7YfmUz2Q4WEsh59EznMxZEtzb/SsBbSrqGw1?=
 =?us-ascii?Q?TkxGfOHqYHJMmuht5k+jLpjVmAGh7O8Z/zIhd0tjQjqN2+EksChaM7Y9Mxz+?=
 =?us-ascii?Q?auMlQVXU8heo4xE+vPVWSGSCQ3L9LBnyoc0DFQ42hQ0ULLtP0CGfPuHuSgom?=
 =?us-ascii?Q?Ed8l3kx1RTyPvCzwcm0Gssxu31+h+itzgr4/MWlWHSiS6XUujpDIvC8H0w4H?=
 =?us-ascii?Q?NhSSBPN1w4aN1mpo4UaD3TSF/gmk8HOBqNVwWd92/sa72yxzbnaKO/feBmrP?=
 =?us-ascii?Q?MqKxYGnMlccBjEtJLLgsEVm7nvN70x63GXHJa65Ul3pA+pSMNWW3+5zjOw2h?=
 =?us-ascii?Q?KawWAWHx/QtVDZl2BZ8LH93nYy0dL7wBtgx+r+vHHJg5wLi0NmuxrJuftHQu?=
 =?us-ascii?Q?gED1GY9SjcqdyOet8a4k88h05AEWPhDWlx8/SXLaOwAVZMl5oDIb83hjYBbh?=
 =?us-ascii?Q?/aFEbBsLt/hpLHISX/p8fg4IS3xw5jmZzkt7OxsM/rZzki2Bkl3Y5Gm1Jb8o?=
 =?us-ascii?Q?U/hTrG1ZcHOHMgoA48iBEZC2?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46e16c94-8692-4179-1d9e-08d936276b19
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 09:15:18.0517
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rcmYyQmu2NIL/wbScYVLI5NYDezWrtxwHTPuBvW3ZWUpnRFQDx62ZqVyMpcMZNoVNj1fhIpv4Eq5nrc9JqErCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
X-Proofpoint-ORIG-GUID: oBuk8IGxeL6IY9_sMmfyt48-vdgazObq
X-Proofpoint-GUID: oBuk8IGxeL6IY9_sMmfyt48-vdgazObq
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-23_03:2021-06-22,2021-06-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 mlxscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0 phishscore=0
 clxscore=1015 priorityscore=1501 suspectscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106230055
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Use initscript and service files provided by apparmor.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-mac/AppArmor/apparmor_3.0.1.bb        |  33 +--
 ...x-hardcoded-installation-directories.patch |  51 ++++
 ...pparmor.debian-add-missing-functions.patch |  57 ++++
 recipes-mac/AppArmor/files/apparmor           | 226 ---------------
 recipes-mac/AppArmor/files/apparmor.rc        |  98 -------
 recipes-mac/AppArmor/files/apparmor.service   |  22 --
 recipes-mac/AppArmor/files/functions          | 271 ------------------
 7 files changed, 118 insertions(+), 640 deletions(-)
 create mode 100644 recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
 create mode 100644 recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
 delete mode 100644 recipes-mac/AppArmor/files/apparmor
 delete mode 100644 recipes-mac/AppArmor/files/apparmor.rc
 delete mode 100644 recipes-mac/AppArmor/files/apparmor.service
 delete mode 100644 recipes-mac/AppArmor/files/functions

diff --git a/recipes-mac/AppArmor/apparmor_3.0.1.bb b/recipes-mac/AppArmor/apparmor_3.0.1.bb
index 6377683..ff5b39b 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.1.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.1.bb
@@ -15,15 +15,13 @@ DEPENDS = "bison-native apr gettext-native coreutils-native swig-native"
 
 SRC_URI = " \
     git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-3.0 \
+    file://run-ptest \
     file://disable_perl_h_check.patch \
     file://crosscompile_perl_bindings.patch \
-    file://apparmor.rc \
-    file://functions \
-    file://apparmor \
-    file://apparmor.service \
     file://0001-Makefile.am-suppress-perllocal.pod.patch \
-    file://run-ptest \
     file://0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch \
+    file://0001-Makefile-fix-hardcoded-installation-directories.patch \
+    file://0001-rc.apparmor.debian-add-missing-functions.patch \
     "
 
 SRCREV = "b0f08aa9d678197b8e3477c2fbff790f50a1de5e"
@@ -79,8 +77,6 @@ do_compile () {
 }
 
 do_install () {
-    install -d ${D}/${INIT_D_DIR}
-    install -d ${D}/lib/apparmor
     oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" install
     oe_runmake -C ${B}/binutils DESTDIR="${D}" install
     oe_runmake -C ${B}/utils DESTDIR="${D}" install
@@ -96,16 +92,16 @@ do_install () {
     fi
 
     if ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'true', 'false', d)}; then
-        install -d ${D}/lib/security
         oe_runmake -C ${B}/changehat/pam_apparmor DESTDIR="${D}" install
     fi
 
-    install -m 755 ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
-    install -m 755 ${WORKDIR}/functions ${D}/lib/apparmor
+    if ${@bb.utils.contains('DISTRO_FEATURES','sysvinit','true','false',d)}; then
+        install -d ${D}${sysconfdir}/init.d
+        install -m 755 ${B}/parser/rc.apparmor.debian ${D}${sysconfdir}/init.d/apparmor
+    fi
 
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
-        install -d ${D}${systemd_system_unitdir}
-        install -m 0644 ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
+        oe_runmake -C ${B}/parser DESTDIR="${D}" install-systemd
     fi
 }
 
@@ -152,15 +148,6 @@ do_install_ptest_arm() {
   :
 }
 
-pkg_postinst_ontarget_${PN} () {
-if [ ! -d /etc/apparmor.d/cache ] ; then
-    mkdir /etc/apparmor.d/cache
-fi
-}
-
-# We need the init script so don't rm it
-RMINITDIR_class-target_remove = " rm_sysvinit_initddir"
-
 INITSCRIPT_PACKAGES = "${PN}"
 INITSCRIPT_NAME = "apparmor"
 INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
@@ -171,9 +158,9 @@ SYSTEMD_AUTO_ENABLE ?= "enable"
 
 PACKAGES += "mod-${PN}"
 
-FILES_${PN} += "/lib/apparmor/ /lib/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages"
+FILES_${PN} += "${nonarch_base_libdir}/apparmor/ ${base_libdir}/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
-FILES_${PN}-dbg += "/lib/security/"
+FILES_${PN}-dbg += "${base_libdir}/security/.debug"
 
 DEPENDS_append_libc-musl = " fts "
 RDEPENDS_${PN}_libc-musl +=  "musl-utils"
diff --git a/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch b/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
new file mode 100644
index 0000000..f10acb1
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
@@ -0,0 +1,51 @@
+From 363114dcd72abf1c0dcd637c66037227b8be229b Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 21 Jun 2021 14:18:30 +0800
+Subject: [PATCH 1/2] Makefile: fix hardcoded installation directories
+
+Update the installation directories to fix the do_install error for
+multilib and usrmerge.
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ changehat/pam_apparmor/Makefile | 2 +-
+ parser/Makefile                 | 8 ++++----
+ 2 files changed, 5 insertions(+), 5 deletions(-)
+
+diff --git a/changehat/pam_apparmor/Makefile b/changehat/pam_apparmor/Makefile
+index f6ece2d1..0143ae9f 100644
+--- a/changehat/pam_apparmor/Makefile
++++ b/changehat/pam_apparmor/Makefile
+@@ -77,7 +77,7 @@ $(NAME).so: ${OBJECTS}
+ 
+ # need some better way of determining this
+ DESTDIR=/
+-SECDIR ?= ${DESTDIR}/lib/security
++SECDIR ?= ${DESTDIR}/${base_libdir}/security
+ 
+ .PHONY: install
+ install: $(NAME).so
+diff --git a/parser/Makefile b/parser/Makefile
+index 8250ac45..cf18bc11 100644
+--- a/parser/Makefile
++++ b/parser/Makefile
+@@ -23,10 +23,10 @@ COMMONDIR=../common/
+ include $(COMMONDIR)/Make.rules
+ 
+ DESTDIR=/
+-APPARMOR_BIN_PREFIX=${DESTDIR}/lib/apparmor
+-SBINDIR=${DESTDIR}/sbin
+-USR_SBINDIR=${DESTDIR}/usr/sbin
+-SYSTEMD_UNIT_DIR=${DESTDIR}/usr/lib/systemd/system
++APPARMOR_BIN_PREFIX=${DESTDIR}/${nonarch_base_libdir}/apparmor
++SBINDIR=${DESTDIR}/${base_sbindir}
++USR_SBINDIR=${DESTDIR}/${sbindir}
++SYSTEMD_UNIT_DIR=${DESTDIR}/${systemd_system_unitdir}
+ CONFDIR=/etc/apparmor
+ INSTALL_CONFDIR=${DESTDIR}${CONFDIR}
+ LOCALEDIR=/usr/share/locale
+-- 
+2.17.1
+
diff --git a/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch b/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
new file mode 100644
index 0000000..53bdde8
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
@@ -0,0 +1,57 @@
+From a737c95ac0f887c365fe8f16583ea95da79de1e9 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 21 Jun 2021 16:53:39 +0800
+Subject: [PATCH] rc.apparmor.debian: add missing functions
+
+Add missing functions:
+  aa_log_action_start
+  aa_log_action_end
+  aa_log_daemon_msg
+  aa_log_end_msg
+
+Fixes:
+$ /etc/init.d/apparmor start
+/lib/apparmor/rc.apparmor.functions: line 294: aa_log_daemon_msg: command not found
+/lib/apparmor/rc.apparmor.functions: line 214: aa_log_action_start: command not found
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ parser/rc.apparmor.debian | 20 ++++++++++++++++++++
+ 1 file changed, 20 insertions(+)
+
+diff --git a/parser/rc.apparmor.debian b/parser/rc.apparmor.debian
+index 8efd4400..f35124e8 100644
+--- a/parser/rc.apparmor.debian
++++ b/parser/rc.apparmor.debian
+@@ -70,6 +70,26 @@ aa_log_skipped_msg() {
+         echo ": Skipped."
+ }
+ 
++aa_log_action_start()
++{
++    echo "$@"
++}
++
++aa_log_action_end()
++{
++    printf ""
++}
++
++aa_log_daemon_msg()
++{
++    echo "$@"
++}
++
++aa_log_end_msg()
++{
++    printf ""
++}
++
+ usage() {
+     echo "Usage: $0 {start|stop|restart|try-restart|reload|force-reload|status|kill}"
+ }
+-- 
+2.17.1
+
diff --git a/recipes-mac/AppArmor/files/apparmor b/recipes-mac/AppArmor/files/apparmor
deleted file mode 100644
index 604e48d..0000000
--- a/recipes-mac/AppArmor/files/apparmor
+++ /dev/null
@@ -1,226 +0,0 @@
-#!/bin/sh
-# ----------------------------------------------------------------------
-#    Copyright (c) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007
-#     NOVELL (All rights reserved)
-#    Copyright (c) 2008, 2009 Canonical, Ltd.
-#
-#    This program is free software; you can redistribute it and/or
-#    modify it under the terms of version 2 of the GNU General Public
-#    License published by the Free Software Foundation.
-#
-#    This program is distributed in the hope that it will be useful,
-#    but WITHOUT ANY WARRANTY; without even the implied warranty of
-#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-#    GNU General Public License for more details.
-#
-#    You should have received a copy of the GNU General Public License
-#    along with this program; if not, contact Novell, Inc.
-# ----------------------------------------------------------------------
-# Authors:
-#  Steve Beattie <steve.beattie@canonical.com>
-#  Kees Cook <kees@ubuntu.com>
-#
-# /etc/init.d/apparmor
-#
-### BEGIN INIT INFO
-# Provides: apparmor
-# Required-Start: $local_fs
-# Required-Stop: umountfs
-# Default-Start: S
-# Default-Stop:
-# Short-Description: AppArmor initialization
-# Description: AppArmor init script. This script loads all AppArmor profiles.
-### END INIT INFO
-
-log_daemon_msg() {
-    echo $*
-}
-
-log_end_msg () {
-    retval=$1
-    if [ $retval -eq 0 ]; then
-        echo "."
-    else
-        echo " failed!"
-    fi
-    return $retval
-}
-
-. /lib/apparmor/functions
-
-usage() {
-    echo "Usage: $0 {start|stop|restart|reload|force-reload|status|recache}"
-}
-
-test -x ${PARSER} || exit 0 # by debian policy
-# LSM is built-in, so it is either there or not enabled for this boot
-test -d /sys/module/apparmor || exit 0
-
-securityfs() {
-	# Need securityfs for any mode
-	if [ ! -d "${AA_SFS}" ]; then
-		if cut -d" " -f2,3 /proc/mounts | grep -q "^${SECURITYFS} securityfs"'$' ; then
-			log_daemon_msg "AppArmor not available as kernel LSM."
-			log_end_msg 1
-			exit 1
-		else
-			log_daemon_msg "Mounting securityfs on ${SECURITYFS}"
-			if ! mount -t securityfs none "${SECURITYFS}"; then
-				log_end_msg 1
-				exit 1
-			fi
-		fi
-	fi
-	if [ ! -w "$AA_SFS"/.load ]; then
-		log_daemon_msg "Insufficient privileges to change profiles."
-		log_end_msg 1
-		exit 1
-	fi
-}
-
-handle_system_policy_package_updates() {
-	apparmor_was_updated=0
-
-	if ! compare_previous_version ; then
-		# On snappy flavors, if the current and previous versions are
-		# different then clear the system cache. snappy will handle
-		# "$PROFILES_CACHE_VAR" itself (on Touch flavors
-		# compare_previous_version always returns '0' since snappy
-		# isn't available).
-		clear_cache_system
-		apparmor_was_updated=1
-	elif ! compare_and_save_debsums apparmor ; then
-		# If the system policy has been updated since the last time we
-		# ran, clear the cache to prevent potentially stale binary
-		# cache files after an Ubuntu image based upgrade (LP:
-		# #1350673). This can be removed once all system image flavors
-		# move to snappy (on snappy systems compare_and_save_debsums
-		# always returns '0' since /var/lib/dpkg doesn't exist).
-		clear_cache
-		apparmor_was_updated=1
-	fi
-
-	if [ -x /usr/bin/aa-clickhook ] || [ -x /usr/bin/aa-profile-hook ] ; then
-		# If packages for system policy that affect click packages have
-		# been updated since the last time we ran, run aa-clickhook -f
-                force_clickhook=0
-                force_profile_hook=0
-                if ! compare_and_save_debsums apparmor-easyprof-ubuntu ; then
-                        force_clickhook=1
-                fi
-                if ! compare_and_save_debsums apparmor-easyprof-ubuntu-snappy ; then
-                        force_clickhook=1
-                fi
-                if ! compare_and_save_debsums click-apparmor ; then
-                        force_clickhook=1
-                        force_profile_hook=1
-                fi
-                if [ -x /usr/bin/aa-clickhook ] && ([ $force_clickhook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
-                        aa-clickhook -f
-                fi
-                if [ -x /usr/bin/aa-profile-hook ] && ([ $force_profile_hook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
-                        aa-profile-hook -f
-                fi
-	fi
-}
-
-# Allow "recache" even when running on the liveCD
-if [ "$1" = "recache" ]; then
-	log_daemon_msg "Recaching AppArmor profiles"
-	recache_profiles
-	rc=$?
-	log_end_msg "$rc"
-	exit $rc
-fi
-
-# do not perform start/stop/reload actions when running from liveCD
-test -d /rofs/etc/apparmor.d && exit 0
-
-rc=255
-case "$1" in
-	start)
-		if test -x /sbin/systemd-detect-virt && \
-		   systemd-detect-virt --quiet --container && \
-		   ! is_container_with_internal_policy; then
-			log_daemon_msg "Not starting AppArmor in container"
-			log_end_msg 0
-			exit 0
-		fi
-		log_daemon_msg "Starting AppArmor profiles"
-		securityfs
-		# That is only useful for click, snappy and system images,
-		# i.e. not in Debian. And it reads and writes to /var, that
-		# can be remote-mounted, so it would prevent us from using
-		# Before=sysinit.target without possibly introducing dependency
-		# loops.
-		handle_system_policy_package_updates
-		load_configured_profiles
-		rc=$?
-		log_end_msg "$rc"
-		;;
-	stop)
-		log_daemon_msg "Clearing AppArmor profiles cache"
-		clear_cache
-		rc=$?
-		log_end_msg "$rc"
-		cat >&2 <<EOM
-All profile caches have been cleared, but no profiles have been unloaded.
-Unloading profiles will leave already running processes permanently
-unconfined, which can lead to unexpected situations.
-
-To set a process to complain mode, use the command line tool
-'aa-complain'. To really tear down all profiles, run the init script
-with the 'teardown' option."
-EOM
-		;;
-	teardown)
-		if test -x /sbin/systemd-detect-virt && \
-		   systemd-detect-virt --quiet --container && \
-		   ! is_container_with_internal_policy; then
-			log_daemon_msg "Not tearing down AppArmor in container"
-			log_end_msg 0
-			exit 0
-		fi
-		log_daemon_msg "Unloading AppArmor profiles"
-		securityfs
-		running_profile_names | while read profile; do
-			if ! unload_profile "$profile" ; then
-				log_end_msg 1
-				exit 1
-			fi
-		done
-		rc=0
-		log_end_msg $rc
-		;;
-	restart|reload|force-reload)
-		if test -x /sbin/systemd-detect-virt && \
-		   systemd-detect-virt --quiet --container && \
-		   ! is_container_with_internal_policy; then
-			log_daemon_msg "Not reloading AppArmor in container"
-			log_end_msg 0
-			exit 0
-		fi
-		log_daemon_msg "Reloading AppArmor profiles"
-		securityfs
-		clear_cache
-		load_configured_profiles
-		rc=$?
-		unload_obsolete_profiles
-
-		log_end_msg "$rc"
-		;;
-	status)
-		securityfs
-		if [ -x /usr/sbin/aa-status ]; then
-			aa-status --verbose
-		else
-			cat "$AA_SFS"/profiles
-		fi
-		rc=$?
-		;;
-	*)
-		usage
-		rc=1
-		;;
-	esac
-exit $rc
diff --git a/recipes-mac/AppArmor/files/apparmor.rc b/recipes-mac/AppArmor/files/apparmor.rc
deleted file mode 100644
index 1507d7b..0000000
--- a/recipes-mac/AppArmor/files/apparmor.rc
+++ /dev/null
@@ -1,98 +0,0 @@
-description "Pre-cache and pre-load apparmor profiles"
-author "Dimitri John Ledkov <xnox@ubuntu.com> and Jamie Strandboge <jamie@ubuntu.com>"
-
-task
-
-start on starting rc-sysinit
-
-script
-    [ -d /rofs/etc/apparmor.d ]  && exit 0 # do not load on liveCD
-    [ -d /sys/module/apparmor ]  || exit 0 # do not load without AppArmor
-    [ -x /sbin/apparmor_parser ] || exit 0 # do not load without parser
-
-    . /lib/apparmor/functions
-
-    systemd-detect-virt --quiet --container && ! is_container_with_internal_policy && exit 0 || true
-
-    # Need securityfs for any mode
-    if [ ! -d /sys/kernel/security/apparmor ]; then
-        if cut -d" " -f2,3 /proc/mounts | grep -q "^/sys/kernel/security securityfs"'$' ; then
-            exit 0
-        else
-            mount -t securityfs none /sys/kernel/security || exit 0
-        fi
-    fi
-
-    [ -w /sys/kernel/security/apparmor/.load ] || exit 0
-
-    apparmor_was_updated=0
-    if ! compare_previous_version ; then
-        # On snappy flavors, if the current and previous versions are
-        # different then clear the system cache. snappy will handle
-        # "$PROFILES_CACHE_VAR" itself  (on Touch flavors
-        # compare_previous_version  always returns '0' since snappy
-        # isn't available).
-        clear_cache_system
-        apparmor_was_updated=1
-    elif ! compare_and_save_debsums apparmor ; then
-        # If the system policy has been updated since the last time we
-        # ran, clear the cache to prevent potentially stale binary
-        # cache files after an Ubuntu image based upgrade (LP:
-        # #1350673). This can be removed once all system image flavors
-        # move to snappy (on snappy systems compare_and_save_debsums
-        # always returns '0' since /var/lib/dpkg doesn't exist).
-        clear_cache
-        apparmor_was_updated=1
-    fi
-
-    if [ -x /usr/bin/aa-clickhook ] || [ -x /usr/bin/aa-profile-hook ] ; then
-        # If packages for system policy that affect click packages have
-        # been updated since the last time we ran, run aa-clickhook -f
-        force_clickhook=0
-        force_profile_hook=0
-        if ! compare_and_save_debsums apparmor-easyprof-ubuntu ; then
-            force_clickhook=1
-        fi
-        if ! compare_and_save_debsums apparmor-easyprof-ubuntu-snappy ; then
-            force_clickhook=1
-        fi
-        if ! compare_and_save_debsums click-apparmor ; then
-            force_clickhook=1
-            force_profile_hook=1
-        fi
-        if [ -x /usr/bin/aa-clickhook ] && ([ $force_clickhook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
-            aa-clickhook -f
-        fi
-        if [ -x /usr/bin/aa-profile-hook ] && ([ $force_profile_hook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
-            aa-profile-hook -f
-        fi
-    fi
-
-    if [ "$ACTION" = "teardown" ]; then
-        running_profile_names | while read profile; do
-            unload_profile "$profile"
-        done
-        exit 0
-    fi
-
-    if [ "$ACTION" = "clear" ]; then
-        clear_cache
-        exit 0
-    fi
-
-    if [ "$ACTION" = "reload" ] || [ "$ACTION" = "force-reload" ]; then
-        clear_cache
-        load_configured_profiles
-	unload_obsolete_profiles
-        exit 0
-    fi
-
-    # Note: if apparmor-easyprof-ubuntu md5sums didn't match up above,
-    # aa-clickhook will have already compiled the policy, generated the cache
-    # files and loaded them into the kernel by this point, so reloading click
-    # policy from cache, while fairly fast (<2 seconds for 250 profiles on
-    # armhf), is redundant. Fixing this would complicate the logic quite a bit
-    # and it wouldn't improve the (by far) common case (ie, when
-    # 'aa-clickhook -f' is not run).
-    load_configured_profiles
-end script
diff --git a/recipes-mac/AppArmor/files/apparmor.service b/recipes-mac/AppArmor/files/apparmor.service
deleted file mode 100644
index e66afe4..0000000
--- a/recipes-mac/AppArmor/files/apparmor.service
+++ /dev/null
@@ -1,22 +0,0 @@
-[Unit]
-Description=AppArmor initialization
-After=local-fs.target
-Before=sysinit.target
-AssertPathIsReadWrite=/sys/kernel/security/apparmor/.load
-ConditionSecurity=apparmor
-DefaultDependencies=no
-Documentation=man:apparmor(7)
-Documentation=http://wiki.apparmor.net/
-
-# Don't start this unit on the Ubuntu Live CD
-ConditionPathExists=!/rofs/etc/apparmor.d
-
-[Service]
-Type=oneshot
-RemainAfterExit=yes
-ExecStart=/etc/init.d/apparmor start
-ExecStop=/etc/init.d/apparmor stop
-ExecReload=/etc/init.d/apparmor reload
-
-[Install]
-WantedBy=sysinit.target
diff --git a/recipes-mac/AppArmor/files/functions b/recipes-mac/AppArmor/files/functions
deleted file mode 100644
index e9e2bbf..0000000
--- a/recipes-mac/AppArmor/files/functions
+++ /dev/null
@@ -1,271 +0,0 @@
-# /lib/apparmor/functions for Debian -*- shell-script -*-
-# ----------------------------------------------------------------------
-#    Copyright (c) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007
-#     NOVELL (All rights reserved)
-#    Copyright (c) 2008-2010 Canonical, Ltd.
-#
-#    This program is free software; you can redistribute it and/or
-#    modify it under the terms of version 2 of the GNU General Public
-#    License published by the Free Software Foundation.
-#
-#    This program is distributed in the hope that it will be useful,
-#    but WITHOUT ANY WARRANTY; without even the implied warranty of
-#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-#    GNU General Public License for more details.
-#
-#    You should have received a copy of the GNU General Public License
-#    along with this program; if not, contact Novell, Inc.
-# ----------------------------------------------------------------------
-# Authors:
-#  Kees Cook <kees@ubuntu.com>
-
-PROFILES="/etc/apparmor.d"
-PROFILES_CACHE="$PROFILES/cache"
-PROFILES_VAR="/var/lib/apparmor/profiles"
-PROFILES_SNAPPY="/var/lib/snapd/apparmor/profiles"
-PROFILES_CACHE_VAR="/var/cache/apparmor"
-PARSER="/sbin/apparmor_parser"
-SECURITYFS="/sys/kernel/security"
-export AA_SFS="$SECURITYFS/apparmor"
-
-# Suppress warnings when booting in quiet mode
-quiet_arg=""
-[ "${QUIET:-no}" = yes ] && quiet_arg="-q"
-[ "${quiet:-n}" = y ] && quiet_arg="-q"
-
-foreach_configured_profile() {
-	rc_all="0"
-	for pdir in "$PROFILES" "$PROFILES_VAR" "$PROFILES_SNAPPY" ; do
-		if [ ! -d "$pdir" ]; then
-			continue
-		fi
-		num=`find "$pdir" -type f ! -name '*.md5sums' | wc -l`
-		if [ "$num" = "0" ]; then
-			continue
-		fi
-
-		cache_dir="$PROFILES_CACHE"
-		if [ -d "$PROFILES_CACHE_VAR" ] && [ "$pdir" = "$PROFILES_VAR" ] || [ "$pdir" = "$PROFILES_SNAPPY" ]; then
-			cache_dir="$PROFILES_CACHE_VAR"
-		fi
-		cache_args="--cache-loc=$cache_dir"
-		if [ ! -d "$cache_dir" ]; then
-			cache_args=
-		fi
-
-		# LP: #1383858 - expr tree simplification is too slow for
-		# Touch policy on ARM, so disable it for now
-		cache_extra_args=
-		if [ -d "$PROFILES_CACHE_VAR" ] && [ "$pdir" = "$PROFILES_VAR" ] || [ "$pdir" = "$PROFILES_SNAPPY" ]; then
-			cache_extra_args="-O no-expr-simplify"
-		fi
-
-		# If need to compile everything, then use -n1 with xargs to
-		# take advantage of -P. When cache files are in use, omit -n1
-		# since it is considerably faster on moderately sized profile
-		# sets to give the parser all the profiles to load at once
-		n1_args=
-		num=`find "$cache_dir" -type f ! -name '.features' | wc -l`
-		if [ "$num" = "0" ]; then
-			n1_args="-n1"
-		fi
-
-		(ls -1 "$pdir" | egrep -v '(\.dpkg-(new|old|dist|bak)|~)$' | \
-		while read profile; do
-			if [ -f "$pdir"/"$profile" ]; then
-				echo "$pdir"/"$profile"
-			fi
-		done) | \
-		xargs $n1_args -d"\n" -P$(getconf _NPROCESSORS_ONLN) "$PARSER" "$@" $cache_args $cache_extra_args -- || {
-			rc_all="$?"
-			# FIXME: when the parser properly handles broken
-			# profiles (LP: #1377338), remove this if statement.
-			# For now, if the xargs returns with error, just run
-			# through everything with -n1. (This could be broken
-			# out and refactored, but this is temporary so make it
-			# easy to understand and revert)
-			if [ "$rc_all" != "0" ]; then
-				(ls -1 "$pdir" | \
-				egrep -v '(\.dpkg-(new|old|dist|bak)|~)$' | \
-				while read profile; do
-					if [ -f "$pdir"/"$profile" ]; then
-						echo "$pdir"/"$profile"
-					fi
-				done) | \
-				xargs -n1 -d"\n" -P$(getconf _NPROCESSORS_ONLN) "$PARSER" "$@" $cache_args $cache_extra_args -- || {
-					rc_all="$?"
-				}
-			fi
-		}
-	done
-	return $rc_all
-}
-
-load_configured_profiles() {
-	clear_cache_if_outdated
-	foreach_configured_profile $quiet_arg --write-cache --replace
-}
-
-load_configured_profiles_without_caching() {
-	foreach_configured_profile $quiet_arg --replace
-}
-
-recache_profiles() {
-	clear_cache
-	foreach_configured_profile $quiet_arg --write-cache --skip-kernel-load
-}
-
-configured_profile_names() {
-	foreach_configured_profile $quiet_arg -N 2>/dev/null | LC_COLLATE=C sort | grep -v '//'
-}
-
-running_profile_names() {
-	# Output a sorted list of loaded profiles, skipping libvirt's
-	# dynamically generated files
-	cat "$AA_SFS"/profiles | sed -e "s/ (\(enforce\|complain\))$//" | egrep -v '^libvirt-[0-9a-f\-]+$' | LC_COLLATE=C sort | grep -v '//'
-}
-
-unload_profile() {
-	echo -n "$1" > "$AA_SFS"/.remove
-}
-
-clear_cache() {
-	clear_cache_system
-	clear_cache_var
-}
-
-clear_cache_system() {
-	find "$PROFILES_CACHE" -maxdepth 1 -type f -print0 | xargs -0 rm -f --
-}
-
-clear_cache_var() {
-	find "$PROFILES_CACHE_VAR" -maxdepth 1 -type f -print0 | xargs -0 rm -f --
-}
-
-read_features_dir()
-{
-	for f in `ls -A "$1"` ; do
-		if [ -f "$1/$f" ] ; then
-			read -r KF < "$1/$f" || true
-			echo -n "$f {$KF } "
-		elif [ -d "$1/$f" ] ; then
-			echo -n "$f {"
-			KF=`read_features_dir "$1/$f"` || true
-			echo -n "$KF} "
-		fi
-	done
-}
-
-clear_cache_if_outdated() {
-	if [ -r "$PROFILES_CACHE"/.features ]; then
-		if [ -d "$AA_SFS"/features ]; then
-			KERN_FEATURES=`read_features_dir "$AA_SFS"/features`
-		else
-			read -r KERN_FEATURES < "$AA_SFS"/features
-		fi
-		CACHE_FEATURES=`tr '\n' ' ' < "$PROFILES_CACHE"/.features`
-		if [ "$KERN_FEATURES" != "$CACHE_FEATURES" ]; then
-			clear_cache
-		fi
-	fi
-}
-
-unload_obsolete_profiles() {
-	# Currently we must re-parse all the profiles to get policy names.  :(
-	aa_configured=$(mktemp -t aa-XXXXXX)
-	configured_profile_names > "$aa_configured" || true
-	aa_loaded=$(mktemp -t aa-XXXXXX)
-	running_profile_names > "$aa_loaded" || true
-	LC_COLLATE=C comm -2 -3 "$aa_loaded" "$aa_configured" | while read profile ; do
-		unload_profile "$profile"
-        done
-	rm -f "$aa_configured" "$aa_loaded"
-}
-
-# If the system debsum differs from the saved debsum, the new system debsum is
-# saved and non-zero is returned. Returns 0 if the two debsums matched or if
-# the system debsum file does not exist. This can be removed when system image
-# flavors all move to snappy.
-compare_and_save_debsums() {
-	pkg="$1"
-
-	if [ -n $pkg ] && [ -d "$PROFILES_VAR" ]; then
-		sums="/var/lib/dpkg/info/${pkg}.md5sums"
-		# store saved md5sums in /var/lib/apparmor/profiles since
-		# /var/cache/apparmor might be cleared by apparmor
-		saved_sums="${PROFILES_VAR}/.${pkg}.md5sums"
-
-		if [ -f "$sums" ] && \
-		   ! diff -q "$sums" "$saved_sums" 2>&1 >/dev/null ; then
-			cp -f "$sums" "$saved_sums"
-			return 1
-		fi
-	fi
-
-	return 0
-}
-
-compare_previous_version() {
-	installed="/usr/share/snappy/security-policy-version"
-	previous="/var/lib/snappy/security-policy-version"
-
-	# When just $previous doesn't exist, assume this is a new system with
-	# no cache and don't do anything special.
-	if [ -f "$installed" ] && [ -f "$previous" ]; then
-		pv=`grep '^apparmor/' "$previous" | cut -d ' ' -f 2`
-		iv=`grep '^apparmor/' "$installed" | cut -d ' ' -f 2`
-		if [ -n "$iv" ] && [ -n "$pv" ] && [ "$iv" != "$pv" ]; then
-			# snappy updates $previous elsewhere, so just return
-			return 1
-		fi
-	fi
-
-	return 0
-}
-
-# Checks to see if the current container is capable of having internal AppArmor
-# profiles that should be loaded. Callers of this function should have already
-# verified that they're running inside of a container environment with
-# something like `systemd-detect-virt --container`.
-#
-# The only known container environments capable of supporting internal policy
-# are LXD and LXC environment.
-#
-# Returns 0 if the container environment is capable of having its own internal
-# policy and non-zero otherwise.
-#
-# IMPORTANT: This function will return 0 in the case of a non-LXD/non-LXC
-# system container technology being nested inside of a LXD/LXC container that
-# utilized an AppArmor namespace and profile stacking. The reason 0 will be
-# returned is because .ns_stacked will be "yes" and .ns_name will still match
-# "lx[dc]-*" since the nested system container technology will not have set up
-# a new AppArmor profile namespace. This will result in the nested system
-# container's boot process to experience failed policy loads but the boot
-# process should continue without any loss of functionality. This is an
-# unsupported configuration that cannot be properly handled by this function.
-is_container_with_internal_policy() {
-	local ns_stacked_path="${AA_SFS}/.ns_stacked"
-	local ns_name_path="${AA_SFS}/.ns_name"
-	local ns_stacked
-	local ns_name
-
-	if ! [ -f "$ns_stacked_path" ] || ! [ -f "$ns_name_path" ]; then
-		return 1
-	fi
-
-	read -r ns_stacked < "$ns_stacked_path"
-	if [ "$ns_stacked" != "yes" ]; then
-		return 1
-	fi
-
-	# LXD and LXC set up AppArmor namespaces starting with "lxd-" and
-	# "lxc-", respectively. Return non-zero for all other namespace
-	# identifiers.
-	read -r ns_name < "$ns_name_path"
-	if [ "${ns_name#lxd-*}" = "$ns_name" ] && \
-	   [ "${ns_name#lxc-*}" = "$ns_name" ]; then
-		return 1
-	fi
-
-	return 0
-}
-- 
2.25.1

