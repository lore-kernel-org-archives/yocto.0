Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web09.11216.1603788356181157700
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 01:45:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Xe3jWfzb;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: mFYGPSWBKm3qz0MXT6awF5XTIFx71yFi0jU78dT08cJosxUStkH0yBYHFFUDfqnj8FanwmW8+u
 tgk3pnNyLqUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="155014788"
X-IronPort-AV: E=Sophos;i="5.77,423,1596524400"; 
   d="scan'208";a="155014788"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2020 01:45:54 -0700
IronPort-SDR: IzKBrXigtlTHTWoN+8CWVILCHkteEqH1QlPq2Ee5xYvPdHCloCK6dlluzlVbSHotYDgsz5HMz7
 6zj1t/woc1Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,423,1596524400"; 
   d="scan'208";a="350446505"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga004.fm.intel.com with ESMTP; 27 Oct 2020 01:45:54 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Oct 2020 01:45:54 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Oct 2020 01:45:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 27 Oct 2020 01:45:53 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.55) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 27 Oct 2020 01:45:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ja+e0GSZ5bNTKzDB8tJFCxD9lM8uwB7iFvi3AxRcK3qCn+ntXyNHUOp3L8uk2RXzjP+b+qOuKsG8cBqgsFGtRSnpDCZXqOcR64gUQGwx+6T5+pAdCeBkvlR0PXJNKkV7dZvVNfn6rx5gRoFUfuihh+dN6ChOwTYmZd/iBrijpv+SViABFiIAOFbqiracJTa+hOLBOR8EzBP3TAsTVzrYVsA4l4/wJm7valxDPUzcaOBabSCYlrgH96h5PuhX5Zoch8aHY8rzFZk95gZ+J+77N65mUv1DRvuXr0l2FFSE5Js7ohiguFJ5wZ14S4BSc+DVr++6qFehALFDLM9vvE4/HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s88BXL+iNlUHyjGELatfIGL8s83uv/V9PpJMXryYelU=;
 b=gzu+uHre/MII7kv7X8CTq1pfylORtUyrC9BlWGRxHKKCOgSETdt0s/ayE1HENLyTCi7RK2x5C2F5HpclemMXey9e7ePanhxJBjme+UoXSPfrXUzHsyNrQ5dSkuiwoM7oBFJOZoBgUc4ufgzx9kB0nZJMRpl7WoS0abgMQJTHloDU3bCI5unK2w3Mj96ffhmeUtzfjS/uFgViRKRVW6Hzh93DPLDwg5zZLPj7YrP4slE/FD8Uoc29ASPe7KJ8jWeC29Lh1fgTq/HXowP6LqlBWGzvsNsygDFaIIlVpTLs6YXWgg7ieX9Xp9V9rVj2hpy4qwFqmgsU4tSD4FHb9LZZnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s88BXL+iNlUHyjGELatfIGL8s83uv/V9PpJMXryYelU=;
 b=Xe3jWfzb42A44X4JKqImGOylEJ4XhBdn8u3fslbflAewSaxQQ0PFcJlGNMwPNkJs8R+W0rS51lxytOTJ+U+XOMz+Td79ChS+5su1AI7FmzjxbKkGcXA87MOKUZgJShKyfgw9TsLqr86ZTMK+Jm1YIEN0SYWde5ZwAZdxOlBzFtE=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by SJ0PR11MB4862.namprd11.prod.outlook.com (2603:10b6:a03:2de::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.25; Tue, 27 Oct
 2020 08:45:52 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::54ff:e9af:311:a985]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::54ff:e9af:311:a985%7]) with mapi id 15.20.3499.019; Tue, 27 Oct 2020
 08:45:52 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Pokybuild User <pokybuild@fedora30-ty-1.yocto.io>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.2.rc2)
Thread-Topic: QA notification for completed autobuilder build (yocto-3.2.rc2)
Thread-Index: AQHWrDlZmCCjfL8iqUiY+Jvfv3Uf/KmrIonA
Date: Tue, 27 Oct 2020 08:45:52 +0000
Message-ID: <BYAPR11MB3624E953564A55717D6D1FDAE3160@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20201027081519.5550F80A5F80@fedora30-ty-1.yocto.io>
In-Reply-To: <20201027081519.5550F80A5F80@fedora30-ty-1.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: fedora30-ty-1.yocto.io; dkim=none (message not signed)
 header.d=none;fedora30-ty-1.yocto.io; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [115.133.103.117]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b9bdb0e-0727-4883-9dd6-08d87a54b606
x-ms-traffictypediagnostic: SJ0PR11MB4862:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB48621BF585A991DE4C3051F0E3160@SJ0PR11MB4862.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: chNLfARPg6xjhxK5eHQ2OLFgGx3P4+GfXiDZqZrHGHCOdbwv2KUwfZOD1fzR6fa1HBi5hMEefGTbz4H/Wr3fB0AKtSVFFDcmuCkTqIx1pqBsxIhxhzm4GciZENj8dd0l0uSBR8+KmZicy4KZqdqXF+37jagc5/sKCUdNGsSjc2oWvz1S0sPKcH9C0ZWxGULjdxH7sxh3BQ0ThYVnx7Qa6uZssQLoxjU2mv5c49oDMiwtOPVU5ZCdO6HGhn3rOyq8mNuCOW5UwbRKwndoVXK818QLeUm/bg9d7QVtfeoF408cOMkAeMEKb8w1XKMpBk7E9CPpVZUdHXp9PAbIIMGjFQoJShoYfQ9EgHotM/cE9bTZK+WR5C24gOWPW9EiMxq7QHDoZmcGF7Fg/TnxDlIVJw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(366004)(39860400002)(346002)(396003)(6506007)(966005)(5660300002)(66476007)(15650500001)(26005)(110136005)(71200400001)(64756008)(83380400001)(186003)(66946007)(66446008)(86362001)(33656002)(9686003)(76116006)(66556008)(55016002)(52536014)(8936002)(7696005)(478600001)(54906003)(53546011)(316002)(8676002)(4326008)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: pILV07jUo7WdFyaqJJN6MsIrjHbgckDDUFRub4AKOeMkMltAxbvDH70lQ4R4taNnm/KCg//FSytUP9Xv1xoFgROkhaWD27j4UwHD/r/2u/kUNxfS4S4ov2b5RzYIdCmvxbND+3dPsEC9H6OsyMeGUsGKRlpEIvIADqS8zJKl9TuOTVftMhfVSc4qFWNwCQbV7NEIytGxn+Oj4u5hq80mGONr7pqcWI4wEngfP7WsUI5bFgJkYVmrKzIliQNYHIJedAPJ7aDh1GeS1jvYQQYfKr8V/+dwnBAjrg+V5ZysLplcF085X9yiiM+AHu4r3Y3ujC2FAI3Q5WgES5EUKHTSti9WFzYqLJi5hHe8E1RApf6Q9jcyOh/UasQk3SeQGJ0K1j0Q/0Xb2hCRh7Pq/udQvtWv16jVBVrVgLHq3aWLtPCtFCm3bn+70zfrHsVtT7sPkvKYaYgv0t/0UCHoK1LHmS1PMgiZrO0k2/wvY4cf2eKG9EWBZ1KJj8SNBy+YuTCHlTOoy8nkOnIXkhX/rb3DkKv1QdDDw6TUkMxQO+mcXeej0/e3qgllqV1Q3BF0pl2DedeNk7DN8CfXY7SdfSFbxsG8SyBVKeeQkjoDe/2kJCLYloRtvJTC8c7BpkJXUzjUBQZUL4ulPNrvAUD8cv42Og==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b9bdb0e-0727-4883-9dd6-08d87a54b606
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2020 08:45:52.1814
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XMI4oJR0oyjibUtJ7LQAqNpLXNY1zjNOfRQyNzsF9a4GzpXUk/sybmQzQwYmLr6L4gE26od4xiN9CrvBaZtT3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4862
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.2.rc2 =
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

ETA for completion is next Monday, November 02.

Thanks,
Sangeeta

> -----Original Message-----
> From: Pokybuild User <pokybuild@fedora30-ty-1.yocto.io>
> Sent: Tuesday, 27 October, 2020 4:15 PM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>;
> Chan, Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: QA notification for completed autobuilder build (yocto-3.2.rc2)
>=20
>=20
> A build flagged for QA (yocto-3.2.rc2) was completed on the autobuilder a=
nd
> is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.2.rc2
>=20
>=20
> Build hash information:
>=20
> bitbake: fec2b85689bba1d26ad6f376bc11cc29bb27cbe5
> meta-arm: 2d3ded053ae0774b9c7254bdc084451438b2150a
> meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
> meta-intel: 4ee7bc0ab408db7388374e86920ffa378b7b4535
> meta-kernel: dbf8bdfa6683404e5071feb47ef6aa347cab1b01
> meta-mingw: d2809d7c93bdb46014e1f8b3b0a4f42030078905
> oecore: d3114ca369792201a5316c1ede29eb72f0868d35
> poky: 5d75168a13d00253460020e536b2a87833ec67d2
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
