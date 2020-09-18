Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web12.5186.1600401008740122293
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 20:50:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=RVEBZWGx;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: vc5e+4o4GNt/cfxRypq8XQ2/wrhXQpGO4TDEH47am0CTpHq+JPKjNQvbUHNm1Hk/NhawDILTYi
 zHDLrsrcT+HA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="159908410"
X-IronPort-AV: E=Sophos;i="5.77,273,1596524400"; 
   d="scan'208";a="159908410"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 20:50:04 -0700
IronPort-SDR: ZZc/1mxnKK5VxHIrGFjdBHJ5X2P4dZi7WhKMdh75L3T2Jkp64LSVdtMsYpEV1+MPVhhBg5RrFD
 7zSkBf1WAqYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,273,1596524400"; 
   d="scan'208";a="339664746"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmsmga002.fm.intel.com with ESMTP; 17 Sep 2020 20:50:03 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 20:50:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 17 Sep 2020 20:50:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 17 Sep 2020 20:50:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ch+69fSXSR8ca6zg3YXsGqnkUH50ui5qiA4rRllXW5alfJdicyITynO+VakshGBGW57J4YO9Tkjy/+4j9RtIPowp4v77mwgPSPzUIbRHCEHbT53VjQ/DUPWysyCFkeH0ZQg++ArM6xqORuIK0Y3MSaBsRg4nqIttwgaWc5YSbzbBJZib2AqzW66wVeOZ/i8t/hrD1zh9KtiXqq4BCgVBR3F+zNtlHecHLO60z5k0JHNzwJ25Zsecrt03I1VHWz6GVTimrtMLCZmFfqAJ7WB9OHGFdeVjBLn1PTTLwf/Av119DpxXgAUOu/F0Rw7a8NkWS+8iI6xzSCDdNaymFuhzLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SaRgMBOA2GkfdlajLE7uqE0Rks27YwTEZSZ9QUcSCgg=;
 b=iurBRYZtoToNdm6BlVXcUOhfuvooRYFxLQxfrQG6sPWlwcZFq6N5k9v3tqO+kdeFYvlCIoNWqnnf7yQ54Pcrb9YitaN6xP6FW619l0FY8qgug/BzRQvqgKaYzZgU7aQR2jNlM/T8M/16N7IeInNvWoN/WK4EMfvBsIAiNnT/4wX6+YS7TxTQxdycezYrX8moC2l26FSuqMv53pJypE9B/D9oeIkMhmKICq9bezX5nLJNWnirMubqZmm8JMxfRZgj7WqJrG7wmGRXvwmfPhvkCrqnMMNpmcw5ltBvdyL9f6IUteBIvwk504+24/X0jN5qPzMjyiFPZ966SiuCFkfntw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SaRgMBOA2GkfdlajLE7uqE0Rks27YwTEZSZ9QUcSCgg=;
 b=RVEBZWGxTB720YA3hSH8UJOm3H4e2gkaQnpnE2ps4CFwP1GuhGvTbzZ8atMVbSiFI4ZoM/fn8Zf2hjFTGEsEIQ/9KSeF5a5CLCy/bFJRRFcU+gfGfwyfFdNNxi5kclN4omx1kqr78pJV/gG8gC32tkGYPG5iVw7LVjQP484ltSY=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BY5PR11MB4225.namprd11.prod.outlook.com (2603:10b6:a03:1ba::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.14; Fri, 18 Sep
 2020 03:49:59 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::86c:9bbb:7b9f:c30d]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::86c:9bbb:7b9f:c30d%7]) with mapi id 15.20.3370.019; Fri, 18 Sep 2020
 03:49:59 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Chan, Aaron Chun Yew"
	<aaron.chun.yew.chan@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
	"Teoh, Jay Shen" <jay.shen.teoh@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.2_M3.rc1)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.2_M3.rc1)
Thread-Index: AQHWjQ4yCMWxBsUgc0KoFt+1yvsaHaltwx+g
Date: Fri, 18 Sep 2020 03:49:59 +0000
Message-ID: <BYAPR11MB3624AED367EA843B5FF3E4D9E33F0@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20200917161808.159C43A0D66@ubuntu2004-ty-2.yocto.io>
In-Reply-To: <20200917161808.159C43A0D66@ubuntu2004-ty-2.yocto.io>
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
x-ms-office365-filtering-correlation-id: e2f22bf9-3113-40d0-aa4c-08d85b85ea7c
x-ms-traffictypediagnostic: BY5PR11MB4225:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB42255B19F6EBE72577F50EC3E33F0@BY5PR11MB4225.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OT0gNDS9nLSUBBEX66g2HJ5MKgVZkrZbbFD+QhMr+CwKEaIk1O+LV1vGMUdW2TT4iorBoG1Uwwr3GkWHnN8nBxveIKEwe1gN6OUJDi1iW/d0YjC5isTD3JfdWFXiqIIW3dhsydvAyfwqjAYWC6emUbW9IHjMs507gHsWJuR7X9JYzoSP5qHhVea5Siqyy8BsrvR2wY/zXrVMYp8KnkgYAmJOA+8/a+E8AJh7APicZVTv8i/yRiVaPg058WTM6A21ciZ89SDx/ReqpHJFsrtAFIr+bgaLvu/cpgfG0ksFdoh3Ctum8HwD9qa9ixkokr8BYOeMUmoX7I1GmQmncZG0sfKJOpzkFTRFP9Ylzke+Of3orV44JgXpiwNPdVxNkdHnICdOIHcPTkRn4Gzu0SY+rA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(346002)(396003)(39860400002)(376002)(478600001)(55016002)(186003)(83380400001)(6916009)(107886003)(966005)(4326008)(52536014)(15650500001)(54906003)(86362001)(316002)(26005)(9686003)(66476007)(8936002)(66946007)(66556008)(64756008)(66446008)(76116006)(2906002)(6506007)(53546011)(5660300002)(8676002)(7696005)(33656002)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: e2rs6uNRR+DYhhhjhakouLHrCD82obpgudZgXCX/xkjMkUsjYP9JLkc3bm1qw+RBAI5q6lbX9OqQr3fo24RO4Clc7+o6KuVoD2mt5DghsGOczfdbpNo+vopVR9L9Gakgloe3SXwmKvwczRudIJf6DVk3mJhGrt3EDxSmvCcwV0eIbpNVG8MbsJB51rqpyVmkedVC3Yb1XpLWOrmyyoMXo+R5lna/uY0PgFi0htdzWRpdXMRbuP3cv4xmNIZ+zyMmyMffl5nL7H9IUGbDrslqrBEmia0oFF29Sz9DixPj6fgrxoDe0bjw2rFDU6zDGZNw5VVHSeJzcLD42krqUDkne6kzBvoYQtmgMu35gvl5A7ygeqKJrZZjBIiwrMGwzrlCp0Z5rsxhiMiL94FYDzw4HrMg/FoP9UlbTyAL7GtHLJiaU134ksV48iLpL+m1kdutktBdHiVuG5HwMYg18tyCTFC5iBCSFfmjXl8diw6Tpq/e1cOZVf5CvKPiaw5dAqZzIDVrDxwmlBVWmS2W9llRZ4RwC90x8H/uncKoMEJEWRiHlvLjcwNe2/91r9pFFZe4KuvhzeSX4bfnFhZ0k7APlpoq0w4OiaAwVS9rcooIn/TiTaei4+Zh/CfInC2VKSyVBwo1bYBx0X6o52LNS0JFHA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2f22bf9-3113-40d0-aa4c-08d85b85ea7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2020 03:49:59.4042
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +ZyOtby13pYGy8j0NRvvsq2BeHpzvw7CY9USwT2ck47GZItFggT2OrrWDk7R3W9/TF0pMOVK+NhtS6WQ/HQLQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4225
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.2_M3.r=
c1.
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

ETA for completion is next Wednesday, September 23.

Thanks,
Sangeeta

> -----Original Message-----
> From: Pokybuild User <pokybuild@ubuntu2004-ty-2.yocto.io>
> Sent: Friday, 18 September, 2020 12:18 AM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>;
> Chan, Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: QA notification for completed autobuilder build (yocto-3.2_M3.rc=
1)
>=20
>=20
> A build flagged for QA (yocto-3.2_M3.rc1) was completed on the autobuilde=
r
> and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.2_M3.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: 29081375659e3dcf1c578cd98ab2c8a2e9f07ca8
> meta-arm: 1f3cf5812c91cdc15f63737bf9b30cce665b2999
> meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
> meta-intel: f7580d72763653893c06e1d9ece7a77c4adb8485
> meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
> meta-mingw: 30a051401c0a73dfff486ca4d0303b434816200f
> oecore: 4e7506882cabf3936f0269c2a98f61c7d595d613
> poky: c6bc20857cd1bdfd25dfc50e413be84d1d12b189
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
