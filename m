Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web10.36825.1589781135157447570
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 May 2020 22:52:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=HzIYT54W;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: CzDUG/TrBIstzbuCfZ005aMbC+ChiLrQEZuttvf/HYaxellrTdAJrkhmfTJ4Z7AUjstQO1sDwQ
 gmV+AA/VHmvw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2020 22:52:14 -0700
IronPort-SDR: S8zIoayU/CT9UFLiWpD7v1Bl4kz2aCF39PWWhrLAzMLPPufVPL9T4dbgPq/Vu68NnX1Db2XUvD
 cJzRwogiJq+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; 
   d="scan'208";a="342689858"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
  by orsmga001.jf.intel.com with ESMTP; 17 May 2020 22:52:14 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 17 May 2020 22:52:14 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 17 May 2020 22:52:13 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 17 May 2020 22:52:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 17 May 2020 22:52:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AsioJJ2FLtlpMOqFqQNwOcpU603RGSCVwtjne1YPoZvT+T6OaGMjxWLuw7jGCJg42nOm4NFtOT8YGPAwRYBICfcJfb81NZ34Zcb/ucKw61w3CKCOFvQek90MBuS93Kav0sbEc3vP4A2J5ER+M0V8tQDmun5Qn+YLXNopXzT5HLpOKWznVVICwfNAyXh6zNY1ERYdrPm/4PB/R9on+QqqqYi8tDJxbVamtHTabEKo4VArHiJUJjrPCJAr4hFZ5KHkimXCRgkS9fSGCbLyBUskWx5LJz3o0hrsf2Ryx0yOo6kovwEXkxc97qSa7Zq8HxOXMzsG12DDCtd6SxqmjxXAcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3+5BNSIIRGnXTKfzuf2Ux03BpC5JYGEafYdKceQeeUI=;
 b=PYTg8zBiEWGPg3AFuFwPzd9VrnBRDAoZsOCRwFXJHTU0YeM+/KUCDwPH1iVgb870WK9qdGSLVVR4Qoi3OwNGjwWstJyD9gwZ5/ZDDa+xWfEq83qeiI96FJt796K2T1jXM+MmJmaT7b2t0btsJ6EYNK3PqS+DNtFAeM4jO4Adp4iznUhqhVAspeTboq2VOKSVzrOFTqnn0CikpUyjnkxwoAjpNG/Xr+H+OSp7R7U7cAYyLr+mSLQnP3iQh7GaXotQlnvJePKyTEUiukDY+VWn33FjH+DBpvVZcoaR2HrcS40jq8iQrcdaJ+qUaLewY5vlhwFfPin01b1RbCYC/RJhCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3+5BNSIIRGnXTKfzuf2Ux03BpC5JYGEafYdKceQeeUI=;
 b=HzIYT54WqJaadhLE21s198dozTrGTpqkXltzbgHRDvr091i44rwEyP4Q0TbQLSaHmg73Va1CYDdXHc8OSgT6UpwXXwNl4AeBoTqTVa+olcnouBTX4P5KhToG+K+x1bpDayBX09l6/iUIXr7hsiODDhY0iymBECtBZOBQ5gdJ7ro=
Received: from BY5PR11MB4037.namprd11.prod.outlook.com (2603:10b6:a03:188::13)
 by BY5PR11MB4371.namprd11.prod.outlook.com (2603:10b6:a03:1bf::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Mon, 18 May
 2020 05:52:11 +0000
Received: from BY5PR11MB4037.namprd11.prod.outlook.com
 ([fe80::6d26:5862:7d75:f47d]) by BY5PR11MB4037.namprd11.prod.outlook.com
 ([fe80::6d26:5862:7d75:f47d%3]) with mapi id 15.20.3000.034; Mon, 18 May 2020
 05:52:11 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Poky Build User <pokybuild@debian-9-ty2.yocto.io>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.0.3.rc2)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.0.3.rc2)
Thread-Index: AQHWLNh4y1+wvlq3+k+4/fb2ayJT0w==
Date: Mon, 18 May 2020 05:52:11 +0000
Message-ID: <BY5PR11MB4037B384BB476234822D0EC2E3B80@BY5PR11MB4037.namprd11.prod.outlook.com>
References: <20200515072352.257635AAE47@debian9-ty-2.yocto.io>
In-Reply-To: <20200515072352.257635AAE47@debian9-ty-2.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: debian-9-ty2.yocto.io; dkim=none (message not signed)
 header.d=none;debian-9-ty2.yocto.io; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [42.189.140.181]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45ad655a-0edd-4f98-eaff-08d7faef9be9
x-ms-traffictypediagnostic: BY5PR11MB4371:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB43718F40EBE7D40D95383204E3B80@BY5PR11MB4371.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q9OmG2M4rhmcgXqs/UBfijpIZ2fCeDtyJ7jqM6sBoQdKFr5J7/Aa+6mRR0tJWCjzFOlnzB1d7RSFRyrygNCd8xdP52Zar0imJM73DpU9Y9QZVxoPUB2QaP8u1uf1c12fWhkYTd/gWwmNjpWl+ps//kgMMNcJnJ97w3YmTkykvP4l0To8oVtImEBM5rP6nDZUA/cnv2rokT9AKg0b/M05+hrx3O3FHPgsBbbNqkh0VYw5TQbrpS6jO5L/RYsQLFTXCeBGfvEgLk1SxaLtxG0NlPqhuh8EeE6F3CQbbZiIcGcH9xOn3MDXK35WEROpgrGYDZAM9Gun76fRgeKHa6KS9fYt7qLFBNEw+ear8kiIx0uaaJ7WRjWjxr0cqGGkarE9U3SHg0uGwwWSgvjOgn0OcWVbNtQfvpwXGvr2qda659dUiLvG9GQx05knphFWT8jZCEH/llalbardUgfwo93v7yGAZPQHW6xk/uk17boxckUMGN5U6r8MACnfyumjs0ut9no8oYp6wPsJIEoX3vGMXg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4037.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(136003)(39860400002)(366004)(396003)(376002)(346002)(55016002)(15650500001)(8676002)(53546011)(33656002)(6506007)(4326008)(9686003)(2906002)(7696005)(52536014)(71200400001)(8936002)(26005)(110136005)(5660300002)(66446008)(86362001)(64756008)(66476007)(66556008)(478600001)(66946007)(54906003)(76116006)(186003)(316002)(966005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: rachVdiyeuF/JD28DArDixOg2p/ABug3sSsFgkfiRGwVIGG7wz6vjzJiTRfYSR8PJ+CXlN8jgJP9hnz6HN6X5qi4EAgCYmM1youVizRy54MulaVX15On1TKErbyFH/PKoKHzGY9r0izP9PySCBAosh0mH2gwWmTPFuunMKglVdZP+7DLhzv45s6FoBu2xALW18y7EdaHDts9O0qwkbsUvfa53CRJ25k5eHaRtBdway+f+TUikkIKAks9OuSl760WWoERz0cAq9hUgbAv2Bn7OtsCazc+Gfhpx56tIwaJZH3rnW9LQIyG25+SPZeNYgauXrGoKDQ/L0qi9mYYFckI6vx8q2d7/7YbWwXmnNwtE3hQ9u0E0/YCrr/dgco76WmvQBSVwQEv2BlU6VU7gBXmzvTVBtEPRT6Xef40c/WIOI0SgRGxNWGPi2VtURPnEpDdkLLH7Uqj/eKrAJHi9zSv0n4SnewDKJ+7jyHv0zrRAKkggcdvvciS6cI4vhnafrzp
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 45ad655a-0edd-4f98-eaff-08d7faef9be9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 05:52:11.4781
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: thxhODKifWZqY3y26UxDNNar2R+RNaGQgpQkUF8QLFUsuTjo6lddKOXISrO5Pbj4QQIsk7zj7X3o5veIRGzJDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4371
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.0.3.rc=
2. We are planning to execute following tests for this cycle:

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

ETA for completion is next Thursday, May 21.

Thanks,
Sangeeta


> -----Original Message-----
> From: Poky Build User <pokybuild@debian-9-ty2.yocto.io>
> Sent: Friday, 15 May, 2020 3:24 PM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>;
> Chan, Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: QA notification for completed autobuilder build (yocto-3.0.3.rc2=
)
>=20
>=20
> A build flagged for QA (yocto-3.0.3.rc2) was completed on the autobuilder
> and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.0.3.rc2
>=20
>=20
> Build hash information:
>=20
> bitbake: 6836184ef5220488a1127413c7d2e523fc37e2e9
> meta-gplv2: 0f4eecc000f66d114ad258fa31aed66afa292166
> meta-intel: 49a0bfe118bfba37e9c02ff6d2af039c4c20b2ff
> meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
> oecore: 9bab7c1a29a58ba7f97e253e4e0ac167b77d0e65
> poky: eac84e73e8d94610173c3bb3b6c6d74b58e44f60
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20

