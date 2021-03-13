Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.71])
 by mx.groups.io with SMTP id smtpd.web11.115.1615614672297672228
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:12 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=JzvkcZVC;
 spf=pass (domain: windriver.com, ip: 40.107.223.71, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UwY/9nasCgmDjteYgFFIZDCOwch6CXIpYSd15g1ShvjvPixgzhxFqrAcuzskd7n+tsIBJ/BLnp6n9lU3OUhBQaLFirrQjzJDM+PexyILa4VjnkoJpSgfuXQfgSeYJCuv2DCckChYlSL34yoreMyYZnsRoecUOA5iKNluzm4BBufimUpNNLTSrO+A2KeIJLggvcZi1HCpkIZI/OJfewZB82m8PERtcnsdmzPHcQbcMll51uZF8ikctpJnhenrEVZojWkIuhf0LytDW9dv31IlYa8qovAW1xp/leB2S9nyh4m/ypue7c4At1LRSQ+OeM5NyFrXTaJ+YAh372ObH6ebog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8cbKVi57AmK3rTcg1Kh2dB8KAY0f/8tZ9whKYqXAPuM=;
 b=ZwpFturxdrKBvjO5ODAL3ngFjaCcDaKH4DDfs6nTQSl6xJ6JL+GefieVp/VlsiIIPByuo8tzThcJJQ2ULzz+bsVg9+8McRrO7ws5krdbi+vayABEHT+L0+ey60dUGYhTi/OTI4jZ7e6xImj/R7ygAs5i/hVWQQOwnYAbo/GcF/VLNIF/++ncF6SWZayoAtDwWb3pkYP+mG2YQqsDGmYvUzczCpq1ZsWn2GlRRjOwS9zpmQ/TtxL6LKx2FXoGP5Bh/Ok5ugQdv7lmeKHiWDoGB1orTj49bVxRusQJcn2p0LugD1gd+e6k8b05olkzp8gZueeElvlkTolunq5KGdfQJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8cbKVi57AmK3rTcg1Kh2dB8KAY0f/8tZ9whKYqXAPuM=;
 b=JzvkcZVCqBF3zzOoevc/CUvAO0Yx6K9Awa5SN5p1c5NxysyvpjlYADh4ulDi7mxCkM16NECP3Zyufod0OSDLG1WMcyrxOy1kl6NKgpvlmpc87Q8S/BB+3ysfCQoCXJaICBeZJbKG9bNeSf1n4FjeqxbJH326OnPvcLKYpIPviIg=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:10 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:10 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 08/16] policycoreutils: update to 3.2
Date: Sat, 13 Mar 2021 13:50:36 +0800
Message-ID: <20210313055044.239776-9-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb6e155f-884c-4084-6e58-08d8e5e400db
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB231823AD03FBB222DE1D3076F96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	diKYULok5fgpdR6F6DtoXJBEEClQVMXANbgeg+6T2j4o5kuu2rpljLTQDpjwPuou9LKJz24Ue81BYRd64e/QfKkSdIb9JJNtmrNwFb+J2Dft72vFWl+6LZnrBtCYcBeT8OYm/z4G2aZf5/bAtf8mf31rbFiGLPH14CYj1Ytk1nsdVL6k+IH/5k1eskAd0NnHWFhfvk5eX3OzdW/o1QXGmz2oiWTP8sHSTFTG2QvMsf9ALgdcGdo7gvU4tZSIVFI5PyVzUU+oxnlpVEOc2ePNf3lulF9Sssd0Fd975igbrZ2JQMqq8LjMfgiZp7VkKA1/Q/VIpc/YDjSqrepFKS/hLQOB1ZzW04CLWtrxO5HWbPz2q3jqhWp5BsaQAA3YZUAN/FcfSYzaZNasak1MoLZFM87PXVSrVue9BV4fHFAvDyjsjQXEcu301fGrwRogUHGAL7nd9Y0n9tTimkUxtnxzkntwDIXanOmWKrD2orRLGdU60GKB2H3kRulaCa891R5KmtbcynoZM8sEGhzhfif/fA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(15650500001)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?5XpbYdOltfOZW6iFnI8s67bEqLN4cnX/dg9rQ2nleuFfyY0Ply5bQ7Qg6X6o?=
 =?us-ascii?Q?YZYtu4T+r4Z/VSkSxvmrZsOU5V0TYoV8D2rU4+rUdaFyZxId1cuZexYwTwNK?=
 =?us-ascii?Q?W/w+b6ghuj7sIpDIxaAI2RV8aLELSyTm/uzjuMbBUWM3eovSWyNDUcUhXlzq?=
 =?us-ascii?Q?8WCIa3u+TgulVmo/71S+UXiyoQVxr5DUFnN91H+4v9CFK0FUjei2lfppwlhQ?=
 =?us-ascii?Q?JoQt2ctgHR9tGIo10V9cGFjfbB5DatX1B1zM4LJmhteQntnK/W9Ox4xAbGXu?=
 =?us-ascii?Q?U2vYWgHfcTeuBHPGpwQwBpgIrVrEBQQazDyIWGWSIvxjqK2FewLISIl1iSKD?=
 =?us-ascii?Q?oFi2qFpzsy3y5Vjt8ce+ZR53uynUUIku9o7LFVw4wzERkoLCs4LYDdYJTMAK?=
 =?us-ascii?Q?j/STAi387izeRHZOogW7DEB4PqRhtWUAs606c+u1f2dNXJNW48kxZ9y2Jfsw?=
 =?us-ascii?Q?dchOKpcpfzwZ2X7JJha2K2tg8SaPJb2LvfdLFGn/bBvGnuaHL0H7okB7BzRA?=
 =?us-ascii?Q?QwSMXy1m7kTXLMMxhfvb37c+aHP6EV+nDpyiXdX0RviiiyHFB3jip4aQpW8Y?=
 =?us-ascii?Q?LcqRqy5mHimYLy8ZxDXZeMDjvbvngQIioms+fDVXBGvDGn04kXCfYsajF/8l?=
 =?us-ascii?Q?6qH0xw1hfh/3GkmArnrB1aKyYrRR9jRKVEPprPfrWZxQHYtSwf6hj+DRrDyi?=
 =?us-ascii?Q?0eRpoLxRacNu1oOzfgSWNhomAP3CaAOiuK4xUy4wBmJxqX6WT7nZMYeC/T80?=
 =?us-ascii?Q?pz0TE4GJ2yfFjyrUqFIByiljVZC5yauAWpRwu7j9EwxuJc1NmKEhtmorCg3s?=
 =?us-ascii?Q?QuS/9TP0DK/3yVqC6kU1MDK+Q7QP6JV8aeCuaoU15lh9WGVxQHzcj4ojw5GI?=
 =?us-ascii?Q?KmcUA+3ef7NCr5YG6sI1JSQ3Z95NyQ7085Ouv3ZTJzJc+D9wpdDsWpXNJzwi?=
 =?us-ascii?Q?VM0Qrhv21HhYH+7uXTyBCcWl49i0WbHaOpD+1h/Kq2gZkMrKjsa7ZMRC/gna?=
 =?us-ascii?Q?h8D6bladr8o2j+P4iRIYkEDaqXn1IMkYy7I/au1SkOQMALsnMowd79LOXSG0?=
 =?us-ascii?Q?Xs+cORzCJVpQ1MBXI76wMdh5OcWpi76ptKIg1TzYFqCZZav7rY0PqapmiOd+?=
 =?us-ascii?Q?9AkkFxaPz811Q/uuSd3ScbCbX603+zirRdPnk4/A4yDWcBKjHRkuVhtgmFS7?=
 =?us-ascii?Q?hhg+KDyIl1bPRh84ZGu3oyUjvMLEY8EQmZqlPvu6kslkkJFBCkx6WAJe/vRn?=
 =?us-ascii?Q?znJviCkrWFhNXTh9gIEhElhbvfJTFblrRwTwmakHqV+GSx2b2iSkMqClFOBs?=
 =?us-ascii?Q?8STKTj2KSFwHdnUh5LmJZOFg?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb6e155f-884c-4084-6e58-08d8e5e400db
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:10.7617
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VvdtmGPw9Kwtlj4m2qz1e+LoFB1Ka2bXhrqjuw6hRqY5Zx7XQwg9ngPk9Ct3nNrwt4VzlJ+9KXLKQZiUZ0n/4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/policycoreutils_3.1.bb            |   7 -
 ...cycoreutils.inc =3D> policycoreutils_3.2.bb} | 145 +++++++++---------
 2 files changed, 75 insertions(+), 77 deletions(-)
 delete mode 100644 recipes-security/selinux/policycoreutils_3.1.bb
 rename recipes-security/selinux/{policycoreutils.inc =3D> policycoreutils_=
3.2.bb} (52%)

diff --git a/recipes-security/selinux/policycoreutils_3.1.bb b/recipes-secu=
rity/selinux/policycoreutils_3.1.bb
deleted file mode 100644
index f56d1c3..0000000
--- a/recipes-security/selinux/policycoreutils_3.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f83=
3"
-
-SRC_URI[md5sum] =3D "3097ac2c83e47af130452f10399282cb"
-SRC_URI[sha256sum] =3D "c889f62ee80f8b6a369469a9b8af51f5b797975aeaa291f5c5=
960cc12eed1934"
diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-securit=
y/selinux/policycoreutils_3.2.bb
similarity index 52%
rename from recipes-security/selinux/policycoreutils.inc
rename to recipes-security/selinux/policycoreutils_3.2.bb
index 43a641d..9fc1691 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils_3.2.bb
@@ -6,6 +6,9 @@ to switch roles, and run_init to run /etc/init.d scripts in=
 the proper \
 context."
 SECTION =3D "base"
 LICENSE =3D "GPLv2+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D393a5ca445f6965873eca0259a=
17f833"
+
+require selinux_common.inc
=20
 SRC_URI +=3D "${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_UR=
I}', '', d)} \
             file://policycoreutils-fixfiles-de-bashify.patch \
@@ -13,92 +16,94 @@ SRC_URI +=3D "${@bb.utils.contains('DISTRO_FEATURES', '=
pam', '${PAM_SRC_URI}', '',
=20
 PAM_SRC_URI =3D "file://pam.d/newrole \
                file://pam.d/run_init \
-"
+              "
=20
 DEPENDS +=3D "libsepol libselinux libsemanage libcap gettext-native"
 EXTRA_DEPENDS =3D "libcap-ng libcgroup"
 DEPENDS +=3D "${@['', '${EXTRA_DEPENDS}']['${PN}' !=3D '${BPN}-native']}"
=20
+S =3D "${WORKDIR}/git/policycoreutils"
+
 inherit selinux python3native
=20
 RDEPENDS_${BPN}-fixfiles +=3D "\
-	${BPN}-setfiles \
-	grep \
-	findutils \
+    ${BPN}-setfiles \
+    grep \
+    findutils \
 "
 RDEPENDS_${BPN}-genhomedircon +=3D "\
-	${BPN}-semodule \
+    ${BPN}-semodule \
 "
 RDEPENDS_${BPN}-loadpolicy +=3D "\
-	libselinux \
-	libsepol \
+    libselinux \
+    libsepol \
 "
 RDEPENDS_${BPN}-newrole +=3D "\
-	libcap-ng \
-	libselinux \
+    libcap-ng \
+    libselinux \
 "
 RDEPENDS_${BPN}-runinit +=3D "libselinux"
 RDEPENDS_${BPN}-secon +=3D "libselinux"
 RDEPENDS_${BPN}-semodule +=3D "\
-	libsepol \
-	libselinux \
-	libsemanage \
+    libsepol \
+    libselinux \
+    libsemanage \
 "
 RDEPENDS_${BPN}-sestatus +=3D "libselinux"
 RDEPENDS_${BPN}-setfiles +=3D "\
-	libselinux \
-	libsepol \
+    libselinux \
+    libsepol \
 "
 RDEPENDS_${BPN}-setsebool +=3D "\
-	libsepol \
-	libselinux \
-	libsemanage \
+    libsepol \
+    libselinux \
+    libsemanage \
 "
 RDEPENDS_${BPN} +=3D "selinux-python"
=20
 PACKAGES =3D+ "\
-	${PN}-fixfiles \
-	${PN}-genhomedircon \
-	${PN}-hll \
-	${PN}-loadpolicy \
-	${PN}-newrole \
-	${PN}-runinit \
-	${PN}-secon \
-	${PN}-semodule \
-	${PN}-sestatus \
-	${PN}-setfiles \
-	${PN}-setsebool \
+    ${PN}-fixfiles \
+    ${PN}-genhomedircon \
+    ${PN}-hll \
+    ${PN}-loadpolicy \
+    ${PN}-newrole \
+    ${PN}-runinit \
+    ${PN}-secon \
+    ${PN}-semodule \
+    ${PN}-sestatus \
+    ${PN}-setfiles \
+    ${PN}-setsebool \
 "
 FILES_${PN}-fixfiles +=3D "${base_sbindir}/fixfiles"
 FILES_${PN}-genhomedircon +=3D "${base_sbindir}/genhomedircon"
 FILES_${PN}-loadpolicy +=3D "\
-	${base_sbindir}/load_policy \
+    ${base_sbindir}/load_policy \
 "
 FILES_${PN}-newrole +=3D "\
-	${bindir}/newrole \
-	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/newro=
le', '', d)} \
+    ${bindir}/newrole \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/ne=
wrole', '', d)} \
 "
 FILES_${PN}-runinit +=3D "\
-	${base_sbindir}/run_init \
-	${base_sbindir}/open_init_pty \
-	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run_i=
nit', '', d)} \
+    ${base_sbindir}/run_init \
+    ${base_sbindir}/open_init_pty \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/ru=
n_init', '', d)} \
 "
 FILES_${PN}-dbg +=3D "${prefix}/libexec/selinux/hll/.debug"
 FILES_${PN}-secon +=3D "${bindir}/secon"
 FILES_${PN}-semodule +=3D "${base_sbindir}/semodule"
 FILES_${PN}-hll +=3D "${prefix}/libexec/selinux/hll/*"
 FILES_${PN}-sestatus +=3D "\
-	${base_sbindir}/sestatus \
-	${sysconfdir}/sestatus.conf \
+    ${base_sbindir}/sestatus \
+    ${sysconfdir}/sestatus.conf \
 "
 FILES_${PN}-setfiles +=3D "\
-	${base_sbindir}/restorecon \
-	${base_sbindir}/restorecon_xattr \
-	${base_sbindir}/setfiles \
+    ${base_sbindir}/restorecon \
+    ${base_sbindir}/restorecon_xattr \
+    ${base_sbindir}/setfiles \
 "
 FILES_${PN}-setsebool +=3D "\
-	${base_sbindir}/setsebool \
-	${datadir}/bash-completion/completions/setsebool \
+    ${base_sbindir}/setsebool \
+    ${datadir}/bash-completion/completions/setsebool \
 "
=20
 export STAGING_INCDIR
@@ -127,48 +132,48 @@ BBCLASSEXTEND =3D "native"
 PCU_NATIVE_CMDS =3D "setfiles semodule hll"
=20
 do_compile_class-native() {
-	for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
-		oe_runmake -C $PCU_CMD \
-			INCLUDEDIR=3D'${STAGING_INCDIR}' \
-			LIBDIR=3D'${STAGING_LIBDIR}'
-	done
+    for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
+        oe_runmake -C $PCU_CMD \
+            INCLUDEDIR=3D'${STAGING_INCDIR}' \
+            LIBDIR=3D'${STAGING_LIBDIR}'
+    done
 }
=20
 sysroot_stage_dirs_append_class-native() {
-	cp -R $from/${prefix}/libexec $to/${prefix}/libexec
+    cp -R $from/${prefix}/libexec $to/${prefix}/libexec
 }
=20
 do_compile_prepend() {
-	export PYTHON=3Dpython3
-	export PYLIBVER=3D'python${PYTHON_BASEVERSION}'
-	export PYTHON_CPPFLAGS=3D"-I${STAGING_INCDIR}/${PYLIBVER}"
-	export PYTHON_LDFLAGS=3D"${STAGING_LIBDIR}/lib${PYLIBVER}.so"
-	export PYTHON_SITE_PKG=3D"${libdir}/${PYLIBVER}/site-packages"
+    export PYTHON=3Dpython3
+    export PYLIBVER=3D'python${PYTHON_BASEVERSION}'
+    export PYTHON_CPPFLAGS=3D"-I${STAGING_INCDIR}/${PYLIBVER}"
+    export PYTHON_LDFLAGS=3D"${STAGING_LIBDIR}/lib${PYLIBVER}.so"
+    export PYTHON_SITE_PKG=3D"${libdir}/${PYLIBVER}/site-packages"
 }
=20
 do_install_prepend() {
-	export PYTHON=3Dpython3
-	export SBINDIR=3D"${D}/${base_sbindir}"
+    export PYTHON=3Dpython3
+    export SBINDIR=3D"${D}/${base_sbindir}"
 }
=20
 do_install_class-native() {
-	for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
-	     oe_runmake -C $PCU_CMD install \
-			DESTDIR=3D"${D}" \
-			PREFIX=3D"${prefix}" \
-			SBINDIR=3D"${base_sbindir}"
-	done
+    for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
+        oe_runmake -C $PCU_CMD install \
+            DESTDIR=3D"${D}" \
+            PREFIX=3D"${prefix}" \
+            SBINDIR=3D"${base_sbindir}"
+    done
 }
=20
 do_install_append_class-target() {
-	if [ -e ${WORKDIR}/pam.d ]; then
-		install -d ${D}${sysconfdir}/pam.d/
-		install -m 0644 ${WORKDIR}/pam.d/* ${D}${sysconfdir}/pam.d/
-	fi
-
-	# /var/lib/selinux is involved by seobject.py:
-	#   + dirname =3D "/var/lib/selinux"
-	# and it's required for running command:
-	#   $ semanage permissive [OPTS]
-	install -d ${D}${localstatedir}/lib/selinux
+    if [ -e ${WORKDIR}/pam.d ]; then
+        install -d ${D}${sysconfdir}/pam.d/
+        install -m 0644 ${WORKDIR}/pam.d/* ${D}${sysconfdir}/pam.d/
+    fi
+
+    # /var/lib/selinux is involved by seobject.py:
+    #   + dirname =3D "/var/lib/selinux"
+    # and it's required for running command:
+    #   $ semanage permissive [OPTS]
+    install -d ${D}${localstatedir}/lib/selinux
 }
--=20
2.25.1

