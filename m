Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.1825.1628233795457067228
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Aug 2021 00:09:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=F64B4R3B;
 spf=permerror, err=parse error for token &{10 18 testsso.windriver.com}: permanent DNS error (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3852e488c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1766suVL007714;
	Fri, 6 Aug 2021 07:09:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=R6xwslqN5Sc/fpiG8ATqC7ikvMBqVdROnB7mzdYYZrI=;
 b=F64B4R3BH8Jy0NeqWpG0vfMNYaUMptqudO7xqlUsrg6fR6EP0k2D830sbEl62qDLTwK3
 cpMtdQL4q2bfm777OMN+iSTJ3s+XG5kt2thfgjLgkCl9Ptgb3/dZkAxDJvxG4PdcQ5T1
 yWu03dyl2G1XYqgIf7OInengTjaNqt1fAP1T2tRW2ihFoxrtU5OUgUlSiN9owS8DPFjv
 pE3NwIzgwbP4g88J2YqffXtHPtNt+RrpDga21pEGwkZTNDTaEb6JnTJ2wcCiJ8w5vAr8
 t974U5GvgKo7uS4Tj9NVmInNpnvDrkzAqNvqb23h3nkzhaGXzh1e7wBBJyfga5xy2faZ vA== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2174.outbound.protection.outlook.com [104.47.55.174])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a8nh08byp-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 06 Aug 2021 07:09:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XH8mq6+Bn9vEP3oKmtvq3Pca4LwlD/geYqLgaDfZ7UOHug+kwmCowkgXn5nCcd/gcdwcKzU9Zekdf+7J0opPEBySyCHIxySCuhWLZKAu8Z9v1B1bjfYwFQ+9S7caS1rGlAC22Athod0j/t1yODsfs1YcLJ/rTkge62SnhnRFsW3xgoX4pO6IiEpatB7vr6b7oEc750U6hDNtUMcG/9t7JyHVaic9mabwT3ufRKZXhE99nduTyxRQITS3fvPVdWwzy5zruoNIpOW6vrSe3fL/QO7Ju09Nq5ni22tJvAk2wSdM/wGCibI4ZRCnadVahERBJ+uI15ZG/8LGHkTXYWyBqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R6xwslqN5Sc/fpiG8ATqC7ikvMBqVdROnB7mzdYYZrI=;
 b=Wm0kgFt77rhAPQ4eGSsbGNsld7S94H2BFRkXUtFN7I8caHhJrlIUwmGCsc99WlUw9wG8NT/TZOfvJsAkyExqeH3KrG+IBPEgCPClBIiqC5VRxFCYYoJJGRjZWNdPgk9unHah7p9THcXUnRRsoInSAxEP/RZdEWV4bpdBmO74voPqXx24jqW0uMdbNlxvJvNsnBjKRknv+dXqXrZRJV6c2KRXA16iDMGPMA9HVDe2HVZ+bC9Fs4UxN6ZCRX4zTccmSp7N4LNjuQiROS84L+Nwn99xKNvY4DlfbaGFKcRFx56cq3uSG/NUk0Fdvs6Le1P56dBBiCChkvG538c6u8GHog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: kernel.crashing.org; dkim=none (message not signed)
 header.d=none;kernel.crashing.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Fri, 6 Aug
 2021 07:09:50 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4394.019; Fri, 6 Aug 2021
 07:09:50 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: mark.hatle@kernel.crashing.org, yocto@lists.yoctoproject.org
Subject: [meta-openssl102][PATCH 2/2] meta-openssl102: convert to new override syntax
Date: Fri,  6 Aug 2021 15:09:34 +0800
Message-Id: <20210806070934.413792-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210806070934.413792-1-yi.zhao@windriver.com>
References: <20210806070934.413792-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR01CA0054.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::18) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR01CA0054.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Fri, 6 Aug 2021 07:09:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de739e8f-0c9e-483a-a752-08d958a92e41
X-MS-TrafficTypeDiagnostic: CO1PR11MB5009:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB5009634CF8DE8CECE240C464F9F39@CO1PR11MB5009.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1824;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VXNu9KYGQ20Z+v1bUOxILNdxgvQMGPTJ3Oh8Bk/t6YIJkgc0lEQ7uyPlT6tW9/YtczQtnq+U6oIOPBiHTchVosHf4oPtDnF7Vw18Q7sihmhUvXClkm+ZUMr2Wc40enUnbALTq8wr+ADTZmeQifmXi98pUHSDLNI0FdBzyfWTxxG1BafbQKZNZl4f+4sxgDxWVSZPfqqeslWUrNMAMt48NJ06Zzf9FboofNRJ4sKx7OjtItF3NlyVwAxVHQ0afdq3CR9dqDuRq6dokgzccdoAO/Ou7DRtHMbPxfel1Fdo9W/mtOa1nLgcX0yD8XWBrKUy8AJ2Kc2it1nCZWDKg+e5eH84B5oWPhmXIH69OUmkzutx6Df408CgNqZcBVF5uP/NAzSIEe3v6Ux7Jmnzh7hdDPuIDBVyic7ZDk5lumqP1IuixPcimrZ9y4d+gjQEe2CFoaCd/ac2IZq4w/NLh/oC+6QTP/OsTju0I02nsFPIwaWiNmeQkvq8cy1tM2b8JdwZ8FMHD9I33o2nNoHAZflTukXAPoydQ5bjvQZGTLlOJYos8uHr8FORPSMWZQ+sM5AEmezGZnIOrycw8wgrtTTLufHyPHmQgqNZUck/i/R64tqMYFRw8YqQpQnFGmWr+wRhU49QYX2EVIKsZliO98KNVbyq14Wn9F2GW6wuj8qbIqKItjtwG80yXEyrSvUWXqU/KO4/EOe7OSqQn0UZZG8TA8yUUdWqNyJZPHxteg6bKcl57vMcGgFntS2BGFWK/JV2ekRBiScb74Yv4Sie7PGI+7mfUIwTVrzs5FkbnAAWG8M=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(136003)(39850400004)(396003)(376002)(86362001)(1076003)(6506007)(8936002)(38350700002)(6666004)(38100700002)(52116002)(36756003)(44832011)(6512007)(186003)(8676002)(2616005)(956004)(26005)(5660300002)(2906002)(66556008)(66476007)(478600001)(83380400001)(66946007)(316002)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?7J64V7HC/2Hu7OIimGsVzIPOwNy+FSUHIZtEi9x0Od3Q/cB1IoT7OUxU3qns?=
 =?us-ascii?Q?VxBV7GiyoxqZG+IgNkTj0ocnQHXP71cpeZlCkUrrzFf1RTHC6hWhSGEyC2KA?=
 =?us-ascii?Q?GjfA4dq3a4dVjYeY4JnEqigWsL9jwOVLHmtRXtf6cUWRT2S5JN13w3x4XCN0?=
 =?us-ascii?Q?6MkLTYK93vIQVCoGc+ZJ8jnVu1SxBrR3psgbKAU/VDghyLDIGWzHXipmPBb/?=
 =?us-ascii?Q?sR5mJmE4+tUPZ8epehkz/YjbpiNQppeZ1mjV5lh7NOpo4taXGV9Eq/DZfrsZ?=
 =?us-ascii?Q?J4xgqAbEg+OmreyxgTfq4am5UwJfyrFMYQAzknLBqMVgxi+dneLtyNEcrcBL?=
 =?us-ascii?Q?OiY9chmNdqFxol9M23BCkEAJDjoO4/fscjhj0Y2YOOiE4wPUT/QXJF3SQM/Y?=
 =?us-ascii?Q?twzVtIco5qivm3/QW26onl7piJ4M+nb36RpdUuXf7FjGVLaaeWmIhWSbdLkg?=
 =?us-ascii?Q?o4TQj8DyP9DlVrqQsREjgkTBtk0yPf2WwRUeWcUMAdMSq554DFbnDe9WZoDD?=
 =?us-ascii?Q?5aSa2fLW9MnWLQcgwcm/Px5kl+EYL1s0a1VfExHLCxK/FSqTCOd915nK3rja?=
 =?us-ascii?Q?ECQBYJxXQ9YUicCsvTsSS5Zr4Wzl97Uqj8tEMR6qELjdmGkNT/huWGfgnmVS?=
 =?us-ascii?Q?xVFRTQuVObQjWCeDksMiwwSFXuyS3cnGOE55YjPY/bG/yCDtZ2wEJynnGvp9?=
 =?us-ascii?Q?aAhhWpYskSvuC6z2sRZlU1WdDVeTosGrDZBblVpq4WuP4PC76dcI+skxGpAE?=
 =?us-ascii?Q?28zM0dIEdNfWHBVa3+TncaL3PPDGLGgPqqoYVk39TfxYc7hmHQlRuiBsTXO+?=
 =?us-ascii?Q?r4fzpT870RinVxIpZxTVkEhNYpdJxRmJqAhmYSMutzbmVeSAsz03rg+PTI8k?=
 =?us-ascii?Q?V2DRA6UHtT+F8R806+QoyW9e1Rmc7na/PpzYLokx+N2jkiLbtA+VNkm5Bgvo?=
 =?us-ascii?Q?W6qk9CJNWfc5GqU+6mpRTpF57f1xOn6kJ5CCBm1T7Ex3EQjcZRz6N3FMacVM?=
 =?us-ascii?Q?kF30w5ZplhFvgo6WHUU0JHThwZ8texagvW56dwiYNwOxW0PvDW/KRLkaC3yx?=
 =?us-ascii?Q?lRpfXlK3Aa/Hk52ZkDcnq9sQ0MbAzyhgDbTcQnt4hOijggPD7twaJohW8hNT?=
 =?us-ascii?Q?8LTHXzk4WEQCoopuo/4yG52eSpR+nk/W78pBtvxB/LKyn21/zNc0Bj64Su3P?=
 =?us-ascii?Q?xWya8HP12MvmOR23ZH5ymBJueUJAnCvZ51OWhfHB6lUc0lnV+xLoPzo2MppV?=
 =?us-ascii?Q?HSjmJcn50h5Z2XVvEpj8ltrHKKtvjY9LxdlnvC+JE0qTzGEaGck6ejMhBkKz?=
 =?us-ascii?Q?378Odqd23lnW0b5PCn2ZiToA?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de739e8f-0c9e-483a-a752-08d958a92e41
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2021 07:09:50.0986
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9v+EDBjVprRAwQnMzM3hK0ec6KBzlNfgVcVc949fuiqq0oWwHhUUB0X2vFfEO8enrYTN5ulU7TtigFbgwVmQXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5009
X-Proofpoint-GUID: 93UirJ9GWFEudoYWAO_2zANzVFSQS56O
X-Proofpoint-ORIG-GUID: 93UirJ9GWFEudoYWAO_2zANzVFSQS56O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-06_02,2021-08-05_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 mlxlogscore=999 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108060048
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

This is the result of automated script conversion:
poky/scripts/contrib/convert-overrides.py meta-openssl102

Converting the metadata to use ":" as the override character instead of "_".

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../openssl/openssl_1.0.2u.bb                 | 44 +++++++++----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/recipes-connectivity/openssl/openssl_1.0.2u.bb b/recipes-connectivity/openssl/openssl_1.0.2u.bb
index 10707ed..7fc3b12 100644
--- a/recipes-connectivity/openssl/openssl_1.0.2u.bb
+++ b/recipes-connectivity/openssl/openssl_1.0.2u.bb
@@ -9,7 +9,7 @@ LICENSE = "openssl"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=f475368924827d06d4b416111c8bdb77"
 
 DEPENDS = "hostperl-runtime-native"
-DEPENDS_append_class-target = " openssl-native"
+DEPENDS:append:class-target = " openssl-native"
 
 SRC_URI = "http://www.openssl.org/source/openssl-${PV}.tar.gz \
            file://run-ptest \
@@ -54,12 +54,12 @@ SRC_URI = "http://www.openssl.org/source/openssl-${PV}.tar.gz \
            file://CVE-2021-23841.patch \
            "
 
-SRC_URI_append_class-target = " \
+SRC_URI:append:class-target = " \
            file://reproducible-cflags.patch \
            file://reproducible-mkbuildinf.patch \
            "
 
-SRC_URI_append_class-nativesdk = " \
+SRC_URI:append:class-nativesdk = " \
            file://environment.d-openssl.sh \
            "
 
@@ -73,8 +73,8 @@ UPSTREAM_CHECK_REGEX = "openssl-(?P<pver>1\.0.+)\.tar"
 inherit pkgconfig siteinfo lib_package multilib_header ptest manpages
 
 PACKAGECONFIG ?= "cryptodev-linux"
-PACKAGECONFIG_class-native = ""
-PACKAGECONFIG_class-nativesdk = ""
+PACKAGECONFIG:class-native = ""
+PACKAGECONFIG:class-nativesdk = ""
 
 PACKAGECONFIG[disable-weak-ciphers] = "no-des no-ec no-ecdh no-ecdsa no-md2 no-mdc2,,,"
 PACKAGECONFIG[cryptodev-linux] = "-DHAVE_CRYPTODEV -DUSE_CRYPTODEV_DIGESTS,,cryptodev-linux"
@@ -90,8 +90,8 @@ EXTRA_OEMAKE = "${@bb.utils.contains('PACKAGECONFIG', 'manpages', '', 'OE_DISABL
 export OE_LDFLAGS = "${LDFLAGS}"
 
 TERMIO ?= "-DTERMIO"
-TERMIO_libc-musl = "-DTERMIOS"
-EXTRA_OECONF_append_libc-musl_powerpc64 = " no-asm"
+TERMIO:libc-musl = "-DTERMIOS"
+EXTRA_OECONF:append:libc-musl:powerpc64 = " no-asm"
 
 CFLAG = "${@oe.utils.conditional('SITEINFO_ENDIANNESS', 'le', '-DL_ENDIAN', '-DB_ENDIAN', d)} \
          ${TERMIO} ${CFLAGS} -Wall"
@@ -100,7 +100,7 @@ CFLAG = "${@oe.utils.conditional('SITEINFO_ENDIANNESS', 'le', '-DL_ENDIAN', '-DB
 # (and it causes issues with SELinux)
 CFLAG += "-Wa,--noexecstack"
 
-CFLAG_append_class-native = " -fPIC"
+CFLAG:append:class-native = " -fPIC"
 
 do_configure () {
 	# The crypto_use_bigint patch means that perl's bignum module needs to be
@@ -211,7 +211,7 @@ do_compile () {
 	oe_runmake
 }
 
-do_compile_class-target () {
+do_compile:class-target () {
 	sed -i 's/\((OPENSSL=\)".*"/\1"openssl"/' Makefile
 	oe_runmake depend
 	cc_sanitized=$(echo "${CC} ${CFLAG}" | sed -e 's,--sysroot=${STAGING_DIR_TARGET},,g' -e 's|${DEBUG_PREFIX_MAP}||g' -e 's/[ \t]\+/ /g')
@@ -261,7 +261,7 @@ do_install () {
 	ln -sf ${@oe.path.relative('${libdir}/ssl', '${sysconfdir}/ssl/openssl.cnf')} ${D}${libdir}/ssl/openssl.cnf
 }
 
-do_install_append_class-native () {
+do_install:append:class-native () {
 	create_wrapper ${D}${bindir}/openssl \
 	    OPENSSL_CONF=${libdir}/ssl/openssl.cnf \
 	    SSL_CERT_DIR=${libdir}/ssl/certs \
@@ -269,7 +269,7 @@ do_install_append_class-native () {
 	    OPENSSL_ENGINES=${libdir}/ssl/engines
 }
 
-do_install_append_class-nativesdk () {
+do_install:append:class-nativesdk () {
 	mkdir -p ${D}${SDKPATHNATIVE}/environment-setup.d
 	install -m 644 ${WORKDIR}/environment.d-openssl.sh ${D}${SDKPATHNATIVE}/environment-setup.d/openssl.sh
 }
@@ -329,18 +329,18 @@ do_install_ptest () {
 
 PACKAGES =+ "libcrypto libssl openssl-conf ${PN}-engines ${PN}-misc"
 
-FILES_libcrypto = "${libdir}/libcrypto${SOLIBS}"
-FILES_libssl = "${libdir}/libssl${SOLIBS}"
-FILES_openssl-conf = "${sysconfdir}/ssl/openssl.cnf ${libdir}/ssl/openssl.cnf"
-FILES_${PN}-engines = "${libdir}/ssl/engines/*.so ${libdir}/engines"
-FILES_${PN}-misc = "${libdir}/ssl/misc"
-FILES_${PN} =+ "${libdir}/ssl/*"
-FILES_${PN}_append_class-nativesdk = " ${SDKPATHNATIVE}/environment-setup.d/openssl.sh"
+FILES:libcrypto = "${libdir}/libcrypto${SOLIBS}"
+FILES:libssl = "${libdir}/libssl${SOLIBS}"
+FILES:openssl-conf = "${sysconfdir}/ssl/openssl.cnf ${libdir}/ssl/openssl.cnf"
+FILES:${PN}-engines = "${libdir}/ssl/engines/*.so ${libdir}/engines"
+FILES:${PN}-misc = "${libdir}/ssl/misc"
+FILES:${PN} =+ "${libdir}/ssl/*"
+FILES:${PN}:append:class-nativesdk = " ${SDKPATHNATIVE}/environment-setup.d/openssl.sh"
 
-CONFFILES_openssl-conf = "${sysconfdir}/ssl/openssl.cnf"
+CONFFILES:openssl-conf = "${sysconfdir}/ssl/openssl.cnf"
 
-RRECOMMENDS_libcrypto += "openssl-conf"
-RDEPENDS_${PN}-misc = "${@bb.utils.filter('PACKAGECONFIG', 'perl', d)}"
-RDEPENDS_${PN}-ptest += "${PN}-misc make perl perl-module-filehandle bc"
+RRECOMMENDS:libcrypto += "openssl-conf"
+RDEPENDS:${PN}-misc = "${@bb.utils.filter('PACKAGECONFIG', 'perl', d)}"
+RDEPENDS:${PN}-ptest += "${PN}-misc make perl perl-module-filehandle bc"
 
 BBCLASSEXTEND = "native nativesdk"
-- 
2.25.1

