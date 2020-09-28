Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web10.29598.1601269322343646252
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 22:02:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=GQH/qSpq;
 spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: epo5ueDEUVVYQYY8lrvtdwDNaQEXFyTju+nc/xHODmQbZMziOJ6W09ZwIWNDOLkp7fh0LluhTk
 H4/y87ZJecow==
X-IronPort-AV: E=McAfee;i="6000,8403,9757"; a="161170789"
X-IronPort-AV: E=Sophos;i="5.77,312,1596524400"; 
   d="scan'208";a="161170789"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2020 22:02:01 -0700
IronPort-SDR: j03/rfmxwAJNveiafbfT4FuCYYNQ6neKo/rWvsEs58qkYntC5kWZdBsQpYQdp0XOvbEwm6mGd9
 QJGbjohOXp+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,312,1596524400"; 
   d="scan'208";a="488415085"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by orsmga005.jf.intel.com with ESMTP; 27 Sep 2020 22:02:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 27 Sep 2020 22:02:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 27 Sep 2020 22:02:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sun, 27 Sep 2020 22:01:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+lo8+VDirG9YW3QLGnHZhCu4KpnxXObUAHnltwON8ip8Q4axY3FsGNmK1bMk6NXGhyxfSF6OOtQaWvnbA8t/4bflh9QaqcceMEg3rvwcb+l1izeCocWE9c1+X3458wDeOoPN1LDUy9nDt2MaVlAQbgbe1+dlEldqyZQVtoVfUpKMThPBgRM5+jdxd/WUP3lOT9R9XRYNX/U66jLc7RFfQj6rCfo/lJvMWclHaNUu/C8cPJVFCa/NmsEPgUk0ZB6kiYE5AtANHgx1sx91YMbowzamNpltJvOK4tav3VbtKyuqh0Rme6dV4xQDAjR9CyL96ZmY4qd+y3UXsSQfrcelg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BP0ZZSum/sMfKvRkSYyk08lhqPANKXWXbTQnK9ru1Ms=;
 b=VkRmazrt8MAt6MYGlEb2hv8AGFuP9nqFkTXrFNOLZe9wk+ci4TMWaBzi2JJP1Xscs6JpUsecGCDzARPe6CbL/RZ1hGMMYXQwUZyfqGPaGNbYdG+k/ITUh617HnS0+HKd9nVKOvtGVVYX2XOVYuRK/FmjrIB7ZE4flDp4UoYOswSUNeYk1Pmc7GyF3Y3OFakLeEd4A1fLID4AXgjhB/obE5kBxUJhga+OycEVdeAcxplvIqmDDc6PlsPVZyPQTUGwD4bA8w3pe5uJ0DYHSFnALcwg95hHmtxTJm8ttyYdTM+nsGgl15GQ5pab2Izdyq1jXKToRk8OrPmRd452pR9/rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BP0ZZSum/sMfKvRkSYyk08lhqPANKXWXbTQnK9ru1Ms=;
 b=GQH/qSpqoMtmBdT1c5y/nbHDdj21vevFZ/7MouW9kdBkLtIyba4JFf6mMSpqofp3SIBzvh9Cqx0NeQ1BF33Pg1XDu24ahyCedw2TxZcTuKLWDFetzFGWz+dRgLwrUUJDDkz5+2xWWzFPu6soe6XBb+1Gpzs1OsauTWvwwQtYBz8=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BYAPR11MB2806.namprd11.prod.outlook.com (2603:10b6:a02:c7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.23; Mon, 28 Sep
 2020 05:01:38 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::406e:4a1b:25b8:da3f]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::406e:4a1b:25b8:da3f%7]) with mapi id 15.20.3412.029; Mon, 28 Sep 2020
 05:01:38 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>, "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.2_M3.rc2)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.2_M3.rc2)
Thread-Index: AQHWkiIAbRWWDKEoxUSfO6Qk6vClN6l9g7tQ
Date: Mon, 28 Sep 2020 05:01:38 +0000
Message-ID: <BYAPR11MB362453E6CB52CB1BE943C41AE3350@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20200924032241.1A6EF3A07BF@ubuntu2004-ty-2.yocto.io>
In-Reply-To: <20200924032241.1A6EF3A07BF@ubuntu2004-ty-2.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [115.133.103.117]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 182a351c-5af5-41bc-a0d3-08d8636b94e4
x-ms-traffictypediagnostic: BYAPR11MB2806:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB28065A64EC42254531CBF926E3350@BYAPR11MB2806.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fal6kifcL9PkiYOefxrOms+CA15LVj343F3sSVs3v6yQKWoVDcgemS6myXNRTdCT/TlN5zXptKHUAnOzr51BboLRvRuLFe7EDuzS8G75kszgf2edI1NngwZEeunljPkiakjg144L7SxBspJGgBkkjyqUHvbCH2Dtoed2EaCkqXg8eajjCL7AKe70KZedJF/Uv5wqPtwMF1lM3A0cb/0+Dk9DkbYioMbygbbMMNl17SeSnxfkvh5txjbYiFhClO06cup3lNnHC83oYVmBUdrhV3EiYLBAFnZTrUMzsv1B3TSmn1JdciLHJxSuKCQ2HVJREiw700L/Ke7986J3fjKuTD1XOsn8FIR+oGaeikrSYJhrz+bBEBRPjD534qRSGrKM+64U0bNuWic+RcxKna59mXMFxJjbd6mokBVIqNOpbHRK8IRlixhXUMEv4Bb2mGrnE5XAN6efXbtfZKdaf2C8AA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(376002)(39860400002)(346002)(396003)(6506007)(53546011)(66476007)(64756008)(8936002)(71200400001)(66446008)(66556008)(86362001)(5660300002)(33656002)(478600001)(7696005)(316002)(186003)(966005)(8676002)(26005)(6916009)(83380400001)(54906003)(66946007)(76116006)(15650500001)(2906002)(9686003)(55016002)(52536014)(107886003)(4326008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: OYUXa1CCJtsyKKGbm9Iw8CCkOK9nYb2O6o1Dxv4AV340p4oe9yEWIJZb9K4AkXiBoDiPzJ7mhI41vSnhnDDMFerkzHVUrJrqI+V/4xP33KBzy4TGysDDPqYxJ7/t/v/b5yIGYGF9ObLNjC0kTa1GJZNqzSNDfOR66AN7e/0BS+YxL/uHrUbf0EmIavJCsaoJwujxaoZN/zTasQ6Gskn3YHVbcOkGgm9MMTp4ciMNXHQfJZxDEJ58s+YjmBIM+/DQXXQdJOyjaYPEBlga41Z7FSS27f/iyDaZch/o6OFdfGGxXvsKo9XjlBHFgWKRdjTG0C1q0KI9/4kvfW/dUgfiEVzjWBOIrtQhYNUhqWpnGioQUOdtxHloJ/CWTJLszzcwKrLMa/JNqZajCDfz+sqvApHwYyONsS0PwkC7xAg5aejDdCP0pco8g7sdbYY/EFtEq1xg5lY+6DEwGbcrI9gFERSXaXK5SuIN47pqouO5hXiARMIxa+jZAvPuGrR3xYOwK8ZleFv796GEEJyL9Q5ju0wsA28jOERYekOWLVZ6GKloQFc+ZyI6f56EALP/riERyMO8fP5Mt/320595wuF5r/qxCZ2afJ5HAmIOIYJylHeHetjh0IdlQOKRi2JWTCyAGTe8jKPYmLcspl0gcCCQ3Q==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 182a351c-5af5-41bc-a0d3-08d8636b94e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2020 05:01:38.2177
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GtacTYTatpFDb6Ao9zLCqAbMIL97SM+qrUpWEIFr2ToCi++Yp1bmqfWxuvIkDJDV8BVNvrhtYzRv6asDIQRoPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2806
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the full report for yocto-3.2_M3.rc2: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No new defects are found.
No high milestone defects.
 =20
Bugs verified:

1. BUG id:14052 - The beaglebone can not bootup
   Verified Fixed.
2. BUG id:14055 - failure in oe-core manual test: test_dependency_explorer_=
is_launched
   Verified Fixed (with patch applied).

Existing bugs observed in this release:

1. valgrind ptest failed (BUG id:14051)
   Updated with additional failures observed.
2. parted ptest failed (BUG id:14050)
3. pango ptest failed (BUG id:14049)

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14052
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14055
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14051
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14050
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14049

Thanks,
Sangeeta

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf
> Of Pokybuild User
> Sent: Thursday, 24 September, 2020 11:23 AM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: [yocto] QA notification for completed autobuilder build (yocto-
> 3.2_M3.rc2)
>=20
>=20
> A build flagged for QA (yocto-3.2_M3.rc2) was completed on the autobuilde=
r
> and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.2_M3.rc2
>=20
>=20
> Build hash information:
>=20
> bitbake: 27b53186fa67d281d29b2f8e15bcff8dc2557b8a
> meta-arm: c7a1a5f9fd415e3ae1078c2a1d6af9c25e9e6498
> meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
> meta-intel: 254e3a79b3a37045f829848e0a5e04801bec1439
> meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
> meta-mingw: f1e1d5a803a48ed70f2b0eaf0ef15ade70479fce
> oecore: e68df923e1bf9e82662ee2619ac9e2f239e8f7be
> poky: 0a243cd21263f498b6eca7c0b168e655dd823e22
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
