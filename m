Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web11.1259.1592446637034000969
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jun 2020 19:17:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=m6HzRQ1H;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: hNfuMFUVW7M1LLpceH3XiGyBi5LlAKR5kD8Xe2Cv3WFphG2CvlByqt7vZ2d6b3i1grZSoRNcJw
 vl5LuxqYgHWw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2020 19:17:15 -0700
IronPort-SDR: v4EOb5luiuuU3CILPWK+FZ0iHQKCxP874KCNR4aydX/ImgLEkMRqQIOzKe8AiZp2Iq/KrVXI3V
 Vp74ZAbwFovQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; 
   d="scan'208";a="261889513"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
  by fmsmga007.fm.intel.com with ESMTP; 17 Jun 2020 19:17:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 17 Jun 2020 19:17:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 17 Jun 2020 19:17:14 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 17 Jun 2020 19:17:14 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.55) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 17 Jun 2020 19:17:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=btsPIHLEOJK544cjuuBeuJTKsz5KUkXrn5KgyqQ6Vwyf0qbWlMg5KJvNZg7ADbVFK8YeCUyEPT9xxBsAQQ9Uqp3pNg+5SmGySW1r8Ks0tGJGmCPBYrYO4cg7rVS5fWqsvUDpm4/nPjMdv/60zx4ivbDmmyoM6d/YYKeXLrq5qFKnSQzuACpAfAiBMvGCfENZxQPv6vlWgGtw3740NX+hMpL0h0a9li6GpK4jmWDgRTfttGaE2TCuZJV7BEW+EUAvbGnLh2SAB+qzDHB+HCS/Hn/7TggT74cnSFsm/z6vYdtoXGtHwgA2sVyBhPQKgvJvnQSyeNqyZRAr1IrFXpI18A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=osQqT8Z9r4NL1cTp7PpOM73IHrwcGbUW7y+F06u8Xuo=;
 b=m1RQ31MpszQKjQYfsQK3s3eT7mAWrGSxyHzjhBkRqAi2hKHvfiu2asE3gXqDA4nM7KpZJNO0MrXukVoTxKkgavU5mx+MfHS3rhjVZj+m9+UTXcTpTFGh+r632xfE6IVyMUPBeMXclxkQbAffGRfQJAmaSSCPneW9Zln+1FR2dx7xJk2NrzovLrQJJ92zQoK7IH3jSxh+E5ttJ7MSXtt+8/YKtrbYIdGiNpyEk/RdRO8tclJp0fwq4qePIRGCZ7zX6xyYVI8vM2mSeMNcpnDoGOIKDH5gcx2ffL9E+wMZdAw6nE50B0pYiPv/4iK0mJUZT7xr3FlggifXT4kcdbbgBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=osQqT8Z9r4NL1cTp7PpOM73IHrwcGbUW7y+F06u8Xuo=;
 b=m6HzRQ1HrkNLp7kxkgnKFEW+NlCkkL9J8abiILUvxXEIj7lxY9d3+cV6TddqTH8PY0Neopv7fvDWZD1XZFa2OhWE030SE6bSJ7+Sm+t7tRc89ZPQkNj7Yj800rZdttY35Dzg2TjJXJRpSBezTNSbylAifv6F1uHYqsJz9D7ari8=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BYAPR11MB3719.namprd11.prod.outlook.com (2603:10b6:a03:fa::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 02:17:11 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::341a:eb30:746f:e614]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::341a:eb30:746f:e614%7]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 02:17:11 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.2_M1.rc1)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.2_M1.rc1)
Thread-Index: AQHWRQIAe+MWH6/DV0qqE4uEKIJbTKjdoqPQ
Date: Thu, 18 Jun 2020 02:17:10 +0000
Message-ID: <BYAPR11MB3624D9BB27F0BEFC9460D8EEE39B0@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20200617234936.2991D1438EE@ubuntu2004-ty-1.yocto.io>
In-Reply-To: <20200617234936.2991D1438EE@ubuntu2004-ty-1.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [175.139.89.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92ed0c1f-6684-4a55-aa79-08d8132db577
x-ms-traffictypediagnostic: BYAPR11MB3719:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB37197A0E5573F0C87BA52509E39B0@BYAPR11MB3719.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EyzeQo2VTWrPBZZww1KMHzpHVl9kZoEdD/9UVX16ecWeNBpm1qw7Bj8YQDzTJTFUVJNBsTvpEFVmEjpNpONB+YCx3CF+NBbyi/xlTRwOFBOxfhXluLYX5QPjv5qazW/M/KdfTTjJkApCG26A2VRkWuZbijXtw6StHtH8oTOysb/U8aP76y5bAnfagpP0WDN9ISASPu5MhXdUfXbeYazFPdpfghBnAMmu6bp0CHTbFGqcrW6f+UPRM/nsICyD6aMGPJGdj6oDLgaDjE1qz5Y41CChNiz/M2DfbBkrgyC1lRQ2lsRiF4mOzPub9hz/Px7Jpp/qOn1si/BN+mUdfCgAb8x7Ipk4oR5wMs0V1t3i/W/SA0WBHO34xA7epDBZWp4sASNKkPX0Q4P4lbbIS2UqeA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(316002)(66946007)(186003)(54906003)(66556008)(64756008)(8936002)(76116006)(55236004)(66476007)(66446008)(26005)(2906002)(8676002)(6916009)(33656002)(6506007)(52536014)(83380400001)(7696005)(9686003)(55016002)(71200400001)(86362001)(15650500001)(478600001)(53546011)(4326008)(5660300002)(966005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: d80Z5vCNJcJ1tubRqlBwb951ajhX4VJJgCJzBmWVphvbsH2O00/9pJG0fGzc6Tdz4VUP4jI542VuUdsI7OoA8y/0LaKsgYiJ6SBHlZnl/G+JaQdGlMByba63VtvWAOQfiiVRRvBwG5kxd/lIWoQBQBURk5DPoOIWfnxyJ0NhyOzgOpudBi5k8EnbDwejfJiTLolKT2BLaiFvIY/oaBqOa+Ny2k0k4uFnVgq5UJ3UYBChQQ6CMQNUKjtaZ69DNOofIQWnwRrCt8TS0lQB3LPYgFWp3HSqAnToShiIcXQfEgK5J3r1wF/uxPAeLxVshZRn4kxlWS7K6tLoIUBLMNM0wwSnon3wmz70CmLZHVWJNamTGZLXu/r7zkKuH6cu7Qfn8p2/+2F2A8aoPNN14qGP4BYmPj4qTZc0glkxFTmaNnNSDbz9qIT61TmMItMGi+lQlycVaX4xe/kqvdo+8Qsogu8N30nz/MKEOmC+3KiLe+th9ikzD3u+1iZ3wQpIcoYZ
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 92ed0c1f-6684-4a55-aa79-08d8132db577
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 02:17:10.9990
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c+LDq+PnZPQ6/PgZR/GyYiIqNL/C+Kf6vlWzXG1c6i5hts9kEkw+McK+PzeBFGm13UgumzGVCqhilAZSCdX1lA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3719
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Intel and WR YP QA is now running QA execution for YP build yocto-3.2_M1.rc=
1.
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

ETA for completion is Monday, June 22.

Thanks,
Sangeeta

> -----Original Message-----
> From: Pokybuild User <pokybuild@ubuntu2004-ty-1.yocto.io>
> Sent: Thursday, 18 June, 2020 7:50 AM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>;
> Chan, Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: QA notification for completed autobuilder build (yocto-3.2_M1.rc=
1)
>=20
>=20
> A build flagged for QA (yocto-3.2_M1.rc1) was completed on the autobuilde=
r
> and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.2_M1.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: 7689fa781646039524a655295a884e525ad8732c
> meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
> meta-intel: 635e8a6892163cc3334a9b947abaca70697d458f
> meta-mingw: 88f9689f7dd0f634f1ac9a370bdf00585d884206
> oecore: 878a8561e10017bb91ea42bbbe6d4acfc0985482
> poky: 29bfa17d6cab31dbf8f1d12e473ef83dd9e92519
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
