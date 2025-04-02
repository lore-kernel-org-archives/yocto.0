Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DE7C36018
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 03:06:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by mx.groups.io with SMTP id smtpd.web10.4820.1743563165969739768
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Apr 2025 20:06:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=YGzU+jvz;
 spf=pass (domain: intel.com, ip: 198.175.65.12, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1743563166; x=1775099166;
  h=from:to:subject:date:message-id:mime-version;
  bh=Izq4AQOkshmMwGFSTo4dnmOXgp5k5aHrWNGUcKi5k34=;
  b=YGzU+jvzUOO/M/dxhrxJGqRUOBeGMGD47nTq0UpA3l8PqfFwDvtmXrDm
   vQe1d0u2DGH2SwFuFZFzorfLxrvT7Y5TQ/11BZoKDMhj3fK8waRy3XJwA
   uIuyNA406pIP4jPe2KVZvNq2IHvlVV4jI7G5VOjWhLRyKRSRMc5X/+iYs
   t9bzFlvzwDP6SooJzlwhu5uOqCRlniWmPvs0Y45nKz7l8u0K1ZeA5Zngq
   ctWuDEydwdgCO1jBAiTMC9Wtj2PkW7LKK4jvQdTw4uy9U1V6mXElq0tXi
   tGj0Txcfh0ODHP1RWHmkGKlZ8OpzEATNX24fkvHvm8RHV/pf3zHlw483y
   Q==;
X-CSE-ConnectionGUID: nLsg1z89TSyc/ZLa8iReug==
X-CSE-MsgGUID: dSmYs3aQRnGuxqLBQvU8/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="56278722"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; 
   d="scan'208,217";a="56278722"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa104.jf.intel.com with ESMTP; 01 Apr 2025 20:03:27 -0700
X-CSE-ConnectionGUID: GSUXKDsRQ928macYjzw7tw==
X-CSE-MsgGUID: f1tXCc6wScyc1bg7zagdVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; 
   d="scan'208,217";a="149746854"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2025 20:03:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 1 Apr 2025 20:03:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 1 Apr 2025 20:03:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 1 Apr 2025 20:03:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XnJSKf57jRSs9fX4A8FjU+mGOt7/VLuny2wZVcJEh9hSoxRvYURf1FTs3bQjUYxkTJw/DG2r/cisaoq3TrGqHonym3yZIYV5DFEa5w0A//4iOO8uWxasM6hF23Hp13PzxSdL+rMSQjzYQQ5z0LFNUlHF+Zpi7nGlje5inuUYtpPRzl1+w+0M9GU5v2OeXoPQ4Ykopg231aM9C3IOt/ApdrgmwUBZ7GnnVomywjlz0Gxa6PbErMan+uoFCNLBqyNVLMkFM6R+KfYj0nklULFVpHMdrLXhAnacnTk0VPlOS5h/EuJZ/bKiHgFf6K89XVMZ7Xf+lq1MveIsjhKzXXur/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qyccoPHCA/fq0J2uwr3Lr4+yuXgnXF2I5RfgKOVRmQg=;
 b=CswsGIHCr2nZtTpF8jtO9CrQ0Pq67qIQiC+9CmOaFMvixz8LF6RB6hI5MdJ7ay4IRsE5pOcGx7q2BciglTlcU9FFSrXxapDWDOKfOlk6EDLn3snbpfksYCW6xjTPzHEC0+zvtlGADECWXGUGaQ2QI0L2bkIv8tCiQx2KcawKP3c3jZCyhFjok621Xwk+/l/UNpw77gmyri7sXg03QlT4XG4jAxr8SPPt+vRCOLk1bDdLyaRZBVXvNWci0uvXLvlIP+lZ9ignz0pfkA7Sf5jKFopK0bqB1bMFaG4XiuaK9XD/uFBL1Q7wH+sk+BghGADQGK+oLhFnhEsyGLjPX5lzMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL4PR11MB8797.namprd11.prod.outlook.com (2603:10b6:208:5a7::8)
 by IA0PR11MB7693.namprd11.prod.outlook.com (2603:10b6:208:401::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Wed, 2 Apr
 2025 03:03:24 +0000
Received: from BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8]) by BL4PR11MB8797.namprd11.prod.outlook.com
 ([fe80::311e:565b:ccfd:f4c8%7]) with mapi id 15.20.8534.043; Wed, 2 Apr 2025
 03:03:24 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 5.1.4 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 5.1.4 is Released
Thread-Index: AdujejPXH9CBWRP4R9aEIYfjl1UarA==
Date: Wed, 2 Apr 2025 03:03:24 +0000
Message-ID: <BL4PR11MB87978ADAB7C9CAF579B1AF0DB9AF2@BL4PR11MB8797.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL4PR11MB8797:EE_|IA0PR11MB7693:EE_
x-ms-office365-filtering-correlation-id: ee99fb75-f88b-4030-1014-08dd7192eec4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|8096899003|38070700018|13003099007;
x-microsoft-antispam-message-info: =?us-ascii?Q?QxtSMBDNvI2JNMecmchlHkZTnae98RsjtAJQmz04keUtBkGCKlb7LuzMV8AO?=
 =?us-ascii?Q?VrR4yviDY7tC8zirmqssC6As5Wzl4ZG9HUR5VlfoO84OHMjYluKg6on8pl+b?=
 =?us-ascii?Q?qfnVX0Xe0BZiPF9QBOPKJ91SmSIxH05QBPZ+J8aVXIvVxn4/9JTWrQ8UNGCS?=
 =?us-ascii?Q?hSk2bD875VbowBBdyYvxm6WMpSiFHduHBbWisu6UCtdhvJHCH+FMEc3wfX9e?=
 =?us-ascii?Q?xOAhoq+7uq3aP4l+gkkAyyoEZ4XQ+rEbtGr8DsySxUjzvmB7V45EIATtvRyB?=
 =?us-ascii?Q?14LiJRpYGJ04Ryqi4QmAS2dOLj/6Hvt1Qaf7rjszzMnj1t/SsfpSSsaI6fyH?=
 =?us-ascii?Q?UowEBcf9zj7BBPcU5n3rCV5WFFIP5BzDiTTthWuWSDyvgimXCU8cTsHhh9ms?=
 =?us-ascii?Q?N36oG7xhlTQFwkCWeiauWxqbzKxP2z0CDtohTJrfgdDacSsaJ1WwHS/3XI7B?=
 =?us-ascii?Q?v+4bDu5zizlbfwkVDilGv7WakLkYb0rax8NGBiBFZ+G7oannDUhwaDGKZoIw?=
 =?us-ascii?Q?l4Eq33kBVLDsbXPmT5R5z84IxhxjPJunsEPulYTZ4GFilhI04jyXpqCziKC0?=
 =?us-ascii?Q?HiMPyaAyepS2kWgpwXwdtMpTyaE5hM0EapkzmoWK5tJGh0XdUxs7hhqMJWsr?=
 =?us-ascii?Q?iG2sdtejC/lq23ZQtr+3LXe6x83B7eRi4F7xh5ZIi1NRNu2CXiTyoQ+QdsXv?=
 =?us-ascii?Q?KGKNzfDwv4Gt86TUWSj3c3SLC1Fn8iSlp4fQcYlYfGVwH5NjGtfjXN5zr9eO?=
 =?us-ascii?Q?57Wx3NgXRq5R6khbQk+S53EaCLY4l+R8awOEbEUDbXK5Jw80EK7ygu856Epb?=
 =?us-ascii?Q?zedyFH1mT5prqiaYix/oo1At0CsEbs5l2fH3PggA3CVHcXSt5/utfaYI7i1p?=
 =?us-ascii?Q?AkT9Jy2vV1hZERiFncV9rh6to1h//3++N/tbAE0mnqmEg9fUZtrhzI79uUFF?=
 =?us-ascii?Q?gaF9amY5C0rltb874kGzi8eBW6Dv0OqvfdQ3lp3i6nGcJecHGBvT2RRJ+igx?=
 =?us-ascii?Q?P2MccJK48Sj7Lubgb+ajKTAHCp1KAxnQwJcuyBJ4GvqjFmKhOKXvDYuQj/lq?=
 =?us-ascii?Q?iJRjUb0PTsyApLBzCvlHQ/r/mlHoQLXzIfyFQT0RrzLH7Dz5f7TrzgGJuKr2?=
 =?us-ascii?Q?GFLTneqQURjd8bi5riLSBZxABJyXWf7CbCyT1yUMMY6RUpWgTkqhUWFGPCs2?=
 =?us-ascii?Q?umRhNd9RtgCFrvPeGiaAGQ2FHrZopxBLLaFc6tCXyxT/uBAXjY3BFEaabeEq?=
 =?us-ascii?Q?IgnEV60mFgfuMQevl6BlXonUbH6HYymfLosqenbYGrjwVWbwjCoT4ftOWLJT?=
 =?us-ascii?Q?Uj0pXbYHraHHieezX6KNYp/UBf7E7fiDaxK9entjd593KWNXopccgzdKz2Lo?=
 =?us-ascii?Q?yUvky547GhHodjRQD38RTu/yXeYoh0pMGb5ZW5vmJYi7vfBsig=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL4PR11MB8797.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(8096899003)(38070700018)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/l0XG21VWgzx6EKMVE2gLVhrQ7/E1EhRw5e1M5oBhs8sQbin72wY7BB4cYWC?=
 =?us-ascii?Q?0VJYzesom9SgKRH91r6oViExILN3GPgL5O58WTmu9VKZZ6qO73dZ7ajcnQ+Y?=
 =?us-ascii?Q?S/wVW1BQyzE0tuCcqOO2U8da0ESTp2EUd+ZbZQhGfDa1ObIq7N/6uyLjTs9h?=
 =?us-ascii?Q?jJO12k3QLhXpiFYpCL1SmsF/NdnMTLQX6msIvR6cjNNmKKWMc0cAeg+EZj4l?=
 =?us-ascii?Q?ceQrsY0rqJ7TdXtQV3kybvuhf6HFldPVMY9IozsK+aa4GqaslefGpFrnTwRV?=
 =?us-ascii?Q?Xs3Jt14zRArtEuBe6p6e2Jdm0rlbCQ6yiJa1DjMyIDTvfnZZlme6vDl0cMe9?=
 =?us-ascii?Q?coVjBljMYYPhI3n2DI2CHpnvgFQwrVQAv26wkjzrLjSgS/8vX5GnHhVRvyYK?=
 =?us-ascii?Q?H4V69iZ9hOa0wJxcLbUWVuPs4OKSBBdqpG9tHBMzX9ju95vQD0tS6Abn/VQp?=
 =?us-ascii?Q?JtcjigRx5chA98pPeWrv9JUTVEbNJv2o2XAft15ozMuvIa2PXCpOReYnYDu9?=
 =?us-ascii?Q?Ft0ZL+BDwDkLlGg6+I1YFC+0tDfhIIvJorPVYLFZr25Frfz4+vMhmWK9HovM?=
 =?us-ascii?Q?u6eiOgQ+NR6Gx6ypJ/mpV//U2gvZm+fUs/8lsM0dZdW8MMSb7aMbroLJkiUW?=
 =?us-ascii?Q?oheDwrGlDkUeYBl3Rl+1++BiLOZyR4Q4xynD+5g6Cv/zoRHbgknSJ8WGARRh?=
 =?us-ascii?Q?ZEA3to9lv+KgjkaVAQrx5X28Ii8mMbA2MbKrflAuGxHiNj/MXd2NwZbJIDIF?=
 =?us-ascii?Q?lXNCjyQdGgrA/LMwikAVmRXU97/uwtiHCMppumDrLXPrJUU6Vf2m0wPQQjFN?=
 =?us-ascii?Q?yYpmoQf3KzNMhEBdxBNaTmWu8x/M8VYnPxvjzjrH6AokSMUCX92gq1VE3Wwk?=
 =?us-ascii?Q?vjzD1vANfXGXsWLEy/uaGI20KqK/+53dLWKDg5m7rW8A73YSWqfjuIbZwTFe?=
 =?us-ascii?Q?OfK5xR3+4TiASuwmsVsI3URQxLKi2IbewkVX/hLmnMOG7b1VcSdUyfS4iZUX?=
 =?us-ascii?Q?FaVd3Br+h/xIHZuIUPwXxrr5u5l8ZBlXRt8KcRcVp2fD5DLq6bNJi9cJKlFV?=
 =?us-ascii?Q?9F7IyZ1bRFcA22rNrukajnIw/9khg0/1YMZ0ikJfNiHzmgw2W7kCISmsw74c?=
 =?us-ascii?Q?zYOY4bEDzSYQUe3n+aorgUNI/ZN+JHrGQT5Pu6MyQ7rYpWtoOlm5G9tiV6Ga?=
 =?us-ascii?Q?/3ekiMuuHgP9X3Gu+mJd2wIzP4mxLRFsCOzjTyV7iafMzRkF1htoczd5RwgH?=
 =?us-ascii?Q?m5CV/8uNPP9Ln0QdAt8C7qEr8yfdVxGV4RWMMvuyha7uYD2wFqVAwfVc3SpQ?=
 =?us-ascii?Q?Isp8qiXq+dB23yaHQrARKSl2H5uNKm0HJ1Azj3v1ekExSXBfEKmTMNd/t7yX?=
 =?us-ascii?Q?dPBuykZe5aUA1m27jPNbZu/gLpVuWMsnQxPpjwqj4rAq984TWltR0bxINTRH?=
 =?us-ascii?Q?2U+s2f4pJaZ12kgC3M9NP68KnrEllSAjgR+2On2Y5Yz+yYgdxrKGhd4/NcK5?=
 =?us-ascii?Q?ZdxJufqCskepCZEYrtIl/JzF4etkoAja69fcPcurFCDQvKJrgYyIKEpffan6?=
 =?us-ascii?Q?/E7XocEFff0j3jyafgruv8dWneOGMwvXuMIlZST2?=
Content-Type: multipart/alternative;
	boundary="_000_BL4PR11MB87978ADAB7C9CAF579B1AF0DB9AF2BL4PR11MB8797namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL4PR11MB8797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee99fb75-f88b-4030-1014-08dd7192eec4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2025 03:03:24.1213
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ze1ufoA6LBs/Ns5dQQ9dLaTmIDpaLFvp6tLEU6Fvddbt0SnogI90jx1k6tCqHQ4v/NfgaZiCvIrvaZ8vinOmXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7693
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 03:06:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65051

--_000_BL4PR11MB87978ADAB7C9CAF579B1AF0DB9AF2BL4PR11MB8797namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 5.1.4 Release is now available=
 for download.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac=
287bf35541270cae1d99130a0f6b7b5f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/poky-70dc28ac287bf355412=
70cae1d99130a0f6b7b5f.tar.bz2

A gpg signed version of these release notes is available at:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/RELEASENOTES

Full Test Report:

https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


--------------------------
yocto-5.1.4 Release Notes
--------------------------


--------------------------
Repositories/Downloads
--------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/poky
Branch: styhead
Tag: yocto-5.1.4
Git Revision: 70dc28ac287bf35541270cae1d99130a0f6b7b5f
Release Artefact: poky-70dc28ac287bf35541270cae1d99130a0f6b7b5f
sha: 63f1d3d47a28bd9b41c89db6e1f2657c04233a00d10210795e766c0bc265d766
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac=
287bf35541270cae1d99130a0f6b7b5f.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/poky-70dc28ac287bf355412=
70cae1d99130a0f6b7b5f.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: styhead
Tag: yocto-5.1.4
Git Revision: 2d94f4b8a852dc761f89e5106347e239382df5fb
Release Artefact: oecore-2d94f4b8a852dc761f89e5106347e239382df5fb
sha: 344ac23f814c049d69b06cee42c43b7b422506ce84397406caef09becb2555bf
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/oecore-2d94f4=
b8a852dc761f89e5106347e239382df5fb.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/oecore-2d94f4b8a852dc761=
f89e5106347e239382df5fb.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/meta-mingw
Branch: styhead
Tag: yocto-5.1.4
Git Revision: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
Release Artefact: meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
sha: 4c7f8100a3675d9863e51825def3df5b263ffc81cd57bae26eedbc156d771534
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/meta-mingw-77=
fe18d4f8ec34501045c5d92ce7e13b1bd129e9.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec3=
4501045c5d92ce7e13b1bd129e9.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.10
Tag: yocto-5.1.4
Git Revision: 82b9f42126983579da03bdbb4e3ebf07346118a7
Release Artefact: bitbake-82b9f42126983579da03bdbb4e3ebf07346118a7
sha: 209d62c5262f2287af60e7fe2343c29ab25b5088de4da71de89016e75900285a
Download Locations:
https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/bitbake-82b9f=
42126983579da03bdbb4e3ebf07346118a7.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/bitbake-82b9f42126983579=
da03bdbb4e3ebf07346118a7.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/yocto-docs
Branch: styhead
Tag: yocto-5.1.4
Git Revision: f0324b8f14881227336f84325cdebd0518e17796


---------------
Contributors
---------------
Alessio Cascone
Lee Chee Yang
Makarios Christakis
Marta Rybczynska
Peter Marko
Priyal Doshi
Richard Purdie
Ross Burton
Steve Sakoman
Vijay Anusuri
Wang Mingyu
Weisser, Pascal


---------------
Known Issues
---------------
N/A


---------------
Security Fixes
---------------
binutils: Fix CVE-2025-0840
grub: Fix CVE-2024-45774  CVE-2024-45775  CVE-2024-45776  CVE-2024-45777  C=
VE-2024-45778   CVE-2024-45779  CVE-2024-45780  CVE-2024-45781  CVE-2024-45=
782   CVE-2024-45783  CVE-2024-56737  CVE-2025-0622  CVE-2025-0624  CVE-202=
5-0677  CVE-2025-0678  CVE-2025-0684  CVE-2025-0685  CVE-2025-0686  CVE-202=
5-0689  CVE-2025-0690  CVE-2025-1118  CVE-2025-1125
openssh: Fix CVE-2025-26465 CVE-2025-26466
puzzles: Ignore CVE-2024-13769 CVE-2024-13770 CVE-2025-0837
subversion: Ignore CVE-2024-45720
xserver-xorg: Ignore CVE-2025-26594 CVE-2025-26595 CVE-2025-26596 CVE-2025-=
26597 CVE-2025-26598 CVE-2025-26599 CVE-2025-26600 CVE-2025-26601

---------------
Fixes
---------------
bitbake: event/utils: Avoid deadlock from lock_timeout() and recursive even=
ts
bitbake: utils: Add signal blocking for lock_timeout
bitbake: utils: Print information about lock issue before exiting
bitbake: utils: Tweak lock_timeout logic
build-appliance-image: Update to styhead head revision
docs: Remove all mention of core-image-lsb
grub: backport strlcpy function
grub: drop obsolete CVE statuses
icu: Adjust ICU_DATA_DIR path on big endian targets
libtasn1: upgrade to 4.20.0
libxml2: upgrade to 2.13.6
migration-guides: add release notes for 4.0.25 and 5.1.3
poky.conf: bump version for 5.1.4
ref-manual: Add missing variable IMAGE_ROOTFS_MAXSIZE
ref-manual: don't refer to poky-lsb
ref-manual: remove OE_IMPORTS
tzcode-native: Fix compiler setting from 2023d version
tzdata/tzcode-native: upgrade to 2025a
vulnerabilities/classes: remove references to cve-check text format
xserver-xf86-config: add a configuration fragment to disable screen blankin=
g
xserver-xf86-config: remove obsolete configuration files
xserver-xorg: upgrade to 21.1.16
xwayland: upgrade to 21.1.6



--_000_BL4PR11MB87978ADAB7C9CAF579B1AF0DB9AF2BL4PR11MB8797namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-MY" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi<br>
<br>
We are pleased to announce the Yocto Project 5.1.4 Release is now available=
 for download.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac287bf355=
41270cae1d99130a0f6b7b5f.tar.bz2">https://downloads.yoctoproject.org/releas=
es/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d99130a0f6b7b5f.tar.bz2<=
/a>
 &nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
mirrors.kernel.org/yocto/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d9=
9130a0f6b7b5f.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-5.1.4/p=
oky-70dc28ac287bf35541270cae1d99130a0f6b7b5f.tar.bz2</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">A gpg signed versio=
n of these release notes is available at:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/RELEASENOTES">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/RELEASENOTES</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Full Test Report:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"https://=
downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/testreport.txt">https=
://downloads.yoctoproject.org/releases/yocto/yocto-5.1.4/testreport.txt</a>=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you for every=
one's contributions to this release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Chee Yang<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><a href=3D"mailto:c=
hee.yang.lee@intel.com">chee.yang.lee@intel.com</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Yocto Project Build=
 and Release<br>
<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">yocto-5.1.4 Release=
 Notes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repositories/Downlo=
ads<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-------------------=
-------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: po=
ky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 70dc2=
8ac287bf35541270cae1d99130a0f6b7b5f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: p=
oky-70dc28ac287bf35541270cae1d99130a0f6b7b5f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 63f1d3d47a28bd=
9b41c89db6e1f2657c04233a00d10210795e766c0bc265d766<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d9=
9130a0f6b7b5f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.4/poky-70dc28ac287bf35541270cae1d99130a0f6b7b=
5f.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: op=
enembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 2d94f=
4b8a852dc761f89e5106347e239382df5fb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: o=
ecore-2d94f4b8a852dc761f89e5106347e239382df5fb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 344ac23f814c04=
9d69b06cee42c43b7b422506ce84397406caef09becb2555bf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.4/oecore-2d94f4b8a852dc761f89e5106=
347e239382df5fb.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.4/oecore-2d94f4b8a852dc761f89e5106347e239382d=
f5fb.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: me=
ta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 77fe1=
8d4f8ec34501045c5d92ce7e13b1bd129e9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: m=
eta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 4c7f8100a3675d=
9863e51825def3df5b263ffc81cd57bae26eedbc156d771534<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec34501045c=
5d92ce7e13b1bd129e9.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.4/meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b=
1bd129e9.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: bi=
tbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.openembedded.org/bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: 2.10<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: 82b9f=
42126983579da03bdbb4e3ebf07346118a7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Release Artefact: b=
itbake-82b9f42126983579da03bdbb4e3ebf07346118a7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">sha: 209d62c5262f22=
87af60e7fe2343c29ab25b5088de4da71de89016e75900285a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Download Locations:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://downloads.y=
octoproject.org/releases/yocto/yocto-5.1.4/bitbake-82b9f42126983579da03bdbb=
4e3ebf07346118a7.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">https://mirrors.ker=
nel.org/yocto/yocto/yocto-5.1.4/bitbake-82b9f42126983579da03bdbb4e3ebf07346=
118a7.tar.bz2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Name: yo=
cto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Repository Location=
: https://git.yoctoproject.org/yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Branch: styhead<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tag: yocto-5.1.4<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Git Revision: f0324=
b8f14881227336f84325cdebd0518e17796<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Contributors<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Alessio Cascone<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Lee Chee Yang<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Makarios Christakis=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Marta Rybczynska<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Peter Marko<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Priyal Doshi<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Richard Purdie<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Ross Burton<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Steve Sakoman<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Vijay Anusuri<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wang Mingyu<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Weisser, Pascal<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Known Issues<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">N/A<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Security Fixes<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">binutils: Fix CVE-2=
025-0840<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub: Fix CVE-2024-=
45774&nbsp; CVE-2024-45775&nbsp; CVE-2024-45776&nbsp; CVE-2024-45777&nbsp; =
CVE-2024-45778&nbsp;&nbsp; CVE-2024-45779&nbsp; CVE-2024-45780&nbsp; CVE-20=
24-45781&nbsp; CVE-2024-45782&nbsp;&nbsp; CVE-2024-45783&nbsp; CVE-2024-567=
37&nbsp; CVE-2025-0622&nbsp; CVE-2025-0624&nbsp;
 CVE-2025-0677&nbsp; CVE-2025-0678&nbsp; CVE-2025-0684&nbsp; CVE-2025-0685&=
nbsp; CVE-2025-0686&nbsp; CVE-2025-0689&nbsp; CVE-2025-0690&nbsp; CVE-2025-=
1118&nbsp; CVE-2025-1125<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">openssh: Fix CVE-20=
25-26465 CVE-2025-26466<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">puzzles: Ignore CVE=
-2024-13769 CVE-2024-13770 CVE-2025-0837<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">subversion: Ignore =
CVE-2024-45720<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: Ignor=
e CVE-2025-26594 CVE-2025-26595 CVE-2025-26596 CVE-2025-26597 CVE-2025-2659=
8 CVE-2025-26599 CVE-2025-26600 CVE-2025-26601<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Fixes<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">---------------<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: event/util=
s: Avoid deadlock from lock_timeout() and recursive events<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: utils: Add=
 signal blocking for lock_timeout<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: utils: Pri=
nt information about lock issue before exiting<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">bitbake: utils: Twe=
ak lock_timeout logic<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">build-appliance-ima=
ge: Update to styhead head revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">docs: Remove all me=
ntion of core-image-lsb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub: backport strl=
cpy function<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">grub: drop obsolete=
 CVE statuses<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">icu: Adjust ICU_DAT=
A_DIR path on big endian targets<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libtasn1: upgrade t=
o 4.20.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">libxml2: upgrade to=
 2.13.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">migration-guides: a=
dd release notes for 4.0.25 and 5.1.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">poky.conf: bump ver=
sion for 5.1.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: Add mis=
sing variable IMAGE_ROOTFS_MAXSIZE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: don't r=
efer to poky-lsb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">ref-manual: remove =
OE_IMPORTS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzcode-native: Fix =
compiler setting from 2023d version<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">tzdata/tzcode-nativ=
e: upgrade to 2025a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">vulnerabilities/cla=
sses: remove references to cve-check text format<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xf86-config=
: add a configuration fragment to disable screen blanking<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xf86-config=
: remove obsolete configuration files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xserver-xorg: upgra=
de to 21.1.16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">xwayland: upgrade t=
o 21.1.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><br>
<br>
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BL4PR11MB87978ADAB7C9CAF579B1AF0DB9AF2BL4PR11MB8797namp_--

