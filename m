Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web10.12829.1584626272994736624
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 06:57:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=GCRjh3pd;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: i2sEx04dtmUO6ZlnGraS0NaaJYaz0c4BAal05BGEjVFch7rGROZCF/y7KdKU5E23ni1Krwt8uu
 owID2M7P2qSw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 06:57:52 -0700
IronPort-SDR: ezyw8IiOoFYfMd7ai3PpIHIlTnmTbXwrU+M4pcqYj6RSC5EuQwJ5W0bU1XFYbQ/pCVAVl6AUMQ
 pu5AaYVPe/kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; 
   d="scan'208";a="268738288"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
  by fmsmga004.fm.intel.com with ESMTP; 19 Mar 2020 06:57:50 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Mar 2020 06:57:50 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Mar 2020 06:57:50 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 19 Mar 2020 06:57:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 19 Mar 2020 06:57:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XpHcqwKydskZ3M7LBy4Doo+GoxLxzIkdzYblhxVbAs+F9SixBBkQleJji3hMn84FvGoJG6vAIYfxvj8D9tbsjAsNBY+WgUq+jupppy8aQsX0fsdQGzkHTTBhXgaODM10PU0SLtmjZiXpy+blP7BmTzUWReZ2rGhmQhZFTrPrhu9U9MeGRw5VJa4LP4ReS1lmU0Nkgx36R3gOes/VO5ze9yv6+QpS2J5Lc9R0sBprdJdRu1k4Em7xmUNgqO6S51hgrSFcoTm6TZaxIanbaNaQK7mO828faY58yqcUiQidOL3fCi0L1vzYWuEUsp7K/EUHP4B6rH4mdf21dOY1gI0c1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RzXUs5bOMndKYKOTxahzyLpbm6vSFx+kCKGLML5ZjGs=;
 b=Dp3VY33yMEkD3LxBWRgUkBAxE5NbYZ0ZFEzLkmhNKMNZ3iZvB2+0/uKFrXzXaaZwA1Oel+vG5AWelzwJrzQcrfAJq2XD+tckwxqW8ArPwKGxkbyjg8RGj00xRaAJ7iV5BTQ8YkIPy5/xMdSdBeDfKe/n1utfl+4AFkSlx3oZ1TJisnoIqXsQUjFmQYlo8YPhiEMv/pOWn/sJmDx5NzWg1dW59Nqw4ni/l9I/A9aiTG0kCeAWw8nzymREd3rD0NLbXrLEZi6s1TLej/a0zn9yK608oEy61CWKi4ddgksiab7H9zphv4hsTaMyhEZylpcaP3HgoF03ZbypwR9Zvf2TjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RzXUs5bOMndKYKOTxahzyLpbm6vSFx+kCKGLML5ZjGs=;
 b=GCRjh3pdkWA0ntDGPX35y/iAAl7F+FuufV5dCtfJ39Y4rUVXZLly++FDUvWzxr9cfVLoGfl89+QerDecO/YRJjK2gWu5CcFo/JSJ3WE/HVWEU981qScW3+V3XSrlNsuVLkpwwHsr3j2/ir0dz3H9+ktP5sC24Q81pAH42ZMN+9U=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (2603:10b6:903:11d::9)
 by CY4PR11MB1510.namprd11.prod.outlook.com (2603:10b6:910:c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Thu, 19 Mar
 2020 13:57:48 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::24b1:9a36:440b:18bb]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::24b1:9a36:440b:18bb%9]) with mapi id 15.20.2835.017; Thu, 19 Mar 2020
 13:57:48 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "pokybuild@ubuntu1804-ty-2.yocto.io" <pokybuild@ubuntu1804-ty-2.yocto.io>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1_M3.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.1_M3.rc1)
Thread-Index: AQHV+3btrZncKwmncECtaZHainEurahP9YMA
Date: Thu, 19 Mar 2020 13:57:48 +0000
Message-ID: <CY4PR11MB1879A561546B4A1182FDBBA0E3F40@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20200316093949.2D615E01861@yocto-www.yoctoproject.org>
In-Reply-To: <20200316093949.2D615E01861@yocto-www.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ebb57ddd-ebc6-4755-aa36-08d7cc0d8223
x-ms-traffictypediagnostic: CY4PR11MB1510:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1510BA84BFFC908A32F204EEE3F40@CY4PR11MB1510.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0347410860
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(136003)(366004)(346002)(39860400002)(396003)(199004)(6506007)(110136005)(53546011)(5660300002)(316002)(15650500001)(55016002)(8936002)(66446008)(64756008)(66556008)(66476007)(66946007)(478600001)(966005)(54906003)(52536014)(4326008)(71200400001)(33656002)(81166006)(81156014)(76116006)(7696005)(9686003)(2906002)(86362001)(8676002)(186003)(26005);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB1510;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Usc7fbhIer5lPP8y+rdRYzjQVdlYGJnLuh9ifqs+QdJz4FeJfJ6Zl1dqxyjBx8g4OPih7Oayv5i9rMtzDMYUbC1W7KIZFRTdjhBiOp3Bpt45yxz8U2FVsqGElglw5qN/msYD1R7gJDH9IdHGg+G7bNsFd5mDFXmaaZxa6/mhM8AK6+7Jclq/qsHOFw4RD0SfX4kzJuVWijp1pnwbpC8UHv95dNkNZZq6Ej8+o3UhADKXGdoWdzVLeRCR4nBY2EfPqYMcPsTRpaE4jrd/0A/n3WAP814+H72zWzblNgG+Co6xUo5h7PvvpC52WnlIo+CvC778HkCvaZKoAEt6g4N8fvUOst8o0YYY566ctQh2k/iETI6PcDf/TsrwUDobhM+QRyCRsXRi95rOJgOWuC/ydT/OihH0qCC9j3BnHdqoKL4heQ18dVoUEmvDcbTmRr7NDM3D/coYf+di1ve0Xk7gEypCnAObZqjZn6lX14bQUdMxqZ0dQrSGBTyGCqLuJ5GItON9JnQY7+2MNZliDYCDEA==
x-ms-exchange-antispam-messagedata: WDCYn+h801pVvSSroYH2S4CZNJj1UuNE016Y5Z/lbXi1iHQhZr68LY/jS1QoZFrqC+my9AgXiZMDItsfRXZkUIGt1QWYgj7etdQ7/KcScn1+Obs6yTmNk68Ow0mt6O8CUuGJgA1hqiCLnnwUsmrBbw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ebb57ddd-ebc6-4755-aa36-08d7cc0d8223
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2020 13:57:48.2282
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Uoc0blJp6WjSaw29S0GNx36vsYHc6D3NyNtlNS/xCtQGdinsGbLmRO+pYoydJSkP/PQIWQ1DrfsKRdiOunq59w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1510
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the full report for yocto-3.1_M3.rc1: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
No new defects are found in this cycle.
Valgrind ptest failed (BUG id:13838).=20

Note: Few failures are observed. These are setup issue since running tests =
remotely, not real yocto issue.
=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13838

Thanks,
Sangeeta

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf
> Of pokybuild@ubuntu1804-ty-2.yocto.io
> Sent: Monday, 16 March, 2020 5:40 PM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: [yocto] QA notification for completed autobuilder build (yocto-
> 3.1_M3.rc1)
>=20
>=20
> A build flagged for QA (yocto-3.1_M3.rc1) was completed on the autobuilde=
r
> and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1_M3.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: e67dfa4a4d0d63e4752655f25367582e5a95f1da
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: 60773e8496370d821309e00f2c312128a130c22b
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> oecore: 61d80b07bcfa4adf5f1feb2904fec0a8d09c89f6
> poky: 6f02caa39985fb89d9ad49e1f788a9a8dd6e12d7
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
