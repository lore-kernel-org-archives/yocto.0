Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA42AC4332F
	for <webhook@archiver.kernel.org>; Thu, 10 Nov 2022 09:20:19 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web11.5400.1668072014875182104
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Nov 2022 01:20:15 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=c1rTVjyO;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1668072014; x=1699608014;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=lpo2tjT7FNqeODlx4AeuIjLtLtfVMHtp3w0/LTiaHYo=;
  b=c1rTVjyO7q3E1gpAOJVD24Lbdk1/UimjqAOH7HnLliyChAU6te1lJezu
   ZWRyPTdw1xyr+hxPovcdURHVaHDDvHjVpj8+6EIVVpMnFHzgVD/vjtXS9
   wq+dtI3Sr7nm4Gm/Hw5A02z5A0i19C9BHfFRcKq5RmHiwH1pT1NmoUjAA
   u2r/lx9J5SUvuZUOoeFoOjC++hZNnr9YD4BMr4IKNlAOX3BMFwz8A5r1I
   hQxlVqdaYsXAaHG3sLHt3O1YJ2XfsqmcXHLvFwdJptrQWsWmRqjn4CHx6
   B9LVjRkOauNptqQJYUEY8I8dsOpxO2JYlniqPSeAsH2poXPV+B+f4/S7a
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309977180"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; 
   d="scan'208";a="309977180"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2022 01:19:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="700727660"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; 
   d="scan'208";a="700727660"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga008.fm.intel.com with ESMTP; 10 Nov 2022 01:19:57 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 01:19:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 10 Nov 2022 01:19:56 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 10 Nov 2022 01:19:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nu7B3iGw3fjznrlGu0wM6QESTWCHfvuDywQb4dLFoRrdfCkZnuNCG+mRx3bmo/nSSRzGd6Shu7NxgBSxdmzUf2OrwR9aWt7czWsZZiFetfdcWe/yR9VwRYPdFcSMdrd6+ZmcEaGrR9izyNS8/O9dVKkd/2GCMZxnweXE5IdWQkvR9urHeHzbd1iar/b4xxR34bqGcWDxj7RRxvEz0IddsCOIuO0bukVBJJQMFuJbromZ+4mTA9Ik9vS/moznH9Q28k80Sj93VZh6dtI3UO5xT+cNBbFGz6GC4bTxC4NP2DNOxoFQR2uDtPHgTFIcQrNRtbj/UWhwceCfmgaBS5qPeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MOYvkDvcNKfEUzWTLNODwLONicN2FaYAxyOT96T2fsI=;
 b=CnTXv4oRSztdVMXTh2fRVACxZAUdDXLOMU7icwGr9kWX1IiLQKafx/DHEX/iRxNd6+UQzVltZgNmWn3pcVlIJSWwV6QcVHi0YJvy3NKdOkR6b4u1j44DV+tQe91CCKopXsWyeuuJveCadVuDAFLAkyONP+/lRA19YrdyBeY1DdrITd6Ezo/gbwUngvUdmvdb5jvfvitO9ceJEynp44kKqC1nxXZy14jIj+XMnmvB5iBtMnEABqV0onsZvYh7opvfBbOjvkEFyXLgiNoyEjIoifKRxGLwVdPzl/SxZfUkFkmV9UliWDVdPrECEcs+4bfMV/tvbV7EggXjbZMOknK7KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by SN7PR11MB7044.namprd11.prod.outlook.com (2603:10b6:806:29b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.12; Thu, 10 Nov
 2022 09:19:54 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::128b:b7cc:a237:50f9]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::128b:b7cc:a237:50f9%9]) with mapi id 15.20.5791.027; Thu, 10 Nov 2022
 09:19:54 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Jon Mason <jdmason@kudzu.us>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-zephyr][PATCH] zephyr-sdk: upgrade 0.14.2 -> 0.15.1
Thread-Topic: [yocto] [meta-zephyr][PATCH] zephyr-sdk: upgrade 0.14.2 ->
 0.15.1
Thread-Index: AQHY6Wa70Dn6NazY306VJ06ibQlgYK4380EA
Date: Thu, 10 Nov 2022 09:19:54 +0000
Message-ID: <CO1PR11MB5026D198A509E3EE7CF0420DC4019@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20221026052945.535612-1-naveen.kumar.saini@intel.com>
 <Y1l42k+lFDUOkdwQ@kudzu.us>
In-Reply-To: <Y1l42k+lFDUOkdwQ@kudzu.us>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5026:EE_|SN7PR11MB7044:EE_
x-ms-office365-filtering-correlation-id: 7627e386-5fd4-4f3b-66a5-08dac2fcba82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OzNnLUU/emW0rCObEFQOBqeWLrFxNtiv098hgBGQQaz1eo87cqiaxMClge84SvOYvSGRt+2nDReNwD1gpRIX5B1VcZh///bz61RREIVT4N2pSfTu0ivDJCtr0+jecNIc80OQQ9yvb4N46fCXnQhffxSf+9QY9cwrhv5a82GhhlAQvf+ZKhy6ELbb7wrsBG+LP03teyfdqEVehHPdrJdFhI3Yy6d+z/pAgY2hLRHGUsPgB+jh8+x/QdNBp5svC1oVQmBlvisZLKkzPmtziJ9ALMJ6m11qMDx10RgkhWcrEMUxG4GvYEWuIHY7Mel/rjQVDaIV3h+UqrNZ7w6o7khl4CPkeCWw+CkGD1HTtO0wmXXPqt6QukSAW5E16Dr2JbptWL6O7+7zK9H3SMttnxMo6RvZdhMU1DPsrTuAZ3en77SAMhpK3UqjhQoY61nGixM2E4/hyPRKpOagVizJL8pgIl1ksrW7whCJD6toZpHus2UT/zxs+oyj0WGNjcXoLRKWwyR2R4nos7fTc5USolKqaNIdotcWrL7AKMiMlTZ5ok9dth9sRMsnD6aKsO3Oq6X/B/dttDQdUKZ73d6+qUTXgspRjP3xkqkXIXr1s9LueiEEK0gw3JEkOXlsN119IIm8D0rErA8JFtkG5TYRnT5wfsvU53NqUtckpxp+Rgoj4A2NMs5H1c77NpaawjFxwVrLQGfJjUB+Ulgtt6PAqBqsDX9Y62tyLnIPBOrUm15juWt7R82tnvP3oZXKm6fjPP5aMHd5vjBceuBYfbsF7jjSaKNdIeP3SfhwOkPJ5Bd9M7NC5TvQukmuwWaGi+j8FS4ot0eCVW54il2o+uRvQNXd+A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(39860400002)(396003)(376002)(346002)(136003)(451199015)(122000001)(66446008)(6916009)(66556008)(66946007)(316002)(66476007)(52536014)(4326008)(8936002)(76116006)(8676002)(64756008)(82960400001)(5660300002)(86362001)(38100700002)(33656002)(38070700005)(83380400001)(41300700001)(55016003)(478600001)(966005)(7696005)(9686003)(6506007)(71200400001)(26005)(53546011)(186003)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t/wcnLcBvM5Y40uaj6u1ovc4Hmh1YlrLkPr55c1842FqwLFm5rr1Z4YoYigq?=
 =?us-ascii?Q?eDp7Qtjr1yJxkCG5YKNqLDf2PplUfzl5ZNPRBZKBULZWsPGjXu8yirtigdyV?=
 =?us-ascii?Q?1xJNpNKNAPDrnKQCwgPrbMwWQCM5P0neWyoO8Pq/CTzE2FT5H+HlHQ4t/y5A?=
 =?us-ascii?Q?irvMKZgtmf0g9Ve4l2RTwnHPcwu+T8ekvbXGaaJJ/KxvCU4DRsVpn/pMJoIM?=
 =?us-ascii?Q?F6PHh1qiVWsHcWynyZDAqxS1xAErN9QKiehOeuHA7MO9lY735ITIGJ2BYhxw?=
 =?us-ascii?Q?xtJGk8ZLGmgv6G621J9QhwHSEU8zFdckVBAjii1buNmBSDgPzEXz8UaTptre?=
 =?us-ascii?Q?0TaCb2Z/RLoYl7zsSM+v6MEo6sRQpIRQEr5SasqH0hrtQ62jKwJxbow0Dk1D?=
 =?us-ascii?Q?ovj2WPCtW8Y7MkRid7W/c/9p8z0YPIPz6ZQ31Am46rIE840gi+fWVEcIRNH2?=
 =?us-ascii?Q?NL+djZoPCJsRtiJPJfvGGyB+FZ6UoHL+pKHoWQLXnz++uE/Y0U+Pm1FiimwA?=
 =?us-ascii?Q?N+XSbZKd8wIe9aWuFb5wOVUp3Hb5zi4/A57IgZ4hIIlLyVmy524YtMhmYeBZ?=
 =?us-ascii?Q?oGavgEMZ+0YITu/nFOd5gzRmIlGbxhMXbwOBu1lCEA4zhDFPgxfvqZNx2HjU?=
 =?us-ascii?Q?HVjDi+a0OM4M49h8xTsmdT2tt05i5cyFL0uctYpcnqMAjkamiiMUZS//sFCw?=
 =?us-ascii?Q?bUTN+ukJzon8v1PiKJ66QITbbSUScgoThyzT4r0DQA4k1uNLlsLlCM3pbXwD?=
 =?us-ascii?Q?+LSYlmXdXpF/IbZnUPOBt0Y9K5xpxR0/aGr8XLsngRF7yGbdHAizH9ansd33?=
 =?us-ascii?Q?GczsM8lhHcw8zioG4CWyWeqsAp0yVEpxKy/cwlSbCZ8YxX0hqBrckRbw4D4v?=
 =?us-ascii?Q?F5IJTH3UkLW0a7MV60o/gAp51+hBFJKopCarmeMurdx1VNjyRDEGX4MBCrSz?=
 =?us-ascii?Q?WN7iwwoJIIaxk2StQETXVKO5YaDohs9MQiFD7MRryGHdMOXh7SoRrJa06SSf?=
 =?us-ascii?Q?Wc4GF898YFmNSQQ0Ch8Bx2K0IW+vyPdTIeoLC7ZEcYf8Ge/T8XhcTinR13gH?=
 =?us-ascii?Q?wjHjL1p/V5Lp6L+5qXIPSv2FC2b8AmFYV4x1xwhwo9L58lL7JeH6IP7ZfNJW?=
 =?us-ascii?Q?nEEYFmrLawJQbj0ujN6w7JuAW3MHIeEHEao2PywRiPc08rmwNJ9KpTerH/s5?=
 =?us-ascii?Q?z1fopC1vav6a0X0x4rINCO6Yg/jBJz2yNI22+CV/wkSK8pt1eSeHzZ4gXPqJ?=
 =?us-ascii?Q?mF1Him2wIteOO4jAqrbxPHbQe/IN/HyR3Ujm8U/g/vX7Zwzy1RaLRDd9nBQp?=
 =?us-ascii?Q?QQLyVC3AILXP4QyKnuFRAzRus+tZz1fOc0HpIck7eoD1FWTwEKd9iCdObDa8?=
 =?us-ascii?Q?/qgdSo7FYLq0Uzq7VWooFndcnupafwFCdl4lmQqmO0DIqlzQ+h+lpcKYhTw1?=
 =?us-ascii?Q?iroj1DE/SC9+Cf/ywA9HMPmuC1HlQYRRQY+/H4WGd/j9WN3CZYhakIWovg9S?=
 =?us-ascii?Q?p7GL5NVCowKRNRqQgM6kW5OJ929UarsrmWVgrPO3udii9JSuR8UomIteQi3X?=
 =?us-ascii?Q?k1Mpi8wCzOO8WNTceHZDJ1WdiJSVJrWeoh7PP2dAHAtpo4SQ5StGFyGNeViR?=
 =?us-ascii?Q?UA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7627e386-5fd4-4f3b-66a5-08dac2fcba82
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2022 09:19:54.2689
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vlevAk149g+usADqHWDCFO7IYQFT2xJg2LQdAV17Q9+NXBsj1fIT5Iq8oB3BiQOVSZE0NJD52kgSRhWO/UGfglBCDl24vdMYQZis9XxBYZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7044
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 09:20:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58535

Hi Mason

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Jon Mason
> Sent: Thursday, October 27, 2022 2:14 AM
> To: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] [meta-zephyr][PATCH] zephyr-sdk: upgrade 0.14.2 ->
> 0.15.1
>=20
> I added this and rebased it to be before the update to v3.2.0.  The issue=
s with
> the versioning are now gone, but the following issues
> remain:
>=20
> "BUILD_ASSERT(IS_ENABLED(_RETARGETABLE_LOCKING), "Retargetable
> locking must be enabled");"
> for
> zephyr-coap-client
> https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258971
>=20
> zephyr-coap-server
> https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258983
> https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258987
>=20
> zephyr-openthread-echo-client
> https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231258972

[Naveen] I already sent patch to fix this issue.=20


>=20
>=20
>=20
> "region `SRAM' overflowed by 1104 bytes"
> for
> zephyr-philosophers
> https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231259005
> https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3231259002

[Naveen]
As per my understanding available ram for qemu-cortex-m0 is only 16K, not s=
ufficient for sample philosophers. So I think you should remove it for  qem=
u-cortex-m0 machine.=20

From build logs:
SRAM (wx) : ORIGIN =3D 0x20000000, LENGTH =3D (16 * 1K)

And also listed in yaml too
https://github.com/zephyrproject-rtos/zephyr/blob/v3.2-branch/boards/arm/qe=
mu_cortex_m0/qemu_cortex_m0.yaml#L10

I case see many tests and samples are being filter out based on 'min_ram'=20
https://github.com/zephyrproject-rtos/zephyr/blob/v3.2-branch/samples/net/s=
ockets/http_client/sample.yaml#L3



>=20
>=20
> Thanks,
> Jon
>=20
>=20
> On Wed, Oct 26, 2022 at 01:29:45PM +0800, Naveen Saini wrote:
> > https://github.com/zephyrproject-rtos/sdk-ng/releases/tag/v0.15.1
> >
> > Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> > ---
> >  .../zephyr-sdk/{zephyr-sdk_0.14.2.bb =3D> zephyr-sdk_0.15.1.bb} | 4
> > ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)  rename
> > meta-zephyr-core/recipes-devtools/zephyr-sdk/{zephyr-sdk_0.14.2.bb =3D>
> > zephyr-sdk_0.15.1.bb} (83%)
> >
> > diff --git
> > a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
> > b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
> > similarity index 83%
> > rename from
> > meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
> > rename to
> > meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.15.1.bb
> > index c893652..f5a9466 100644
> > ---
> > a/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-sdk_0.14.2.bb
> > +++ b/meta-zephyr-core/recipes-devtools/zephyr-sdk/zephyr-
> sdk_0.15.1.b
> > +++ b
> > @@ -14,8 +14,8 @@ SDK_ARCHIVE =3D "zephyr-sdk-${PV}_linux-
> ${BUILD_ARCH}.tar.gz"
> >  SDK_NAME =3D "${BUILD_ARCH}"
> >  SRC_URI =3D "https://github.com/zephyrproject-rtos/sdk-
> ng/releases/download/v${PV}/${SDK_ARCHIVE};subdir=3D${S};name=3D${SDK_N
> AME}"
> >
> > -SRC_URI[x86_64.sha256sum] =3D
> "2ff0e4d79bffe1468247a3e1958aa9183a0252225ab721cf1c37188bd4b649a2"
> > -SRC_URI[aarch64.sha256sum] =3D
> "cbb616a50e940388ea737788d48dcea3624a85bb3ee04d9aae105496a21ae75e
> "
> > +SRC_URI[x86_64.sha256sum] =3D
> "0a7406045102197b9edc759b242499941814a1c6df29dd9fbd479ad50eb0fba9"
> > +SRC_URI[aarch64.sha256sum] =3D
> "d2c5de994376a287e8bf12e5776ab8f5105eafa14826608df085142fd01b7f84"
> >
> >  do_configure[noexec] =3D "1"
> >  do_compile[noexec] =3D "1"
> > --
> > 2.25.1
> >
> >

