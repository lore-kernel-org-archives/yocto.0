Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 492D3C433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Dec 2021 12:32:06 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web11.37537.1640694724558258055
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 04:32:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=K/vLnahG;
 spf=pass (domain: intel.com, ip: 192.55.52.115,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640694724; x=1672230724;
  h=from:to:subject:date:message-id:mime-version;
  bh=w+nG7IxDKqgG5AlPKpgyxXkzSkUvyRaOACbQwRHe3z0=;
  b=K/vLnahG0CZo8uscQ52pYPyHDlBiknUWWjpIuEZaEQAnqdQq7HVrdVkp
   +7IGH0VD8tfIjCcnzE/q8Cq1hPLI1jTgyeM8+aA8UjdOORmKvud3ejPTY
   cYzJ3NTgye++mH3r+l5ERcVFlu2IyfWXDGqDJl/lAnsX2K57OgEQ+Slw+
   7ZT4jsPxHSPMEk6fdV9iwPv1s7xzelbmJT4+OUxqk7pcAVm9+8A2L/CMs
   8lB/MO35KNCLs2aGNzr5KirkIPoXz9ZuILa1RCEfT9gHnxX0dBFOFOeD2
   eTXO2pdvIBXcNHEk8pIY2ZLH/4GHAVJlrFIEVB10ynuTb4O92sU3yNpTN
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10210"; a="241573330"
X-IronPort-AV: E=Sophos;i="5.88,242,1635231600";
   d="scan'208,217";a="241573330"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2021 04:32:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,242,1635231600";
   d="scan'208,217";a="618738603"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga004.jf.intel.com with ESMTP; 28 Dec 2021 04:32:02 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 28 Dec 2021 04:32:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 28 Dec 2021 04:32:02 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 28 Dec 2021 04:32:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b3MQidYD9Kzp6sw+8/uTFJS/f7Pjq1jxsK50u83wjZwzYsfep5rVGlPmUEUO53BZ8INVrDFQkYvUTIMr2ezsggKliew3aQMgbIWyIUyMobwvITQnspMIlESra4qw96FUo6TKoC0lCxtj8ObMA9OFgRic++sBZm6Zs/bbOjKUSGfl41pDVRLi706KhNpNTEtoWSXGa+54UDsK3euF3xPUqzQnrwJ4MGwIZWuCHTRPgLexksvG3EewDF+H63ZqwxpRltggAC2Vr8AUwfJLnEVFHCHYMwukJC7MrzvKSJVVPOqXH7B4S2Z5gHP7bOsMmytjsHthxp9by4AOGoc2aMsLNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IvBga7CXjT2Pn+qKKurKgz00ZV66P6VkXT9yeHsGzY4=;
 b=KUzHL4NpoE7NdXMyzuiaKGIfNSLwudR3M9kjKxtIwSUkgxyyEVBi83Br2uKOvZzPtqE4XMuQ3sr3Zd3qP5SLBumQKE+GcDJS3AQtrGwmfk5hv/JiLxjtkVaG6LdM0qe+MRwataTJSa+prWmpmIPHwvVuqwHc6kwZEEGYd8BODuxl8ff40jIJYRJs2DtoKoO6BDv2d2+UR57tQwtaZKvJImhlzVJ/jMMT4i/8MHFLqs3kgmIOUChF+r6kS7GtM2bV/6ls95+a4E68W6i2+Kn4BE8OGvcaUuL3bht6YSySUc+c0ruBUL3B9SzVqEjp5PHr6d7v/3cJFV7fY+vRaQ4zuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1749.namprd11.prod.outlook.com (2603:10b6:903:11f::17)
 by CY4PR11MB1829.namprd11.prod.outlook.com (2603:10b6:903:124::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.21; Tue, 28 Dec
 2021 12:32:00 +0000
Received: from CY4PR11MB1749.namprd11.prod.outlook.com
 ([fe80::8c57:44c8:e7be:bd90]) by CY4PR11MB1749.namprd11.prod.outlook.com
 ([fe80::8c57:44c8:e7be:bd90%5]) with mapi id 15.20.4823.023; Tue, 28 Dec 2021
 12:32:00 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 3.1.13 (dunfell-23.0.13) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.1.13 (dunfell-23.0.13) is
 Released
Thread-Index: Adf75jYHfbt/b+TgReOgI8gSDvaU/w==
Date: Tue, 28 Dec 2021 12:32:00 +0000
Message-ID: 
 <CY4PR11MB1749D17777CBB2ADB37121D6B9439@CY4PR11MB1749.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 11f6793d-0c99-45f9-dca6-08d9c9fe0bdd
x-ms-traffictypediagnostic: CY4PR11MB1829:EE_
x-microsoft-antispam-prvs: 
 <CY4PR11MB1829FDC4B8DBAB719B2AA08FB9439@CY4PR11MB1829.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 EVD2sLvkRBCNym78p/60PyaBgieE8XHinixdOxsNQfbp+KW+S1vGBmzIw8/P2B0m3PWbwzPWrsPkUpQeevIHSum3ARFG37eeVUooHQgT8wuZcpjT/ar0AlME8ZwzF5sVn6qmByXCnpD1Pid0NopEKpFhTGUK3L9+bYwBGuhr91A/m4ZJwPrjkM0oGq7I3KydTMZsQQCqvm+xIK3jDX+9WOgQJB9fkqdtr1HfB/CR+yDKcXPvEpy0al4Alx2x0QmNjn8h2TZ6TeGU0kzvnZyH6EqoIfu7F1TPmKkUsj6B3nBjzTwMoRNh54OgFWEtEvIk6utOodABCgzN+hDEpZjN+JlAkApzFMSpAjIXJZADQzJnFrdZEYAnnmRExg+WxJ8sDfbVgkUzT2d4TdRSlKp/657jjLXv0tNlNKJzopye5BmMBbJa12bhfua7F3FtP4v5nF80xwKUpSI7n1LvA/7EhhRZXYJrQ55V5LSmkOzGkbFxehEnw/y427snOGf81ILtWD2zMbaX+AeXIFl/VaAq3vA0obR8E1NIBz/rE3Wz5nvmjecJye0AyDk1idC+fOkXu/duwXkoo+ebUmvfLB4lgTpAs+C2ER4AALRgjJWTq+zy+M9JTinm/TBK75MxknlqMRQDL/T8N6qBhFObmVNA6MeDyQkzm1Dz6B3e93QD+KYknhQXKPO3SBp6Z41qwRrzVd1PtYSHVHViUfPGF+siMjeFeEHyzQjCqBEjjWkPnBlxbP48rfgiMOFQFHd6Eib3tEsvIWZh3J3mHidSppUiPM46J3Dxp/NjZhRJFDItvYUSY1re/QweeSNMgMPBxkPi2hkdP68mfv2ZS559aSb3LXwsxODvbZ/rzJrcGYkUCcU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR11MB1749.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66476007)(38070700005)(66556008)(66446008)(33656002)(66574015)(64756008)(66946007)(86362001)(9326002)(76116006)(83380400001)(55236004)(52536014)(5660300002)(166002)(186003)(9686003)(26005)(122000001)(7696005)(6506007)(8676002)(966005)(55016003)(82960400001)(450100002)(71200400001)(8936002)(2906002)(508600001)(316002)(110136005)(38100700002)(21314003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?GcMsr4mWUPpFn10Th0V0d/fLKDoCUKoWygpaESLdVmqSWCqCJsPTXbjtbHZQ?=
 =?us-ascii?Q?Nu2V7uyP3DJPo6vcoy7DKuf2ghJ/1wDAQPJwgkPdTrD/taXf2ZHrLvdP2Iix?=
 =?us-ascii?Q?kHpgvwO7vIoRYWZUSWQajBNi3SeLJ6wkEf3yNlWxqEc/FdTl1Ki06cmQMklY?=
 =?us-ascii?Q?8B8hspuBP6rXq0WyG1PD3YfVRCVvLk63Dd+dJQ76v1bP8g1H2KwOIDhpFOmp?=
 =?us-ascii?Q?8Q73NnnwtbmWiw1OI9FtZwsAKhVVMix/3xncyvETFM7N93D6TuQOZrwNoLMK?=
 =?us-ascii?Q?kVtPwnxAh9KejfvUWVfaHzEPta1rAUKfp+h6Pm9ZWnTC1sXUgtZ4Qy+QVNEW?=
 =?us-ascii?Q?lJZyuO4E9jcxqvGBMki76mFwPdjeKRE9WdAdec62k5TrDMeI/tdi3sBMJIwd?=
 =?us-ascii?Q?x+sruYdjAjpkRh0SQhP1mLi4rMb5tWkoUmz+fLqPTv4S6Ii9At0qt5d/CInk?=
 =?us-ascii?Q?woAqXK/OrfbzwDChcEpiiqmmZZeKz6K2rYzj4IL/tOOSUrfJCXuZlSvb+Czu?=
 =?us-ascii?Q?7dmVzPKaQ4x+qTEr79TLjS7s2hKcw0seyAU5C9Gk28qIAxScNg60IICOG8iH?=
 =?us-ascii?Q?LoH7CzDXGwkJzNUNI9yH8r2eSLsmGc8wzMfTTqPDo8Un5VyOrJf5EjRUcRD1?=
 =?us-ascii?Q?+Ho3BYBLk9ALEeRHkg43zT2jWYZHlCLx3RSFyVaMlRE2Z3TH5/1RJ7CLrXq0?=
 =?us-ascii?Q?jqX4ArXOz2ifLJHA+n+gj+kFiNwtyBtkpv91hyVq9r0gyoRQomAmKPkh9S1n?=
 =?us-ascii?Q?Afq8jQjVn6b1WtAynMo3sJ6iGapVtEmtQkzfd1C0n5I6nicrDZX1TZiRXatX?=
 =?us-ascii?Q?cMBEsmWcx8U6XayChrngtayUkupbSvMdAVsP5rQHSgGVLXy6Aun4Pvd0AoIA?=
 =?us-ascii?Q?u8sYTISSUh2MRg0E0IgNFGTdExA5zB8mSWe+gRiHzwU97bXrkcuNzT+8cMRX?=
 =?us-ascii?Q?N4v4lDtBJMAH9Mw4U4w3xy/0NVImsrnIuHrGDote5NSfpwGQSQi2CM4usSf+?=
 =?us-ascii?Q?/5b2xCCtCuQiiaejYEnMyv85Xt5jA6Dy9GybYVVoAnyHh4/b5ekRttXd21BO?=
 =?us-ascii?Q?GuLJH71N9xH6CHJ1PoZL/i9R1saslvxk8yNyRJNtEzO+lazyM3zJwbNjS/7d?=
 =?us-ascii?Q?Tkgf1tURcSUs/6qPU4Cvr7mIwOfPmt7Ut4PLKKiPZD6/i+5gfyA3Bry5Ww47?=
 =?us-ascii?Q?WEm7/A9M+31V/XgC0EN2rw0FX9i7Peww/bzezlvsSNxkCDXkb8ftMbQvS6aM?=
 =?us-ascii?Q?75916RK283zG6vZkZtmAOjWrornKOKIBWuC3TDWtuV4MweQGm5Aa+geD5t8I?=
 =?us-ascii?Q?+Y2fv/6jb39V4q60wXQ2yHGDHEeuZOxjdSvRe5ynGvoL1+UPRKjFmNjUF4XT?=
 =?us-ascii?Q?N/qwXngUFK5E5cHPGE6Ux+LaOsQ8em6SelFt+VZBkPPwn2JCHVSwY/YUST0w?=
 =?us-ascii?Q?+QuzhaOMxbe29siI64koMeiet7FUCR4LKBu4e06KAp+yKDOaCpPE/ZqgesSI?=
 =?us-ascii?Q?YoIAF9LHm3UBPW2tQai1VYUbj1tRF02+rYiy96Cpvvo3ATCFjixRwn/8OqK3?=
 =?us-ascii?Q?2ve4jtbCxmBmLiZp690p+TsUngvu7y6rxIKLvj3BeeEKfOPIVMQEF2zMIrsL?=
 =?us-ascii?Q?Ow=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CY4PR11MB1749D17777CBB2ADB37121D6B9439CY4PR11MB1749namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1749.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 11f6793d-0c99-45f9-dca6-08d9c9fe0bdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Dec 2021 12:32:00.6411
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 DZHOaKc1M69M4xpYyOgfc6sj41S2Xiph0g+Hp17C0xG+Vo0tnE6noByp47hKj/bOlcc3y0UwZ+nRyEyFpsE1/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1829
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Dec 2021 12:32:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55674

--_000_CY4PR11MB1749D17777CBB2ADB37121D6B9439CY4PR11MB1749namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.1.13 (dunfell-23.0.13) Relea=
se is now available for download.
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.13/poky-dunfell-=
23.0.13.tar.bz2
https://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/poky-dunfell-23.0.13.ta=
r.bz2

A gpg signed version of these release notes is available at:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.13/RELEASENOTES

Full Test Report:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.13/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang Lee <chee.yang.lee@intel.com>
Yocto Project Build and Release


- --------------------------
yocto-3.1.13 Release Notes
- --------------------------


- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.13
Git Revision: 795339092f87672e4f68e4d3bc4cfd0e252d1831
Release Artefact: poky-dunfell-23.0.13
sha: 9408163f281fb28e9fc5a7db6955e5c932f286aacb40f5ad7285066154cff76b
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.13/poky-dunfell-=
23.0.13.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/poky-dunfell-23.0.13.tar=
.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: yocto-3.1.13
Git Revision: 90a07178ea26be453d101c2e8b33d3a0f437635d
Release Artefact: oecore-dunfell-23.0.13
sha: 20f41dc45af76e140a6b49b6d71cc0ef61ea5fb5c6df6a210b52944c0d70c2f5
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.13/oecore-dunfel=
l-23.0.13.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/oecore-dunfell-23.0.13.t=
ar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.13
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.13
sha: 2688d3cfadb7cdc7025d7e6f4b9300f4e29611d97b8329b1b033a251e7d354a2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.13/meta-mingw-du=
nfell-23.0.13.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/meta-mingw-dunfell-23.0.=
13.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.13
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.13
sha: f937e7e051b19285e7d59033d7cb08c641c55860cd64d2c6d7b57b26338b5801
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.13/meta-gplv2-du=
nfell-23.0.13.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/meta-gplv2-dunfell-23.0.=
13.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: dunfell
Tag: yocto-3.1.13
Git Revision: f18b65d0b9a6b983d53bde491e1bf2ca56949444
Release Artefact: bitbake-dunfell-23.0.13
sha: 570b58952ddcf7262b8ff13bd06c8cfcdadecf80af2d9bc3868446ee07693676
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.13/bitbake-dunfe=
ll-23.0.13.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/bitbake-dunfell-23.0.13.=
tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: dunfell
Tag: yocto-3.1.13
Git Revision: c00596374d2c6ddd1b81e536972aa8fc807e60b9


- ---------------
Known Issues
- ---------------
Bug 14669 - [QA 3.1.13 RC1] failure in ptest :gstreamer1.0.gstreamer-1.0/pi=
pelines_seek.test


- ---------------
Security Fixes
- ---------------
libgcrypt: solve CVE-2021-33560 and CVE-2021-40528
ncurses: Fix for CVE-2021-39537
vim: fix CVE-2021-3968 and CVE-2021-3973
busybox: Fix for CVE-2021-42376
busybox: Fix for CVE-2021-42374
git: fix CVE-2021-40330
gmp: fix CVE-2021-43618
vim: fix CVE-2021-3927 and CVE-2021-3928
vim: fix CVE-2021-3796, CVE-2021-3872, and CVE-2021-3875


- ---------------
Fixes
- ---------------
README.OE-Core.md: update URLs
Revert "vim: fix 2021-3796"
available release updates
bind: update to 9.11.35
bitbake: bblayers/action: When adding layers, catch BBHandledException
bitbake: command: Ensure exceptions inheriting from BBHandledException are =
visible
bitbake: cooker: Ensure reparsing is handled correctly
bitbake: process/knotty: Improve early exception handling
bitbake: tinfoil: When sending commands we need to process events
build-appliance-image: Update to dunfell head revision
buildhistory: Fix srcrevs output
busybox: Fix multiple security issues in awk
cmake: FindGTest: Add target for gmock library
cups: Fix missing installation of cups sysv init scripts
cve-extra-exclusions: add db CVEs to exclusion list
dnf: Backport bugfix for upgrade
documentation: conf.py: explicit which version of bitbake objects.inv is us=
ed
gcc: Add CVE-2021-37322 to the list of CVEs to ignore
glib-2.0: Add security fixes
glibc-version.inc: remove branch=3D from GLIBC_GIT_URI
libdnf: Backport bugfix for upgrade calc
libpcre/libpcre2: correct SRC_URI
libsolv: update tag for missing CVEs
libunwind: Backport a fix for -fno-common option to compile
linux-firmware: upgrade 20210919 -> 20211027
linux-yocto/5.4: update to v5.4.158
lrzsz: Use Cross AR during compile
lttng-modules: do not search in non-existing folder during install
make-mod-scripts: pass CROSS_COMPILE to configure and build
oeqa/parselogs: Fix quoting
oeqa: fix warnings for append operators combined with +=3D
openssh: Improve LICENSE to show BSD license variants.
openssh: remove redundant BSD license
os-release: Add DISTRO_CODENAME as vardeps for do_compile
poky.conf: Bump version for 3.1.13 release
python3: upgrade 3.8.11 -> 3.8.12
recipetool: Set master branch only as fallback
remove reference to BB_SETSCENE_VERIFY_FUNCTION2
reproducible_build/package_XXX: Ensure SDE task is in dependency chain
runqemu: check the qemu PID has been set before kill()ing it
scripts/checklayer/common.py: Fixed a minor grammatical error
scripts/lib/wic/help.py: Update Fedora Kickstart URLs
scripts/oe-package-browser: Handle no packages being built
selftest/devtool: Check branch in git fetch
selftest: skip virgl test on centos 8 entirely
systemd: add packageconfig for wheel-group
vim: add patch number to CVE-2021-3778 patch
wic:direct.py: ignore invalid mountpoints during fstab update

--_000_CY4PR11MB1749D17777CBB2ADB37121D6B9439CY4PR11MB1749namp_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
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
<body lang=3D"EN-MY" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.1.13 =
(dunfell-23.0.13) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.13/poky-dunfell-23.0.13.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.1.13/poky-dunfell-23.0.13.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://mirrors.kernel.org/yocto/yocto/yo=
cto-3.1.13/poky-dunfell-23.0.13.tar.bz2">https://mirrors.kernel.org/yocto/y=
octo/yocto-3.1.13/poky-dunfell-23.0.13.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.13/RELEASENOTES">http://downloads.yoctoproject.org/releas=
es/yocto/yocto-3.1.13/RELEASENOTES</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.13/testreport.txt">http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-3.1.13/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chee Yang Lee &lt;chee.yang.lee@intel.com&gt;<o:p></=
o:p></p>
<p class=3D"MsoNormal">Yocto Project Build and Release<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.1.13 Release Notes<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">Repositories/Downloads<o:p></o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: poky<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/poky<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.13<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 795339092f87672e4f68e4d3bc4cfd0e252d18=
31<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-dunfell-23.0.13<o:p></o:p></p=
>
<p class=3D"MsoNormal">sha: 9408163f281fb28e9fc5a7db6955e5c932f286aacb40f5a=
d7285066154cff76b<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.13/poky-dunfell-23.0.13.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/p=
oky-dunfell-23.0.13.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/op=
enembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.13<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 90a07178ea26be453d101c2e8b33d3a0f43763=
5d<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-dunfell-23.0.13<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sha: 20f41dc45af76e140a6b49b6d71cc0ef61ea5fb5c6df6a2=
10b52944c0d70c2f5<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.13/oecore-dunfell-23.0.13.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/o=
ecore-dunfell-23.0.13.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.13<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 524de686205b5d6736661d4532f5f98fee8589=
b7<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-dunfell-23.0.13<o:p></o=
:p></p>
<p class=3D"MsoNormal">sha: 2688d3cfadb7cdc7025d7e6f4b9300f4e29611d97b8329b=
1b033a251e7d354a2<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.13/meta-mingw-dunfell-23.0.13.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/m=
eta-mingw-dunfell-23.0.13.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.13<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292=
ac<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-dunfell-23.0.13<o:p></o=
:p></p>
<p class=3D"MsoNormal">sha: f937e7e051b19285e7d59033d7cb08c641c55860cd64d2c=
6d7b57b26338b5801<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.13/meta-gplv2-dunfell-23.0.13.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/m=
eta-gplv2-dunfell-23.0.13.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/bi=
tbake<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.13<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: f18b65d0b9a6b983d53bde491e1bf2ca569494=
44<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-dunfell-23.0.13<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sha: 570b58952ddcf7262b8ff13bd06c8cfcdadecf80af2d9bc=
3868446ee07693676<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.13/bitbake-dunfell-23.0.13.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.13/b=
itbake-dunfell-23.0.13.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.13<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: c00596374d2c6ddd1b81e536972aa8fc807e60=
b9<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Bug 14669 - [QA 3.1.13 RC1] failure in ptest :gstrea=
mer1.0.gstreamer-1.0/pipelines_seek.test<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">libgcrypt: solve CVE-2021-33560 and CVE-2021-40528<o=
:p></o:p></p>
<p class=3D"MsoNormal">ncurses: Fix for CVE-2021-39537<o:p></o:p></p>
<p class=3D"MsoNormal">vim: fix CVE-2021-3968 and CVE-2021-3973<o:p></o:p><=
/p>
<p class=3D"MsoNormal">busybox: Fix for CVE-2021-42376<o:p></o:p></p>
<p class=3D"MsoNormal">busybox: Fix for CVE-2021-42374<o:p></o:p></p>
<p class=3D"MsoNormal">git: fix CVE-2021-40330<o:p></o:p></p>
<p class=3D"MsoNormal">gmp: fix CVE-2021-43618<o:p></o:p></p>
<p class=3D"MsoNormal">vim: fix CVE-2021-3927 and CVE-2021-3928<o:p></o:p><=
/p>
<p class=3D"MsoNormal">vim: fix CVE-2021-3796, CVE-2021-3872, and CVE-2021-=
3875<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">README.OE-Core.md: update URLs<o:p></o:p></p>
<p class=3D"MsoNormal">Revert &quot;vim: fix 2021-3796&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">available release updates<o:p></o:p></p>
<p class=3D"MsoNormal">bind: update to 9.11.35<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: bblayers/action: When adding layers, catch =
BBHandledException<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: command: Ensure exceptions inheriting from =
BBHandledException are visible<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: cooker: Ensure reparsing is handled correct=
ly<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: process/knotty: Improve early exception han=
dling<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tinfoil: When sending commands we need to p=
rocess events<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to dunfell head revisi=
on<o:p></o:p></p>
<p class=3D"MsoNormal">buildhistory: Fix srcrevs output<o:p></o:p></p>
<p class=3D"MsoNormal">busybox: Fix multiple security issues in awk<o:p></o=
:p></p>
<p class=3D"MsoNormal">cmake: FindGTest: Add target for gmock library<o:p><=
/o:p></p>
<p class=3D"MsoNormal">cups: Fix missing installation of cups sysv init scr=
ipts<o:p></o:p></p>
<p class=3D"MsoNormal">cve-extra-exclusions: add db CVEs to exclusion list<=
o:p></o:p></p>
<p class=3D"MsoNormal">dnf: Backport bugfix for upgrade<o:p></o:p></p>
<p class=3D"MsoNormal">documentation: conf.py: explicit which version of bi=
tbake objects.inv is used<o:p></o:p></p>
<p class=3D"MsoNormal">gcc: Add CVE-2021-37322 to the list of CVEs to ignor=
e<o:p></o:p></p>
<p class=3D"MsoNormal">glib-2.0: Add security fixes<o:p></o:p></p>
<p class=3D"MsoNormal">glibc-version.inc: remove branch=3D from GLIBC_GIT_U=
RI<o:p></o:p></p>
<p class=3D"MsoNormal">libdnf: Backport bugfix for upgrade calc<o:p></o:p><=
/p>
<p class=3D"MsoNormal">libpcre/libpcre2: correct SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">libsolv: update tag for missing CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">libunwind: Backport a fix for -fno-common option to =
compile<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20210919 -&gt; 20211027<o:p>=
</o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.158<o:p></o:p></p>
<p class=3D"MsoNormal">lrzsz: Use Cross AR during compile<o:p></o:p></p>
<p class=3D"MsoNormal">lttng-modules: do not search in non-existing folder =
during install<o:p></o:p></p>
<p class=3D"MsoNormal">make-mod-scripts: pass CROSS_COMPILE to configure an=
d build<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/parselogs: Fix quoting<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa: fix warnings for append operators combined wit=
h +=3D<o:p></o:p></p>
<p class=3D"MsoNormal">openssh: Improve LICENSE to show BSD license variant=
s.<o:p></o:p></p>
<p class=3D"MsoNormal">openssh: remove redundant BSD license<o:p></o:p></p>
<p class=3D"MsoNormal">os-release: Add DISTRO_CODENAME as vardeps for do_co=
mpile<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: Bump version for 3.1.13 release<o:p></o:p=
></p>
<p class=3D"MsoNormal">python3: upgrade 3.8.11 -&gt; 3.8.12<o:p></o:p></p>
<p class=3D"MsoNormal">recipetool: Set master branch only as fallback<o:p><=
/o:p></p>
<p class=3D"MsoNormal">remove reference to BB_SETSCENE_VERIFY_FUNCTION2<o:p=
></o:p></p>
<p class=3D"MsoNormal">reproducible_build/package_XXX: Ensure SDE task is i=
n dependency chain<o:p></o:p></p>
<p class=3D"MsoNormal">runqemu: check the qemu PID has been set before kill=
()ing it<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/checklayer/common.py: Fixed a minor grammati=
cal error<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/lib/wic/help.py: Update Fedora Kickstart URL=
s<o:p></o:p></p>
<p class=3D"MsoNormal">scripts/oe-package-browser: Handle no packages being=
 built<o:p></o:p></p>
<p class=3D"MsoNormal">selftest/devtool: Check branch in git fetch<o:p></o:=
p></p>
<p class=3D"MsoNormal">selftest: skip virgl test on centos 8 entirely<o:p><=
/o:p></p>
<p class=3D"MsoNormal">systemd: add packageconfig for wheel-group<o:p></o:p=
></p>
<p class=3D"MsoNormal">vim: add patch number to CVE-2021-3778 patch<o:p></o=
:p></p>
<p class=3D"MsoNormal">wic:direct.py: ignore invalid mountpoints during fst=
ab update<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY4PR11MB1749D17777CBB2ADB37121D6B9439CY4PR11MB1749namp_--

