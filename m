Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.65592.1629348452254257642
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Fmvg1buI;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4lVum029453;
	Thu, 19 Aug 2021 04:47:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=hjrOqVIqu8y3CRanfvSMQ9onyO60wxzYIg0jl9KL/P4=;
 b=Fmvg1buI/ai+x9F3vOezDtD3hr3+LTXtUatRrpg8ISu2krxRGge+31CeP4uwlAzzLYMd
 y0YMNuDAe9CaVw+QIzeNs0A88D4L/ZhmBS7zjrUiyyiD0mn2Fb5WSwS8Fu4RnlErN5Kh
 40eSZiFIEDYAXLNfgv4mC/Zo1f/bYIA019ZNEpcGYQnT8KS7S0gWOxvTr0EFY6OPfQry
 M5OZjvRBE9y8lihMtm+Xg7OOUjv4KSaOKrCxRXcoX0NSn1IRa3qxdCbauhHyFButYbGn
 lKEjVNbqhry5x4KxwtQ2/S5t9AD8W0+vD23kV/YXAvOCKIo3/SLGZ5ueaPf/IXzH0nRP Rw== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2170.outbound.protection.outlook.com [104.47.55.170])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ahakcr611-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Aug 2021 04:47:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mo38KeWkws0o4l7VZ48NP0fewhzhTRGfLPfGWhMLoG5ZL4KDVPkmdfqTJyA77Um6P2OebhaWZMhsyolrQEEQaCt/AVsmxAZ7hBCOk0UJCeWlCvQEVZeM4Iv7hFANJsyTxiAcx56QohqLXyu6KYcVpbdiS5yvJAlaTmHWSTd+Exms1C9cjbkVlQ0m/pI/dNckgnXqV2GUK9BM4GVvI+fFhmVO4SzdJyJtf/mvGs1s4Q/6o0cy3Ms7SkDqIMOTiqp3kJSFTDjeymaI0VvpGdVCxS4y63aZtRKKxeCfAlLbhEtNODSV8o+0xnjk6X5rMKfZbP0m5j04ecoSIkinNgc8ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hjrOqVIqu8y3CRanfvSMQ9onyO60wxzYIg0jl9KL/P4=;
 b=Iz4VPSU2GugpiuKA6HUAFCyLfWXyJtD3NJdc1/huPA3kqPzVowJCntJQrKXiQ26HPJKc7zGNxJfZNnXjozjnO94iWKBbYPiwkiDpv88cxe5z+GiLNkVQLOiLylcf7F0GfsCNYBHaUTmu4Zbu581GhqPVOEp7LaXB3cAAP6JWqrukvgts3sUY1MlS+o2GekEC85D6BOBslNzewC091FZoq/Nb8krVfwwed5gCIeWTyXLOBvI37kNBBkyPp1NuM9bM2qidP0s7PWaTPgbqQlIGMWXXl5fmpOGY8JRfnZ+J1LvrPdAATPvuAFc01NK/ib6K8RBjqgYzidhJnlogGXlHwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.22; Thu, 19 Aug
 2021 04:47:29 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:29 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 07/12] classes: drop redundant classes
Date: Thu, 19 Aug 2021 12:47:03 +0800
Message-Id: <20210819044708.105282-7-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 795ffd8d-f11a-46d9-c902-08d962cc72e3
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB48678BECF5FF56D5270DA30AF9C09@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZF7UAGqOYJ+I58WRScSn2dSDO0QdiXL4Ym74v10VWJoxLo2Jbq8iryScBV8OHlW8t3wye5Zx/MgMwXdU+UXm36BqRXjyEKNhFh/+PVkFWQkyzwPaOlPcqDKDiFSzUc3ACt09lgLcNwgcbW0EwSEJzSR/FqxkDaWzyPSnQ3N400pi8myS44WH2RGcA4hkDLKVkMgZoIgHtvCONHjTwqSzPynOKx9rtbdvfe4XsJSZvS4JUzfkD5D23WSXNSCsvlgc1M8yKuGSv/9UzgsZln4LmPkCFGFXWSKjPNwi3cL4c6fQRUtqB0e1Ou3QzAdsBuFOdV1ZUsHf62VrEJMJasNHDr6jLdceWTJYRnCL+DO1lOFGDHqZEOs4Jr9TbOnMGszpw/ccZmf8JF+d7XVjmROUcnZPVkZLEQhbBG3XQdKyfQQNHbKweDvWiyvr2qhFlkn9xyK9dkp4bdj3KzN321w8pU+qi3l4tP5eJrNtO6OOnNVSewmzElMQhiiJ+2ZaLrS/F2ZPBcN4vArG0Z9QlkbALegJDLzmLPMCe5QbHPTlh6LHz41kytKPgLaeSHXM1nqa0vFB7V12NL1sByvX+Ny/Lv0TwhqVbtgACwuNk8+qcwRz6mQ3r+WgIOaMoHtcp716I4jOVeKpNbreyiI5yoSNsRRNLgvwRW2n65t+gXA1RqkcdjxNQU3WERoI41KBJA7wc95N8+0Wc2UNHCwTWLVc3g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(6666004)(52116002)(26005)(186003)(6486002)(316002)(86362001)(30864003)(2906002)(66946007)(6506007)(66556008)(66476007)(1076003)(5660300002)(38100700002)(36756003)(6512007)(8676002)(83380400001)(38350700002)(956004)(2616005)(44832011)(478600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?b2zprqgR1W+yrXzbdlvkLpjryrsWtHPuOSDPYOh/IYFsmNlb+xL045cdBdes?=
 =?us-ascii?Q?Fpv0/c3goxZMU7MaJZ8IQR9PdgCdDdq+3MUOOlSN2EItrYFqkaq/0XxzzQGG?=
 =?us-ascii?Q?CbQHuOZ2Twbayza3MD24lcBbMZYwI/cbzG3Q5qhNnSGcow5e+N9QjGMOghvX?=
 =?us-ascii?Q?R4qy8NRiigNKs5elktuIvWulDEB+ltaBldGTYiDn0ZRtkj4WnEqzFK4cNq/M?=
 =?us-ascii?Q?8E2uT3pHSIwMVcmlGY1S9b3CqiCXJTx18OncbyhxCwy8L45o5m9wBqDkP1eJ?=
 =?us-ascii?Q?H/lEDxOUTlB8tDWQ2jIIL2U0UQft1ZsfPfWqoHQ/9KtLoJ2+/MI3O8em/7Qm?=
 =?us-ascii?Q?37YcWA5pFAf7CQRo23lKuT0AYoqlJPyELYYycW1MLs3tZsQ8d/cG3mIIMoxv?=
 =?us-ascii?Q?j89D2OTD7lWpHCKDBkZOkw/+lY1MBda7MSVb5g8bHROsVysKo6XKWG/F8/3y?=
 =?us-ascii?Q?wSVuVmwRCqELa+husVoPTLtPzFaUOYg5U0buJ5tcXaJ/9dPNU5VlWfYrv+iL?=
 =?us-ascii?Q?XBEmgPouLdgit6aB94zJPa7XydClEVpkiTOTmBGkq62CkL2c5b1stNxYDIhN?=
 =?us-ascii?Q?s462I7wvPUwYUuhH8OF9GysLZn5VguZvMhjiWhyhPuIIHSPFZMbMBoUFDsp9?=
 =?us-ascii?Q?vOigvWwnZIcnN8zdbmxi9mC7wXKhwidhuGl5lkgPcHRubvhlWEIFIq2NXbsa?=
 =?us-ascii?Q?+4JA3OpmIdfQuBoDRXSvx4pq++NDm+UAkmXbKp30KJeCD5trZ6LUnlEBCxGz?=
 =?us-ascii?Q?mYLLaJxvqwxxeStfAlSzGKq2xoi4hC2tqZMgo8pFlhQP2tyQlwGU4LnyQ8xm?=
 =?us-ascii?Q?fyX1LoaT9/qTuoo4tmH96gKtwPgGhg6N7fSh0ylShmDvzrVSOY0KI0hezXO+?=
 =?us-ascii?Q?HJteVFZKr80i2hDB4a3QNq0q+nJKClMjQrH1swPsNcD8BBZMyTb1K3VbYmQt?=
 =?us-ascii?Q?Pbn4ySd1OfSUBT/MzrahHM7+Ekku5tdPs2NsD6UK3xNe/a3EUEmXgnm8CeqB?=
 =?us-ascii?Q?6SENRglN+6L+PCLR5K55Ct4NDYWb2mvwaJSMXc4bYspjvUIM+pUsY7yc/o2g?=
 =?us-ascii?Q?uLBi07RF/yg4pFDdUZZHsOgR7+zB27qHlXDkHNzSgT/toyf28JTeLNUup6ZX?=
 =?us-ascii?Q?sdhWse2kk10zjVl6v6TbplzQyFrXSATgO7fPlbYfV4xEWRXrNvZTT5BuvHHo?=
 =?us-ascii?Q?GeuJtQANl+S+eIjd0Pc4onVWAX9Q7xNWQDgGFYVjJJcZaOVdyk+GGmK5BKpG?=
 =?us-ascii?Q?KqFnypU3KDtj+EuQdbEl7F1cXZt0Xv5eYQzckbOnTXDZtSMlZjpEyUxPG3tV?=
 =?us-ascii?Q?mgrUIzUcZWkNxPFP2tFjsApV?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 795ffd8d-f11a-46d9-c902-08d962cc72e3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:29.2834
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Rxwwirc3O0siP2Y/8p3+LsrTZcHooHtFKMgv6T/zLPCaKiCHNjfj+4iq5/2ecJQhcliGvOwNZUDMY3QIN8RDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-Proofpoint-GUID: oAku6ZyFjzR8ByCpWXlbMYReZgAIWjOm
X-Proofpoint-ORIG-GUID: oAku6ZyFjzR8ByCpWXlbMYReZgAIWjOm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 mlxscore=0 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

There are some redundant classes: enable-selinux.bbclass,
with-selinux.bbclass, meson-enable-selinux.bbclass,
meson-selinux.bbclass, enable-audit.bbclass, with-audit.bbclass.
These classes only add PACKAGEOCNFIG[selinux]/[audit] to recipes. But
currently most recipes have added PACKAGECONFIG[selinux]/[audit] in
their bb files. We don't need these anymore. Only keep
enable-selinux.class and enable-audit.class to append
PACKAGECONFIG[selinux]/[audit] for recipes.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 classes/enable-selinux.bbclass                       | 3 +--
 classes/meson-enable-selinux.bbclass                 | 4 ----
 classes/meson-selinux.bbclass                        | 4 ----
 classes/with-audit.bbclass                           | 5 -----
 classes/with-selinux.bbclass                         | 4 ----
 recipes-connectivity/iproute2/iproute2_%.bbappend    | 3 ++-
 recipes-connectivity/openssh/openssh_selinux.inc     | 9 +++------
 recipes-core/coreutils/coreutils_%.bbappend          | 4 ++--
 recipes-core/dbus/dbus_%.bbappend                    | 2 +-
 recipes-core/eudev/eudev_selinux.inc                 | 1 +
 recipes-core/glib-2.0/glib-2.0_%.bbappend            | 2 +-
 recipes-core/systemd/systemd_selinux.inc             | 2 +-
 recipes-core/util-linux/util-linux_%.bbappend        | 3 ++-
 recipes-devtools/rpm/rpm_selinux.inc                 | 4 ++--
 recipes-extended/at/at_%.bbappend                    | 2 +-
 recipes-extended/cronie/cronie_%.bbappend            | 4 ++--
 recipes-extended/findutils/findutils_%.bbappend      | 3 ++-
 recipes-extended/pam/libpam_selinux.inc              | 1 +
 recipes-extended/psmisc/psmisc_%.bbappend            | 1 +
 recipes-extended/sed/sed_4.%.bbappend                | 2 +-
 recipes-extended/shadow/shadow_selinux.inc           | 5 +----
 recipes-extended/sudo/sudo_%.bbappend                | 5 ++++-
 recipes-extended/tar/tar_selinux.inc                 | 4 ++--
 recipes-graphics/mesa/mesa_%.bbappend                | 4 ++--
 recipes-graphics/xcb/libxcb_selinux.inc              | 6 ------
 recipes-graphics/{xcb => xorg-lib}/libxcb_%.bbappend | 0
 recipes-graphics/xorg-lib/libxcb_selinux.inc         | 5 +++++
 recipes-kernel/perf/perf_selinux.inc                 | 2 +-
 recipes-support/attr/attr_selinux.inc                | 2 --
 recipes-support/gnupg/gnupg_selinux.inc              | 3 +--
 30 files changed, 40 insertions(+), 59 deletions(-)
 delete mode 100644 classes/meson-enable-selinux.bbclass
 delete mode 100644 classes/meson-selinux.bbclass
 delete mode 100644 classes/with-audit.bbclass
 delete mode 100644 classes/with-selinux.bbclass
 delete mode 100644 recipes-graphics/xcb/libxcb_selinux.inc
 rename recipes-graphics/{xcb => xorg-lib}/libxcb_%.bbappend (100%)
 create mode 100644 recipes-graphics/xorg-lib/libxcb_selinux.inc

diff --git a/classes/enable-selinux.bbclass b/classes/enable-selinux.bbclass
index c8af97e..3dc61d6 100644
--- a/classes/enable-selinux.bbclass
+++ b/classes/enable-selinux.bbclass
@@ -1,4 +1,3 @@
 inherit selinux
 
-PACKAGECONFIG:append = " ${@target_selinux(d)}"
-PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux,"
+PACKAGECONFIG:append = " ${@target_selinux(d, 'selinux')}"
diff --git a/classes/meson-enable-selinux.bbclass b/classes/meson-enable-selinux.bbclass
deleted file mode 100644
index b5b8cb7..0000000
--- a/classes/meson-enable-selinux.bbclass
+++ /dev/null
@@ -1,4 +0,0 @@
-inherit selinux
-
-PACKAGECONFIG:append = " ${@target_selinux(d)}"
-PACKAGECONFIG[selinux] = "-Dselinux=enabled,-Dselinux=disabled,libselinux,"
diff --git a/classes/meson-selinux.bbclass b/classes/meson-selinux.bbclass
deleted file mode 100644
index 337ffca..0000000
--- a/classes/meson-selinux.bbclass
+++ /dev/null
@@ -1,4 +0,0 @@
-inherit selinux
-
-PACKAGECONFIG:append = " ${@target_selinux(d)}"
-PACKAGECONFIG[selinux] = "-Dselinux=true,-Dselinux=false,libselinux,"
diff --git a/classes/with-audit.bbclass b/classes/with-audit.bbclass
deleted file mode 100644
index a99bf71..0000000
--- a/classes/with-audit.bbclass
+++ /dev/null
@@ -1,5 +0,0 @@
-# There is still no audit DISTRO_FEATURE, so enable audit when selinux feature enabled.
-inherit selinux
-
-PACKAGECONFIG:append = " ${@target_selinux(d, 'audit')}"
-PACKAGECONFIG[audit] = "--with-audit,--without-audit,audit,"
diff --git a/classes/with-selinux.bbclass b/classes/with-selinux.bbclass
deleted file mode 100644
index 37b9e13..0000000
--- a/classes/with-selinux.bbclass
+++ /dev/null
@@ -1,4 +0,0 @@
-inherit selinux
-
-PACKAGECONFIG:append = " ${@target_selinux(d)}"
-PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux,"
diff --git a/recipes-connectivity/iproute2/iproute2_%.bbappend b/recipes-connectivity/iproute2/iproute2_%.bbappend
index b01ad25..8cb2a5b 100644
--- a/recipes-connectivity/iproute2/iproute2_%.bbappend
+++ b/recipes-connectivity/iproute2/iproute2_%.bbappend
@@ -1 +1,2 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
+PACKAGECONFIG[selinux] = ",,libselinux"
diff --git a/recipes-connectivity/openssh/openssh_selinux.inc b/recipes-connectivity/openssh/openssh_selinux.inc
index 20937c2..07c25c5 100644
--- a/recipes-connectivity/openssh/openssh_selinux.inc
+++ b/recipes-connectivity/openssh/openssh_selinux.inc
@@ -1,9 +1,6 @@
-inherit with-selinux
+inherit enable-selinux enable-audit
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
-# There is no distro feature just for audit.
-PACKAGECONFIG:append = " audit"
-
-PACKAGECONFIG[audit] = "--with-audit=linux,--without-audit,audit,"
-
+PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
+PACKAGECONFIG[audit] = "--with-audit=linux,--without-audit,audit"
diff --git a/recipes-core/coreutils/coreutils_%.bbappend b/recipes-core/coreutils/coreutils_%.bbappend
index 7b9a2dc..138c23a 100644
--- a/recipes-core/coreutils/coreutils_%.bbappend
+++ b/recipes-core/coreutils/coreutils_%.bbappend
@@ -1,2 +1,2 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
-
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
+PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
diff --git a/recipes-core/dbus/dbus_%.bbappend b/recipes-core/dbus/dbus_%.bbappend
index ee221e2..fe51e54 100644
--- a/recipes-core/dbus/dbus_%.bbappend
+++ b/recipes-core/dbus/dbus_%.bbappend
@@ -1,2 +1,2 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux enable-audit', '', d)}
 
diff --git a/recipes-core/eudev/eudev_selinux.inc b/recipes-core/eudev/eudev_selinux.inc
index 94950f5..976cb23 100644
--- a/recipes-core/eudev/eudev_selinux.inc
+++ b/recipes-core/eudev/eudev_selinux.inc
@@ -1,3 +1,4 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 inherit enable-selinux
+PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux"
diff --git a/recipes-core/glib-2.0/glib-2.0_%.bbappend b/recipes-core/glib-2.0/glib-2.0_%.bbappend
index 39a0a3a..74e22b3 100644
--- a/recipes-core/glib-2.0/glib-2.0_%.bbappend
+++ b/recipes-core/glib-2.0/glib-2.0_%.bbappend
@@ -1 +1 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'meson-enable-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
diff --git a/recipes-core/systemd/systemd_selinux.inc b/recipes-core/systemd/systemd_selinux.inc
index 8136ea8..7d466ee 100644
--- a/recipes-core/systemd/systemd_selinux.inc
+++ b/recipes-core/systemd/systemd_selinux.inc
@@ -1,4 +1,4 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', '', d)}
+inherit enable-selinux enable-audit
 
 do_install:append() {
 	if ${@bb.utils.contains('PACKAGECONFIG', 'backlight', 'true', 'false', d)}; then
diff --git a/recipes-core/util-linux/util-linux_%.bbappend b/recipes-core/util-linux/util-linux_%.bbappend
index b01ad25..138c23a 100644
--- a/recipes-core/util-linux/util-linux_%.bbappend
+++ b/recipes-core/util-linux/util-linux_%.bbappend
@@ -1 +1,2 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
+PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
diff --git a/recipes-devtools/rpm/rpm_selinux.inc b/recipes-devtools/rpm/rpm_selinux.inc
index 983dda7..b6e0e7c 100644
--- a/recipes-devtools/rpm/rpm_selinux.inc
+++ b/recipes-devtools/rpm/rpm_selinux.inc
@@ -1,2 +1,2 @@
-inherit with-selinux
-PACKAGECONFIG[selinux] = "${WITH_SELINUX},${WITHOUT_SELINUX},libsemanage,"
+inherit enable-selinux
+PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
diff --git a/recipes-extended/at/at_%.bbappend b/recipes-extended/at/at_%.bbappend
index b01ad25..74e22b3 100644
--- a/recipes-extended/at/at_%.bbappend
+++ b/recipes-extended/at/at_%.bbappend
@@ -1 +1 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
diff --git a/recipes-extended/cronie/cronie_%.bbappend b/recipes-extended/cronie/cronie_%.bbappend
index cfa56ca..2da759e 100644
--- a/recipes-extended/cronie/cronie_%.bbappend
+++ b/recipes-extended/cronie/cronie_%.bbappend
@@ -1,2 +1,2 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-audit', '', d)}
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux enable-audit', '', d)}
+PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
diff --git a/recipes-extended/findutils/findutils_%.bbappend b/recipes-extended/findutils/findutils_%.bbappend
index b01ad25..138c23a 100644
--- a/recipes-extended/findutils/findutils_%.bbappend
+++ b/recipes-extended/findutils/findutils_%.bbappend
@@ -1 +1,2 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
+PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
diff --git a/recipes-extended/pam/libpam_selinux.inc b/recipes-extended/pam/libpam_selinux.inc
index bee1f3e..2f8b945 100644
--- a/recipes-extended/pam/libpam_selinux.inc
+++ b/recipes-extended/pam/libpam_selinux.inc
@@ -1,3 +1,4 @@
 inherit enable-selinux
 
+PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux"
 RDEPENDS:${PN}-runtime += "${@target_selinux(d, 'pam-plugin-selinux')}"
diff --git a/recipes-extended/psmisc/psmisc_%.bbappend b/recipes-extended/psmisc/psmisc_%.bbappend
index 74e22b3..d02ee09 100644
--- a/recipes-extended/psmisc/psmisc_%.bbappend
+++ b/recipes-extended/psmisc/psmisc_%.bbappend
@@ -1 +1,2 @@
 inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
+PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux"
diff --git a/recipes-extended/sed/sed_4.%.bbappend b/recipes-extended/sed/sed_4.%.bbappend
index b01ad25..74e22b3 100644
--- a/recipes-extended/sed/sed_4.%.bbappend
+++ b/recipes-extended/sed/sed_4.%.bbappend
@@ -1 +1 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
diff --git a/recipes-extended/shadow/shadow_selinux.inc b/recipes-extended/shadow/shadow_selinux.inc
index 3c8daea..e719ebc 100644
--- a/recipes-extended/shadow/shadow_selinux.inc
+++ b/recipes-extended/shadow/shadow_selinux.inc
@@ -1,6 +1,3 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
-inherit with-selinux with-audit
-
-PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux libsemanage,"
-
+inherit enable-selinux enable-audit
diff --git a/recipes-extended/sudo/sudo_%.bbappend b/recipes-extended/sudo/sudo_%.bbappend
index b01ad25..2e35ec5 100644
--- a/recipes-extended/sudo/sudo_%.bbappend
+++ b/recipes-extended/sudo/sudo_%.bbappend
@@ -1 +1,4 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux enable-audit', '', d)}
+
+PACKAGECONFIG[audit] = "--with-linux-audit,--without-linux-audit,audit"
+PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
diff --git a/recipes-extended/tar/tar_selinux.inc b/recipes-extended/tar/tar_selinux.inc
index b1fa7bf..0f64298 100644
--- a/recipes-extended/tar/tar_selinux.inc
+++ b/recipes-extended/tar/tar_selinux.inc
@@ -1,3 +1,3 @@
-inherit with-selinux
+inherit enable-selinux
 
-PACKAGECONFIG:append = "${@bb.utils.contains('DISTRO_FEATURES', 'acl', ' acl', '', d)}"
+PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
index 02c4918..ef81ec4 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1,2 +1,2 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'meson-selinux', '', d)}
-
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
+PACKAGECONFIG[selinux] = "-Dselinux=true,-Dselinux=false,libselinux"
diff --git a/recipes-graphics/xcb/libxcb_selinux.inc b/recipes-graphics/xcb/libxcb_selinux.inc
deleted file mode 100644
index 6924315..0000000
--- a/recipes-graphics/xcb/libxcb_selinux.inc
+++ /dev/null
@@ -1,6 +0,0 @@
-inherit enable-selinux
-# libxcb-xselinux will not build with libselinux, so remove the depend
-PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,,"
-
-PACKAGES += "${PN}-xselinux"
-FILES:${PN}-xselinux += "${libdir}/libxcb-xselinux.so.*"
diff --git a/recipes-graphics/xcb/libxcb_%.bbappend b/recipes-graphics/xorg-lib/libxcb_%.bbappend
similarity index 100%
rename from recipes-graphics/xcb/libxcb_%.bbappend
rename to recipes-graphics/xorg-lib/libxcb_%.bbappend
diff --git a/recipes-graphics/xorg-lib/libxcb_selinux.inc b/recipes-graphics/xorg-lib/libxcb_selinux.inc
new file mode 100644
index 0000000..04c66c1
--- /dev/null
+++ b/recipes-graphics/xorg-lib/libxcb_selinux.inc
@@ -0,0 +1,5 @@
+inherit enable-selinux
+PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux"
+
+PACKAGES += "${PN}-xselinux"
+FILES:${PN}-xselinux += "${libdir}/libxcb-xselinux.so.*"
diff --git a/recipes-kernel/perf/perf_selinux.inc b/recipes-kernel/perf/perf_selinux.inc
index bed3cc2..f1bdaf8 100644
--- a/recipes-kernel/perf/perf_selinux.inc
+++ b/recipes-kernel/perf/perf_selinux.inc
@@ -1 +1 @@
-DEPENDS .= "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', ' audit', '', d)}"
+inherit enable-audit
diff --git a/recipes-support/attr/attr_selinux.inc b/recipes-support/attr/attr_selinux.inc
index 7b45842..efc18b2 100644
--- a/recipes-support/attr/attr_selinux.inc
+++ b/recipes-support/attr/attr_selinux.inc
@@ -1,5 +1,3 @@
-inherit selinux
-
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 SRC_URI += "file://fix-ptest-failures-when-selinux-enabled.patch"
diff --git a/recipes-support/gnupg/gnupg_selinux.inc b/recipes-support/gnupg/gnupg_selinux.inc
index 12571b4..eee1731 100644
--- a/recipes-support/gnupg/gnupg_selinux.inc
+++ b/recipes-support/gnupg/gnupg_selinux.inc
@@ -1,3 +1,2 @@
 inherit enable-selinux
-# gnupg will not build with libselinux, so remove the depend
-PACKAGECONFIG[selinux] = "--enable-selinux-support,--disable-selinux-support,,"
+PACKAGECONFIG[selinux] = "--enable-selinux-support,--disable-selinux-support,libselinux"
-- 
2.25.1

