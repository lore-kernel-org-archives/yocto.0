Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.5648.1628059803606863436
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 23:50:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=BtYtlQZm;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3850754a31=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1746gBaY002228;
	Wed, 4 Aug 2021 06:50:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=PSEssLXOFMmXrqm6UL429TvFxg1WUW7PnaN3fvFB6Hc=;
 b=BtYtlQZmHLAZfurUOuQVXGCusUpNvDS7YFW6IGYOMARCzwIK4btimXC3HPQCHN7Wgrz+
 5FSu6qWEYq1WwkU35peJHOaVQZ01OAArj7+Gf1pbTz0N+e2UKBj4/SB5RA2reGIw7kIY
 XPuWoG+WqihD3y+dJqxXN+ymE5vGvWqWaMWIlsJ+OYaWbL1KCnpXDdjuuhr8e8CKgqnH
 nrAhtVR1pfXsLyn86ebu8fLJFsdaLUMOF0XApLW2Px8k14IzeDDxeCzJZW97ka+WB1/J
 p6pDnCQFEYn7Twew6/DPz6A2iVlQojWM3m8DPmArgmDbbe8YsbQ+7NvnfSSBgMOMqM4S kQ== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2103.outbound.protection.outlook.com [104.47.70.103])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a705h8tmn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Aug 2021 06:50:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MvFFZ4FLklcFKft9MeXM3ebhN5D9GItohUPXZ36XaYL1PKDfXI6VTB0MaxwcyQv/6aVhqDjZWBb4GsPcXXZ57i5Fxnj/Y4ZW7/jev2zzoHUcKPJfxApP9+V/o2eHXtiy4QaarluXxcIuMv0dt57Q2dpv/xvuzjgOp70o/p4uCDP+ulU1eiW9y5v2DcVNnh3ACHqGsEZq4BBreQLdF04uPP1CbSOfU993NwVwsKzFP7SGogPSfEFFXdy2sn5hMUy4uttBUEMZx7MjBTR5Q6/l9zrJpv4BEUnDur8GROyqrW283HvAuRA6vBTMoQWGxxQrhppfQbduCI314jfmixzycg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PSEssLXOFMmXrqm6UL429TvFxg1WUW7PnaN3fvFB6Hc=;
 b=gE+N+6jN6bXE8FMhgWqRR7hJmHignrjcomoNYlfTsZM8GLKTviLkRhgDBmt2Lig1Y+bv/K3w66rMTaEBg4MaXO0w893yPllJ6iwfVdiyx7FpAMWKU42OTBfGohfYI7Bkl4PZc7aj9oYh+f9qv3bpqbUrPVgrlpOGJUeCPPgD+nhIwn+ODejC66pqtd6BEYMSWZ/Ib2zK686qkq+aCXeWpO3BFqMDeMzIzRATzgluQnrhVpVP4lONEgmjIjxtCt+wUTzyMBW+Ctx9tH/QVzAcwssws4X5ucSsg7JjnYRXYZCT5eAi/N2+behLLUWI8toVq4uS1X1eqKznCSDkCxBgdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1950.namprd11.prod.outlook.com (2603:10b6:300:112::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Wed, 4 Aug
 2021 06:49:59 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ca0:3d02:dcd0:626c]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ca0:3d02:dcd0:626c%6]) with mapi id 15.20.4373.027; Wed, 4 Aug 2021
 06:49:59 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 3/3] meta-selinux: convert to new override syntax
Date: Wed,  4 Aug 2021 14:49:44 +0800
Message-Id: <20210804064944.334566-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210804064944.334566-1-yi.zhao@windriver.com>
References: <20210804064944.334566-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK2PR03CA0047.apcprd03.prod.outlook.com
 (2603:1096:202:17::17) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR03CA0047.apcprd03.prod.outlook.com (2603:1096:202:17::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.8 via Frontend Transport; Wed, 4 Aug 2021 06:49:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 889e8bf3-c31a-4ca1-2c64-08d9571413ad
X-MS-TrafficTypeDiagnostic: MWHPR11MB1950:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1950496EAEB982C77EA62F97F9F19@MWHPR11MB1950.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3eVzyp+oTryBpx9sZ5jUbv1RSJ8Rv0WtN8ACObcvrdohn6EWs1N1D2hRiaCBn2CwSOJ7WqigcCxQTILNVHsmNzXZSHDgCutVdph4l7d/6d4NZ6ISKBLuJlgRzRtQO61CTfJHHWj7eYvUQTF7073i3LZG6XWZCPcuYctbyk6piC5K3ZhubmtLM1jtV9voQ74DQ/KCb7QlNl+rMA0rIlY+amQJXB05vTvzKfRHupIQt7Ue+pKfAcILwZbQ9z2swzyZOxtjs7/CWqejaNDqPWqCWtabF6twOejn5L29/emnux3b/B5iplhH/+AyqjUCxTu+AqH1sBqkJ9/ggjDiqXB+Bn/Csfrtc9Kl4iOw81OAn/fD1dgw6K+k3jttcB72fcohzkAMfUgLPyYeRrEbT3pSj8eR9V9n+1nVXp61PleuxjZkw/yyvklbv7WiBMx+Pq2VeDAzZAoKiDzX6cqVByU9fPzUpl7UtDPn14bhjHm3MQSnVSaKIueqYShFmLOGSWle6SAklIfTqFLJVrrZX29jOmLON/JSIRQxaFlIG3HZqstndgLtbbsr0IsS6hY/p1oEJoxuTnfLUh+mwiUfHKtxoisPcNjvvegGHRhJ43/oHyihpmory6l+doJy6py3KydbYg3xjQPsiZ3Z9Ou+UrWhH8RpMCSpe5UT2r5jH2/dXsm/J1FfbWTrn3tyShkFN8z1MvOnI80Bnnr5Fqf1K0becx+9cxGR1NRYLHGJxrxu+/I=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(376002)(39850400004)(396003)(86362001)(6486002)(8676002)(6666004)(8936002)(36756003)(6512007)(478600001)(83380400001)(956004)(44832011)(2616005)(5660300002)(52116002)(38100700002)(1076003)(30864003)(38350700002)(2906002)(316002)(26005)(66476007)(6506007)(186003)(66556008)(66946007)(579004)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?kql1oF9rUq+RUg/by0TLqjdeGyfEc1NLpsPqpaw9Y36gggmv8cIZ4u2hDxBH?=
 =?us-ascii?Q?6+DFkX9I8dPtsn7WDyifHBS+D9g/dbUajS0sfTM0860kCnw3DtlUiIevnORr?=
 =?us-ascii?Q?nkBCEDgdUT3f7/SzaefqGOpEWQO/cLfHcddW9XYjfyA2SHI1jgA4SkgjmQ2g?=
 =?us-ascii?Q?Q7wdoCSFs9La3giNqiopH3bhGUxlU5c3mv+eF8v8FQr2ALZ/dWQP08Roa2Br?=
 =?us-ascii?Q?V7MBXMAhS3dUGGlas//2eMfAEW3ZVL/HF3Bh+TBaZMysnv9mJnaTZFF8rBZx?=
 =?us-ascii?Q?23anrXBKyAotGRGxBy+m0m01o4dTgfaYZaBq8X8eOfAhyb979kyA7r8ZQvah?=
 =?us-ascii?Q?UBi4VT7KJaRAbFh8QLu1VsQoF4PEcdvzWGtY+WM7+3GwCZXtjwWwmfeiv/0J?=
 =?us-ascii?Q?nM7UqNN6Jw7ZksBLtAch+8ZbL5/5jlCrO/9XrlxCZXtjtP2kEU4w0Gou/AVF?=
 =?us-ascii?Q?4M5EtqgWRPYg5zL2m0BcPR6AucaALLzk9QLtlZhwEdaygxsKqBpvKnVqal2M?=
 =?us-ascii?Q?M+73rbEWW64Dy1qjsRhXUkxG+oYnywAOLrGzsiucj9Rx7DzUS5jF9azyXTtM?=
 =?us-ascii?Q?ZENWNkRczhOE6ChxJpTI2+patRdVYPDnezth72gX9umFSaAmapUWIxElLQmf?=
 =?us-ascii?Q?M04WM+ByGwK6ykFYnTHKNYv3hNgcUEacL1mRdqmsupup7y1kvJoQA8bJeuWR?=
 =?us-ascii?Q?xqzmSKwMTqtDJVlHYla4wuD0tUFU03b5iYtR4zpTqc7xsGdITjyvSy531IlB?=
 =?us-ascii?Q?7c7DtHGEf1yezI8KtODb4CTl0xaZTG+aZEFuFB0FNEfWWGx0xzPCW55mi4gO?=
 =?us-ascii?Q?yoPkWb43ZhCkZXIfgGh+6N4RMYBcqUVsGOVTGKuYY0sJmB7rCUQAFHjHc2+a?=
 =?us-ascii?Q?jCEXYUCTKgnJJ/Bfmoh8yhT/CW3XSPqBCjAGUoZW5ZOg7xNa+Gaavpr949ta?=
 =?us-ascii?Q?kCMTfJCHmTUopL+n4GIkw+NJY0NhRKbuXyFgKJLAFxbfu7UolCDhLhO1bl00?=
 =?us-ascii?Q?cgAC1em/B7V/SOACClUXhTo2z1bsNcIjGzo5+SpWqGd2A4AmSxfVqySVK1Xh?=
 =?us-ascii?Q?sGzw3IRSwTm0rVmfOPOUqP7EwDkILm8//0Y0RBBn7NGEh257iFAOuSrtdEcz?=
 =?us-ascii?Q?HnpcS9knz4wxR6cP9LkTfmVyvHjexZyaHKEmJp9wQytXs8vTyXnXDVm0BDZu?=
 =?us-ascii?Q?U1URZj+clTtrtH8Kbdul7mD83wjU6RVgNiMjelh5ac6GKSXKIMKuGSJH4zLj?=
 =?us-ascii?Q?I7gqO6w2yS361sQNFTaEtlxMMIp1v2tAJu6yxqBuQhhd4r7drpKKblIYSkb/?=
 =?us-ascii?Q?mEIy9Sd44bibprnDP/d6fh69?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 889e8bf3-c31a-4ca1-2c64-08d9571413ad
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2021 06:49:59.8022
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gidtcFjdgTpJN+HknLy6zywRlmUR4Xt33ymvX9QFg4WW0hk5qVON9votrYyj47GigxJOxR/f83kvVw8xiSCgnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1950
X-Proofpoint-GUID: DRVJ5L-H-8mrJZp4tkRSCGJWDfXzOVaj
X-Proofpoint-ORIG-GUID: DRVJ5L-H-8mrJZp4tkRSCGJWDfXzOVaj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-04_02,2021-08-03_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1015
 mlxscore=0 suspectscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108040036
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

This is the result of automated script conversion:
poky/scripts/contrib/convert-overrides.py meta-selinux

Converting the metadata to use ":" as the override character instead of "_".

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 README                                        |  6 +-
 SELinux-FAQ                                   |  4 +-
 classes/enable-audit.bbclass                  |  2 +-
 classes/enable-selinux.bbclass                |  2 +-
 classes/meson-enable-selinux.bbclass          |  2 +-
 classes/meson-selinux.bbclass                 |  2 +-
 classes/selinux-image.bbclass                 |  2 +-
 classes/with-audit.bbclass                    |  2 +-
 classes/with-selinux.bbclass                  |  2 +-
 .../iscsi-initiator-utils_selinux.inc         |  2 +-
 .../python/python_selinux.inc                 |  2 +-
 recipes-connectivity/bind/bind_selinux.inc    |  4 +-
 .../openssh/openssh_selinux.inc               |  4 +-
 recipes-core/busybox/busybox_selinux.inc      | 10 ++--
 recipes-core/eudev/eudev_selinux.inc          |  2 +-
 .../initscripts/initscripts-1.0_selinux.inc   |  4 +-
 recipes-core/libcgroup/libcgroup_selinux.inc  |  4 +-
 recipes-core/systemd/systemd_selinux.inc      |  2 +-
 recipes-core/sysvinit/sysvinit_selinux.inc    |  2 +-
 recipes-extended/lsof/lsof_selinux.inc        |  2 +-
 recipes-extended/pam/libpam_selinux.inc       |  2 +-
 recipes-extended/shadow/shadow_selinux.inc    |  2 +-
 .../sysklogd/sysklogd_selinux.inc             |  2 +-
 recipes-extended/tar/tar_selinux.inc          |  2 +-
 recipes-graphics/xcb/libxcb_selinux.inc       |  2 +-
 recipes-kernel/linux/linux-yocto_selinux.inc  |  2 +-
 .../packagegroup-core-selinux.bb              |  4 +-
 .../packagegroup-selinux-minimal.bb           |  4 +-
 .../packagegroup-selinux-policycoreutils.bb   |  4 +-
 .../refpolicy/refpolicy_common.inc            | 14 ++---
 recipes-security/refpolicy/refpolicy_git.inc  |  2 +-
 recipes-security/selinux/checkpolicy_3.2.bb   |  2 +-
 .../selinux/libselinux-python_3.2.bb          | 10 ++--
 recipes-security/selinux/libselinux_3.2.bb    |  4 +-
 recipes-security/selinux/libsemanage_3.2.bb   | 16 ++---
 recipes-security/selinux/mcstrans_3.2.bb      | 10 ++--
 .../selinux/policycoreutils_3.2.bb            | 60 +++++++++----------
 recipes-security/selinux/restorecond_3.2.bb   | 10 ++--
 .../selinux/selinux-autorelabel_0.1.bb        |  4 +-
 recipes-security/selinux/selinux-dbus_3.2.bb  |  4 +-
 recipes-security/selinux/selinux-gui_3.2.bb   |  4 +-
 recipes-security/selinux/selinux-init_0.1.bb  |  2 +-
 recipes-security/selinux/selinux-initsh.inc   |  8 +--
 .../selinux/selinux-labeldev_0.1.bb           |  2 +-
 .../selinux/selinux-python_3.2.bb             | 26 ++++----
 .../selinux/selinux-sandbox_3.2.bb            |  4 +-
 .../selinux/semodule-utils_3.2.bb             |  8 +--
 recipes-security/setools/setools_4.4.0.bb     | 10 ++--
 recipes-support/attr/attr_selinux.inc         |  2 +-
 recipes-support/libpcre/libpcre_selinux.inc   |  4 +-
 50 files changed, 146 insertions(+), 146 deletions(-)

diff --git a/README b/README
index 20e94ca..77b6253 100644
--- a/README
+++ b/README
@@ -38,7 +38,7 @@ layer should not change the system behavior.
 In order to use the components in this layer you must add the 'selinux' to the
 DISTRO_FEATURES.  In addition to selinux, you should be sure that acl, xattr and
 pam are also present.
-e.g. DISTRO_FEATURES_append = " acl xattr pam selinux"
+e.g. DISTRO_FEATURES:append = " acl xattr pam selinux"
 
 You must also specify a preferred provider for the virtual/refpolicy.  The
 included policies with this layer are simply reference policies and will need
@@ -69,8 +69,8 @@ By default selinux enabled images coming up with "sysvinit" as init manager,
 we can use "systemd" as an init manager using below changes to local.conf
 
 * enable systemd as init manager changes to local.conf
-DISTRO_FEATURES_remove = " sysvinit"
-DISTRO_FEATURES_append = " systemd"
+DISTRO_FEATURES:remove = " sysvinit"
+DISTRO_FEATURES:append = " systemd"
 VIRTUAL-RUNTIME_init_manager = "systemd"
 DISTRO_FEATURES_BACKFILL_CONSIDERED = ""
 
diff --git a/SELinux-FAQ b/SELinux-FAQ
index b6a0df9..8f56b2b 100644
--- a/SELinux-FAQ
+++ b/SELinux-FAQ
@@ -67,7 +67,7 @@ After init Poky build environment, please follow these steps:
 
    1. Add meta-selinux path to BUILDDIR/conf/bblayers.conf file.
 
-   2. Set DISTRO="poky-selinux" or add DISTRO_FEATURES_append=" pam selinux"
+   2. Set DISTRO="poky-selinux" or add DISTRO_FEATURES:append=" pam selinux"
       in BUILDDIR/conf/local.conf file.
 
    3. Build the default selinux image.
@@ -81,7 +81,7 @@ the following steps:
 
    1. Add meta-selinux path to BUILDDIR/conf/bblayers.conf file
 
-   2. Add DISTRO_FEATURES_append=" pam selinux" in BUILDDIR/conf/local.conf 
+   2. Add DISTRO_FEATURES:append=" pam selinux" in BUILDDIR/conf/local.conf
       file.
 
    3. Add packagegroup-core-selinux to your custom image.
diff --git a/classes/enable-audit.bbclass b/classes/enable-audit.bbclass
index 4538b0b..17bcc8e 100644
--- a/classes/enable-audit.bbclass
+++ b/classes/enable-audit.bbclass
@@ -1,4 +1,4 @@
 # There is still no audit DISTRO_FEATURE, so enable audit when selinux feature enabled.
 inherit selinux
 
-PACKAGECONFIG_append = " ${@target_selinux(d, 'audit')}"
+PACKAGECONFIG:append = " ${@target_selinux(d, 'audit')}"
diff --git a/classes/enable-selinux.bbclass b/classes/enable-selinux.bbclass
index de2a124..c8af97e 100644
--- a/classes/enable-selinux.bbclass
+++ b/classes/enable-selinux.bbclass
@@ -1,4 +1,4 @@
 inherit selinux
 
-PACKAGECONFIG_append = " ${@target_selinux(d)}"
+PACKAGECONFIG:append = " ${@target_selinux(d)}"
 PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux,"
diff --git a/classes/meson-enable-selinux.bbclass b/classes/meson-enable-selinux.bbclass
index 91c2a2b..b5b8cb7 100644
--- a/classes/meson-enable-selinux.bbclass
+++ b/classes/meson-enable-selinux.bbclass
@@ -1,4 +1,4 @@
 inherit selinux
 
-PACKAGECONFIG_append = " ${@target_selinux(d)}"
+PACKAGECONFIG:append = " ${@target_selinux(d)}"
 PACKAGECONFIG[selinux] = "-Dselinux=enabled,-Dselinux=disabled,libselinux,"
diff --git a/classes/meson-selinux.bbclass b/classes/meson-selinux.bbclass
index 77a763a..337ffca 100644
--- a/classes/meson-selinux.bbclass
+++ b/classes/meson-selinux.bbclass
@@ -1,4 +1,4 @@
 inherit selinux
 
-PACKAGECONFIG_append = " ${@target_selinux(d)}"
+PACKAGECONFIG:append = " ${@target_selinux(d)}"
 PACKAGECONFIG[selinux] = "-Dselinux=true,-Dselinux=false,libselinux,"
diff --git a/classes/selinux-image.bbclass b/classes/selinux-image.bbclass
index 7f157d3..23645b7 100644
--- a/classes/selinux-image.bbclass
+++ b/classes/selinux-image.bbclass
@@ -10,6 +10,6 @@ selinux_set_labels () {
 
 DEPENDS += "policycoreutils-native"
 
-IMAGE_PREPROCESS_COMMAND_append = " selinux_set_labels ;"
+IMAGE_PREPROCESS_COMMAND:append = " selinux_set_labels ;"
 
 inherit core-image
diff --git a/classes/with-audit.bbclass b/classes/with-audit.bbclass
index 0c15312..a99bf71 100644
--- a/classes/with-audit.bbclass
+++ b/classes/with-audit.bbclass
@@ -1,5 +1,5 @@
 # There is still no audit DISTRO_FEATURE, so enable audit when selinux feature enabled.
 inherit selinux
 
-PACKAGECONFIG_append = " ${@target_selinux(d, 'audit')}"
+PACKAGECONFIG:append = " ${@target_selinux(d, 'audit')}"
 PACKAGECONFIG[audit] = "--with-audit,--without-audit,audit,"
diff --git a/classes/with-selinux.bbclass b/classes/with-selinux.bbclass
index 7873d9b..37b9e13 100644
--- a/classes/with-selinux.bbclass
+++ b/classes/with-selinux.bbclass
@@ -1,4 +1,4 @@
 inherit selinux
 
-PACKAGECONFIG_append = " ${@target_selinux(d)}"
+PACKAGECONFIG:append = " ${@target_selinux(d)}"
 PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux,"
diff --git a/dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc b/dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
index 81fe7b7..8802adb 100644
--- a/dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
+++ b/dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
diff --git a/dynamic-layers/python2-layer/recipes-devtools/python/python_selinux.inc b/dynamic-layers/python2-layer/recipes-devtools/python/python_selinux.inc
index bb54a90..4fed832 100644
--- a/dynamic-layers/python2-layer/recipes-devtools/python/python_selinux.inc
+++ b/dynamic-layers/python2-layer/recipes-devtools/python/python_selinux.inc
@@ -1,5 +1,5 @@
 # If selinux enabled, disable handlers to rw command history file
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 inherit selinux
 
diff --git a/recipes-connectivity/bind/bind_selinux.inc b/recipes-connectivity/bind/bind_selinux.inc
index 1be9260..aa11005 100644
--- a/recipes-connectivity/bind/bind_selinux.inc
+++ b/recipes-connectivity/bind/bind_selinux.inc
@@ -1,8 +1,8 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 SRC_URI += "file://volatiles.04_bind"
 
-do_install_append() {
+do_install:append() {
 	install -d ${D}${sysconfdir}/default/volatiles
 	install -m 0644 ${WORKDIR}/volatiles.04_bind ${D}${sysconfdir}/default/volatiles/04_bind
 
diff --git a/recipes-connectivity/openssh/openssh_selinux.inc b/recipes-connectivity/openssh/openssh_selinux.inc
index ebd2721..20937c2 100644
--- a/recipes-connectivity/openssh/openssh_selinux.inc
+++ b/recipes-connectivity/openssh/openssh_selinux.inc
@@ -1,9 +1,9 @@
 inherit with-selinux
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 # There is no distro feature just for audit.
-PACKAGECONFIG_append = " audit"
+PACKAGECONFIG:append = " audit"
 
 PACKAGECONFIG[audit] = "--with-audit=linux,--without-audit,audit,"
 
diff --git a/recipes-core/busybox/busybox_selinux.inc b/recipes-core/busybox/busybox_selinux.inc
index 6e491ce..ded8007 100644
--- a/recipes-core/busybox/busybox_selinux.inc
+++ b/recipes-core/busybox/busybox_selinux.inc
@@ -1,6 +1,6 @@
 PTEST_BINDIR = "0"
 
-FILES_${PN} += "${libdir}/${PN}"
+FILES:${PN} += "${libdir}/${PN}"
 
 # We should use sh wrappers instead of links so the commands could get correct
 # security labels
@@ -39,7 +39,7 @@ python create_sh_wrapper_reset_alternative_vars () {
             # Match coreutils
             if alt_name == '[':
                 alt_name = 'lbracket'
-            d.appendVar('ALTERNATIVE_%s' % (pn), ' ' + alt_name)
+            d.appendVar('ALTERNATIVE:%s' % (pn), ' ' + alt_name)
             d.setVarFlag('ALTERNATIVE_LINK_NAME', alt_name, alt_link_name)
             if os.path.exists(alt_wppath_dest):
                 d.setVarFlag('ALTERNATIVE_TARGET', alt_name, alt_wppath)
@@ -56,11 +56,11 @@ python create_sh_wrapper_reset_alternative_vars () {
 }
 
 # Add to PACKAGEBUILDPKGD so it could override the alternatives, which are set in
-# do_package_prepend() section of busybox_*.bb.
-PACKAGEBUILDPKGD_prepend = "create_sh_wrapper_reset_alternative_vars "
+# do_package:prepend() section of busybox_*.bb.
+PACKAGEBUILDPKGD:prepend = "create_sh_wrapper_reset_alternative_vars "
 
 # Use sh wrappers instead of links
-pkg_postinst_${PN} () {
+pkg_postinst:${PN} () {
 	# This part of code is dedicated to the on target upgrade problem.
 	# It's known that if we don't make appropriate symlinks before update-alternatives calls,
 	# there will be errors indicating missing commands such as 'sed'.
diff --git a/recipes-core/eudev/eudev_selinux.inc b/recipes-core/eudev/eudev_selinux.inc
index 2ad6b13..94950f5 100644
--- a/recipes-core/eudev/eudev_selinux.inc
+++ b/recipes-core/eudev/eudev_selinux.inc
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 inherit enable-selinux
diff --git a/recipes-core/initscripts/initscripts-1.0_selinux.inc b/recipes-core/initscripts/initscripts-1.0_selinux.inc
index bf798e7..6530a87 100644
--- a/recipes-core/initscripts/initscripts-1.0_selinux.inc
+++ b/recipes-core/initscripts/initscripts-1.0_selinux.inc
@@ -1,6 +1,6 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
-do_install_append () {
+do_install:append () {
 	cat <<-EOF >> ${D}${sysconfdir}/init.d/populate-volatile.sh
 touch /var/log/lastlog
 test ! -x /sbin/restorecon || /sbin/restorecon -iRF /var/volatile/ /var/lib /run \
diff --git a/recipes-core/libcgroup/libcgroup_selinux.inc b/recipes-core/libcgroup/libcgroup_selinux.inc
index 9d9ebfc..7efdfd5 100644
--- a/recipes-core/libcgroup/libcgroup_selinux.inc
+++ b/recipes-core/libcgroup/libcgroup_selinux.inc
@@ -1,6 +1,6 @@
-EXTRA_OECONF_append_class-native = " --enable-pam=no"
+EXTRA_OECONF:append:class-native = " --enable-pam=no"
 
-do_install_append() {
+do_install:append() {
 	test ! -f ${D}${base_libdir}/security/pam_cgroup.so.0.0.0 || {
 		mv -f ${D}${base_libdir}/security/pam_cgroup.so.0.0.0 ${D}${base_libdir}/security/pam_cgroup.so
 		rm -f ${D}${base_libdir}/security/pam_cgroup.so.*
diff --git a/recipes-core/systemd/systemd_selinux.inc b/recipes-core/systemd/systemd_selinux.inc
index b17e70a..8136ea8 100644
--- a/recipes-core/systemd/systemd_selinux.inc
+++ b/recipes-core/systemd/systemd_selinux.inc
@@ -1,6 +1,6 @@
 inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', '', d)}
 
-do_install_append() {
+do_install:append() {
 	if ${@bb.utils.contains('PACKAGECONFIG', 'backlight', 'true', 'false', d)}; then
 		install -d ${D}${localstatedir}/lib/systemd/backlight
 	fi
diff --git a/recipes-core/sysvinit/sysvinit_selinux.inc b/recipes-core/sysvinit/sysvinit_selinux.inc
index 2e54330..480bde7 100644
--- a/recipes-core/sysvinit/sysvinit_selinux.inc
+++ b/recipes-core/sysvinit/sysvinit_selinux.inc
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 B = "${S}"
 
diff --git a/recipes-extended/lsof/lsof_selinux.inc b/recipes-extended/lsof/lsof_selinux.inc
index 6691b4c..9021f38 100644
--- a/recipes-extended/lsof/lsof_selinux.inc
+++ b/recipes-extended/lsof/lsof_selinux.inc
@@ -2,7 +2,7 @@ inherit selinux
 
 DEPENDS += "${LIBSELINUX}"
 
-do_configure_prepend () {
+do_configure:prepend () {
 	export LINUX_HASSELINUX="${@target_selinux(d, 'Y', 'N')}"
 	export LSOF_CFGF="${CFLAGS}"
 	export LSOF_CFGL="${LDFLAGS}"
diff --git a/recipes-extended/pam/libpam_selinux.inc b/recipes-extended/pam/libpam_selinux.inc
index adcf938..bee1f3e 100644
--- a/recipes-extended/pam/libpam_selinux.inc
+++ b/recipes-extended/pam/libpam_selinux.inc
@@ -1,3 +1,3 @@
 inherit enable-selinux
 
-RDEPENDS_${PN}-runtime += "${@target_selinux(d, 'pam-plugin-selinux')}"
+RDEPENDS:${PN}-runtime += "${@target_selinux(d, 'pam-plugin-selinux')}"
diff --git a/recipes-extended/shadow/shadow_selinux.inc b/recipes-extended/shadow/shadow_selinux.inc
index 496ea6a..3c8daea 100644
--- a/recipes-extended/shadow/shadow_selinux.inc
+++ b/recipes-extended/shadow/shadow_selinux.inc
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 inherit with-selinux with-audit
 
diff --git a/recipes-extended/sysklogd/sysklogd_selinux.inc b/recipes-extended/sysklogd/sysklogd_selinux.inc
index 81fe7b7..8802adb 100644
--- a/recipes-extended/sysklogd/sysklogd_selinux.inc
+++ b/recipes-extended/sysklogd/sysklogd_selinux.inc
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
diff --git a/recipes-extended/tar/tar_selinux.inc b/recipes-extended/tar/tar_selinux.inc
index 341df8b..b1fa7bf 100644
--- a/recipes-extended/tar/tar_selinux.inc
+++ b/recipes-extended/tar/tar_selinux.inc
@@ -1,3 +1,3 @@
 inherit with-selinux
 
-PACKAGECONFIG_append = "${@bb.utils.contains('DISTRO_FEATURES', 'acl', ' acl', '', d)}"
+PACKAGECONFIG:append = "${@bb.utils.contains('DISTRO_FEATURES', 'acl', ' acl', '', d)}"
diff --git a/recipes-graphics/xcb/libxcb_selinux.inc b/recipes-graphics/xcb/libxcb_selinux.inc
index 29bdadb..6924315 100644
--- a/recipes-graphics/xcb/libxcb_selinux.inc
+++ b/recipes-graphics/xcb/libxcb_selinux.inc
@@ -3,4 +3,4 @@ inherit enable-selinux
 PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,,"
 
 PACKAGES += "${PN}-xselinux"
-FILES_${PN}-xselinux += "${libdir}/libxcb-xselinux.so.*"
+FILES:${PN}-xselinux += "${libdir}/libxcb-xselinux.so.*"
diff --git a/recipes-kernel/linux/linux-yocto_selinux.inc b/recipes-kernel/linux/linux-yocto_selinux.inc
index 3312e06..ba078f7 100644
--- a/recipes-kernel/linux/linux-yocto_selinux.inc
+++ b/recipes-kernel/linux/linux-yocto_selinux.inc
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 # Enable selinux support in the kernel if the feature is enabled
 SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'file://selinux.cfg', '', d)}"
diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index 568aaac..148c8a2 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -6,9 +6,9 @@ PACKAGES = "\
     ${PN} \
     "
 
-ALLOW_EMPTY_${PN} = "1"
+ALLOW_EMPTY:${PN} = "1"
 
-RDEPENDS_${PN} = " \
+RDEPENDS:${PN} = " \
 	libsepol \
 	libsepol-bin \
 	libselinux \
diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
index e198e84..0f9abae 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
@@ -6,9 +6,9 @@ PACKAGES = "\
 	${PN} \
 "
 
-ALLOW_EMPTY_${PN} = "1"
+ALLOW_EMPTY:${PN} = "1"
 
-RDEPENDS_${PN} = "\
+RDEPENDS:${PN} = "\
 	coreutils \
 	libsepol \
 	libselinux \
diff --git a/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb b/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
index 2263592..7fd5d1c 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
@@ -6,9 +6,9 @@ PACKAGES = "\
     ${PN} \
 "
 
-ALLOW_EMPTY_${PN} = "1"
+ALLOW_EMPTY:${PN} = "1"
 
-RDEPENDS_${PN} = "\
+RDEPENDS:${PN} = "\
 	policycoreutils-fixfiles \
 	policycoreutils-genhomedircon \
 	policycoreutils-loadpolicy \
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 1bacaa9..3d2eb89 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -6,7 +6,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 PROVIDES = "virtual/refpolicy"
-RPROVIDES_${PN} = "refpolicy"
+RPROVIDES:${PN} = "refpolicy"
 
 # Specific config files for Poky
 SRC_URI += "file://customizable_types  \
@@ -113,13 +113,13 @@ SRC_URI += " \
 
 S = "${WORKDIR}/refpolicy"
 
-CONFFILES_${PN} += "${sysconfdir}/selinux/config"
-FILES_${PN} += " \
+CONFFILES:${PN} += "${sysconfdir}/selinux/config"
+FILES:${PN} += " \
 	${sysconfdir}/selinux/${POLICY_NAME}/ \
 	${datadir}/selinux/${POLICY_NAME}/*.pp \
 	${localstatedir}/lib/selinux/${POLICY_NAME}/ \
 	"
-FILES_${PN}-dev =+ " \
+FILES:${PN}-dev =+ " \
         ${datadir}/selinux/${POLICY_NAME}/include/ \
         ${sysconfdir}/selinux/sepolgen.conf \
 "
@@ -128,7 +128,7 @@ EXTRANATIVEPATH += "bzip2-native"
 
 DEPENDS += "bzip2-replacement-native checkpolicy-native policycoreutils-native semodule-utils-native m4-native"
 
-RDEPENDS_${PN}-dev =+ " \
+RDEPENDS:${PN}-dev =+ " \
         python3-core \
 "
 
@@ -289,11 +289,11 @@ do_install () {
 	install_config
 }
 
-do_install_append(){
+do_install:append(){
 	# While building policies on target, Makefile will be searched from SELINUX_DEVEL_PATH
 	echo "SELINUX_DEVEL_PATH=${datadir}/selinux/${POLICY_NAME}/include" > ${D}${sysconfdir}/selinux/sepolgen.conf
 }
 
-sysroot_stage_all_append () {
+sysroot_stage_all:append () {
 	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
 }
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index f131646..ccf1bde 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -6,6 +6,6 @@ SRCREV_refpolicy ?= "1167739da1882f9c89281095d2595da5ea2d9d6b"
 
 UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/refpolicy:"
 
 include refpolicy_common.inc
diff --git a/recipes-security/selinux/checkpolicy_3.2.bb b/recipes-security/selinux/checkpolicy_3.2.bb
index 552dc26..99ac470 100644
--- a/recipes-security/selinux/checkpolicy_3.2.bb
+++ b/recipes-security/selinux/checkpolicy_3.2.bb
@@ -18,7 +18,7 @@ EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 
 S = "${WORKDIR}/git/checkpolicy"
 
-do_install_append() {
+do_install:append() {
     install test/dismod ${D}/${bindir}/sedismod
     install test/dispol ${D}/${bindir}/sedispol
 }
diff --git a/recipes-security/selinux/libselinux-python_3.2.bb b/recipes-security/selinux/libselinux-python_3.2.bb
index b741449..f589ebd 100644
--- a/recipes-security/selinux/libselinux-python_3.2.bb
+++ b/recipes-security/selinux/libselinux-python_3.2.bb
@@ -10,7 +10,7 @@ require selinux_common.inc
 
 inherit python3native python3targetconfig
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/libselinux:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/libselinux:"
 SRC_URI += "\
         file://0001-Makefile-fix-python-modules-install-path-for-multili.patch \
         file://0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch \
@@ -19,7 +19,7 @@ SRC_URI += "\
 S = "${WORKDIR}/git/libselinux"
 
 DEPENDS += "python3 swig-native libpcre libsepol"
-RDEPENDS_${PN} += "libselinux python3-core python3-shell"
+RDEPENDS:${PN} += "libselinux python3-core python3-shell"
 
 def get_policyconfigarch(d):
     import re
@@ -30,10 +30,10 @@ def get_policyconfigarch(d):
 
 EXTRA_OEMAKE += "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsepol.a'"
-EXTRA_OEMAKE_append_libc-musl = " FTS_LDLIBS=-lfts"
+EXTRA_OEMAKE:append:libc-musl = " FTS_LDLIBS=-lfts"
 
-FILES_${PN} = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
-INSANE_SKIP_${PN} = "dev-so"
+FILES:${PN} = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
+INSANE_SKIP:${PN} = "dev-so"
 
 do_compile() {
     oe_runmake pywrap -j1 \
diff --git a/recipes-security/selinux/libselinux_3.2.bb b/recipes-security/selinux/libselinux_3.2.bb
index 5acd576..55efbae 100644
--- a/recipes-security/selinux/libselinux_3.2.bb
+++ b/recipes-security/selinux/libselinux_3.2.bb
@@ -11,7 +11,7 @@ require selinux_common.inc
 inherit lib_package python3native
 
 DEPENDS += "libsepol libpcre"
-DEPENDS_append_libc-musl = " fts"
+DEPENDS:append:libc-musl = " fts"
 
 S = "${WORKDIR}/git/libselinux"
 
@@ -24,6 +24,6 @@ def get_policyconfigarch(d):
 
 EXTRA_OEMAKE += "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsepol.a'"
-EXTRA_OEMAKE_append_libc-musl = " FTS_LDLIBS=-lfts"
+EXTRA_OEMAKE:append:libc-musl = " FTS_LDLIBS=-lfts"
 
 BBCLASSEXTEND = "native"
diff --git a/recipes-security/selinux/libsemanage_3.2.bb b/recipes-security/selinux/libsemanage_3.2.bb
index 58b6da4..0a6ff95 100644
--- a/recipes-security/selinux/libsemanage_3.2.bb
+++ b/recipes-security/selinux/libsemanage_3.2.bb
@@ -17,30 +17,30 @@ SRC_URI += "file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
            "
 
 DEPENDS += "libsepol libselinux bzip2 python3 bison-native flex-native swig-native"
-DEPENDS_append_class-target = " audit"
+DEPENDS:append:class-target = " audit"
 
 S = "${WORKDIR}/git/libsemanage"
 
 PACKAGES =+ "${PN}-python"
 
 # For /usr/libexec/selinux/semanage_migrate_store
-RDEPENDS_${PN}-python += "python3-core"
+RDEPENDS:${PN}-python += "python3-core"
 
-FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/* \
+FILES:${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/* \
                       ${libexecdir}/selinux/semanage_migrate_store"
-FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/.debug/*"
-FILES_${PN} += "${libexecdir}"
+FILES:${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/.debug/*"
+FILES:${PN} += "${libexecdir}"
 
-EXTRA_OEMAKE_class-native += "DISABLE_AUDIT=y"
+EXTRA_OEMAKE:class-native += "DISABLE_AUDIT=y"
 
-do_compile_append() {
+do_compile:append() {
     oe_runmake pywrap \
         PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
         PYINC='-I${STAGING_INCDIR}/${PYLIBVER}' \
         PYLIBS='-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
 }
 
-do_install_append() {
+do_install:append() {
     oe_runmake install-pywrap \
         PYCEXT='.so' \
         PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
diff --git a/recipes-security/selinux/mcstrans_3.2.bb b/recipes-security/selinux/mcstrans_3.2.bb
index 0cece17..4d99e18 100644
--- a/recipes-security/selinux/mcstrans_3.2.bb
+++ b/recipes-security/selinux/mcstrans_3.2.bb
@@ -24,7 +24,7 @@ EXTRA_OEMAKE += "SBINDIR=${base_sbindir} \
 
 S = "${WORKDIR}/git/mcstrans"
 
-do_install_append() {
+do_install:append() {
     install -d ${D}${sbindir}
     install -m 755 utils/untranscon ${D}${sbindir}/
     install -m 755 utils/transcon ${D}${sbindir}/
@@ -42,12 +42,12 @@ do_install_append() {
     cp -r share/* ${D}${datadir}/mcstrans/.
 }
 
-SYSTEMD_SERVICE_mcstrans = "mcstrans.service"
+SYSTEMD_SERVICE:mcstrans = "mcstrans.service"
 INITSCRIPT_PACKAGES = "mcstrans"
-INITSCRIPT_NAME_mcstrans = "mcstrans"
-INITSCRIPT_PARAMS_mcstrans = "defaults"
+INITSCRIPT_NAME:mcstrans = "mcstrans"
+INITSCRIPT_PARAMS:mcstrans = "defaults"
 
-pkg_postinst_mcstrans () {
+pkg_postinst:mcstrans () {
     if [ -z "$D" ]; then
         if command -v systemd-tmpfiles >/dev/null; then
             systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/setrans.conf
diff --git a/recipes-security/selinux/policycoreutils_3.2.bb b/recipes-security/selinux/policycoreutils_3.2.bb
index 9fc1691..04f8ef7 100644
--- a/recipes-security/selinux/policycoreutils_3.2.bb
+++ b/recipes-security/selinux/policycoreutils_3.2.bb
@@ -26,40 +26,40 @@ S = "${WORKDIR}/git/policycoreutils"
 
 inherit selinux python3native
 
-RDEPENDS_${BPN}-fixfiles += "\
+RDEPENDS:${BPN}-fixfiles += "\
     ${BPN}-setfiles \
     grep \
     findutils \
 "
-RDEPENDS_${BPN}-genhomedircon += "\
+RDEPENDS:${BPN}-genhomedircon += "\
     ${BPN}-semodule \
 "
-RDEPENDS_${BPN}-loadpolicy += "\
+RDEPENDS:${BPN}-loadpolicy += "\
     libselinux \
     libsepol \
 "
-RDEPENDS_${BPN}-newrole += "\
+RDEPENDS:${BPN}-newrole += "\
     libcap-ng \
     libselinux \
 "
-RDEPENDS_${BPN}-runinit += "libselinux"
-RDEPENDS_${BPN}-secon += "libselinux"
-RDEPENDS_${BPN}-semodule += "\
+RDEPENDS:${BPN}-runinit += "libselinux"
+RDEPENDS:${BPN}-secon += "libselinux"
+RDEPENDS:${BPN}-semodule += "\
     libsepol \
     libselinux \
     libsemanage \
 "
-RDEPENDS_${BPN}-sestatus += "libselinux"
-RDEPENDS_${BPN}-setfiles += "\
+RDEPENDS:${BPN}-sestatus += "libselinux"
+RDEPENDS:${BPN}-setfiles += "\
     libselinux \
     libsepol \
 "
-RDEPENDS_${BPN}-setsebool += "\
+RDEPENDS:${BPN}-setsebool += "\
     libsepol \
     libselinux \
     libsemanage \
 "
-RDEPENDS_${BPN} += "selinux-python"
+RDEPENDS:${BPN} += "selinux-python"
 
 PACKAGES =+ "\
     ${PN}-fixfiles \
@@ -74,34 +74,34 @@ PACKAGES =+ "\
     ${PN}-setfiles \
     ${PN}-setsebool \
 "
-FILES_${PN}-fixfiles += "${base_sbindir}/fixfiles"
-FILES_${PN}-genhomedircon += "${base_sbindir}/genhomedircon"
-FILES_${PN}-loadpolicy += "\
+FILES:${PN}-fixfiles += "${base_sbindir}/fixfiles"
+FILES:${PN}-genhomedircon += "${base_sbindir}/genhomedircon"
+FILES:${PN}-loadpolicy += "\
     ${base_sbindir}/load_policy \
 "
-FILES_${PN}-newrole += "\
+FILES:${PN}-newrole += "\
     ${bindir}/newrole \
     ${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/newrole', '', d)} \
 "
-FILES_${PN}-runinit += "\
+FILES:${PN}-runinit += "\
     ${base_sbindir}/run_init \
     ${base_sbindir}/open_init_pty \
     ${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run_init', '', d)} \
 "
-FILES_${PN}-dbg += "${prefix}/libexec/selinux/hll/.debug"
-FILES_${PN}-secon += "${bindir}/secon"
-FILES_${PN}-semodule += "${base_sbindir}/semodule"
-FILES_${PN}-hll += "${prefix}/libexec/selinux/hll/*"
-FILES_${PN}-sestatus += "\
+FILES:${PN}-dbg += "${prefix}/libexec/selinux/hll/.debug"
+FILES:${PN}-secon += "${bindir}/secon"
+FILES:${PN}-semodule += "${base_sbindir}/semodule"
+FILES:${PN}-hll += "${prefix}/libexec/selinux/hll/*"
+FILES:${PN}-sestatus += "\
     ${base_sbindir}/sestatus \
     ${sysconfdir}/sestatus.conf \
 "
-FILES_${PN}-setfiles += "\
+FILES:${PN}-setfiles += "\
     ${base_sbindir}/restorecon \
     ${base_sbindir}/restorecon_xattr \
     ${base_sbindir}/setfiles \
 "
-FILES_${PN}-setsebool += "\
+FILES:${PN}-setsebool += "\
     ${base_sbindir}/setsebool \
     ${datadir}/bash-completion/completions/setsebool \
 "
@@ -111,7 +111,7 @@ export STAGING_LIBDIR
 export BUILD_SYS
 export HOST_SYS
 
-PACKAGECONFIG_class-target ?= "\
+PACKAGECONFIG:class-target ?= "\
         ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'libpam', '', d)} \
         audit \
 "
@@ -131,7 +131,7 @@ BBCLASSEXTEND = "native"
 
 PCU_NATIVE_CMDS = "setfiles semodule hll"
 
-do_compile_class-native() {
+do_compile:class-native() {
     for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
         oe_runmake -C $PCU_CMD \
             INCLUDEDIR='${STAGING_INCDIR}' \
@@ -139,11 +139,11 @@ do_compile_class-native() {
     done
 }
 
-sysroot_stage_dirs_append_class-native() {
+sysroot_stage_dirs:append:class-native() {
     cp -R $from/${prefix}/libexec $to/${prefix}/libexec
 }
 
-do_compile_prepend() {
+do_compile:prepend() {
     export PYTHON=python3
     export PYLIBVER='python${PYTHON_BASEVERSION}'
     export PYTHON_CPPFLAGS="-I${STAGING_INCDIR}/${PYLIBVER}"
@@ -151,12 +151,12 @@ do_compile_prepend() {
     export PYTHON_SITE_PKG="${libdir}/${PYLIBVER}/site-packages"
 }
 
-do_install_prepend() {
+do_install:prepend() {
     export PYTHON=python3
     export SBINDIR="${D}/${base_sbindir}"
 }
 
-do_install_class-native() {
+do_install:class-native() {
     for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
         oe_runmake -C $PCU_CMD install \
             DESTDIR="${D}" \
@@ -165,7 +165,7 @@ do_install_class-native() {
     done
 }
 
-do_install_append_class-target() {
+do_install:append:class-target() {
     if [ -e ${WORKDIR}/pam.d ]; then
         install -d ${D}${sysconfdir}/pam.d/
         install -m 0644 ${WORKDIR}/pam.d/* ${D}${sysconfdir}/pam.d/
diff --git a/recipes-security/selinux/restorecond_3.2.bb b/recipes-security/selinux/restorecond_3.2.bb
index d9def9a..75e65a8 100644
--- a/recipes-security/selinux/restorecond_3.2.bb
+++ b/recipes-security/selinux/restorecond_3.2.bb
@@ -20,16 +20,16 @@ EXTRA_OEMAKE += "SYSTEMDSYSTEMUNITDIR=${systemd_system_unitdir} \
 
 S = "${WORKDIR}/git/restorecond"
 
-FILES_${PN} += "${datadir}/dbus-1/services/org.selinux.Restorecond.service \
+FILES:${PN} += "${datadir}/dbus-1/services/org.selinux.Restorecond.service \
                 ${systemd_user_unitdir}/* \
                "
 
-SYSTEMD_SERVICE_restorecond = "restorecond.service"
+SYSTEMD_SERVICE:restorecond = "restorecond.service"
 INITSCRIPT_PACKAGES = "restorecond"
-INITSCRIPT_NAME_restorecond = "restorecond"
-INITSCRIPT_PARAMS_restorecond = "defaults"
+INITSCRIPT_NAME:restorecond = "restorecond"
+INITSCRIPT_PARAMS:restorecond = "defaults"
 
-do_install_append() {
+do_install:append() {
     if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'false', 'true', d)}; then
         # remove /usr/lib/systemd/user
         rm -rf ${D}${nonarch_libdir}
diff --git a/recipes-security/selinux/selinux-autorelabel_0.1.bb b/recipes-security/selinux/selinux-autorelabel_0.1.bb
index 85b0db9..a919445 100644
--- a/recipes-security/selinux/selinux-autorelabel_0.1.bb
+++ b/recipes-security/selinux/selinux-autorelabel_0.1.bb
@@ -7,7 +7,7 @@ file is present.\
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-RDEPENDS_${PN} = " \
+RDEPENDS:${PN} = " \
     policycoreutils-setfiles \
 "
 
@@ -19,7 +19,7 @@ INITSCRIPT_PARAMS = "start 01 S ."
 
 require selinux-initsh.inc
 
-do_install_append() {
+do_install:append() {
 	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
 		echo "# first boot relabelling" > ${D}/.autorelabel
 	fi
diff --git a/recipes-security/selinux/selinux-dbus_3.2.bb b/recipes-security/selinux/selinux-dbus_3.2.bb
index bc34f89..badf392 100644
--- a/recipes-security/selinux/selinux-dbus_3.2.bb
+++ b/recipes-security/selinux/selinux-dbus_3.2.bb
@@ -9,9 +9,9 @@ require selinux_common.inc
 
 S = "${WORKDIR}/git/dbus"
 
-RDEPENDS_${PN} += "python3-core selinux-python-sepolicy"
+RDEPENDS:${PN} += "python3-core selinux-python-sepolicy"
 
-FILES_${PN} += "\
+FILES:${PN} += "\
         ${datadir}/system-config-selinux/selinux_server.py \
         ${datadir}/polkit-1/actions/org.selinux.policy \
         ${datadir}/dbus-1/system-services/org.selinux.service \
diff --git a/recipes-security/selinux/selinux-gui_3.2.bb b/recipes-security/selinux/selinux-gui_3.2.bb
index 5818e49..5534ec6 100644
--- a/recipes-security/selinux/selinux-gui_3.2.bb
+++ b/recipes-security/selinux/selinux-gui_3.2.bb
@@ -10,9 +10,9 @@ require selinux_common.inc
 
 S = "${WORKDIR}/git/gui"
 
-RDEPENDS_${PN} += "python3-core"
+RDEPENDS:${PN} += "python3-core"
 
-FILES_${PN} += " \
+FILES:${PN} += " \
         ${datadir}/system-config-selinux/* \
         ${datadir}/icons/hicolor/* \
         ${datadir}/polkit-1/actions/org.selinux.config.policy \
diff --git a/recipes-security/selinux/selinux-init_0.1.bb b/recipes-security/selinux/selinux-init_0.1.bb
index ebe7399..c97316e 100644
--- a/recipes-security/selinux/selinux-init_0.1.bb
+++ b/recipes-security/selinux/selinux-init_0.1.bb
@@ -7,7 +7,7 @@ boot time. \
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-RDEPENDS_${PN} = " \
+RDEPENDS:${PN} = " \
     coreutils \
     libselinux-bin \
     policycoreutils-secon \
diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-security/selinux/selinux-initsh.inc
index 0a6cf4b..f6a3d85 100644
--- a/recipes-security/selinux/selinux-initsh.inc
+++ b/recipes-security/selinux/selinux-initsh.inc
@@ -9,15 +9,15 @@ SELINUX_SCRIPT_DST ?= "${SELINUX_SCRIPT_SRC}"
 INITSCRIPT_NAME ?= "${SELINUX_SCRIPT_DST}"
 INITSCRIPT_PARAMS ?= "start 00 S ."
 
-CONFFILES_${PN} += "${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}"
+CONFFILES:${PN} += "${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}"
 
 PACKAGE_ARCH ?= "${MACHINE_ARCH}"
 
 inherit update-rc.d systemd
 
-SYSTEMD_SERVICE_${PN} = "${SELINUX_SCRIPT_SRC}.service"
+SYSTEMD_SERVICE:${PN} = "${SELINUX_SCRIPT_SRC}.service"
 
-FILES_${PN} += "/.autorelabel"
+FILES:${PN} += "/.autorelabel"
 
 do_install () {
 	install -d ${D}${sysconfdir}/init.d/
@@ -36,6 +36,6 @@ do_install () {
     fi
 }
 
-sysroot_stage_all_append () {
+sysroot_stage_all:append () {
 	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
 }
diff --git a/recipes-security/selinux/selinux-labeldev_0.1.bb b/recipes-security/selinux/selinux-labeldev_0.1.bb
index 2a0bca9..d29efec 100644
--- a/recipes-security/selinux/selinux-labeldev_0.1.bb
+++ b/recipes-security/selinux/selinux-labeldev_0.1.bb
@@ -4,7 +4,7 @@ DESCRIPTION = "Set SELinux labels for /dev."
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-RDEPENDS_${PN} = " \
+RDEPENDS:${PN} = " \
     coreutils \
     libselinux-bin \
     policycoreutils-setfiles \
diff --git a/recipes-security/selinux/selinux-python_3.2.bb b/recipes-security/selinux/selinux-python_3.2.bb
index a827a90..a954676 100644
--- a/recipes-security/selinux/selinux-python_3.2.bb
+++ b/recipes-security/selinux/selinux-python_3.2.bb
@@ -17,12 +17,12 @@ S = "${WORKDIR}/git/python"
 EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 
 DEPENDS += "python3 libsepol libselinux"
-RDEPENDS_${BPN}-audit2allow += "\
+RDEPENDS:${BPN}-audit2allow += "\
         python3-core \
         libselinux-python \
         ${BPN}-sepolgen \
 "
-RDEPENDS_${BPN}-chcat += "\
+RDEPENDS:${BPN}-chcat += "\
         python3-core \
         python3-codecs \
         python3-shell \
@@ -31,7 +31,7 @@ RDEPENDS_${BPN}-chcat += "\
         libselinux-python \
         ${BPN} \
 "
-RDEPENDS_${BPN} += "\
+RDEPENDS:${BPN} += "\
         python3-core \
         python3-codecs \
         python3-io \
@@ -43,7 +43,7 @@ RDEPENDS_${BPN} += "\
         libsemanage-python \
         setools \
 "
-RDEPENDS_${BPN}-semanage += "\
+RDEPENDS:${BPN}-semanage += "\
         python3-core \
         python3-ipy \
         python3-compression \
@@ -52,13 +52,13 @@ RDEPENDS_${BPN}-semanage += "\
         libselinux-python \
         ${BPN} \
 "
-RDEPENDS_${BPN}-sepolicy += "\
+RDEPENDS:${BPN}-sepolicy += "\
         python3-core \
         python3-codecs \
         python3-syslog \
         ${BPN} \
 "
-RDEPENDS_${BPN}-sepolgen-ifgen += "\
+RDEPENDS:${BPN}-sepolgen-ifgen += "\
         python3-core \
         libselinux-python \
 "
@@ -71,33 +71,33 @@ PACKAGES =+ "\
         ${PN}-sepolgen \
         ${PN}-sepolicy \
 "
-FILES_${PN}-audit2allow = "\
+FILES:${PN}-audit2allow = "\
         ${bindir}/audit2allow \
         ${bindir}/audit2why \
 "
-FILES_${PN}-chcat = "\
+FILES:${PN}-chcat = "\
         ${bindir}/chcat \
 "
-FILES_${PN}-semanage = "\
+FILES:${PN}-semanage = "\
         ${sbindir}/semanage \
         ${datadir}/bash-completion/completions/semanage \
 "
 # The ${bindir}/sepolgen is a symlink to ${bindir}/sepolicy
-FILES_${PN}-sepolicy += "\
+FILES:${PN}-sepolicy += "\
         ${bindir}/sepolgen \
         ${bindir}/sepolicy \
         ${datadir}/bash-completion/completions/sepolicy \
 "
-FILES_${PN}-sepolgen-ifgen += "\
+FILES:${PN}-sepolgen-ifgen += "\
         ${bindir}/sepolgen-ifgen \
         ${bindir}/sepolgen-ifgen-attr-helper \
 "
-FILES_${PN}-sepolgen += "\
+FILES:${PN}-sepolgen += "\
         ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolgen* \
         ${localstatedir}/lib/sepolgen/perm_map \
 "
 
-FILES_${PN} += "\
+FILES:${PN} += "\
         ${libdir}/python${PYTHON_BASEVERSION}/site-packages/seobject.py* \
         ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy*.egg-info \
         ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/* \
diff --git a/recipes-security/selinux/selinux-sandbox_3.2.bb b/recipes-security/selinux/selinux-sandbox_3.2.bb
index 2c6a823..a20982c 100644
--- a/recipes-security/selinux/selinux-sandbox_3.2.bb
+++ b/recipes-security/selinux/selinux-sandbox_3.2.bb
@@ -15,7 +15,7 @@ S = "${WORKDIR}/git/sandbox"
 
 DEPENDS += "libcap-ng libselinux"
 
-RDEPENDS_${PN} += "\
+RDEPENDS:${PN} += "\
         python3-core \
         python3-math \
         python3-shell \
@@ -24,7 +24,7 @@ RDEPENDS_${PN} += "\
         selinux-python \
 "
 
-FILES_${PN} += "\
+FILES:${PN} += "\
         ${datadir}/sandbox/sandboxX.sh \
         ${datadir}/sandbox/start \
 "
diff --git a/recipes-security/selinux/semodule-utils_3.2.bb b/recipes-security/selinux/semodule-utils_3.2.bb
index 7773d5b..a8bca0e 100644
--- a/recipes-security/selinux/semodule-utils_3.2.bb
+++ b/recipes-security/selinux/semodule-utils_3.2.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 require selinux_common.inc
 
 DEPENDS += "libsepol"
-RDEPENDS_${PN}-dev = ""
+RDEPENDS:${PN}-dev = ""
 
 EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 
@@ -21,9 +21,9 @@ PACKAGES =+ "\
         ${PN}-semodule-package \
 "
 
-FILES_${PN}-semodule-expand += "${bindir}/semodule_expand"
-FILES_${PN}-semodule-link += "${bindir}/semodule_link"
-FILES_${PN}-semodule-package += "\
+FILES:${PN}-semodule-expand += "${bindir}/semodule_expand"
+FILES:${PN}-semodule-link += "${bindir}/semodule_link"
+FILES:${PN}-semodule-package += "\
         ${bindir}/semodule_package \
         ${bindir}/semodule_unpackage \
 "
diff --git a/recipes-security/setools/setools_4.4.0.bb b/recipes-security/setools/setools_4.4.0.bb
index 4dd094f..528e78f 100644
--- a/recipes-security/setools/setools_4.4.0.bb
+++ b/recipes-security/setools/setools_4.4.0.bb
@@ -23,18 +23,18 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
 
 DEPENDS += "bison-native flex-native swig-native python3 python3-cython-native libsepol libselinux"
 
-DEPENDS_class-native += "libselinux python3-setuptools python3-cython python3-networkx"
+DEPENDS:class-native += "libselinux python3-setuptools python3-cython python3-networkx"
 
-RDEPENDS_${PN} += "python3-networkx python3-decorator python3-setuptools \
+RDEPENDS:${PN} += "python3-networkx python3-decorator python3-setuptools \
                    python3-logging python3-json libselinux-python"
 
-RDEPENDS_${PN}_class-native = ""
+RDEPENDS:${PN}:class-native = ""
 
-RPROVIDES_${PN} += "${PN}-console"
+RPROVIDES:${PN} += "${PN}-console"
 
 inherit setuptools3
 
-do_install_append() {
+do_install:append() {
 	# Need PyQt5 support, disable gui tools
 	rm -f ${D}${bindir}/apol
 	rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setoolsgui
diff --git a/recipes-support/attr/attr_selinux.inc b/recipes-support/attr/attr_selinux.inc
index ba0314e..7b45842 100644
--- a/recipes-support/attr/attr_selinux.inc
+++ b/recipes-support/attr/attr_selinux.inc
@@ -1,5 +1,5 @@
 inherit selinux
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 SRC_URI += "file://fix-ptest-failures-when-selinux-enabled.patch"
diff --git a/recipes-support/libpcre/libpcre_selinux.inc b/recipes-support/libpcre/libpcre_selinux.inc
index 3810078..2da7073 100644
--- a/recipes-support/libpcre/libpcre_selinux.inc
+++ b/recipes-support/libpcre/libpcre_selinux.inc
@@ -1,4 +1,4 @@
-do_install_append () {
+do_install:append () {
 	# This code creates libpcre for both the dev machine (SDK native)
 	# and for cross-compiling (machine arch). For Linux (SDK Linux native
 	# + all machine arch), symlinks to the .so files have to be created,
@@ -15,4 +15,4 @@ do_install_append () {
 	fi
 }
 
-FILES_${PN} += "${base_libdir}/libpcre.so.*"
+FILES:${PN} += "${base_libdir}/libpcre.so.*"
-- 
2.25.1

