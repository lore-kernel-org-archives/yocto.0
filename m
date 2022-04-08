Return-Path: <jay.shen.teoh@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26145C47085
	for <webhook@archiver.kernel.org>; Fri,  8 Apr 2022 17:09:36 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web12.3677.1649408024231773563
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 01:53:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=ReCUbAqm;
 spf=pass (domain: intel.com, ip: 134.134.136.24,
 mailfrom: jay.shen.teoh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649408024; x=1680944024;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=awWM2joVMTd1py5VK6zhonoSQEzzs8nU0Ts0mzIslDI=;
  b=ReCUbAqm40jCeq6WAYDTO8blrnL8tZaQ1xHGnKGbJFuozgMtmUkq8I7C
   +n5daM7xiN1NxBcLRkTs8dnO12qCBxc5dDLn+F3x077RD/A9CEveummBm
   qjgJVtYS7SQID2KanjWuGhKju6gExUlmKvBj6cplfQlNzmmLBbkwE/cmY
   Meux2CZlnblz7FBKNtYvi2JJC7MTgVhJJQ/gT0Tgff+bBfWuSMphANCZi
   NF1HAOaRhvVKUHngCnChA0V7EONb4Z8BHQnT/lZ3KNJEQoVnP67N8PYb2
   imh4FLoo4su4PV6AiJvk6IcKo1yiKP7/iISpMFnS/nYaKAAjv4BRyxNaA
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="261239907"
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400";
   d="scan'208";a="261239907"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 01:53:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400";
   d="scan'208";a="698113424"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga001.fm.intel.com with ESMTP; 08 Apr 2022 01:53:42 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Apr 2022 01:53:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Apr 2022 01:53:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Apr 2022 01:53:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EEIY0skicSV9SSy4sft9eelcaCvRztclO7RqQrLdU2sLoSquoTEtN+KvilGI84YFZ2Vil2j92GnI2OFUUPCm/tQo4Qc6HnYbNayPF1thBTM19gqnWgw5g+fO6sYm4L7jS6A4NYGO3fq1hosPjOhA4a6k1Axw7N6Z/UPSkV8xuGjJABCvfKFPjE5PWxxzAFYnZX4pKrILqGnyNl37ni4UflRg3+pUTcjPgOin7WEdKrLbgdw9zSKXnf+mNNGFKTqnAaTUf/Ut/xWS2UiucbFwRZ12U4M1hT+L9fJFge1TEPjzdmnsD2wCbhFa7OpxtLX4GNesQt6APVhaeCI0WCoQ0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UXQbPnxn2ypZIhmE5dOJLMPb5oBLDQ2bt5Tfn4igYiM=;
 b=CRjNqjscG9o2KKZxar6h2t2V2lkRwLyDs3GYD1J0DIyGmmFI6qm0nYwYDhsHj5CQk0lOj4viG3doo9ZGbAz4dp+7oXugJhwa0i3t58n0Lv/8yOZoyrQ9UlJ7GyyvVNa8jGtaIvBOsP9cX7WevdIivrGu0fuxLTluGbYJMQfUwHdQR0YtHvVnK/4OtQpu/V7wcpl8Tm0E18ZuzGyT41Ppe8bYOy0qKvONB3fiGJB1/hWTb7+TuetTI7hhi9YIoZosx2VpU7/X0b58xnIUJA1cQcTVt6rw5ba3Ksj2jlDCJblbFllZOd4pXVY+gv5/OjcCm21HgRoob66wLvP47/WjLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2348.namprd11.prod.outlook.com (2603:10b6:3:a8::16)
 by DM6PR11MB4396.namprd11.prod.outlook.com (2603:10b6:5:203::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.22; Fri, 8 Apr
 2022 08:53:39 +0000
Received: from DM5PR1101MB2348.namprd11.prod.outlook.com
 ([fe80::5de2:7c09:3341:9a45]) by DM5PR1101MB2348.namprd11.prod.outlook.com
 ([fe80::5de2:7c09:3341:9a45%10]) with mapi id 15.20.5144.021; Fri, 8 Apr 2022
 08:53:38 +0000
From: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
To: Pokybuild User <pokybuild@yoctoproject.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>
Subject: RE: [yocto] QA notification for completed autobuilder build
 (yocto-4.0.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-4.0.rc1)
Thread-Index: AQHYSY3kljykFFYuAEOfzCEZffNzI6zluObg
Date: Fri, 8 Apr 2022 08:53:38 +0000
Message-ID: 
 <DM5PR1101MB2348BB51B0A236478D3AEEE0BBE99@DM5PR1101MB2348.namprd11.prod.outlook.com>
References: 
 <0101017ffded4843-210c9da1-5b3f-4ed6-bcbc-1f63610acf6e-000000@us-west-2.amazonses.com>
In-Reply-To: 
 <0101017ffded4843-210c9da1-5b3f-4ed6-bcbc-1f63610acf6e-000000@us-west-2.amazonses.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69701260-f35b-4848-0b37-08da193d464a
x-ms-traffictypediagnostic: DM6PR11MB4396:EE_
x-microsoft-antispam-prvs: 
 <DM6PR11MB4396C8DDB3B83CDC4518C44BBBE99@DM6PR11MB4396.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 agssPa2nlaZhP9wCkx0xuu2fJt9grtKMboahECdagrBja6KK7k3McZALFDh2Ked7BnwB8+Midl++j+yjxSbaowlmxTqRM6kHeY5NEPt1bZBFksf1JJaKKTFJeQ3gZsXFs53p4JmOf90oap/sF1r5UxPx6b0hXLLCFsMFDXZjUe33W3ID06gkv99l2Sur4AX7H+ODtImm/XBgUa2JbbNu/OkYyRthMUNAiwXFkp5uSArZQ6SO4Qqv6JHtD2Z7qDeNDoolxafmtfIQ2wLhVSSvmkkGNrkjqrwjwaUJu51K7qJjDXcT+xMTrG9S5j+ORDIAhPBOAloI1qTh+2BuxP9Ujq60eVoS0x7ZZmsjFgYFocUC3AgKw5yy0I6VCKDSuXd5Dp2NCd5IclBRpLVhOklMiECwgnGa/4MQdpLs5U8DwRQBXIJ6+dBFZvoIXS6T1x9eUA1sJ2QHmWc2Na2FDVECay8/kagOCEcEgk069sc1SSein6ogp0tOhACpMs5FXoToM7wSJt8z0maCv1i0vImD5udEf4w0F7YBGuSnekq11yGpTIoG1YKEIw3iPBH8+FLGQS//7vZGZJlojqS/yfQ+mKKKzHBVfmgg/PgMAu9sdGY6XAfCoaSWkH/50jM4G35VNz1RxwB9lIKHNQWxAON64Z1ql3ssq23bIHOg/bKS3nR0nWxxkla4kyZEObcnADoE+wYuvolH2LVg060bcQpWsQMrieaxKWkZpkPVvAkKL54xSbwyt7L4sHImKvAvkfyj2rqNVCWDxiPoySqDgt7ND5Sg9/fZPg+fqP5HrCNBmzU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2348.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(316002)(6506007)(2906002)(7696005)(186003)(66446008)(76116006)(9686003)(55016003)(15650500001)(110136005)(53546011)(26005)(38070700005)(86362001)(508600001)(83380400001)(33656002)(38100700002)(66946007)(8936002)(71200400001)(5660300002)(4326008)(64756008)(8676002)(66556008)(66476007)(122000001)(966005)(82960400001)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?CrfRi897l565ciDc1UufzWhRb+Qy82GLPikvPGaAnB2EsOT80MfQk67vMS7U?=
 =?us-ascii?Q?lA+chF62AJpBPt1lwiJEikTMM3YdidikSKCFUMVHWN+I+iS1XEwDSyA8nCbA?=
 =?us-ascii?Q?aXYaE1es8eJjvyxcWGqvMI1c/GDt9r2muU8esLC8kVDgseE8mnzCL6bl0imm?=
 =?us-ascii?Q?fhC61PvlImbJigo3pNHAwas3VPy14mOMMizH1KS4+qfYNtkcy7+P5hJnxyqI?=
 =?us-ascii?Q?kjm8fC8g4MlvkocMIyXqsCpTfLVZYO3fKnBwXCwV6euALhmCnDDTwCTR7mrA?=
 =?us-ascii?Q?yACcUkId7hIUfRLTkhUjBKVCL+vitnjnkTUeK4Kd8Mc5OGpsFJfk37WUeVRM?=
 =?us-ascii?Q?vtO9Nn2mJeoiksC1WQE8kfA/yicicdBbWxplOwTSJqk9POkK8vVyYlm6flyv?=
 =?us-ascii?Q?vl72bvaOZDKZ4AiDaGYcyfs3eDBbNk/aW4GNX5/R8KzcotRP4g7A/JaYGket?=
 =?us-ascii?Q?+8r0NB7B6MYJoy34ulS9DelNwV6QzooFHnvAjYVWw4V1MBQu8B3F2brZFwmd?=
 =?us-ascii?Q?QmiXRpbTS4rX4QYYJgNuNGwapm177HPHWdOhAG1A7p3AkpgBWGrSPnWdbvRm?=
 =?us-ascii?Q?15lVvOtiE1h0tmBafNmRQUyRoqAjigmUd+cAoK0ObnkFeNGtlCPB4ceLTJcg?=
 =?us-ascii?Q?KoJOp7z1sHL0MxgQF4kiuO7RdjcNPxmuuH3HR/ylBzZfftoscaoKzbyQHN2j?=
 =?us-ascii?Q?Na5v+JfZTUr+k/0sXvW5Ag7x5zMMKjyiPt29+EnLuE5fo7qmp89JA7wk57TO?=
 =?us-ascii?Q?1SOZ/L/h1CSFAHacIIsHUFNvktJwzv6h8i4h5bTx2rWpEaaAGJ3vGq1hK4pS?=
 =?us-ascii?Q?Ai4XuHJAW2yhFv8r2chuHFP/VxG2NVm5k3aw61BcVUz/MCy6P9l9GYi4ZSa+?=
 =?us-ascii?Q?Zp7hCFtzsKJjJR+5laB3Uxa/U/jgYK8areqRIbnkI0bU0A6UUgeJbLc323Nx?=
 =?us-ascii?Q?aTCkZKJlsKzroU9W1M+EH9i+WYSIXcyRny/Xz3x0PVuISsZjGwF8dRhvLKJW?=
 =?us-ascii?Q?Zd7K/prKxPp4QSYhKqNWmm7SLaVFtRUM+DpGtyodPhAvhpXLYa8KPAyKgeBW?=
 =?us-ascii?Q?woSNbz1sS9are+ScZ8r5NttjtpAhcLz4ZacPc/g+ZPmt1ZnCBUxMQalHgx7i?=
 =?us-ascii?Q?pBod4LeTqbsSoABuo6OsyfalxAkIiUXMVEl7KZaz1zQLfgWA8dfgcZIDve57?=
 =?us-ascii?Q?BWXcGGaA4T4Mg90Z3eVY/P66URtTeCJILbUKkrWZsgOPukCG/or1UHpFM13F?=
 =?us-ascii?Q?jClLVyIeOADUUypNj1OVrB0qRCWJrqSAf399dwrTYsKsaMdDm4fEGZPfSDLx?=
 =?us-ascii?Q?ADjVoDi4lgtpZg+ku1j+aJOfqNifMkvL//QZopz+ZRcfsONdcH65RZfIAMgj?=
 =?us-ascii?Q?daoJu08k6zLgKM188sIL7s/VsklReuNu/Ell3CD9cV6NJmP4SpBSxX4CnWBv?=
 =?us-ascii?Q?IT6f99G7gPEzRqJHJQg6Hqv8zHK2sJEoxoaGwfKgjVK1LmYqmVkKFR0CvX3V?=
 =?us-ascii?Q?BK9qgjD8Tl+kzPjm9hrirlctCISyxaNlLXLus6eH7yhQJ6NqNjLClVO/FGYk?=
 =?us-ascii?Q?BB5pZ2ZBY8WLF6y4ui22q+XSdBesMrNu4n7QJ+Jm9wnVdKQL9Acu7X3Cjchh?=
 =?us-ascii?Q?g9YOGnEk05+wGNcQYclv5pZiAWMuwb8YdBvQ/0xBSYjI1Sn1XrAEaIJVJPG5?=
 =?us-ascii?Q?b5lqtenlvlEy6mBoTF58P53xrm0azrrF/YECMpHY1UxF3fY+FsZGlWTHmNRn?=
 =?us-ascii?Q?jEb6dJVEPw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 DM5PR1101MB2348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 69701260-f35b-4848-0b37-08da193d464a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2022 08:53:38.8522
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 DSU+os9R4NwR1wne9UaApBvaqlLD7Q8gMzBTtUxBlDjgcqkuEXGtAMFi7LuMK9yDd+hp3NPgHN3kLLUz6bgmsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4396
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Apr 2022 17:09:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56693

Hi all,

Intel and WR YP QA is planning for QA execution for YP build yocto-4.0.rc1.=
 We are planning to execute following tests for this cycle:

OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw

Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. Coffee Lake
3. NUC 7
4. NUC 6
5. Edgerouter
6. Beaglebone

ETA for completion next Tuesday, April 12.

Thanks,
Jay

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf
> Of Pokybuild User
> Sent: Wednesday, 6 April, 2022 4:11 PM
> To: yocto@lists.yoctoproject.org
> Cc: qa-build-notification@lists.yoctoproject.org
> Subject: [yocto] QA notification for completed autobuilder build (yocto-
> 4.0.rc1)
>=20
>=20
> A build flagged for QA (yocto-4.0.rc1) was completed on the autobuilder a=
nd
> is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-4.0.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: 41eeb4f34fb2306303f7688ec5e0ae965a573aa4
> meta-agl: fa5152323ad2bd3d433aec72c4fec6614656f06d
> meta-arm: 5c83fa83649c522137c96d3c5aab49d660f8807f
> meta-aws: 214a5867b3b0d9ba54818aabb1711eadf4ba9eb3
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 68e00896f2c669044f6ad8cbbc9958332254a4e4
> meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
> meta-openembedded: 173352732d17b3d1fa469b6eea43a2a3c8a670d3
> oecore: 62851965fc180f33ed6feb62ff5ac14706e4732a
> poky: ed98f1a1ae7e4e2c8e089003a619ae9260a852ad
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20

