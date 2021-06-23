Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web10.2841.1624420118895782030
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Jun 2021 20:48:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=MrBxZm5R;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: bdaebIei+z2ocjFaGmv2BK4uEs992dSC3xma2HbN/ubB0TIuoJ4PnjliFxPYD4++fJnY068wGa
 nrceQP2m8DkA==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="205359759"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; 
   d="scan'208";a="205359759"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2021 20:48:37 -0700
IronPort-SDR: jBVL4PgCjNC+oEgtpmGCsCBAkQEC2UdaRMiDEF1zrJaAGC0BfwaJbNWbL75TrK8Gyxhnh75qkx
 23Pb+fKnlBZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; 
   d="scan'208";a="556831684"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga001.fm.intel.com with ESMTP; 22 Jun 2021 20:48:37 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 22 Jun 2021 20:48:36 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 22 Jun 2021 20:48:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 22 Jun 2021 20:48:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 22 Jun 2021 20:48:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OCu3TxWtc4XtuNMkq1hrXkZxJS22d21a+NMrfsXH8rEkT39AUUYawFK8qkbVTz0BAPR4/WIGIxJPgQHrua8e6tvSpJFUV6NviFw+q3u8vGBGyplp4DNLB76lCoapGWDFiW2YytcHi5lBEJMhDER+U45BBGNYvn3HOgak697OFwLqTHY73TWl4EjqJypnrZycztSc7pS525EvmL6l0nlhv/MLdaaxwFsemCtlGWzCxrSNtI5r42H2QkW2tSegxiir6HDfMYgfNlEI72EY4UszzzDzbkKIj5DPcUN0pYGcu13G6Qt5EJFunBTcyB1hRwgLLaGsq6IeMHFUXOglxofaGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pGFuY+plTQX5cXDjtPc/56GyVaHjTyHJaR9c4oFL6go=;
 b=ZrVelXjd8N1ownQdAeSypzhW4kbK2ZWIeAAFlO4/no0xIdGivP97NLWobPf2QYjyQQ6nhEaYNGgl12Vgwr7HZO74q2wpnQOmTPLop1FUijFt+2axcLFPcCM3J9QVTe8KpSgMdCzqPd7AVgKYu256CWJCRXDMfM735z+YXBuM2S0/Vw7s798CkDGYUDLKYkPtP2d3hU1dgQqmhTBHYB80B3TzPidJfDSCviD4r+y5FJYB8TkHo0N9NjB1N5nSiSzCd6qKe+5N7dm1V3j3hVU9wZcSUQp85O7REA3faEfCmSY5IYZIgppFw/kqI0WNEhnoFC9x93w7b+hXbcD9zUMECg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pGFuY+plTQX5cXDjtPc/56GyVaHjTyHJaR9c4oFL6go=;
 b=MrBxZm5R52VpiF+5mWCcb4Sb+G2kzHHg8bWkv4q2dbgPjtTFksp13lD2QKKIBfpl7dZ87gXHrSmZyELsCMazokOJhfV2l/mWApvbvNwaH186ZBO1eY1Y3YynLv9xy7VIw5OGgiH5AwaGpFBnzX+3UKktZIl/cxHe1Aszn5GfKK0=
Received: from DM8PR11MB5608.namprd11.prod.outlook.com (2603:10b6:8:35::5) by
 DM8PR11MB5592.namprd11.prod.outlook.com (2603:10b6:8:35::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.18; Wed, 23 Jun 2021 03:48:35 +0000
Received: from DM8PR11MB5608.namprd11.prod.outlook.com
 ([fe80::e55d:6603:6fa4:457]) by DM8PR11MB5608.namprd11.prod.outlook.com
 ([fe80::e55d:6603:6fa4:457%3]) with mapi id 15.20.4264.018; Wed, 23 Jun 2021
 03:48:35 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder build (yocto-3.1.9.rc1)
Thread-Topic: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.1.9.rc1)
Thread-Index: AQHXZ4RA5DxeeVP4g0m7ZwPPsemZbKsg9enA
Date: Wed, 23 Jun 2021 03:48:35 +0000
Message-ID: <DM8PR11MB56083CBE3C78CC60009007A0E3089@DM8PR11MB5608.namprd11.prod.outlook.com>
References: <20210622163241.330782A0FA2@centos8-ty-1.yocto.io>
In-Reply-To: <20210622163241.330782A0FA2@centos8-ty-1.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [219.95.114.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e0f8baaf-29ab-4659-631a-08d935f9c700
x-ms-traffictypediagnostic: DM8PR11MB5592:
x-microsoft-antispam-prvs: <DM8PR11MB5592EFA1EB8DC12642DF7874E3089@DM8PR11MB5592.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lXT9sR8jxn9crxvYCs/MRWnNYW/vcdcC5bsLAJWO74ND56GQx6LD7ekdmXx7tkeDFlsVQrRVS70evogHUQlL9hSe/ZCHcMzBIkayYVdwGBbjvtsAwH0RHBaxauaHbKxzwkEz4Ynw4THRDmtPIetGMvsQGLyCru2w9Q8fd1uet0EUbhNQWrUPctYpqho0rySAItOkJrgZ8xGcPAZC32jX1jtD8h5aeNKVY8pXOAzekPDWFDJF1TrPAYCJVSW9Fcpr43mXyEovSQDoQat09NWza3LViqBLq0nmdSukeKUcoY+qyISjI7XbJUhCaDCNIZn7rpPVPgkxP0K4ZOQUwtmVUrLe6M01xFFKAKPsNgIxVz4AaGDQOqn9M9IJfpMElS4O7nrp0jvuPkjj/LKizghlxlICU+L2DSq8SgsMQR/Caq9L5dukt9iFdvnRcLQE2ZtQqi7n3SnLVlqTZcW93fnssA/TMOpNnnTQG4X9xmFzVvyxwkr3dI1prHdFlkylTpFSVnPIljQmoDCxGuaXf2EQ+snRVqcZ659vNCENRns35qy3FFnjLCcaCv9PsYQ7tb0hZcuIJWJY4T4olDf5J4a3bqHhFfDxmA2W1Mj+JeCGSSBZpOaNgIOlP5FCbH17FTXgHuSCVGnZ/gzpwEIeg/dPbURX+DXRM8bqWx9Dcf9ei7Q019bJZrBAazQ+8xQOmqOSN77vnGNOd0ZTXT5WiCbqF1L9Q0IjPdKi9uXq3ymiZerXep0QckXHILihINzFBKcE
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR11MB5608.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(39860400002)(346002)(396003)(136003)(376002)(66446008)(52536014)(110136005)(8936002)(66476007)(7696005)(86362001)(66946007)(76116006)(66556008)(64756008)(71200400001)(2906002)(316002)(450100002)(5660300002)(478600001)(966005)(55016002)(53546011)(9686003)(186003)(6506007)(8676002)(26005)(83380400001)(33656002)(38100700002)(15650500001)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CTmvKk1KxhUHL1JHLMCH6p3tl7F409kwsZhYDwgmxpS3d1mv+mR62+HwRlsB?=
 =?us-ascii?Q?wP+tFI1ZIXrdPGXMZQRMyd5O6VwswBnqkPg9T5ABqyEavRqmW/Hr8RHdi3mN?=
 =?us-ascii?Q?3JELNTZRANvTNUw/hR1fu2GuUl+xE/MzP7UB4s3UFqQ5OAgv5QEEU/KO0eKT?=
 =?us-ascii?Q?DGU2ht8BBlJ1JVe5crw3nMUzYiE+6uT4+l6UKxJCWW2faurj1hFSAE8Ivgia?=
 =?us-ascii?Q?kmmBV2ExqRhAusGj2JswtuO5P7hKyPJ8qcJBf+8rJemqlCL/HKLIqQyOxXTt?=
 =?us-ascii?Q?p04mSLB8D9YSzUniYUINbVbGNq9Qfm1BiBvQ9QIFsoIoP/AFiBBN7EWRQnRc?=
 =?us-ascii?Q?RT/dJwnRurVPf/e3mUEtX+wTgBY36BSmvagKs1/51mp5eBGTq1WD4B++7zoU?=
 =?us-ascii?Q?Q/ppo7AOxiUtRVV1unvVd8DkSdPt2+aXH33PwAX1AcaB/ZKAxxjC8T0DXApd?=
 =?us-ascii?Q?MHq5x6q31CJOq1QEhbSwirStIFPpl01dk3iGwwz2a3woZyt7x6sb9xtK6Ba5?=
 =?us-ascii?Q?LKSS9yIBBFc1FBNv6WcIjXBv/JAc1rVRh/e5OiYNihtrXvqTUvsvRzjqw7hd?=
 =?us-ascii?Q?vpDS6lov4cqFLitl/FxSrxOoyjuTIymxEi1U9NPFkxTIStqMuHOwqscPi4GG?=
 =?us-ascii?Q?wkiiX5A1s61aa32uRjnLcMQCUoDGJmVaSrzG6anoNu9eLamWe0XuR9P2baeT?=
 =?us-ascii?Q?JCCvTEgWCwTahAG4T9J4AFrlQ5TyHuy9Ay1b2oFHXyZLnxqoRiYinTjrmQft?=
 =?us-ascii?Q?fvo9i9QqAtiA1jXOv3T5AFAMui6LzfovHGaiJ0elMfVcGqCvCdBavrk4HMDI?=
 =?us-ascii?Q?F6rukdWzoWTscdG5o0i/AIjLIM87o/7bUfqAgqTM34OBBnH4I9fF48N63+ZR?=
 =?us-ascii?Q?dh1Yy+Dtl/LmQPIhzL/VKCTlWcXnuy77Fqu6MStAT5yIFZ5hGrqiMeH5zyRT?=
 =?us-ascii?Q?advWtoHwo14EN+XDue67zp1f0WFXHxNO+DMZ9THUuWp4x/OQxXfu34hrRan6?=
 =?us-ascii?Q?AO1fHgIkEbaoEzy6yS9TyF6nvNPosQ+eDqRWAbv16obWMhQP3XusfabDGcoH?=
 =?us-ascii?Q?/ogJoCM4uS1ciphXXEBruyP0/EZ2Xr2pyzZzGvr+l7V5s8ilVx4gI1tH1rgc?=
 =?us-ascii?Q?ivq4C5q3aJFm8sLyMQUfNeVIvXtO/LEQ5sGsh3k7hvqX7d4x6wMgtG1A6RlC?=
 =?us-ascii?Q?KACY1xlvE6TRbwSH8nI6pfwLGSjts33Bdwo5B0hQCb02g3XMYxGtgCgKNUBZ?=
 =?us-ascii?Q?gD+KKM/Kf+mAs3oYfpOPHI5zz5kMKJl52vIv/bipi1VeeLgUVbK33g2pc213?=
 =?us-ascii?Q?8FPEPaXHfm3M1AM3aV2ynAXh?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5608.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0f8baaf-29ab-4659-631a-08d935f9c700
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 03:48:35.0938
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 20maZ7lWScLiqRKQm94kARnVpjDQtL6TtfG3i3tUJC/XBtlP0KTx4/a6eRtHWxaFgcnPky/Hwl39cXKkaWfpDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5592
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.1.9.r=
c1 We are planning to execute following tests for this cycle:

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

ETA for completion is next Monday, June 28.

Thanks,
Sangeeta

> -----Original Message-----
> From: qa-build-notification@lists.yoctoproject.org <qa-build-
> notification@lists.yoctoproject.org> On Behalf Of Pokybuild User
> Sent: Wednesday, 23 June, 2021 12:33 AM
> To: yocto@lists.yoctoproject.org
> Cc: qa-build-notification@lists.yoctoproject.org
> Subject: [qa-build-notification] QA notification for completed autobuild=
er build
> (yocto-3.1.9.rc1)
>=20
>=20
> A build flagged for QA (yocto-3.1.9.rc1) was completed on the autobuilde=
r and is
> available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.9.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: 0e0af15b84e07e6763300dcd092b980086b9b9c4
> meta-arm: 59974ccd5f1368b2a1c621ba3efd6d2c44c126dd
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: d8bf86ae6288ae520b8ddd7209a0b448b9693f48
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> oecore: ac8181d9b9ad8360f7dba03aba8b00f008c6ebb4
> poky: 43060f59ba60a0257864f1f7b25b51fac3f2d2cf
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
>=20
>=20
>=20
>=20

