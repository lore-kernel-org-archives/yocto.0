Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web11.16333.1582514621763985090
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Feb 2020 19:23:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=md0z3wgS;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: sangeeta.jain@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2020 19:23:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,478,1574150400"; 
   d="scan'208";a="260208259"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
  by fmsmga004.fm.intel.com with ESMTP; 23 Feb 2020 19:23:40 -0800
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 23 Feb 2020 19:23:39 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Sun, 23 Feb 2020 19:23:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ius9LLcqMVq/lB2bDiTigRiMaFxFhOv1z14gIzgpjKM854QTE5fS9SLFOQ6s3Ud7SVqOD5cS1fuMhQAKG6/azZWc1MnItIhJbJZKL9MFjAvN85Xx+mrd7PVjpMNBDmcj4eUlQ7uN8WTX1rSA7U4tMXNgtw9MayMEKCbYKVVeVYUy2E79M6KbtT2C17YlT1nnTKNybJAEDqLx/H0dj/5q9RaLXKRvdsWmKvrKW8ueAD2o6hX1atnHle2nE9brDDK+5GYJiBXo6wcr1FW8FqFkhqCEjM7/DGZqIJW2uUJkV+P6JBA8wfCqcBP85U1nWqWhwXODFhIo1PjpwTfWS5nd0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v91cptEGgVFtc1ih49Qpj0n7zTrw/HHtIaiRsZzkLBw=;
 b=koNeK7MS0a5g1PfLhKVf7cnsBlB2zvRP9/FTjFtt7cuNFyFJ2p5gyjoE6QEMlB6mC1U+J8yDshUrG7emiAsKDKBV4Os2O1VzDRD/RG14odFYG/jM1pc8Jq4UfizHLKeF8k3LtZC1lU3+zsuo4XMPoJz+MLEAS2naT5N5kHJiukJv0YITJpLbhZ4BfxJyF+15EfkSHgk2deaffymg/YNBMn6GQcvNdQ7V5eYlmJtxcB/q7pRXC3IlcIKWBzGW1w3pTlRJdo+93SkWSTvTjl25cOZn32OHKr2vEJ5tUFmr0QQNb6Ku3m9UMMdmRqAhs4BguCpzDcNLhZAo5kwU87iq5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v91cptEGgVFtc1ih49Qpj0n7zTrw/HHtIaiRsZzkLBw=;
 b=md0z3wgS2u+Jo2KGMl+X6KGu/y3Q3LZBAZMjc772q1t/pZffMV+uIiHyzxLZ8r+mQYSU1Rq011Sb++9a0Wzev756EU50jCF0goJYikEl6+BPWdsjKoX/AU8rleOycQt8+kay4T7fBY1btpw7LD2/5nYV8W2oNYDETATGZOKCuhs=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (2603:10b6:903:11d::9)
 by CY4PR11MB2039.namprd11.prod.outlook.com (2603:10b6:903:22::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17; Mon, 24 Feb
 2020 03:23:38 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b%9]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 03:23:38 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "pokybuild@centos7-ty-2.yocto.io" <pokybuild@centos7-ty-2.yocto.io>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.7.3.rc1)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-2.7.3.rc1)
Thread-Index: AQHV6QbfcZ+3lmO+/EO9tGXcesgEIqgpsRmw
Date: Mon, 24 Feb 2020 03:23:37 +0000
Message-ID: <CY4PR11MB187930DC7FD12DB37CF2AC5FE3EC0@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20200221223222.D7B986126DBA@centos7-ty-2.yocto.io>
In-Reply-To: <20200221223222.D7B986126DBA@centos7-ty-2.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODMwNzdhYWUtMmU5Ny00YzgzLWJlOWUtOTJhZTE0YmYzMTIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZE9UaGpOME1OeHZ1QUtYNVB4Sm5FSTVWcnJTYk5IQUdLQkVNWUZBdUpseitadWpqU0c0cCs4NkpxMFQyZzVUTiJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c63587c0-fbd8-4582-160f-08d7b8d8f058
x-ms-traffictypediagnostic: CY4PR11MB2039:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB2039BE0CCB4CCD052A12F15DE3EC0@CY4PR11MB2039.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(136003)(366004)(376002)(396003)(39860400002)(199004)(189003)(33656002)(15650500001)(52536014)(5660300002)(71200400001)(7696005)(55016002)(2906002)(316002)(110136005)(9686003)(54906003)(966005)(26005)(186003)(4326008)(478600001)(66556008)(81156014)(81166006)(66446008)(8676002)(8936002)(53546011)(6506007)(64756008)(66476007)(76116006)(66946007)(86362001);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB2039;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vkzieSSwetkXMU/4E284NQ1wUjDK3gQ+QqcHciADuY7Pv1kUuWTdFMEAEqX2T0dkLAgwMUCmty/5jZaN3snyQBXo3sFBBUwVI1biYBaPRh8+5gekhltftyZurh/4KFipIE74wCoSI3oEUxJSVGG2Glrx8xz1fSk6TcwUT/XuciZfnTRg+TuLi0UcHf1Z679Ra/woXuNeY3uuwJApOOeMa0zjX8sMvlWO1zN6kova5nmP9LmVRsrigwFpuvrFwV4Xw1fgtwDz3bpl3mPE1KTacNU+eK3iF3dYG/d8PNasJrfmoNrkdpfdK6Nu3gZfFNq9p22SCEVAwpmRSW9VVZibWIzfsykPhWKP3OvKh559NfgzPnLJ9ZGOFZb4Y9U8N4ohdEPm85VDvSE6aF9RimySkc9fyhIUv9uqiQdmOoS30GWA9qj4V3siaxacuq0ymSQC80lJmNjdTlLcqTVxg3V34rr5SRZnOrxFeY97/WbKsJuOatklG68dU8/ABjIyUk1FhnnegwHD/UBP8k1UNXpQUQ==
x-ms-exchange-antispam-messagedata: 0SB5qvJvSuZfmVe2WBWxFdUJCHhevMnSpcKaitYzi9BwF+NbrqmyapCb1qg+5CA0WV2NRjcFdKWFuh9MOaErUgKCVxLkFEVwglL9y8ajjckDkDi6Rrjq44UDQ+zEWCwxvo24mibGzUAp/4o+xucUfQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c63587c0-fbd8-4582-160f-08d7b8d8f058
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 03:23:37.4868
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WY4hLYKRqbJqHhFUf0bDd5KwNgayPUKH/p04b8D+WXnYqywHUK6/2LNVxhfdqpcExyDgL4o7hGbtzOywlIUVXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB2039
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-2.7.3.rc=
1. We are planning to execute following tests for this cycle:

OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw

Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. Coffee Lake
3. NUC 7
4. NUC 6
5. Edgerouter
6. MPC8315e-rdb
7. Beaglebone


ETA for completion is next Thursday, February 27.

Thanks,
Sangeeta

> -----Original Message-----
> From: pokybuild@centos7-ty-2.yocto.io <pokybuild@centos7-ty-2.yocto.io>
> Sent: Saturday, 22 February, 2020 6:32 AM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: QA notification for completed autobuilder build (yocto-2.7.3.rc1=
)
>=20
>=20
> A build flagged for QA (yocto-2.7.3.rc1) was completed on the autobuilder=
 and is
> available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-2.7.3.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: d411b097d810c386d35dc561f8812bb3f35c9a36
> meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
> meta-intel: fbd06132e6cb2b5fd43f7671aea0d431d0927a91
> meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
> oecore: ca019eec1304ca2a400ea744c0eaafe0a766d5d1
> poky: f475afc5df0837532dcd0f3a831ddc3aec8941f1
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
