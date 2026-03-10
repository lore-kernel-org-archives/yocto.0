Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D91FCC9C0
	for <webhook@archiver.kernel.org>; Tue, 10 Mar 2026 04:55:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.33284.1773118533841154607
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Mar 2026 21:55:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=RTBbP4JR;
 spf=pass (domain: intel.com, ip: 192.198.163.18, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773118534; x=1804654534;
  h=from:to:subject:date:message-id:mime-version;
  bh=UrIxMRXI/3BYMDCE9CbH8I6QWTMA8/zMyn4ajd6mT4M=;
  b=RTBbP4JRLIp0y4FCpHMkNM9KNLNprK/fQs+GDgx73GJcWv1RbRJhbEa9
   7LrqbguogKFUfO0ngefiRsgbcqSSftbfiZCRrgH0BIF1lob+qETHxsbEL
   w6Et/fVy1yxbJa8qPV7cNoIYwHRCqmmekwjPxZuk+YNsqnrFc4AuJzbJM
   Yi9/CWob9X3G3bCfYxR/gAGGBoxVuxY/W4lqBNw+Qim9+379cDhBkRxKC
   MVwoTuzAYq0APU9HiRCS1YRhxyiK7f47ouXS1CCZaMjxbvJhlsMM6lBhC
   WJobEuYP7wYMtHjSccitPM5Kp3uq2hsr1fsqKjg/F+j9PXI0ItlzLYMWI
   g==;
X-CSE-ConnectionGUID: 7puZTsGzTzuynegV58wO3Q==
X-CSE-MsgGUID: MZvrvQqtRmCn1hC+6XbLdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="73354337"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; 
   d="scan'208,217";a="73354337"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2026 21:55:32 -0700
X-CSE-ConnectionGUID: 0Lpp0OSBQk+gkRtCTmMhUQ==
X-CSE-MsgGUID: 32M2rUhLT2i0gvMrLu64bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; 
   d="scan'208,217";a="219929781"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2026 21:55:32 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 21:55:30 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 21:55:30 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 21:55:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f86rL6VtXcERFoAdxAfK2+0U4PoDbbAP+MK7RlWqzNkj3qJ++3Rlnt91NfE5Olk65JQbeDH0Kc/pk5U/u+yOlEajOAJJnId048bU2Sckc/iRGxBA1EEOz+OtV4OJetEUC9ygPyBN3W4PUXdhnH5IG35tPSEyjrpuJmb0lkqOr05dKLC/pslczWAT/w5rDT4wVfBsGtUhWLF4nHevLoFj8EfrNw/y5+dTnbPhtb+n6rYcg4wWKHz7rAhYr1Zg9Z2EpnO97aaI3ldOsMe5h/w9zhadFGVYrM/eVzN00QhPlLBdCmGtgy7G0KHdhHCotZoPRnD2toUlkj0JI+cr/Tp7zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UrIxMRXI/3BYMDCE9CbH8I6QWTMA8/zMyn4ajd6mT4M=;
 b=UVofyX3jq9aJBugCbEIcknt/cEc0T+KaNPX9SD+yPUW7IEwZPQnVgvG4DXduQDZSAaCZnut5vQDqwpkjqYvqDmY5ri8m2LcIOtN4UYll1iI9WiCcFyX5TralOTpMN1RNX13m5j5IY140TlFJAdEkrag0EXJ7nIy3pt5gnufFj+Gn2XgX4BzXtcXcpCo90f81xPINwkqxjoQxYMsDUM+wvcV+QyN7OhHyscODnPvPDEFs93DibhU08JhvlW0I6LtNLh2SozdzHXIeQFgjAt5opAjCkIiVH5XQQB6PC1/JIkK0lmOlAYFGbfjZFeaJBoh9LXRzuJ+Qwj5tUXCofhihAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by LV4PR11MB9465.namprd11.prod.outlook.com (2603:10b6:408:2da::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 04:55:27 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 04:55:27 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.0.16 (scarthgap-5.0.16) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.0.16 (scarthgap-5.0.16) is
 Released
Thread-Index: AQHcsDvQEHa6B6ZfjEqlbzhUrCriRw==
Date: Tue, 10 Mar 2026 04:55:27 +0000
Message-ID: <BL4PR11MB87973FBA4E52B68C1974AFD3B946A@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|LV4PR11MB9465:EE_
x-ms-office365-filtering-correlation-id: 8719029e-e8a4-436f-ad24-08de7e613f81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021|13003099007|8096899003;
x-microsoft-antispam-message-info: JitjmD2IsWxzrCd6fuGKdTavxhz8SWkFbOaHVUC/8F9tGM0GW2EpCUTSfsNfU1gvRqsSZVc278wJzIcP4gGC1gsVBCK/5UBI4aUg35Mn89+YCLuEGfeOU04xVvseVbbP/hG9ZM2zFp6h948Fr4M0Kideq4QACHwha3fS02n+eQuqv6TdtaWQRD9LSQ6ur8qVJgD5vKggoV+bTX4PD8b6higN5+/6U44BnNxmMJDXDITogbjlUP0CRVxFHhlPP4yaBBm6Rcv3m5H4Z1uuJWFpy531Z67o/1OzP+GRPCGTiZmTCzWi7GLCFhvzOsZswKq9w9tq6o4NtgvPyTlAeybr4PxiQj/o9ayK30MGLVsmpJP+MNPJMrwyZ7EBrAk5r3DQ/pYutyXCTcDsC46laTGBh8/0ORFSBMLKHn2PH2A5gOvGjJUiphZQBVmq1qSe3rEUi3PsoD3QbPWNOneohqjXxyuK+F2X2urE2JHyfFK+03ub6rtWRmWm5G1IUCE8W5tmG6/ggwJ+KCtkTSoN4dHS/wT8NgLKVYNJVtF8e/aDouCAo85QQPU630nO9vGKZ5njWjQ3LxKgeP0G4S1oppLpl76+2ZzyBjIxhkOPCMEWaD4EjxA/fKq+D+eQmv0YEbISFaN/3OBWhLFKc+Xv53RguYA3nOXxJwPEp5jS8Sm28ZdSj+Hpn4RkJfFl+M35Y8mULVVm19V9wkKdTIBMBwmD0GTbIyCUSyIXv1Zok2Rrqfvu64YuBhKo8s/bVTab944d
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?IViHjRhGRBgJdvC2R4Do5hzmaIIzt1Oyf1W9EWjhF88O/P58R9bv4HKOd4?=
 =?iso-8859-1?Q?rOoYeS1pgOk+8xSyj+/q6CHdJMsFkfIDBQu38jVdYW+0slztlrM0WKm/5T?=
 =?iso-8859-1?Q?pV1FqnqGTCTysRvowgTEoOuVu1kUANh+lk2cCsiEGk0ZSPRc3A1Py6JJI2?=
 =?iso-8859-1?Q?5t74dECFheO40X53vlt5A/NQdZ4s7kJVol4BKOncMYK5mRrUAKQ1tQQwwt?=
 =?iso-8859-1?Q?guHq/IuaZdwSH1d/QKFFyHGn/1FppYhcwVcDIt5YY0Q3uKFvOx8B0vYeq7?=
 =?iso-8859-1?Q?/IneOm46Zh3ZtzHApGE9IHrrxtHAlySkIv8jJMle+xFiNXa2THr+H2+Kw7?=
 =?iso-8859-1?Q?yX5drMv8CJH4w0WKakCsf1pFpLYePG3KEqY/j3Cf8t2QsdJukkMG97W/I7?=
 =?iso-8859-1?Q?AIQVwBTyz0K2amMFb/y2n05gFApse5c5HpAdUXhfrToklGrBaix5VUBXsT?=
 =?iso-8859-1?Q?vqEwssDkY9b42OzUaOYMidEPEChc7xjtvnq3ljtO2FypeNiN8J0rZtc1qx?=
 =?iso-8859-1?Q?8Kn5/buq6dplk8t++tU50cbjMfo1TKAm/hZet29CAI6Qq//TAG5RcCKgT6?=
 =?iso-8859-1?Q?EKVAVMLd+dhrock3qim8f4+1kFe7WdlhgCFR9fUjJHWrh4g9c6GOlRsQUN?=
 =?iso-8859-1?Q?CE55tSL4tfWR03QVzla1SAGVXUJUS32XqFHGKfLpZ+BeY4kgRGYstuDj7o?=
 =?iso-8859-1?Q?Vj28AHvmNLjxi3TFH1Q99N+a/twFpmId2pD+/+LaOvtEkf3sj/PFHc04Vc?=
 =?iso-8859-1?Q?Py8U9MeZG/BEwA7VbOtePramkYUFu55a1z3O5HvwSrOkIXOVH+wR6suSSZ?=
 =?iso-8859-1?Q?Tl6MeloW0SBKT2cRIXYKdXt5xSg/pu4VMvxSAJ05mQY8roP2Ca4jnBeb5R?=
 =?iso-8859-1?Q?7xwGza9w1nGfY9jmzqx6BGVfOlgD1aTH0WyRO64KqDbULaWqH6ZKyPGcwd?=
 =?iso-8859-1?Q?h9Q0KrMQcaX2ehbjvUd2JqbDHzBYt/+ngaEnDZV0KbTICep/qlGOeqBb35?=
 =?iso-8859-1?Q?YGiJSAKH3g4nuD7OWW4ZDa6B0lbGYc6n54/Z5XE9aNMGhMYD/EYTnPr76N?=
 =?iso-8859-1?Q?mD6yIod1Us7E1Res1gF6HDLizjPmdV2HhHkvoxgvANIFOOqWEhPIeELW+7?=
 =?iso-8859-1?Q?tzX+xbiel+vrCK4vHozgs/431hWn3D33hTfmdqvODd8cfNkA9aYWrG+0Fr?=
 =?iso-8859-1?Q?gIZe19eX8jIgMSLQ6Xs5Ws3XohaNUSqkIU5Mn3q2Zf0wqzn4Q21V2wwqim?=
 =?iso-8859-1?Q?l4GjSPOe+6hHLSg0Ih37IpWhhCvC5KBY4cVX6jdhiAq9LopCl7Vg9eKQTB?=
 =?iso-8859-1?Q?eF6da4zOCUExa5wmo0PknVcNLTkNkzbLTnQ/acVYWQUL1I1JaeGtHQ2tkk?=
 =?iso-8859-1?Q?fDXFekDjgYpRS1gfu9Z2BBk/l6ZhyoofAPdytE8CTcgJkmxVNQEcFAz9T3?=
 =?iso-8859-1?Q?4AfR0oa4pYsNl8jh2szPLY24+JewjZPJJwR1TDXpQ9Rpd+sU1KA+fUHnPI?=
 =?iso-8859-1?Q?rUDo1ef+GCorPsJep7aiP4RF6ubXWYCUYEgHU40bPRhVAHj4+j3CXAawM/?=
 =?iso-8859-1?Q?GflHZk6+h5g6ckczn9UHCJgF5nc1onDaBt+HDtmQMT7TiGWNsMZ1RqkbjR?=
 =?iso-8859-1?Q?eB7Al6A37Dbqwer/bt7n33M3iQcZLDYFNwbOLcyULh5nLdcp04uY56m7EE?=
 =?iso-8859-1?Q?Ry1hioN72LXZk6qYCVmPbHOYhFes06K3xSXAzww987S/RJ12IVj17O9ryN?=
 =?iso-8859-1?Q?DRTppiP+psrd4FLPYvsZUTzI48Zhf9cTKM1pCWzM1MYKqBjYvxGNtqfa8T?=
 =?iso-8859-1?Q?iHSzNDqjIA=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87973FBA4E52B68C1974AFD3B946ABL4PR11MB8797namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mRTRfSgJR8QcBxkBsbRo5CDsgq2pFY/gakrkFVWLB3y3q9QDSw9NkDFFgrazLdHDJ0usrDEOBDcDlzso/G7iMe3ioGcEM76K2R6xfRkwaeRTx9je2X3Depmgdv/zNHmaAMmGDWtkjrgnfTaLhN1LEtGFfbKShC1JmexxHjS+UudMmBV/YvpqFcY2EeqKjECwkJsq/4QPniaEDdgOWTAF+QvSCMAAXmI6vf9NDFiVBU7nPk9VN4mfNviiz6KpJZm1V3tf9z20qxitw3BKPtd5M2QnukLEQxvshD+qm5Ma0KSsI6sAAZR/Ryx2Ye0xDD6J7eQ3dVau0QQVgq+byc4z4A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8719029e-e8a4-436f-ad24-08de7e613f81
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 04:55:27.5503
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y63yxxhrcRwYy9ONocbaTJ3SeZ2FteH/0vEytOmlfed+TVf3GPwNBb6WgKbPo7pBIF2rm7rtbpzjbLAK8f8fmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9465
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 04:55:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66311

--_000_BL4PR11MB87973FBA4E52B68C1974AFD3B946ABL4PR11MB8797namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.0.16 Release is now availabl=
e for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/poky-1d54d1c=
4736a114e1cecbe85a0306e3814d5ce70.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.0.16/poky-1d54d1c4736a114e1c=
ecbe85a0306e3814d5ce70.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/testreport.t=
xt

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com
Yocto Project Build and Release

--------------------------
yocto-5.0.16 Release Notes
--------------------------

This release breaks Ubuntu 20.04 compatibility. Ubuntu 20.04 lack kernel he=
ader recent enough to support the pseudo-native fixes.
Ubuntu 20.04 is End-of-Life since 31 May 2025. Impacted users are encouragd=
ed to upgrade to a actively supported host ditribution.
Alternatively, a fix has been merged to scarthgap branch and can be applied=
 on top of this release:
 - https://git.openembedded.org/openembedded-core/commit/?h=3Dscarthgap&id=
=3Dfe2666749094e896736ff24d6885419905488723
 - https://git.yoctoproject.org/poky/commit/?h=3Dscarthgap&id=3D65c3ebea05d=
de5cbc9d249e7949fabbc0047313e


--------------------------
 Repositories/Downloads
--------------------------

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: scarthgap
Tag: yocto-5.0.16
Git Revision: 369f3307368eaea605983e80047377fd19ebd6bf
Release Artefact: yocto-docs-369f3307368eaea605983e80047377fd19ebd6bf
sha: e8ea8e2d5da2bfad868178d6fb37093c4f9ff06553f68970f0f730d6fb5cbd26
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/yocto-docs-3=
69f3307368eaea605983e80047377fd19ebd6bf.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/yocto-docs-369f330=
7368eaea605983e80047377fd19ebd6bf.tar.bz2

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: scarthgap
Tag: yocto-5.0.16
Git Revision: 1d54d1c4736a114e1cecbe85a0306e3814d5ce70
Release Artefact: poky-1d54d1c4736a114e1cecbe85a0306e3814d5ce70
sha: efb75697fa7a8e35a3f46abcfa706400f56ae1d1b5e360b48d6ffa81f6a675e8
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/poky-1d54d1c=
4736a114e1cecbe85a0306e3814d5ce70.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/poky-1d54d1c4736a1=
14e1cecbe85a0306e3814d5ce70.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: scarthgap
Tag: yocto-5.0.16
Git Revision: a1f4ae4e569bc0e36c27c1e4651e502e54d63b28
Release Artefact: oecore-a1f4ae4e569bc0e36c27c1e4651e502e54d63b28
sha: 10eefd2296206e5cbaf138de7dbd0dbe7bfc413618e924a123cd3f7f9a8418e0
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/oecore-a1f4a=
e4e569bc0e36c27c1e4651e502e54d63b28.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/oecore-a1f4ae4e569=
bc0e36c27c1e4651e502e54d63b28.tar.bz2

Repository Name: meta-yocto
Repository Location: https://git.yoctoproject.org/meta-yocto
Branch: scarthgap
Tag: yocto-5.0.16
Git Revision: 9bb6e6e8b016a0c9dfe290369a6ed91ef4020535
Release Artefact: meta-yocto-9bb6e6e8b016a0c9dfe290369a6ed91ef4020535
sha: d9cfd2192d12ebc55553bc421f3ab00d1f49c5f5c4c70e48923da695d19e8e2a
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/meta-yocto-9=
bb6e6e8b016a0c9dfe290369a6ed91ef4020535.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/meta-yocto-9bb6e6e=
8b016a0c9dfe290369a6ed91ef4020535.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: scarthgap
Tag: yocto-5.0.16
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/meta-mingw-bd9fef7=
1ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.8
Tag: yocto-5.0.16
Git Revision: 10118785e4a670bce4980e1044c0888a8b6e84af
Release Artefact: bitbake-10118785e4a670bce4980e1044c0888a8b6e84af
sha: 601a16210d7dc9b7a7306240d3e7013b3f950db8953fdd972151d715e050cc39
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/bitbake-1011=
8785e4a670bce4980e1044c0888a8b6e84af.tar.bz2
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/bitbake-10118785e4=
a670bce4980e1044c0888a8b6e84af.tar.bz2


---------------
 Contributors
---------------
Adarsh Jagadish Kamini
Amaury Couderc
Ankur Tyagi
Antonin Godard
Benjamin Robin (Schneider Electric)
Daniel Turull
Enrico Scholz
Fred Bacon
Het Patel
Hitendra Prajapati
Hugo SIMELIERE
Ken Kurematsu
Khai Dang
Lee Chee Yang
Paul Barker
Peter Marko
Quentin Schulz
Richard Purdie
Robert Yang
Vijay Anusuri
Yoann Congal
Zoltan Boszormenyi


---------------
 Known Issues
---------------
The poky DISTRO_VERSION was incorrectly left at 5.0.15. This is a minor iss=
ue, if a workaround is needed please cherry-pick:
 - poky commit 06210079b2e10d6d3fb943afe87864267e329821, or
 - meta-yocto commit 03f93c769ec99e5086e492d8145eb308a718e8d3.


---------------
Security Fixes
---------------
curl: Fix CVE-2025-10148 CVE-2025-14017 CVE-2025-14524 CVE-2025-14819 CVE-2=
025-15079 CVE-2025-15224
dropbear: Fix CVE-2019-6111
expat: Fix CVE-2026-24515 CVE-2026-25210
ffmpeg: Ignore CVE-2025-25469
glib-2.0: Fix CVE-2025-13601 CVE-2025-14087 CVE-2025-14512 CVE-2026-0988
glibc: FIx CVE-2025-15281 CVE-2026-0861 CVE-2026-0915
inetutils: Fix CVE-2026-24061
libarchive: Fix CVE-2025-60753 (follow-up fix)
libpcap: Fix CVE-2025-11961 CVE-2025-11964
libpng: Fix CVE-2026-22695 CVE-2026-22801
libtasn1: Fix CVE-2025-13151
libxml2: Fix CVE-2026-0989 CVE-2026-0990 CVE-2026-0992
python-urllib3: Fix for CVE-2026-21441
python3: Fix CVE-2025-12084 CVE-2025-13836 CVE-2025-13837
qemu: Ignore CVE-2025-54566 CVE-2025-54567
util-linux: Fix CVE-2025-14104
zlib: Ignore CVE-2026-22184

---------------
Fixes
---------------
bitbake: knotty: Make sure getTerminalColumns() returns two integers
bitbake: knotty: fix TIOCGWINSZ call for Python 3.14 and later
build-appliance-image: Update to scarthgap head revision
contributor-guide/recipe-style-guide.rst: explain difference between layer =
and recipe license(s)
contributor-guide/submit-changes.rst: remove mention of Upstream-Status
cups: allow unknown directives in conf files
dev-manual/packages.rst: fix example recipe version
dev-manual/packages.rst: pr server: fix and explain why r0.X increments on =
SRCREV change
dev-manual/packages.rst: rename r0.0 to r0 when PR server is not enabled
dev-manual/temporary-source-code.rst: fix definition of WORKDIR
docbook-xml-dtd4: fix the fetching failure
docs: Add a new "Security" section
docs: Makefile: fix rsvg-convert --format capitalization
ffmpeg: upgrade to 6.1.4
glibc: stable 2.39 branch updates
improve_kernel_cve_report: add script for postprocesing of kernel CVE data
libtheora: set CVE_PRODUCT
lighttpd: Fix trailing slash on files in mod_dirlisting
meta/classes: fix missing vardeps for CVE status variables
migration-guides: add release notes for 4.0.32, 5.0.14 and 5.0.15
overview-manual/yp-intro.rst: change removed ECOSYSTEM to ABOUT
overview-manual/yp-intro.rst: fix SDK type in bullet list
overview-manual/yp-intro.rst: link to YP members and participants
overview-manual: convert YP-flow-diagram.png to SVG
pseudo: Add hard sstate dependencies for pseudo-native
pseudo: Update to 1.9.3 release
ref-manual/classes.rst: document the image-container class
ref-manual/release-process.rst: add a "Development Cycle" section
ref-manual/svg/releases.svg: mark styhead and walnascar EOL
ref-manual/svg/releases.svg: mark whinlatter as current release
ref-manual/variables.rst: document the CCACHE_TOP_DIR variable
sdk-manual: appending-customizing: use none lexer for BitBake code blocks
sdk-manual: appendix-obtain: fix default path for eSDK installer script
sdk-manual: appendix-obtain: replace directory structure PNG with a parsed-=
literal block
sdk-manual: appendix-obtain: replace eSDK directory structure PNG with a pa=
rsed-literal block
sdk-manual: appendix-obtain: use parsed-literal block for naming convention=
 of the installer scripts
sdk-manual: delete sdk-title PNG
sdk-manual: fix improper indent of general form of tarball installer script=
s
sdk-manual: fix incorrect highlight language for console code-blocks
sdk-manual: fix incorrect highlight language for text code-blocks
sdk-manual: replace sdk-environment PNG with SVG
sdk-manual: using: fix SDK filename example
sdk-manual: working-projects: properly highlight code code-blocks
test-manual/ptest.rst: detail the exit code and output requirements
zlib: Add CVE_PRODUCT to exclude false positives
zlib: cleanup obsolete CVE_STATUS[CVE-2023-45853]


--_000_BL4PR11MB87973FBA4E52B68C1974AFD3B946ABL4PR11MB8797namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
We are pleased to announce the Yocto Project 5.0.16 Release is now availabl=
e for download.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a class=3D"OWAAutoLink" id=3D"OWAafcaa6c0-f561-a019-188a-6fe60b7746c5" hre=
f=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/poky-1d=
54d1c4736a114e1cecbe85a0306e3814d5ce70.tar.bz2">https://downloads.yoctoproj=
ect.org/releases/yocto/yocto-5.0.16/poky-1d54d1c4736a114e1cecbe85a0306e3814=
d5ce70.tar.bz2</a>&nbsp;&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a class=3D"OWAAutoLink" id=3D"OWA61565f76-9779-5286-3aca-015103b98f1c" hre=
f=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.16/poky-1d54d1c4736a1=
14e1cecbe85a0306e3814d5ce70.tar.bz2">https://mirrors.kernel.org/yocto/yocto=
/yocto-5.0.16/poky-1d54d1c4736a114e1cecbe85a0306e3814d5ce70.tar.bz2</a>&nbs=
p;&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
A gpg signed version of these release notes is available at:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a class=3D"OWAAutoLink" id=3D"OWA529be67f-ccee-e792-36c0-e2d3721d336e" hre=
f=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/RELEASE=
NOTES">https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/RELEA=
SENOTES</a>&nbsp;&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Full Test Report:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<a class=3D"OWAAutoLink" id=3D"OWAa1559b74-c837-faae-e585-56c39837231a" hre=
f=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/testrep=
ort.txt">https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/tes=
treport.txt</a>&nbsp;&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thank you for everyone's contributions to this release.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Chee Yang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
chee.yang.lee@intel.com</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Yocto Project Build and Release</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
yocto-5.0.16 Release Notes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
This release breaks Ubuntu 20.04 compatibility. Ubuntu 20.04 lack kernel he=
ader recent enough to support the pseudo-native fixes.&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Ubuntu 20.04 is End-of-Life since 31 May 2025. Impacted users are encouragd=
ed to upgrade to a actively supported host ditribution.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Alternatively, a fix has been merged to scarthgap branch and can be applied=
 on top of this release:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;- https://git.openembedded.org/openembedded-core/commit/?h=3Dscarthga=
p&amp;id=3Dfe2666749094e896736ff24d6885419905488723</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;- https://git.yoctoproject.org/poky/commit/?h=3Dscarthgap&amp;id=3D65=
c3ebea05dde5cbc9d249e7949fabbc0047313e</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Repositories/Downloads</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
--------------------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: yocto-docs</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/yocto-docs</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: scarthgap</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.16</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 369f3307368eaea605983e80047377fd19ebd6bf</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: yocto-docs-369f3307368eaea605983e80047377fd19ebd6bf</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: e8ea8e2d5da2bfad868178d6fb37093c4f9ff06553f68970f0f730d6fb5cbd26</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/yocto-docs-3=
69f3307368eaea605983e80047377fd19ebd6bf.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/yocto-docs-369f330=
7368eaea605983e80047377fd19ebd6bf.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: poky</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/poky</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: scarthgap</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.16</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 1d54d1c4736a114e1cecbe85a0306e3814d5ce70</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: poky-1d54d1c4736a114e1cecbe85a0306e3814d5ce70</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: efb75697fa7a8e35a3f46abcfa706400f56ae1d1b5e360b48d6ffa81f6a675e8</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/poky-1d54d1c=
4736a114e1cecbe85a0306e3814d5ce70.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/poky-1d54d1c4736a1=
14e1cecbe85a0306e3814d5ce70.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: openembedded-core</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.openembedded.org/openembedded-core</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: scarthgap</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.16</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: a1f4ae4e569bc0e36c27c1e4651e502e54d63b28</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: oecore-a1f4ae4e569bc0e36c27c1e4651e502e54d63b28</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 10eefd2296206e5cbaf138de7dbd0dbe7bfc413618e924a123cd3f7f9a8418e0</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/oecore-a1f4a=
e4e569bc0e36c27c1e4651e502e54d63b28.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/oecore-a1f4ae4e569=
bc0e36c27c1e4651e502e54d63b28.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: meta-yocto</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/meta-yocto</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: scarthgap</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.16</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 9bb6e6e8b016a0c9dfe290369a6ed91ef4020535</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: meta-yocto-9bb6e6e8b016a0c9dfe290369a6ed91ef4020535</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: d9cfd2192d12ebc55553bc421f3ab00d1f49c5f5c4c70e48923da695d19e8e2a</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/meta-yocto-9=
bb6e6e8b016a0c9dfe290369a6ed91ef4020535.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/meta-yocto-9bb6e6e=
8b016a0c9dfe290369a6ed91ef4020535.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: meta-mingw</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.yoctoproject.org/meta-mingw</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: scarthgap</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.16</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/meta-mingw-bd9fef7=
1ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Name: bitbake</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Repository Location: https://git.openembedded.org/bitbake</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Branch: 2.8</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Tag: yocto-5.0.16</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Git Revision: 10118785e4a670bce4980e1044c0888a8b6e84af</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Release Artefact: bitbake-10118785e4a670bce4980e1044c0888a8b6e84af</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sha: 601a16210d7dc9b7a7306240d3e7013b3f950db8953fdd972151d715e050cc39</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Download Locations:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/bitbake-1011=
8785e4a670bce4980e1044c0888a8b6e84af.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/bitbake-10118785e4=
a670bce4980e1044c0888a8b6e84af.tar.bz2</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Contributors</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Adarsh Jagadish Kamini</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Amaury Couderc</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Ankur Tyagi</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Antonin Godard</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Benjamin Robin (Schneider Electric)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Daniel Turull</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Enrico Scholz</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Fred Bacon</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Het Patel</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hitendra Prajapati</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hugo SIMELIERE</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Ken Kurematsu</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Khai Dang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Lee Chee Yang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Paul Barker</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Peter Marko</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Quentin Schulz</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Richard Purdie</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Robert Yang</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Vijay Anusuri</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Yoann Congal</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Zoltan Boszormenyi</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;Known Issues</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
The poky DISTRO_VERSION was incorrectly left at 5.0.15. This is a minor iss=
ue, if a workaround is needed please cherry-pick:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;- poky commit 06210079b2e10d6d3fb943afe87864267e329821, or</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp;- meta-yocto commit 03f93c769ec99e5086e492d8145eb308a718e8d3.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Security Fixes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
curl: Fix CVE-2025-10148 CVE-2025-14017 CVE-2025-14524 CVE-2025-14819 CVE-2=
025-15079 CVE-2025-15224</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dropbear: Fix CVE-2019-6111</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
expat: Fix CVE-2026-24515 CVE-2026-25210</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ffmpeg: Ignore CVE-2025-25469</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
glib-2.0: Fix CVE-2025-13601 CVE-2025-14087 CVE-2025-14512 CVE-2026-0988</d=
iv>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
glibc: FIx CVE-2025-15281 CVE-2026-0861 CVE-2026-0915</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
inetutils: Fix CVE-2026-24061</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libarchive: Fix CVE-2025-60753 (follow-up fix)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libpcap: Fix CVE-2025-11961 CVE-2025-11964</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libpng: Fix CVE-2026-22695 CVE-2026-22801</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libtasn1: Fix CVE-2025-13151</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libxml2: Fix CVE-2026-0989 CVE-2026-0990 CVE-2026-0992</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
python-urllib3: Fix for CVE-2026-21441</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
python3: Fix CVE-2025-12084 CVE-2025-13836 CVE-2025-13837</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
qemu: Ignore CVE-2025-54566 CVE-2025-54567</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
util-linux: Fix CVE-2025-14104</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
zlib: Ignore CVE-2026-22184</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Fixes</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
---------------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
bitbake: knotty: Make sure getTerminalColumns() returns two integers</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
bitbake: knotty: fix TIOCGWINSZ call for Python 3.14 and later</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
build-appliance-image: Update to scarthgap head revision</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
contributor-guide/recipe-style-guide.rst: explain difference between layer =
and recipe license(s)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
contributor-guide/submit-changes.rst: remove mention of Upstream-Status</di=
v>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
cups: allow unknown directives in conf files</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/packages.rst: fix example recipe version</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/packages.rst: pr server: fix and explain why r0.X increments on =
SRCREV change</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/packages.rst: rename r0.0 to r0 when PR server is not enabled</d=
iv>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
dev-manual/temporary-source-code.rst: fix definition of WORKDIR</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
docbook-xml-dtd4: fix the fetching failure</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
docs: Add a new &quot;Security&quot; section</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
docs: Makefile: fix rsvg-convert --format capitalization</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ffmpeg: upgrade to 6.1.4</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
glibc: stable 2.39 branch updates</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
improve_kernel_cve_report: add script for postprocesing of kernel CVE data<=
/div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
libtheora: set CVE_PRODUCT</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
lighttpd: Fix trailing slash on files in mod_dirlisting</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
meta/classes: fix missing vardeps for CVE status variables</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
migration-guides: add release notes for 4.0.32, 5.0.14 and 5.0.15</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
overview-manual/yp-intro.rst: change removed ECOSYSTEM to ABOUT</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
overview-manual/yp-intro.rst: fix SDK type in bullet list</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
overview-manual/yp-intro.rst: link to YP members and participants</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
overview-manual: convert YP-flow-diagram.png to SVG</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
pseudo: Add hard sstate dependencies for pseudo-native</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
pseudo: Update to 1.9.3 release</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/classes.rst: document the image-container class</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/release-process.rst: add a &quot;Development Cycle&quot; section=
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/svg/releases.svg: mark styhead and walnascar EOL</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/svg/releases.svg: mark whinlatter as current release</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
ref-manual/variables.rst: document the CCACHE_TOP_DIR variable</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: appending-customizing: use none lexer for BitBake code blocks</=
div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: appendix-obtain: fix default path for eSDK installer script</di=
v>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: appendix-obtain: replace directory structure PNG with a parsed-=
literal block</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: appendix-obtain: replace eSDK directory structure PNG with a pa=
rsed-literal block</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: appendix-obtain: use parsed-literal block for naming convention=
 of the installer scripts</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: delete sdk-title PNG</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: fix improper indent of general form of tarball installer script=
s</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: fix incorrect highlight language for console code-blocks</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: fix incorrect highlight language for text code-blocks</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: replace sdk-environment PNG with SVG</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: using: fix SDK filename example</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
sdk-manual: working-projects: properly highlight code code-blocks</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
test-manual/ptest.rst: detail the exit code and output requirements</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
zlib: Add CVE_PRODUCT to exclude false positives</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
zlib: cleanup obsolete CVE_STATUS[CVE-2023-45853]</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_BL4PR11MB87973FBA4E52B68C1974AFD3B946ABL4PR11MB8797namp_--

