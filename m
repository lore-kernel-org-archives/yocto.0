Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E5E0C433EF
	for <webhook@archiver.kernel.org>; Thu, 17 Feb 2022 14:13:07 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web10.243.1645107185936805377
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Feb 2022 06:13:06 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=jE3RCkwI;
 spf=pass (domain: intel.com, ip: 134.134.136.126,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645107186; x=1676643186;
  h=from:to:subject:date:message-id:mime-version;
  bh=QxyX9SfpihnrEoCu2FM+y5omuZRPloBkBM2ssF4ZPMU=;
  b=jE3RCkwINTidQFPWKNbFAx3XVphzXeVrpvkoQdL2PAmOiydIsuwVaM4I
   5dqg+XZTdJzeS7bmrU8GE9t08kiHZWKgu1oDSe7rclQj4gg4cpW0PjRKc
   j//xAuYnc9fyVp2ynM5KWDGNjU7l9pzs05qt24Rp0/Gtb+0FFg69Ollhi
   y3G1KU/Z/YRy9BbS4ZS6NVfmIui24Fg3wpG2ARnhGBzaEGH935xkZNTEB
   DN5C3XNTOFK7izp0aWCdAkvk+Fho/7aRf/MU61YGKPBsAMll84ng0HdXn
   L2zlU8ooM+s5nK5b7KkRipdRzVPD32slhGWEyauroB0ovj3ePVJi/vMu5
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="234410697"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600";
   d="scan'208,217";a="234410697"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 06:13:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600";
   d="scan'208,217";a="777249835"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by fmsmga005.fm.intel.com with ESMTP; 17 Feb 2022 06:13:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 06:13:04 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 06:13:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 17 Feb 2022 06:13:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 17 Feb 2022 06:13:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nGTepNcx49apzK+fzTxXTT175o9/L/xh/aFWmkrFGwsV3NPtcc+8r5+DGV1KKS9KwIlEdVWglsZrCE5wXehjmhYhouq7RgOE9NGV6jid64Zl4sxQ3F+CY6WsfBC6nGUsjcpwtziUIATQtGDylzYydyCrkcE0o07gbAnucXRF+PH4TZHJiUNZQ6TbCDKOAPmy3mP/UEVx14dqSN5dVBeMI2waa59q3EN3hXDQDbdF0sQcC4j7RzGRuRsWgvoRm/5/y9euCiG6Ud/2ZMSWStb5X47XyAQuSjnyjpd7g4H7OEuhNfcHZi36WvHFT4jRDEL2KHr+gCUUEFAEx33wf7FNJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FTpH9VtdHHqMlh6uSQLzFNO6NWgsL6Cyd0faZaIVou0=;
 b=Zo71WDec0zJX7BOvLqyqp7nRZ3sX/MIyNlJ4SagTXRI1qtNK+JbtFnpCOKwvvEnJyWV60giGFlaDWjW8uPK94wRS3tZnuz43oREgP2+HOoZ9ZRmqZwuI1IKI0Nb3tyqNQZHjFxPP7BoI+Rk37pbeVaftuOg9Vf37sPOF4AA4XAVglsDmW+/WeIGugSkeFnmekcyIzmyEUlaQ0kKcvqGwB6pAiOPK+GSDB8diIrps8uyYlR4wgDbaQaJdQRwnRwsTafZ/G8+a+NTaK408cQTt+rlufO4g+Mr6c5UGkStDi/3b1I9P8tn6/ZUMxLd+R5GtjTIbIBV5rioU/cjh2Hsxaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com (2603:10b6:3:a6::21)
 by BN6PR11MB1235.namprd11.prod.outlook.com (2603:10b6:404:3c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14; Thu, 17 Feb
 2022 14:12:56 +0000
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::9013:6908:23db:7a01]) by DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::9013:6908:23db:7a01%12]) with mapi id 15.20.4975.019; Thu, 17 Feb
 2022 14:12:56 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Yocto Project 3.1.14 (dunfell-23.0.14) is Released
Thread-Topic: Yocto Project 3.1.14 (dunfell-23.0.14) is Released
Thread-Index: AdgkAa08dyAYkP4pQ5SmXZeWJCvcqA==
Date: Thu, 17 Feb 2022 14:12:56 +0000
Message-ID: 
 <DM5PR1101MB2361C2C2D6306E6244E91EFBB9369@DM5PR1101MB2361.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 3bfdd0c8-0de1-4f25-9c9e-08d9f21f9865
x-ms-traffictypediagnostic: BN6PR11MB1235:EE_
x-microsoft-antispam-prvs: 
 <BN6PR11MB123556B411CC766AFAD2CF4CB9369@BN6PR11MB1235.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bY3eroS5QhHFOiel0N+fn6ayQAYH4m4KlPqrTk7YipE7laxsd9Gj2tkg5A14pdLVuIhhyvQCis+B5RFCTPTH/VuMjSv104O1dQwVR70LbGEYJMSSbWdhFetJfczUpukZ8HFgI/QekrU3aDomSR8201HYxpb8Vh7Z0U8UQpHN4HSu3hOPRkRyphwZSmAZl36yikltwrwhKBWHy6tRLhozpvPekcd6x6FLgw2OtFip1i3eg08GYn+9FUeITE6Z5VpDZ9G0Febd1LU0zX/a848MeA7+9c9l25I4sKlNwO61RzowGCRtWhQfEwyPK4DEyRM/tkmqSqKcu6LjsJ961rsavTIDiRsrvSYI2oYxJ/jdveDZFqV2whqav8WdVnuqyZvoocVbdGX8S55xSEDsGnO/qhyg3DkRFM/cIUJn5WgO1UXsxGNt/MOnPmrIJKcV/3Kx4dZlnYR3mTbVIRaAtEkorvWfWApNDldPwSN9aEeNSQwNac2sq6fux5DgqtWv071Q3EXuSGqKUpAyzMbpL+zzzH6JdLFaW0l17IkOPy27Mdk1UJ0FYS1jiho013eUCPqpOhNlhPhgT980wXQ8cWDsKYT6N/iDlIvQ4fuahg42W91lJ94nV+13LEG/J2R6DSuVHuGy6yeUp4Ls88TRTJZnDhFyudqpK+7ZsdnnHWlb98MT9hHAnu19fIKP6LMc5kaHpVF5UnsQbycNm9zgsuBfU/haczrvZx+4KIsgAIgSwNOEkFZ6BDBWw/GEHyzyVWXPkmNM/hzIHt3xwvGUKwhlb9g2BZVooc3Mm6oeiA3bQLIU7oXLzcraPMD3OzpS4oYc+7UZjI6hKzXlr1mdiTgP7g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2361.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(83380400001)(9326002)(8936002)(2906002)(52536014)(186003)(76116006)(5660300002)(82960400001)(26005)(64756008)(966005)(122000001)(7696005)(38070700005)(316002)(38100700002)(508600001)(66556008)(166002)(55016003)(86362001)(9686003)(8676002)(33656002)(55236004)(71200400001)(66476007)(6506007)(66446008)(110136005)(450100002)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Jp6177FdUzSXwo++R5o58wmHa/bsjfHXRLe+ExSajLenU/KQtuBfa07PLfMQ?=
 =?us-ascii?Q?zkDwL6CmFggeSdKiBT1KkXp2Nmt9JIOVrhYfMHyUtFEwYkDznQHROo7dAG1S?=
 =?us-ascii?Q?ZVcATOPPdsaHyn4pK1h5kavjQUB1+tsuDVKWZjP1GrfY0VZDu5MB5i99BE+p?=
 =?us-ascii?Q?trwjOaWxA2BSPA/xJvljVKK38sJIX9AMB7BxdeQo4Akf3a+KSsGCQ1xJb9f6?=
 =?us-ascii?Q?2q+ysC5Rr+yurSSjUkSft7DnJez6p7YEj9knNmQER8YRoiacsJFUU/t8ScsJ?=
 =?us-ascii?Q?0uDUKmdxnWu5VLsqAww/z1tT5g5dvOXPgz++Zrx11Jo2M3TuE8WuC856Ho69?=
 =?us-ascii?Q?zkZe/s2KS1kDWGv7rQ3rZrDq7gsrTTCMnt9A8YkwbTDNkIok2xxFFH1IVZvM?=
 =?us-ascii?Q?4K056kQJSC0Ya1VNbr93D65qZLXTlpMqZAQ9od1L1Pg2C+nL/SKhJXcDW4Pb?=
 =?us-ascii?Q?dQ2/c9TtK+ZYMHdpS5xEiDEOqPfWHVqgYXgwtG1WDwKK/dRC1RRZZQjPPiqA?=
 =?us-ascii?Q?8kUh7RLbPckCXP+i0Bd5841lf/noIafG6iFWKAGnTEuCYLl/C9vBLUCzgDRa?=
 =?us-ascii?Q?Jxe43wOncucyiY7pOq1FiUasYSn5tkkyZK6Zj7dPC6yJgdCK9Q63eUHwuDTc?=
 =?us-ascii?Q?YMhFgWDd21of0Pqqw407usDve8e1iUC+nhOWidIwdMQNXxS7VW7hrU0OfbR5?=
 =?us-ascii?Q?ln9JFk8Cq1AEa46c/Vi65cwz8f0dpRlSaP6WcXb8D5szXD+8unSM6dNaVndQ?=
 =?us-ascii?Q?3aGk2SpjsYsSGAg7dikfNQA/8ARHbM1cHQx1mX4zQSM2rbx2kwbFJ7191yl5?=
 =?us-ascii?Q?SwdBraGcUyj+69VEzAmxBRQs5CMUg8wYWpEpbwuM7fCLbZ4FjO44uSp+eDIi?=
 =?us-ascii?Q?38kaXRikUnrZ/N/MVgN2hIxa9jK6HpPpA8yWNjqbAdHTj6EIVb2+2JwM36Xr?=
 =?us-ascii?Q?iikYlTVu8X2urlkhqmfJ20VxKSv9XqmbL4+OTcCYPW4X+nP468vYZsgroQdX?=
 =?us-ascii?Q?3/zgmpL9+PAYvWXl0Dv4LN8RW2UrrxDTE+Qv3hIFo3IfKU8Vg+kj+Bg8LssG?=
 =?us-ascii?Q?clrTASqJ77qHzQ5KC6Wzo/YTlLc4Nul6wvcD+HNtnhoNAdQGvx+KCU8jOwkN?=
 =?us-ascii?Q?1fnqFVDF/ap9Axa3BRE/ymJwUjv8m8NU19dk2c2U8YQbPyubp2JWse9Cmh/g?=
 =?us-ascii?Q?PEtgfBu3j/hAMtn5uMRBqa5+08PItmcuIsODwRThZutUzqKrb1FngfxWawOC?=
 =?us-ascii?Q?Az7SkGIVq8Luf8RcteGKZykXWvgQJ3vyPtnunoHrJwtmdEhXnECrGS4ud2ze?=
 =?us-ascii?Q?6zz7X/vzcJpL9m3d3fk/NX7yn+pim+vR8KFJs89iuumMljGgZZgx5zYT2Rfq?=
 =?us-ascii?Q?XBVxe0EZXwRCEmRxStUOouqVan8YUd0u/tyB3Bpgi7pra9aGx7SoTl8ic0Ys?=
 =?us-ascii?Q?CpiyYM8oOfxXQ2y2lge+Thep5PKypqLQNsxSy/kV+SIH/Ra8IM1ziZsr9cik?=
 =?us-ascii?Q?h6jMAxlRuZBe3NuM46mKe2xeJcd331DN0CeyOOX2QHUIP0CtLO1y5i0UPxlw?=
 =?us-ascii?Q?LPAModlyxkgf5Q1kemT3wIwOx8vPBoUmZLjaZFeQdq0imOtdE5VenVkdz4Ll?=
 =?us-ascii?Q?N13AXNo4dzyW4zwu6r6Q2cE=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR1101MB2361C2C2D6306E6244E91EFBB9369DM5PR1101MB2361_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 DM5PR1101MB2361.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3bfdd0c8-0de1-4f25-9c9e-08d9f21f9865
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2022 14:12:56.3089
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 E4SnDmNqpedSBM57ByeDN7pdjZ+rp8XXCgoiuBKzYxp5eXj0mv6pVVJn9kNVkBlfkRWWM1uuGa8wblcJ6Vx97w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1235
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Feb 2022 14:13:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56213

--_000_DM5PR1101MB2361C2C2D6306E6244E91EFBB9369DM5PR1101MB2361_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

We are pleased to announce the Yocto Project 3.1.14 (dunfell-23.0.14) Relea=
se is now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.14/poky-dunfell-=
23.0.14.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/poky-dunfell-23.0.14.tar=
.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.14/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.14/testreport.tx=
t

Thank you for everyone's contributions to this release.

Chee Yang Lee chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


- --------------------------
yocto-3.1.14 Release Notes
- --------------------------


- --------------------------
Repositories/Downloads
- --------------------------

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: dunfell
Tag: yocto-3.1.14
Git Revision: bba323389749ec3e306509f8fb12649f031be152
Release Artefact: poky-dunfell-23.0.14
sha: 3401d1b660f2284e6e974c4dd1a8a3d5b1d311f87d261c324a84f812a9ad9d9c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.14/poky-dunfell-=
23.0.14.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/poky-dunfell-23.0.14.tar=
.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: dunfell
Tag: yocto-3.1.14
Git Revision: f3be01483b01c88f8c4ba24ca73ccf1bcc33665c
Release Artefact: oecore-dunfell-23.0.14
sha: 9584897dfdab65bd1d70254f25cc91fb6d04e92e4b77b088ed81603da6a57909
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.14/oecore-dunfel=
l-23.0.14.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/oecore-dunfell-23.0.14.t=
ar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: dunfell
Tag: yocto-3.1.14
Git Revision: 524de686205b5d6736661d4532f5f98fee8589b7
Release Artefact: meta-mingw-dunfell-23.0.14
sha: dcd6e4a799b8f2727279eb640f077ca945a33ad61a2a9f076a72061874847e6d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.14/meta-mingw-du=
nfell-23.0.14.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/meta-mingw-dunfell-23.0.=
14.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: dunfell
Tag: yocto-3.1.14
Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
Release Artefact: meta-gplv2-dunfell-23.0.14
sha: a102bad796e7bbd36881068e18aabf49ce66b41a252ae06101ff3d64d4ce6ec8
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.14/meta-gplv2-du=
nfell-23.0.14.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/meta-gplv2-dunfell-23.0.=
14.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: dunfell
Tag: yocto-3.1.14
Git Revision: be6ecc160ac4a8d9715257b9b955363cecc081ea
Release Artefact: bitbake-dunfell-23.0.14
sha: 3f6a3bb828be8196e19b6a46461373cdced08792ac01488f25cdb31a0740e7f3
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-3.1.14/bitbake-dunfe=
ll-23.0.14.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/bitbake-dunfell-23.0.14.=
tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: dunfell
Tag: yocto-3.1.14
Git Revision: 9c5533b45bfd6a3d383e973a2c40e0f418afcbe9


- ---------------
Known Issues
- ---------------
N/A


- ---------------
Security Fixes
- ---------------
speex: fix CVE-2020-23903
expat: fix CVE-2021-46143
expat: fix CVE-2021-45960
expat fix CVE-2022-22822 through CVE-2022-22827
xserver-xorg: whitelist two CVEs
xserver-xorg: update CVE_PRODUCT
grub: fix CVE-2020-14372 and CVE-2020-27779
dropbear: Fix CVE-2020-36254
inetutils: fix CVE-2021-40491
vim: fix CVE-2021-4069
openssh: Whitelist CVE-2016-20012
openssh: Fix CVE-2021-41617
bluez: fix CVE-2021-0129


- ---------------
Fixes
- ---------------
build-appliance-image: Update to dunfell head revision
poky.conf: Bump version for 3.1.14 release
bitbake: hashserv: specify loop for asyncio in python < 3.6
Revert "weston: Use systemd notify,"
lttng-tools: Add missing DEPENDS on bison-native
kernel: introduce python3-dtschema-wrapper
linux-yocto/5.4: update to v5.4.172
glibc: Add fix for data races in pthread_create and TLS access
parselogs: add a couple systemd false positives
expat: Update HOMEPAGE to current url
wic: use shutil.which
wic: misc: Do not find for executables in ASSUME_PROVIDED
cve-check: add lockfile to task
cve-update-db-native: use fetch task
oeqa/selftest/cases/tinfoil.py: increase timeout 60->120s test_wait_event
valgrind: skip flakey ptest (gdbserver_tests/hginfo)
bitbake: tests/fetch: Drop gnu urls from wget connectivity test
bitbake: utils: Update to use exec_module() instead of load_module()
linux-yocto/5.4: update genericx86* machines to v5.4.158
asciidoc: properly detect and compare Python versions >=3D 3.10
lib/oe/reproducible: correctly set .git location when recursively looking f=
or git repos
scripts: Update to use exec_module() instead of load_module()
selftest: skip virgl test on fedora 35
scripts/buildhistory-diff: drop use of distutils
weston: Backport patches to always activate the top-level surface
oeqa/selftest/tinfoil: Update to use test command
oeqa/selftest/bbtests: Use YP sources mirror instead of GNU
openssl: Add reproducibility fix
libpcre2: update SRC_URI
linux-firmware: upgrade 20211027 -> 20211216
bitbake: cooker/command: Add a dummy event for tinfoil testing
ref-manual: fix patch documentation
documentation: further updates for 3.1.13
releases: update to include 3.1.13
selftest: skip virgl test on fedora 34 entirely
gstreamer1.0: fix failing ptest
bootchart2: remove wait_boot logic

--_000_DM5PR1101MB2361C2C2D6306E6244E91EFBB9369DM5PR1101MB2361_
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
<p class=3D"MsoNormal">Hi<br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal">We are pleased to announce the Yocto Project 3.1.14 =
(dunfell-23.0.14) Release is now available for download.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.14/poky-dunfell-23.0.14.tar.bz2">http://downloads.yoctopr=
oject.org/releases/yocto/yocto-3.1.14/poky-dunfell-23.0.14.tar.bz2</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://mirrors.kernel.org/yocto/yocto/yoc=
to-3.1.14/poky-dunfell-23.0.14.tar.bz2">http://mirrors.kernel.org/yocto/yoc=
to/yocto-3.1.14/poky-dunfell-23.0.14.tar.bz2</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A gpg signed version of these release notes is avail=
able at:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.14/RELEASENOTES">http://downloads.yoctoproject.org/releas=
es/yocto/yocto-3.1.14/RELEASENOTES</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full Test Report:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://downloads.yoctoproject.org/release=
s/yocto/yocto-3.1.14/testreport.txt">http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-3.1.14/testreport.txt</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you for everyone's contributions to this relea=
se.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chee Yang Lee <a href=3D"mailto:chee.yang.lee@intel.=
com">chee.yang.lee@intel.com</a><o:p></o:p></p>
<p class=3D"MsoNormal">Yocto Project Build and Release<br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- --------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">yocto-3.1.14 Release Notes<o:p></o:p></p>
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
<p class=3D"MsoNormal">Tag: yocto-3.1.14<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: bba323389749ec3e306509f8fb12649f031be1=
52<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: poky-dunfell-23.0.14<o:p></o:p></p=
>
<p class=3D"MsoNormal">sha: 3401d1b660f2284e6e974c4dd1a8a3d5b1d311f87d261c3=
24a84f812a9ad9d9c<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.14/poky-dunfell-23.0.14.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/p=
oky-dunfell-23.0.14.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: openembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/op=
enembedded-core<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.14<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: f3be01483b01c88f8c4ba24ca73ccf1bcc3366=
5c<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: oecore-dunfell-23.0.14<o:p></o:p><=
/p>
<p class=3D"MsoNormal">sha: 9584897dfdab65bd1d70254f25cc91fb6d04e92e4b77b08=
8ed81603da6a57909<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.14/oecore-dunfell-23.0.14.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/o=
ecore-dunfell-23.0.14.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-mingw<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.14<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 524de686205b5d6736661d4532f5f98fee8589=
b7<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-mingw-dunfell-23.0.14<o:p></o=
:p></p>
<p class=3D"MsoNormal">sha: dcd6e4a799b8f2727279eb640f077ca945a33ad61a2a9f0=
76a72061874847e6d<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.14/meta-mingw-dunfell-23.0.14.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/m=
eta-mingw-dunfell-23.0.14.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/meta-gplv2<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.14<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 60b251c25ba87e946a0ca4cdc8d17b1cb09292=
ac<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: meta-gplv2-dunfell-23.0.14<o:p></o=
:p></p>
<p class=3D"MsoNormal">sha: a102bad796e7bbd36881068e18aabf49ce66b41a252ae06=
101ff3d64d4ce6ec8<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.14/meta-gplv2-dunfell-23.0.14.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/m=
eta-gplv2-dunfell-23.0.14.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: bitbake<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.openembedded.org/bi=
tbake<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.14<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: be6ecc160ac4a8d9715257b9b955363cecc081=
ea<o:p></o:p></p>
<p class=3D"MsoNormal">Release Artefact: bitbake-dunfell-23.0.14<o:p></o:p>=
</p>
<p class=3D"MsoNormal">sha: 3f6a3bb828be8196e19b6a46461373cdced08792ac01488=
f25cdb31a0740e7f3<o:p></o:p></p>
<p class=3D"MsoNormal">Download Locations:<o:p></o:p></p>
<p class=3D"MsoNormal">http://downloads.yoctoproject.org/releases/yocto/yoc=
to-3.1.14/bitbake-dunfell-23.0.14.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal">http://mirrors.kernel.org/yocto/yocto/yocto-3.1.14/b=
itbake-dunfell-23.0.14.tar.bz2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Repository Name: yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Repository Location: https://git.yoctoproject.org/gi=
t/yocto-docs<o:p></o:p></p>
<p class=3D"MsoNormal">Branch: dunfell<o:p></o:p></p>
<p class=3D"MsoNormal">Tag: yocto-3.1.14<o:p></o:p></p>
<p class=3D"MsoNormal">Git Revision: 9c5533b45bfd6a3d383e973a2c40e0f418afcb=
e9 <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Known Issues<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">N/A<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Security Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">speex: fix CVE-2020-23903<o:p></o:p></p>
<p class=3D"MsoNormal">expat: fix CVE-2021-46143<o:p></o:p></p>
<p class=3D"MsoNormal">expat: fix CVE-2021-45960<o:p></o:p></p>
<p class=3D"MsoNormal">expat fix CVE-2022-22822 through CVE-2022-22827<o:p>=
</o:p></p>
<p class=3D"MsoNormal">xserver-xorg: whitelist two CVEs<o:p></o:p></p>
<p class=3D"MsoNormal">xserver-xorg: update CVE_PRODUCT<o:p></o:p></p>
<p class=3D"MsoNormal">grub: fix CVE-2020-14372 and CVE-2020-27779<o:p></o:=
p></p>
<p class=3D"MsoNormal">dropbear: Fix CVE-2020-36254<o:p></o:p></p>
<p class=3D"MsoNormal">inetutils: fix CVE-2021-40491<o:p></o:p></p>
<p class=3D"MsoNormal">vim: fix CVE-2021-4069<o:p></o:p></p>
<p class=3D"MsoNormal">openssh: Whitelist CVE-2016-20012<o:p></o:p></p>
<p class=3D"MsoNormal">openssh: Fix CVE-2021-41617<o:p></o:p></p>
<p class=3D"MsoNormal">bluez: fix CVE-2021-0129<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">Fixes<o:p></o:p></p>
<p class=3D"MsoNormal">- ---------------<o:p></o:p></p>
<p class=3D"MsoNormal">build-appliance-image: Update to dunfell head revisi=
on<o:p></o:p></p>
<p class=3D"MsoNormal">poky.conf: Bump version for 3.1.14 release<o:p></o:p=
></p>
<p class=3D"MsoNormal">bitbake: hashserv: specify loop for asyncio in pytho=
n &lt; 3.6<o:p></o:p></p>
<p class=3D"MsoNormal">Revert &quot;weston: Use systemd notify,&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">lttng-tools: Add missing DEPENDS on bison-native<o:p=
></o:p></p>
<p class=3D"MsoNormal">kernel: introduce python3-dtschema-wrapper<o:p></o:p=
></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update to v5.4.172<o:p></o:p></p>
<p class=3D"MsoNormal">glibc: Add fix for data races in pthread_create and =
TLS access<o:p></o:p></p>
<p class=3D"MsoNormal">parselogs: add a couple systemd false positives<o:p>=
</o:p></p>
<p class=3D"MsoNormal">expat: Update HOMEPAGE to current url<o:p></o:p></p>
<p class=3D"MsoNormal">wic: use shutil.which<o:p></o:p></p>
<p class=3D"MsoNormal">wic: misc: Do not find for executables in ASSUME_PRO=
VIDED<o:p></o:p></p>
<p class=3D"MsoNormal">cve-check: add lockfile to task<o:p></o:p></p>
<p class=3D"MsoNormal">cve-update-db-native: use fetch task<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/cases/tinfoil.py: increase timeout 60-=
&gt;120s test_wait_event<o:p></o:p></p>
<p class=3D"MsoNormal">valgrind: skip flakey ptest (gdbserver_tests/hginfo)=
<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: tests/fetch: Drop gnu urls from wget connec=
tivity test<o:p></o:p></p>
<p class=3D"MsoNormal">bitbake: utils: Update to use exec_module() instead =
of load_module()<o:p></o:p></p>
<p class=3D"MsoNormal">linux-yocto/5.4: update genericx86* machines to v5.4=
.158<o:p></o:p></p>
<p class=3D"MsoNormal">asciidoc: properly detect and compare Python version=
s &gt;=3D 3.10<o:p></o:p></p>
<p class=3D"MsoNormal">lib/oe/reproducible: correctly set .git location whe=
n recursively looking for git repos<o:p></o:p></p>
<p class=3D"MsoNormal">scripts: Update to use exec_module() instead of load=
_module()<o:p></o:p></p>
<p class=3D"MsoNormal">selftest: skip virgl test on fedora 35<o:p></o:p></p=
>
<p class=3D"MsoNormal">scripts/buildhistory-diff: drop use of distutils<o:p=
></o:p></p>
<p class=3D"MsoNormal">weston: Backport patches to always activate the top-=
level surface<o:p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/tinfoil: Update to use test command<o:=
p></o:p></p>
<p class=3D"MsoNormal">oeqa/selftest/bbtests: Use YP sources mirror instead=
 of GNU<o:p></o:p></p>
<p class=3D"MsoNormal">openssl: Add reproducibility fix<o:p></o:p></p>
<p class=3D"MsoNormal">libpcre2: update SRC_URI<o:p></o:p></p>
<p class=3D"MsoNormal">linux-firmware: upgrade 20211027 -&gt; 20211216<o:p>=
</o:p></p>
<p class=3D"MsoNormal">bitbake: cooker/command: Add a dummy event for tinfo=
il testing<o:p></o:p></p>
<p class=3D"MsoNormal">ref-manual: fix patch documentation<o:p></o:p></p>
<p class=3D"MsoNormal">documentation: further updates for 3.1.13<o:p></o:p>=
</p>
<p class=3D"MsoNormal">releases: update to include 3.1.13<o:p></o:p></p>
<p class=3D"MsoNormal">selftest: skip virgl test on fedora 34 entirely<o:p>=
</o:p></p>
<p class=3D"MsoNormal">gstreamer1.0: fix failing ptest<o:p></o:p></p>
<p class=3D"MsoNormal">bootchart2: remove wait_boot logic<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM5PR1101MB2361C2C2D6306E6244E91EFBB9369DM5PR1101MB2361_--

