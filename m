Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86D9C44501
	for <webhook@archiver.kernel.org>; Thu, 16 Jul 2026 02:19:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.4186.1784168381681308428
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jul 2026 19:19:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=fAwt06og;
 spf=pass (domain: intel.com, ip: 192.198.163.8, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784168381; x=1815704381;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=z3vCGXy0RKcni7mlt9TZqKqB6afY4Xf6LpTGB+5cHGk=;
  b=fAwt06og3THEw+zDbHwfqfcmTPND7W7H35cPwZ2CE/FZJXR97/tch+8L
   8GOYtiAyWpABzt1OBTIb9EJjfptFlEZCZrQ8e3cTF4TnHVmP8tUVrayI2
   jJwnN4Du+sA3SCKjCj68x4vWNms/dWiZbdheIKBgTT+V/womwAYyfPyjT
   f5dPQDtu08lZ4oLetaXdrBzDp/DVcX/qSrWcWTcgKxjarJ7i6uoCBqhsY
   W1rrEMjJ2fe9EIf64leEHknSj30FNrNEqt73vxlodpAg0JFvJYVEHb/z0
   06BezGNkobLVDlx6YhH6zu1ugGTZEdBZXefbvP/d+5fBTZxYEENyNjTKW
   g==;
X-CSE-ConnectionGUID: dYgwRkS6Tj2HPBcbfB8Sug==
X-CSE-MsgGUID: GmGkKfKlQGK9OJIe0PxwoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="102371244"
X-IronPort-AV: E=Sophos;i="6.25,166,1779174000"; 
   d="scan'208";a="102371244"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2026 19:19:41 -0700
X-CSE-ConnectionGUID: QVaGBq5tSdCP5fBuzqODRA==
X-CSE-MsgGUID: +T7rEjuURqq+qysdt8mfVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,166,1779174000"; 
   d="scan'208";a="252391145"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2026 19:19:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 19:19:40 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 19:19:40 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 19:18:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mkzIHXKmq8PfQ2jynPcaGnMiI9z84Ug997XbbJJidIlByFwo4GT8i4GhdFJoUWGBc6RSlcig5I7/JRiTBvypYVaMfH36y4gRqRu8z8n8yJlt30DbzcGvjzltf391e6ybcj5DuaU5U5YU658Fm5BWDvx0BiBvwVmrZ4oEYvH+/wByR0lPPTIKiO+0Tx+9jLWhUjjBuw8ILhudBYt+q56OBVTNZ0aFkaAz1mDQNG7C19rPcL15v5T7VN1uulVE3cRdt3mf7WlyV39IcDwUfj8a1WPLBCWLgJzZyr8BZg4004nKCuUv+l3nexXck4dFH2VcF7kGEiJ6cUscqYQgx5A09Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z3vCGXy0RKcni7mlt9TZqKqB6afY4Xf6LpTGB+5cHGk=;
 b=kGxpl4oc6VT47aZVmP0E3uSRDQQd2fE1UYdXcWNa/nUONRa3gRjiJlBu5n6/+Qe5cs7xFF/r1rU5g8d90CIxRapu18nDsuJDUqKnJwq+fkp4LdbNANey1pS7CUIrrLg190XtXA2m8/iaTxg9i0ZJYQF5Xfmxvr2Bhb/doecNQ/kP5nTHZtmCjMQ0Pmr3ViLdToYBmRite1JVbUtQHx85OIMLzmoJ+4II5l+xti6IWm+aTBPqYd/X9eL7Ttn3L4qaVMdzWyTXaOp+gkzkKge+ZG3GKfcUK31Ilv9ubXk0xk3AiAbhakcYLOp2ayCP+GIohFOecoHUwNbzfaA6RX/K3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by PH0PR11MB4854.namprd11.prod.outlook.com (2603:10b6:510:35::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.12; Thu, 16 Jul
 2026 02:18:33 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::fe4:8775:47fa:b7d9%6]) with mapi id 15.21.0202.018; Thu, 16 Jul 2026
 02:18:33 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 6.0.2 (wrynose-6.0.2) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 6.0.2 (wrynose-6.0.2) is Released
Thread-Index: AQHdFMRSXyLBBiG+WU+2OfKSdvu6+g==
Date: Thu, 16 Jul 2026 02:18:33 +0000
Message-ID: <BL4PR11MB8797F00D3E45FC1D61601A57B9C72@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|PH0PR11MB4854:EE_
x-ms-office365-filtering-correlation-id: 09ab95e4-cb08-4218-5c59-08dee2e0893d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|1800799024|10070799003|376014|366016|10067099003|6133799003|18002099003|38070700021|3023799007|56012099006|11063799006;
x-microsoft-antispam-message-info: 2qmQHhku/ltsWe6rVXpUaV/tf4CPl4eDgJl+UaFxx1Ep2YYqj+aSBH1ilC/1bTPJ5tByTu9HAe5LemxDr655b3CY0VNIOgF4KJ9T6xajw+AUgmKGcoPZNeMQU9NSIrQ2OJCbnZOTTWPbJDXRosShzW/oj+g+wE14C6dxyLhsV+44SIr9V9apDToJO5EAyJ24C3hOxLTyJwFFc4Fmn+RvH2IQ3dy7U4ZWI3gdkyhmxX+QhkJQwH5dpIrV5/GsTNANjUgMgi/PdhDrLTgQHPJYqq4UmV1OEHl2ll4HWycz0VCwwqp8NMiHhBDCMWdCm06ixDj6SvpYUIXu04WLbSjzZqLZzrjYeNfJCWbYdOWZOmxY0FNRJ6BtSsu4Mg5LuZmL+/UT2ZRqtb0zKxcgLXxbq35aeu0hUNKdNxcm/2K7HyQkiMUsHXo82Go18PifEwiem4+R837d6QIKFbDSlB3pFO06YXj0JervI+JnlDNRG+UdEU8lxuwdaU/aW+hXuflHNtIyQPsHB0LzQgeKHWRZGh2K7fuqo7mm/Gsmh5fWeCK5zyN/N22pMfG2n3zOETFIKYVZSaNgPyplw2GJHJHNB95OpghN9+ynNJHq68wcp03cnNd/o6d+EI7uEbtv2W0TUyoGb7p5qnCijSb4DO1BlNS+jVmK+LmwsAg9BANVxKo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(10070799003)(376014)(366016)(10067099003)(6133799003)(18002099003)(38070700021)(3023799007)(56012099006)(11063799006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?POlE0DlaP0de81RTtaNHKEtjFiNB2THgzavgvK2NZZPW6/YgFBR+OOHcVQ?=
 =?iso-8859-1?Q?n5GtBabJnRk+YpSQATaqgJHmZ8FUI+/IJjDsZslMH/XTM2bD8Y1HN0C5Yo?=
 =?iso-8859-1?Q?M/ZrKEQLzX05BlmoUFkuaarp1xiuVlQe5dkrbVLgKWiwqL69KKU1jP7LwQ?=
 =?iso-8859-1?Q?F3a/SwaqazEzW3d2wUDpbHiXizE/lY26mhtZFrQjjrIRBGTrs+roq/+U5l?=
 =?iso-8859-1?Q?R90REVbj0V+ugBV2TUARdnBNQy9GKZ/RXXjNS7IqIg29d3KabgYcv6Hpzy?=
 =?iso-8859-1?Q?pyfH+Gg+RVMp5mqSQTPyy6XQxH1Ex3cY++TszumgIg03hwcuE9+ZJpu3Ag?=
 =?iso-8859-1?Q?nHIN8xRJ2bykV2hbKb9Z917HB6ZwRGg/cGDWQu60B8PsJ7P0Z5dvVBXcDc?=
 =?iso-8859-1?Q?meleeh8VF34VvSPuPePChrk1ZTX/VC9VCaJULiyGDmBS2sorbkGDyGD4f1?=
 =?iso-8859-1?Q?jK2H+pIC28+Zl0pfseE+P4Gny0J4aRnn5+khOcZsiMheCqZ7ELzIF3DA7Q?=
 =?iso-8859-1?Q?p3XQUYCDVP16eyhEHHl0SgssYKet+kyk/Y0CYF0D8cT8j0SyrvcKiUB1Gj?=
 =?iso-8859-1?Q?sRIRRomZzM3cQkOWUZXvk2lGwBA6ZR6YuJzTiN1vONww4It+w65g3xU8tQ?=
 =?iso-8859-1?Q?75BRebLLuvtgXffSYqOLTTkkM7bcjoUzUeI6ezp668Sy9Hb6dsjXnWRJM/?=
 =?iso-8859-1?Q?XU95/s4Lm+lsjNLs+BFqoEmoyEFXvIGKTffAaPRBfpQPGH9AD+JPUdPJbJ?=
 =?iso-8859-1?Q?C00TqIqDs0ENKfPFqx5Hst8sp8wxkFdeDq1uvgIYnGvBid1A1r9eMM88cm?=
 =?iso-8859-1?Q?GFx4JhKfzlvOLwrI2yGZERy0FTeHIln5bV0Z5auGPG48dr7EZ+E6juSsEM?=
 =?iso-8859-1?Q?ijm2ZZn7sGQ2J1AtE7ydvZNAMdRam7vLgtUw9ystKzWOHb93nihGfJVjr0?=
 =?iso-8859-1?Q?YjhTBHgOuibHBnuxka0OV92GKkjFWY2kmdjnqRq3Z5N9zP6Nks6YCifR3k?=
 =?iso-8859-1?Q?cVxbXdG4KuJKy3RXqkDCESiCcn7CY7BYo9n7uppNZgMTY121e42V35hlWx?=
 =?iso-8859-1?Q?q7ZshETr+uvdf4cB5Yr+o1dK9RhTqNRJ97CX8YDwrvQ6bzzo/edwqxy2CE?=
 =?iso-8859-1?Q?97RRkxBuSCUCSjUMciqUQLJg01kEUnhV+kdhNx8nD57HaBP5MvAAaxeBLo?=
 =?iso-8859-1?Q?krSKmGE8smN35OD6sx5cUXVZSPzB6VvY4ksxvrev4TsN8QHCCEumTBXPyw?=
 =?iso-8859-1?Q?l11gqiV8nlsef3nAX3ci+oyPEC3jUDbeQJ/A77cOHsHAKljfXGk4/dC7Wt?=
 =?iso-8859-1?Q?TLvCIH79I5KU/I2y5NVVeBmHtyhpzxAjpHPZVpFTLkDVjeWflI7TvTr48s?=
 =?iso-8859-1?Q?dc9rEHD7TfmyeWwOSCkadP2O1fB7KSB/qxyylFVmgvaTlqhNsula41Bfds?=
 =?iso-8859-1?Q?6rE5U1ddEOdrrtAHbyZL1nPL/s4Q442fZiF0jFSV3tR3a8g0FJT2R2TUDb?=
 =?iso-8859-1?Q?OyRy0RDil6U9+BwT3DI8f9wm7u41OEQwZVbkIUjwwUd2r2EWfRuWKPXKhw?=
 =?iso-8859-1?Q?jZFyGWrv3pt2GQf547UJBDBLTx3jhb6V9AvkHHK+JTlbTgFA9fbUOjEOMM?=
 =?iso-8859-1?Q?I5KeUdIseiO9xIrxc6PK3V53+XRMY3Xwhfg3050U9rLsDyhRKRgIeGv6a3?=
 =?iso-8859-1?Q?Silf9BC1B8yZMYRlfPlr9+s/zjfpebF/GLTT1Fpp+Lup7oDG+YxvG0UMqM?=
 =?iso-8859-1?Q?oItf9Hqt8ROgJfo05tbr+Jd2vkAxjES4vBN41wxhaW9kybUUpy97SiQvNY?=
 =?iso-8859-1?Q?JMGaqnmav1sFJWCYYVBYekvoJ2N0qotAh526VD8dPopq6dGCm+71hrKM8q?=
 =?iso-8859-1?Q?JZ?=
x-ms-exchange-antispam-messagedata-1: KKLX1/XUfM1Z/w==
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NhmhuulgiWLL/QPuHdcaIheX0Y6vBe8ESDCxRVK86dYjJrZnLIqv2SShPmPhEc5xPdum4fkfoEOAMXByg8qver/7zvzEKIQNpFWkojA9PvhzSawmb6f9FNGV1JoHy5DiY+UtrkUltqonAJSmitgwKeTOtNXNon3UHnHpn8rTrkhGOvltJrpOReW2tW2XqZ9r7/+ZEW4kg03I00IKei8ha0rTlsrpI2LTcqrjttyuM2/neLLCeYUPD0NxJnle1EXeOzin/39quEKS9XwStQivFgwqhT/xAPdII0k+t6N1b3ZEQBFsg9sTOvx+whOFCMg/y5E+BrlZKvZcFgaFr+pnQQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09ab95e4-cb08-4218-5c59-08dee2e0893d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2026 02:18:33.5172
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pfpQsGp/iZrnc8cwlBS4iITxhhCvMHzV5DysEsz421g3JLf+pK8U32Wlf41CcvSKYm8Zir5dVRf/uPp3LsJUsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4854
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2026 02:19:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66644

Hi =0A=
=0A=
We are pleased to announce the Yocto Project 6.0.2 Release is now available=
 for download.=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.2/=0A=
https://mirrors.kernel.org/yocto/yocto/yocto-6.0.2/=0A=
=0A=
A gpg signed version of these release notes is available at:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.2/RELEASENOTES=
=0A=
=0A=
Full Test Report:=0A=
=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.2/testreport.tx=
t=0A=
=0A=
Thank you for everyone's contributions to this release.=0A=
=0A=
Chee Yang=0A=
chee.yang.lee@intel.com=0A=
Yocto Project Build and Release=0A=
=0A=
=0A=
--------------------------=0A=
yocto-6.0.2 Release Notes=0A=
--------------------------=0A=
=0A=
This release removed the linux-yocto 6.18 CVE exclusion list (meta/recipes-=
kernel/linux/cve-exclusion_6.18.inc) as sbom-cve-check now natively handles=
 CVE status. =0A=
=0A=
=0A=
--------------------------=0A=
 Repositories/Downloads=0A=
--------------------------=0A=
=0A=
Repository Name: yocto-docs=0A=
Repository Location: https://git.yoctoproject.org/yocto-docs=0A=
Branch: wrynose=0A=
Tag: yocto-6.0.2=0A=
Git Revision: 2c59a23fc39d92831cb55a0e5f713d20f94730d4=0A=
Release Artefact: yocto-docs-2c59a23fc39d92831cb55a0e5f713d20f94730d4=0A=
sha: ed297179a81884c892ca4fac44be163e9603c77d2ca84462b7b29a772c427236=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.2/yocto-docs-2c=
59a23fc39d92831cb55a0e5f713d20f94730d4.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.2/yocto-docs-2c59a23f=
c39d92831cb55a0e5f713d20f94730d4.tar.bz2=0A=
=0A=
Repository Name: openembedded-core=0A=
Repository Location: https://git.openembedded.org/openembedded-core=0A=
Branch: wrynose=0A=
Tag: yocto-6.0.2=0A=
Git Revision: 5d1aa5c806c061a2994f4decb59016610f093213=0A=
Release Artefact: oecore-5d1aa5c806c061a2994f4decb59016610f093213=0A=
sha: d7c5b514ebba36558921bf30b2f404521a46bbe38805011afb1f43ec60925c31=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.2/oecore-5d1aa5=
c806c061a2994f4decb59016610f093213.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.2/oecore-5d1aa5c806c0=
61a2994f4decb59016610f093213.tar.bz2=0A=
=0A=
Repository Name: meta-yocto=0A=
Repository Location: https://git.yoctoproject.org/meta-yocto=0A=
Branch: wrynose=0A=
Tag: yocto-6.0.2=0A=
Git Revision: 24c24cef5d1523fefe43a3e3d34667b37ae551f3=0A=
Release Artefact: meta-yocto-24c24cef5d1523fefe43a3e3d34667b37ae551f3=0A=
sha: d81d38f935efaf7f744f9f3b0b47e0c551dc4aad09343792813acadc60a11ef2=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.2/meta-yocto-24=
c24cef5d1523fefe43a3e3d34667b37ae551f3.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.2/meta-yocto-24c24cef=
5d1523fefe43a3e3d34667b37ae551f3.tar.bz2=0A=
=0A=
Repository Name: bitbake=0A=
Repository Location: https://git.openembedded.org/bitbake=0A=
Branch: 2.18=0A=
Tag: yocto-6.0.2=0A=
Git Revision: acfe02fa38b5da9e6a36c6cedcf91d4fcbefbfbd=0A=
Release Artefact: bitbake-acfe02fa38b5da9e6a36c6cedcf91d4fcbefbfbd=0A=
sha: 13c93db11c6648ceed179408244a07111b6d6fb911749d46d160103fdd375ec9=0A=
Download Locations:=0A=
https://downloads.yoctoproject.org/releases/yocto/yocto-6.0.2/bitbake-acfe0=
2fa38b5da9e6a36c6cedcf91d4fcbefbfbd.tar.bz2=0A=
https://mirrors.edge.kernel.org/yocto/yocto/yocto-6.0.2/bitbake-acfe02fa38b=
5da9e6a36c6cedcf91d4fcbefbfbd.tar.bz2=0A=
=0A=
=0A=
---------------=0A=
 Contributors=0A=
---------------=0A=
=0A=
Thanks to the following people who contributed to this release:=0A=
=0A=
Abhishek Bachiphale=0A=
Adarsh Jagadish Kamini=0A=
Alexander Kanavin=0A=
Anders Heimer=0A=
Anil Dongare=0A=
Ankur Tyagi=0A=
Anthony Squires=0A=
Antonin Godard=0A=
Bin Cao=0A=
David Reyna=0A=
Deepak Rathore=0A=
Harish Sadineni=0A=
He Zhe=0A=
Hemanth Kumar M D=0A=
Jate Sujjavanich=0A=
Jesse Van Gavere=0A=
Jinfeng Wang=0A=
Joshua Watt=0A=
Jo=C3=A3o Marcos Costa=0A=
J=C3=B6rg Sommer=0A=
Lee Chee Yang=0A=
Marcio Henriques=0A=
Mark Hatle=0A=
Mark Jonas=0A=
Marta Rybczynska=0A=
Niko Mauno=0A=
Omkar Patil=0A=
Paul Barker=0A=
Peter Marko=0A=
Prabhudasu Vatala=0A=
Quentin Schulz=0A=
Richard Purdie=0A=
Robert P. J. Day=0A=
Ross Burton=0A=
Sai Sneha=0A=
Thomas Perrot=0A=
Tushar Darote=0A=
Vyacheslav Yurkov=0A=
Wang Mingyu=0A=
Yoann Congal=0A=
hongxu=0A=
=0A=
---------------=0A=
 Known Issues=0A=
---------------=0A=
N/A=0A=
=0A=
=0A=
---------------=0A=
Security Fixes=0A=
---------------=0A=
=0A=
bind: Fix CVE-2026-3039 CVE-2026-3592 CVE-2026-3593 CVE-2026-5946 CVE-2026-=
5947 CVE-2026-5950=0A=
cups: Fix CVE-2026-34978 CVE-2026-34979 CVE-2026-34980 CVE-2026-34990 CVE-2=
026-39314 CVE-2026-39316=0A=
curl: Fix CVE-2026-6276=0A=
go: Fix CVE-2026-27145 CVE-2026-33811 CVE-2026-33814 CVE-2026-39817 CVE-202=
6-39819 CVE-2026-39820 CVE-2026-39823 CVE-2026-39825 CVE-2026-39826 CVE-202=
6-39836 CVE-2026-42499 CVE-2026-42501 CVE-2026-42504 CVE-2026-42507=0A=
libinput: Fix CVE-2026-50292=0A=
libsolv: Fix CVE-2026-9150=0A=
libusb1: Fix CVE-2026-23679 CVE-2026-47104=0A=
openssl: Fix CVE-2026-7383 CVE-2026-9076 CVE-2026-34180 CVE-2026-34181 CVE-=
2026-34182 CVE-2026-34183 CVE-2026-42764 CVE-2026-42766 CVE-2026-42767 CVE-=
2026-42768 CVE-2026-42769 CVE-2026-42770 CVE-2026-45445 CVE-2026-45446 CVE-=
2026-45447=0A=
python3: Fix CVE-2026-1502 CVE-2026-3087 CVE-2026-3298 CVE-2026-4786 CVE-20=
26-5713 CVE-2026-6019 CVE-2026-6100 =0A=
qemu: Fix CVE-2024-6519=0A=
xserver-xorg: Fix CVE-2026-33999 CVE-2026-34000 CVE-2026-34001 CVE-2026-340=
02 CVE-2026-34003=0A=
xwayland: Fix CVE-2026-33999 CVE-2026-34000 CVE-2026-34001 CVE-2026-34002 C=
VE-2026-34003=0A=
=0A=
=0A=
---------------=0A=
Fixes=0A=
---------------=0A=
=0A=
bitbake=0A=
-----------=0A=
bitbake: fix issue with varflag exclusion=0A=
fetch2/crate: guard against empty version list=0A=
fetch2/crate: skip yanked versions when reading cargo index=0A=
fetch2/git: quote shallow extra ref arguments=0A=
fetch2/wget: limit auth on checkstatus redirects=0A=
fetch2: Unpack RPMs with --no-absolute-filenames=0A=
fetch2: allow empty value for params while formatting URI string.=0A=
fetch2: reraise IOError during download=0A=
fetch2: validate deb/ipk data member names=0A=
fetch2: validate striplevel parameter=0A=
hashserv/tests: use valid 64-character unihashes=0A=
hashserv: validate unihash values=0A=
layerindexlib: restapi.py: fix unbound variable=0A=
tests/fetch: cover checkstatus redirect auth handling=0A=
toaster: use https for clones, remove cgit in links in defaults=0A=
=0A=
oecore=0A=
-----------=0A=
bind: upgrade to 9.20.23=0A=
binutils: Upgrade to 2.46.1=0A=
build-appliance-image: Update to wrynose head revisions=0A=
ca-certificates: upgrade to 20260601=0A=
classes/gtk-icon-cache: fix libdir passed to the postrm intercept=0A=
conf/machine: fix typos in ARM and x86 README files=0A=
curl: fix mbedtls detection=0A=
dropbear: Clarify LICENSE and drop PD=0A=
gcc: Upgrade GCC to 15.3 release=0A=
gettext-minimal-native: Use SPDX License Identifier=0A=
glib-2.0-native: Remove problematic path reference=0A=
glib-2.0: Change from Public Domain to Gnome GCR Documentation License=0A=
go: upgrade to 1.26.4=0A=
gstreamer1.0-plugins-bad: handle padded buffers in wl_shm buffer creation=
=0A=
libpcap: fix error message on 32-bit integer overflow=0A=
libsdl2: Fix compilation error with DirectFB=0A=
licenses: Update with the pull-sdpx-licenses.py script to 3.28.0=0A=
linux-yocto: remove CVE exclusion list, sbom-cve-check does this itself=0A=
lttng-modules: Fix trace_hrtimer_start build failure=0A=
matchbox-panel-2: backport patch to set a constant size for the clock=0A=
mobile-broadband-provider-info: Fix license to be CC-PDDC=0A=
net-tools: Handle binmerge=0A=
oeqa/core/runner: stub addDuration in OETestResult=0A=
openssl: upgrade to 3.5.7=0A=
perf: disable BUILD_BPF_SKEL by default=0A=
perf: make libraries for install_headers configurable=0A=
pixman: Change PD license to HPND-sell-variant=0A=
ppp: Remove PD license=0A=
pseudo: Update to version 1.9.8=0A=
python3-pycryptodome: Update LICENSE PD -> Unlicense=0A=
python3-pyelftools: Update license to Unlicense=0A=
python3: Fix ThreadingMock call_count race condition=0A=
python3: sanitize userbase in _sysconfig_vars JSON to avoid host path leak=
=0A=
python3: upgrade to 3.14.5=0A=
python3targetconfig: pull in nativesdk python when building nativesdk recip=
es=0A=
rust: export CARGO_BUILD_TARGET=0A=
sbom-cve-check-common: Fatalize command failure=0A=
sbom-cve-check: Fix breakage with empty IMAGE_LINK_NAME=0A=
scripts/install-buildtools: Update to 6.0.1=0A=
sqlite3: Use SPDX identifier=0A=
squashfs-tools: add another CPE=0A=
sstate: Detect broken sstate paths containing tmpdir=0A=
udev-extraconf: use -H for unmount tmpfile find=0A=
util-macros: Remove redundant MIT license=0A=
wireless-regdb: upgrade to 2026.05.30=0A=
xserver-xorg/xwayland: 'Clarify' xserver license=0A=
xserver-xorg/xwayland: Drop X11-swapped from LICENSE=0A=
xserver-xorg: upgrade to 21.1.22=0A=
xwayland: upgrade 24.1.9 -> 24.1.11=0A=
=0A=
meta-yocto=0A=
-----------=0A=
poky.conf: Bump version for 6.0.2 release=0A=
=0A=
yocto-docs=0A=
-----------=0A=
Document shared state signing=0A=
bsp-guide: mention bootloader and device tree in BSP intro=0A=
bsp-guide: simplify example of structure of BSP layer=0A=
bsp-guide: update guide to reflect newer beaglebone=0A=
build-manual: update ROOTFS_POSTPROCESS_COMMAND example=0A=
contributor-guide: couple minor typo/grammar fixes=0A=
dev-manual: SysVinit is the default init manager for Poky=0A=
dev-manual: change "setup" to "set up" when used as an action=0A=
dev-manual: drop "PREFERRED_VERSION" from x86-base.inc snippet=0A=
dev-manual: fix broken grammar in "Libraries" section=0A=
dev-manual: fix grammatical error, missing word "with"=0A=
dev-manual: fully define SOLIBS-related variables in bitbake.conf=0A=
dev-manual: remove semicolons for rootfs commands=0A=
dev-manual: update AUTOREV explanation to match current file=0A=
kernel-dev: remove references to defunct LTSI project=0A=
migration-guide: Fix migration scripts=0A=
migration-guide: add release notes for 5.0.18=0A=
overview-manual/concepts: convert several .png to SVG=0A=
overview-manual/svg: remove white backgrounds=0A=
overview-manual: add ":term:" for OE Build System=0A=
overview-manual: correct that "conf" is a subdir of build dir=0A=
overview-manual: explain "ODM" and "OSV" acronyms=0A=
overview-manual: fix typo, "semi-colon" -> "colon"=0A=
overview-manual: hyphens not allowed in file version=0A=
overview-manual: inform the reader early of "bitbake-getvar"=0A=
overview-manual: mention that patch files can be compressed=0A=
overview-manual: provide a more expansive definition of "layer"=0A=
overview-manual: remind reader that meta-poky is a distro layer=0A=
overview-manual: update deploy.bbclass snippet=0A=
overview-manual: use correct spelling "counterpart"=0A=
recipe-style-guide.rst: two minor grammatical tweaks=0A=
ref-manual/variables.rst: link *MIRRORS definitions to the BitBake manual=
=0A=
ref-manual: add more explanation to glossary variable LICENSE=0A=
ref-manual: clarify that PACKAGE_EXCLUDE supports DEB packaging=0A=
ref-manual: clarify use of "PACKAGE_ARCH" in a packagegroup=0A=
ref-manual: document RM_WORK_EXCLUDE_ITEMS variable=0A=
ref-manual: update glossary entries for packaging backend variables=0A=
security-manual: some grammar and wording fixes in intro=0A=
security-team.rst: update my email address and key=0A=
security-team: Add section on multi-project embargoes=0A=
security-team: Tidy and update section on security team operations=0A=
security-team: Update membership list=0A=

