Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [40.107.77.80])
 by mx.groups.io with SMTP id smtpd.web09.102.1615614657505367295
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:50:58 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=E+kleMuq;
 spf=pass (domain: windriver.com, ip: 40.107.77.80, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MYwLCeAh3CmBsNFwufit4Peqww/jBCFcBtMlytk4CKkBTrTrXeu7k2yCLoyLqFvcYgjRLq0H1Qtl86KS+Sf+0X5QQ8094aFIKyXSmO2O+uD9XLj6A5Vwm43YTtUygE+PzBnxH9iTZ+Jv1AIXDxxSV4qKFuU5sIpRxzijbOyA1FOKIfsn49Vw8fBuga+r+QMSSMekt8WO8E+WRLjN8yj21jn7f8njGncbK7klSYbHibKBvkY3CUotWsWymHQQFv+Y0SwmNBYcXVDxOrInJs+s3U5H/5AJN66k73LOEejHhR2kBj/vlMhOg60G91PprJKEKF1+qwBE8vAT/bdd1E6hPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2LTXAK5mXvJTPseY1FqxCraIsOoR56Lw3BDVxCH7yks=;
 b=ebYjy0I/YKrHwTXAeiSV1GoMH08zq2P23OKlvCL/MH4cEneoBY6sKIrj2oD66TB7mPzEtIzZHXHlwCkXImo5/oxe42/Dxzkqkpu/UoJwYW3sPC6gMXIwMevW5nRBmA7lWg2Gh4P2dXyQo3JEHTXKTxX7fovGQL///2nwuDJh0N0oKX8fWwSGNZ/bSTWP/rfeIiiQLV5UZewaHQsiMiUJffJ/vnIha8yuw30R5I0IubD47Pmg3LXOQUTR4oc0m3JKZpEHp8vHJeAneen8IlaZ6r7x20MendhvEz78RDW4YicDyJk9UK2n7sxoTuAD8x8KskgtutAH15LMGc9sreeZcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2LTXAK5mXvJTPseY1FqxCraIsOoR56Lw3BDVxCH7yks=;
 b=E+kleMuqOTG0bUso8sa3JBrS7UqziwSdPgJWWaIAFFJCKEVQUjOwIaI57j8WFQNFZ1/0EsGjvGSuYWUZf36YsAMOwRgsYB0vywACxoviRr62zmfrmoQTpk5R7tZ2mcZSgUZI7Kmbdidb8Br2da4w1mpyZrl1VhftGSbVGNzwivs=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.29; Sat, 13 Mar
 2021 05:50:56 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:50:55 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 00/16] selinux: update 3.1 -> 3.2
Date: Sat, 13 Mar 2021 13:50:28 +0800
Message-ID: <20210313055044.239776-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BYAPR11CA0084.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::25) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:50:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e4ce837-8f01-4340-d5a3-08d8e5e3f790
X-MS-TrafficTypeDiagnostic: MW3PR11MB4556:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB4556460189DA0E7618925025F96E9@MW3PR11MB4556.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TuySGHXC5aCc1LHnhcVw3c/Qz7r5cHi3NIjCpzFHZsVD2d8JFknxAMixUoicngk2pvTUQ1m8gnVKssXvloUGKsltNu43NGt6h+R/sfTipEKPA7BPHNEvpCU6DcioDJcupDWLu8MML3fNHAYWmgxcn8vSX8mKPcIseyVrgWOyC/drfacdoSGIhcDz/+U65oyPUin6bqCB+90Ukhba5wz7gbc/x/HQWKTkbolxAucA2GdoIbSj++woPkeowj6PePPIIiIm91oe0H3aQI656eGrdenPgVDie9YOiFp0TKdvw5uD1zQrDByL/ktyMN74RQbDHv76kWpPO5l8D0IB9Ll5VOUdWhNZmBEHyNlRhCN9H0/2fCAH1Tsjc2hq4Rwlavb2JCueYNgpZhIU7ztnpSzQKfhBu6H2R30srASRjNr1rRwnR7NIBaAg18Qn8U5Xv6SBceihFRV86LFqxt9Zybd0dBhJ8k+XMRE2Ze9/emtp5vnbBpAos6D365PAAsP9mevjsic92GlWntQkHUHg+0RAtQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(136003)(39850400004)(376002)(346002)(66476007)(6506007)(6512007)(15650500001)(36756003)(1076003)(8676002)(66556008)(66946007)(83380400001)(16526019)(86362001)(44832011)(316002)(6666004)(186003)(26005)(956004)(6486002)(5660300002)(2906002)(478600001)(52116002)(2616005)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?Ebfck3sHG2GvSvHveL5TwIs61pXIKQir7QwsoxpiXWN8fP1Tg+U0JLY/se2W?=
 =?us-ascii?Q?g0be20fdc20KCXwTuNbzwlGazq1ooJEQFTvftjAd2uH4A20CW6Tut/5szDVn?=
 =?us-ascii?Q?7Hlk7x7So0HfMQAb+uuTrfvZ0PQtZ0zG/URL9wY0Ey0ChRGB+SzY/vy6esf4?=
 =?us-ascii?Q?VcmMilRy7fbx98J807B9D/0VBE7TpIxWtzCLssS7PEHlQ5AEVs0SDaWEMyfz?=
 =?us-ascii?Q?34G9iFWILd8M7fYt0crpwu7jgqY2veGBPtcoVZitx1YsRCxhu41gp0jKkG+Q?=
 =?us-ascii?Q?X/TvF4q5zT7pCuCu3DoYdiYTcqW1uNnubZiGd86iqrcVWi54e4SwEy6wFP3a?=
 =?us-ascii?Q?keTLvZMUFdiFJ41rgEtNn6SZesKFUBv/hSdEiDx5afWA68ZOGcOOFDmMIoR5?=
 =?us-ascii?Q?L77CREheRXb0lxRMHhJVbsxwxv/cRrG4r3VjksoH6WrT3oLwYsyPLoqmox+T?=
 =?us-ascii?Q?0F0gO4UmsijiZXZ/eSTnCa0/4Ygu3j+W3C9YKtVPJaPmlcYrtn/fzsNR5+sB?=
 =?us-ascii?Q?zRlgmjxW7ilKyMruFNKhVi6rVDdpbSf7pkapygyeiRFxNlTL7DwEV0yL8IcK?=
 =?us-ascii?Q?5eOMuj835T7GJxuo5rAFkDZsnrgTJphjWX8Ei0v783/XWErkqBoNMY3a5XhQ?=
 =?us-ascii?Q?WtNhCXPMOcJEktQNWPaqtQ5KKJmGGzjtMWQ7oQp6OM+FT2biN8PhjPnA2mY2?=
 =?us-ascii?Q?Ta+2ssB5I64Vs60M+z886jNdnggI4B6kp7LZ5wmHz7XA3HTZsFheWQvDjHGJ?=
 =?us-ascii?Q?p94h7eLnkKv6ohgnAPnmXDE046lVH+wlweg+bUomblb1VtgYzvtIUahfiOQz?=
 =?us-ascii?Q?isy7LqLJmFsN+sxwSoDci3q9uSc5k+rTU6MaxD6VkET9jXIMxLs6u+tKKNy3?=
 =?us-ascii?Q?jtHF8KvCdChoFCqXkyL3TvTFmYwDSpf2RETRYZxU2KPDYcwUzCpr5kVTZaRV?=
 =?us-ascii?Q?DefCKKjmzkFL4vXXQmeY2eaPAPZhShtiswZ5bpXh7i3r4IpStR/y+mS6vrVe?=
 =?us-ascii?Q?v7w8sR7wTJBO/+pk3bkI7iL9+4k6acY/Png7s+4DTw9ByWSsxqdc4YZzG1Jt?=
 =?us-ascii?Q?sfIyS+2tpwyaTPjn07hD8sidIp9p5YMu2nnbXrEdru0QMB2DmNyfMsiC7Scw?=
 =?us-ascii?Q?uczJfRqg0fbDQBIdlIhZrSsT387qnY/OK9n3ivViRRpjeX1KcDCEhsxn6Az7?=
 =?us-ascii?Q?WvkRqbtbt0rHXA9OesmMOnJOluoov/wC/9JaUWN14ziuO8LkCnuKEAXkkIB+?=
 =?us-ascii?Q?Xq6h2jmgUKHbXwwGrug4b9U9ahER5nBJEgBw4t3t4jrjLI6NIVFL6SCfuVw8?=
 =?us-ascii?Q?eHMwfP/5Tc7bAaQKQOAivUam?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e4ce837-8f01-4340-d5a3-08d8e5e3f790
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:50:55.9121
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WweKQ4121rJr5yK4nWRpY9KTmZS8GOkLTW9HmgyRM+BiOcmEY1mPyy+dpD7yMSO/CZ5yBb6XVOAjwvQgh1er1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain



Yi Zhao (16):
  selinux: update inc file to 3.2
  libsepol: update to 3.2
  libselinux: update to 3.2
  libselinux-python: update to 3.2
  libsemanage: update to 3.2
  checkpolicy: update to 3.2
  secilc: update to 3.2
  policycoreutils: update to 3.2
  mcstrans: update to 3.2
  restorecond: update to 3.2
  selinux-python: update to 3.2
  selinux-dbus: update to 3.2
  selinux-gui: update to 3.2
  selinux-sandbox: update to 3.2
  semodule-utils: update to 3.2
  setools: upgrade 4.3.0 -> 4.4.0

 recipes-security/selinux/checkpolicy_3.1.bb   |   7 -
 .../{checkpolicy.inc =3D> checkpolicy_3.2.bb}   |  10 +-
 .../selinux/libselinux-python_3.1.bb          |  26 ----
 ...ux-python.inc =3D> libselinux-python_3.2.bb} |  25 ++-
 ...elinux-do-not-define-gettid-for-musl.patch |  47 ------
 ...linux-define-FD_CLOEXEC-as-necessary.patch |  33 ----
 .../libselinux-make-O_CLOEXEC-optional.patch  |  99 ------------
 ...ibselinux-make-SOCK_CLOEXEC-optional.patch |  38 -----
 recipes-security/selinux/libselinux_3.1.bb    |  17 --
 .../{libselinux.inc =3D> libselinux_3.2.bb}     |   7 +-
 ...anage-define-FD_CLOEXEC-as-necessary.patch |  35 -----
 recipes-security/selinux/libsemanage_3.1.bb   |  14 --
 .../{libsemanage.inc =3D> libsemanage_3.2.bb}   |  27 ++--
 recipes-security/selinux/libsepol_3.1.bb      |   8 -
 .../selinux/{libsepol.inc =3D> libsepol_3.2.bb} |   5 +
 recipes-security/selinux/mcstrans_3.1.bb      |   7 -
 .../selinux/{mcstrans.inc =3D> mcstrans_3.2.bb} |  13 +-
 .../selinux/policycoreutils_3.1.bb            |   7 -
 ...cycoreutils.inc =3D> policycoreutils_3.2.bb} | 145 +++++++++---------
 ...icycoreutils-make-O_CLOEXEC-optional.patch |  48 ------
 recipes-security/selinux/restorecond_3.1.bb   |   7 -
 .../{restorecond.inc =3D> restorecond_3.2.bb}   |   7 +-
 recipes-security/selinux/secilc_3.1.bb        |   7 -
 .../selinux/{secilc.inc =3D> secilc_3.2.bb}     |   6 +-
 recipes-security/selinux/selinux-dbus_3.1.bb  |   7 -
 .../{selinux-dbus.inc =3D> selinux-dbus_3.2.bb} |   6 +-
 recipes-security/selinux/selinux-gui_3.1.bb   |   7 -
 .../{selinux-gui.inc =3D> selinux-gui_3.2.bb}   |   6 +-
 .../selinux/selinux-python_3.1.bb             |   7 -
 ...linux-python.inc =3D> selinux-python_3.2.bb} |  20 ++-
 .../selinux/selinux-sandbox_3.1.bb            |   7 -
 ...nux-sandbox.inc =3D> selinux-sandbox_3.2.bb} |   9 +-
 recipes-security/selinux/selinux_20200710.inc |   8 -
 recipes-security/selinux/selinux_common.inc   |  15 +-
 .../selinux/semodule-utils_3.1.bb             |   7 -
 ...module-utils.inc =3D> semodule-utils_3.2.bb} |   7 +-
 .../{setools_4.3.0.bb =3D> setools_4.4.0.bb}    |   6 +-
 37 files changed, 192 insertions(+), 565 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy_3.1.bb
 rename recipes-security/selinux/{checkpolicy.inc =3D> checkpolicy_3.2.bb} =
(71%)
 delete mode 100644 recipes-security/selinux/libselinux-python_3.1.bb
 rename recipes-security/selinux/{libselinux-python.inc =3D> libselinux-pyt=
hon_3.2.bb} (61%)
 delete mode 100644 recipes-security/selinux/libselinux/0001-libselinux-do-=
not-define-gettid-for-musl.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-define-F=
D_CLOEXEC-as-necessary.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-make-O_C=
LOEXEC-optional.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-make-SOC=
K_CLOEXEC-optional.patch
 delete mode 100644 recipes-security/selinux/libselinux_3.1.bb
 rename recipes-security/selinux/{libselinux.inc =3D> libselinux_3.2.bb} (8=
4%)
 delete mode 100644 recipes-security/selinux/libsemanage/libsemanage-define=
-FD_CLOEXEC-as-necessary.patch
 delete mode 100644 recipes-security/selinux/libsemanage_3.1.bb
 rename recipes-security/selinux/{libsemanage.inc =3D> libsemanage_3.2.bb} =
(59%)
 delete mode 100644 recipes-security/selinux/libsepol_3.1.bb
 rename recipes-security/selinux/{libsepol.inc =3D> libsepol_3.2.bb} (81%)
 delete mode 100644 recipes-security/selinux/mcstrans_3.1.bb
 rename recipes-security/selinux/{mcstrans.inc =3D> mcstrans_3.2.bb} (92%)
 delete mode 100644 recipes-security/selinux/policycoreutils_3.1.bb
 rename recipes-security/selinux/{policycoreutils.inc =3D> policycoreutils_=
3.2.bb} (52%)
 delete mode 100644 recipes-security/selinux/restorecond/policycoreutils-ma=
ke-O_CLOEXEC-optional.patch
 delete mode 100644 recipes-security/selinux/restorecond_3.1.bb
 rename recipes-security/selinux/{restorecond.inc =3D> restorecond_3.2.bb} =
(88%)
 delete mode 100644 recipes-security/selinux/secilc_3.1.bb
 rename recipes-security/selinux/{secilc.inc =3D> secilc_3.2.bb} (66%)
 delete mode 100644 recipes-security/selinux/selinux-dbus_3.1.bb
 rename recipes-security/selinux/{selinux-dbus.inc =3D> selinux-dbus_3.2.bb=
} (75%)
 delete mode 100644 recipes-security/selinux/selinux-gui_3.1.bb
 rename recipes-security/selinux/{selinux-gui.inc =3D> selinux-gui_3.2.bb} =
(75%)
 delete mode 100644 recipes-security/selinux/selinux-python_3.1.bb
 rename recipes-security/selinux/{selinux-python.inc =3D> selinux-python_3.=
2.bb} (89%)
 delete mode 100644 recipes-security/selinux/selinux-sandbox_3.1.bb
 rename recipes-security/selinux/{selinux-sandbox.inc =3D> selinux-sandbox_=
3.2.bb} (77%)
 delete mode 100644 recipes-security/selinux/selinux_20200710.inc
 delete mode 100644 recipes-security/selinux/semodule-utils_3.1.bb
 rename recipes-security/selinux/{semodule-utils.inc =3D> semodule-utils_3.=
2.bb} (83%)
 rename recipes-security/setools/{setools_4.3.0.bb =3D> setools_4.4.0.bb} (=
89%)

--=20
2.25.1

