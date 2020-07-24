Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web12.2170.1595580057800749822
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 01:40:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=BxtRk65s;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: rAoSStnQFyDWYQALUoNyU7ZGss5GY6LraAbb+rC9yW3WgoxTjwUBlx+ay4zdyZce0hU34Q8mq9
 39mQqeGg9DUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="148169880"
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; 
   d="scan'208";a="148169880"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jul 2020 01:40:55 -0700
IronPort-SDR: 2evmTi9VHuaAc78fIEHcNWVCzR3dUIufo/W5tEx1IsfR6Csp+3wmcXvFERhV16QUK8lI2JfVB/
 TRaX9J2YSsGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; 
   d="scan'208";a="302605780"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
  by orsmga002.jf.intel.com with ESMTP; 24 Jul 2020 01:40:55 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jul 2020 01:40:54 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 24 Jul 2020 01:40:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 24 Jul 2020 01:40:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kx/SkltIbgf7ChxKXi7ePHoTzjFGF4eVcqB4YXZn7uMVlC1rUxtvrFMrXrWUnODj+Qple0ltrAaGEITy/cuf981jIvqnE9IAjVnqxYF8YobnH3nluz2b2MKCF9l3j/x15kXmFO2Pxk5gpUGL0y93QcM+lCqPwHg9MwjgAf7TOCt8Ya6JlynpuVC0P72CS8nCM7NekSLKZaELxN6YjpJNs8qs9RPAPHHP2PPSwGQ2cR9ySDFU0twC6LGdzlCbjo/VrRQqAd+uYI1+3OqdrB5SOgGN0+ji4tkmc9EzikdZFbSz7gAHNuqiQyj0gqzxIFfe5c37p7WSsR4kGGed36X8Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6jWC588tlr2X7epmmb0SwXW5Y570Gwod4y0G3gKYc4c=;
 b=nhpWNkg/3Ktb8twOY9ruH9p4IhoYDKEu0RTHgcTpGS5cpI+c+9Iaya8PdtWFi58f8sSfSK1/nSqohCdmn/5/u5ZP31CnXgPCsqhC6sw3SdEyxY0YjAZ3jMXYpYLYMss+KjNUDPHygCTG1VKi6cLLJ5mo6K0CaXMQzVXXh7tYSsNynrXqWAfHkqhVBXuE8XglSv5bFb2T6uo0oKklLXNKLUIJMupmaETMVJaJsrntuwNE3rgT6g5uTL2vw3//cSSm66nYYGUV2BbedNwE/DN9JgP4MPrk+ViDlLHZe6SBiwBleejUrYtIKS6ckXEZnMKnuRQy8E4Arbw832F/2gyRAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6jWC588tlr2X7epmmb0SwXW5Y570Gwod4y0G3gKYc4c=;
 b=BxtRk65sXOuLLA9etX+pUnd5ABhkt+l8Y4TSlmMF9JqWxQ2fq7hrkS8Ie0kw/9+1VdlECEGUVluNCNJN0S5WLcKSJhLv8ntHUie7+EqASx64L+NxRF6NdFaIZNyIrRRDCGWdsN6upL5F+E5dBQAdmQq3sFl/o3fXNliRuGRhYGY=
Received: from BN8PR11MB3620.namprd11.prod.outlook.com (2603:10b6:408:91::21)
 by BN6PR11MB4017.namprd11.prod.outlook.com (2603:10b6:405:79::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 08:40:48 +0000
Received: from BN8PR11MB3620.namprd11.prod.outlook.com
 ([fe80::608d:436:b52d:f189]) by BN8PR11MB3620.namprd11.prod.outlook.com
 ([fe80::608d:436:b52d:f189%7]) with mapi id 15.20.3216.025; Fri, 24 Jul 2020
 08:40:48 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>, "steve@sakoman.com" <steve@sakoman.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1.2.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.1.2.rc1)
Thread-Index: AQHWYZA1MMfE3iel5kWpkbIYRDRksKkWaAxA
Date: Fri, 24 Jul 2020 08:40:48 +0000
Message-ID: <BN8PR11MB362057BFEE86970970E86075E3770@BN8PR11MB3620.namprd11.prod.outlook.com>
References: <20200724075804.747FD280D94@debian10-ty-1.yocto.io>
In-Reply-To: <20200724075804.747FD280D94@debian10-ty-1.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [60.48.233.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a409c2e3-ac7c-430d-ea82-08d82fad43d3
x-ms-traffictypediagnostic: BN6PR11MB4017:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB40173E62398128669BC091F7E3770@BN6PR11MB4017.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OGAmmQ+S30BQAlb5CL3oxEjbCH1Mg0uGm/OZsGg2QkJV/kopy8Vd9zlKstrCFJveFip0tBwdxvMotZ74MHECkscvkVzS69J4HTAZjDLTAYObg+zSQn/2UeC2I4FY/i2x9veXYsoMDWvEztlyFfcZZGnPdhZKJxpLfy7sb2bE8qQ+wDrHyZROXGCwfTQ6VQ7X2r8Ic/kLjKecVZW3wROfMp4qZIcnSGSix0x3uCspPUUFvtESR66MOqWTTd3+zyMSEXRBafta70nrqPhvpf/2cbsM0N+DkvzqcumsXJs3bEXfTsNf6H3R41dmXiKWXWFRL+XkSIVpabmugbH374Lg8YT2IRCv1wHZ0M/lzgYw1Vi/vsNvm1N7EmGBj+ho5Il8nGQqIn5Z+YopP2IARBS3mw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR11MB3620.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(136003)(396003)(366004)(346002)(39860400002)(376002)(54906003)(316002)(55016002)(5660300002)(8936002)(66946007)(7696005)(8676002)(9686003)(66446008)(64756008)(66556008)(66476007)(76116006)(6916009)(4326008)(33656002)(71200400001)(186003)(478600001)(2906002)(86362001)(53546011)(6506007)(26005)(966005)(52536014)(83380400001)(15650500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: UorAqVoAAavaNCA0CnBeZI2fAbKGt63L5p6XWVNRSFZFqPVeIYpN1aYPsuhdm4+XD+UtdBMfXDtuyNNrx72JbBLOgmyj67p3DH7xqZLetRXG+90yXvv9JatJA8KsKb/TphRQ2PpRQVHaJLhNCnZN8GGjmaWO0GO74ohjtMEEwfzpsdjGz/Nm/1DKYrvi/lTmz+ogydlBkhC74InQ3zxguevfJ/DdoTDQOEuJ01LUjaI7w9Q+Q82SIB9jQqBul8096mH8hsrWEy/96RL+xGjRtvITX9Pk6+2M1BMSUuOm0y5ymfojIEKt8nuWCSjvRHBOyldRW+hzHy5VA6VgYwdH9q0xoRtdqgQMQRUs4rwr64GQGzyk6CQaO/USEb2/forN5tR9yk5BcNk3WIddhacWYJD5JFebcxhWv53dc0PY1QTP01ihWNDpLmuPkYI1rm5ihBYqYbSdH06cD/l3xID9fOi25/vtlGxcR3JUwUwnTxY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a409c2e3-ac7c-430d-ea82-08d82fad43d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 08:40:48.6124
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vn6Fld2zQN3sVe5exgWR1Br+rb/YvumNFDrn5LZ2HSsOT8/UjaYv9zuFh6pLv+nn70+PQad028yFY8QVp5Og/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4017
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.1.2.rc=
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

ETA for completion is next Wednesday, July 29.

Thanks,
Sangeeta

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Pokybuild User
> Sent: Friday, 24 July, 2020 3:58 PM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>;
> Chan, Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>;
> steve@sakoman.com
> Subject: [yocto] QA notification for completed autobuilder build (yocto-
> 3.1.2.rc1)
>=20
>=20
> A build flagged for QA (yocto-3.1.2.rc1) was completed on the autobuilder
> and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.2.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: cc11dfa4eb3616547a8a3909f89da0cc4f35dc57
> meta-arm: 4812a66527e88ebdc5351d5dbd63765abe4abf62
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: 77831443738885d33bfa3a738fe6c4f0361e4892
> meta-kernel: 58a589c5aad5417abd099a961e3c1a5b083cdb90
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> oecore: ea886d57db917a41a0d106a15e1e96c72d6407b0
> poky: 569b1f5d67c57de957e243997c53ec2f81dc8dfe
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
