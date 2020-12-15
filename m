Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web10.7630.1608015564639320060
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 22:59:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=PoIZqNhS;
 spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: y7v/1LfF2QSq0PdiMQaniugotDzNA1/Ha+h0aLu/XZYDQdVOtAw6v40qtqBdKY2I7yoTVZjJmH
 Hc1anbpGrZTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="174065598"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
   d="txt'?scan'208";a="174065598"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Dec 2020 22:59:23 -0800
IronPort-SDR: W59d8Sq/swyJ4zyq5VHUB4hekH+h6v7gsj7c0hj//mnDA4Ha/KYbz5aVvTha5NOILji0BPewfH
 0JDXh7BeFNbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
   d="txt'?scan'208";a="336657215"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by fmsmga008.fm.intel.com with ESMTP; 14 Dec 2020 22:59:23 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 22:59:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 14 Dec 2020 22:59:23 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 14 Dec 2020 22:58:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XZwhXFjLL5RzE7oGMjok97F5H+pjEiukUXVTvJz1NgrUoBea1MwbpZYm6eKZq0/DgjanySG3RbJgAoVCeZelqo83XGIR0wT1REbYShtqmBNvssuGm7YA1t6ENPVvADhPph6RxEPo0mxhfrNWRG18wEbktHtBPaWqPVdErC7kLNTA0qzd5ctx/jr68zo5lB8NEcKWZ7NlftKc2Vys/amF7Ydai/LSNkCP/87GQcMkLLVylTCJZFGLHqkHgp2cl281UA1YtKpynVqYl3uMIeaDgOnDMO6MXc8ucsJ1l16A9bpK1KI41981kbyIUU23Q8U5eZG6hf5oQBkhzo9YcOaprA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WeORg/L/P4lIryyXoc/NGdneQQn47TUmGezOOJgcHII=;
 b=VOSkMUH296ZKZFp2mn18eOjwrVWMF5ZJQgreJphIIdkSMc9sx5PGjHQetwD12K0hN+3Nd2vhTq82xB0FeiGa/rtyM+pEm4Zf5/YznCrFO9Zw/NPAfZSQOhbw2yjHuo6Naj3Ob23JuS82VplOFenb0h7IWxTKN3LqHD0mBABn2RQVj2gZiafNO91SOHQWIg2JyJdzj58WhKke25krr05BCO7o4yG6jFghSLABxm9HC80DyFSN1+9LlJVu3gAwbW36xqwpVUIhinwh5LHK6Xe9uEBMKajDymDL8O20VdINOd9ltNQnJoaWiJwDXLkoXKUFRS9ZQlj/E4tF2sqepWVxXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WeORg/L/P4lIryyXoc/NGdneQQn47TUmGezOOJgcHII=;
 b=PoIZqNhSUHok+r/iOd2tDNUvfXhkgC61Ak6fn4BcMFWKgpxhHHUTN+OYvIkGQIXnn/6sIBTUczCP9ieJdqGpere2/mhui8mky0IDAYJmzYsuv9tFGd93TSlL+O3Ol/GITlp7QOjFlf6uJ253ea6IXlXTVMOyNvuCt1pfWPaM/NY=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BYAPR11MB3621.namprd11.prod.outlook.com (2603:10b6:a03:fc::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.17; Tue, 15 Dec
 2020 06:58:19 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::c0d3:471b:c804:8059]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::c0d3:471b:c804:8059%6]) with mapi id 15.20.3654.025; Tue, 15 Dec 2020
 06:58:19 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: FW: [yocto] QA notification for completed autobuilder build (yocto-3.3_M1.rc2)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.3_M1.rc2)
Thread-Index: AQHWzrA56w1gjX1yNEyk5wM3632Gy6n3wEqQgAABnKA=
Date: Tue, 15 Dec 2020 06:58:19 +0000
Message-ID: <BYAPR11MB3624FB46D8E46C8414355B3DE3C60@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20201210045112.F08ED7E084A@ubuntu1804-ty-3.yocto.io>
 <1650D1583E0A73B7.11773@lists.yoctoproject.org>
In-Reply-To: <1650D1583E0A73B7.11773@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [175.138.41.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd786890-5f0b-43db-45bf-08d8a0c6ce2a
x-ms-traffictypediagnostic: BYAPR11MB3621:
x-microsoft-antispam-prvs: <BYAPR11MB3621D69343B7F31D376D8E8FE3C60@BYAPR11MB3621.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z1y3NqWmwURclZ/DzhID7SBmVS0E39Nz1XdR9WmzbhnGzfwsWB/kUReqkjDsWRZIs8ECxU7w775YdIc87Rmt8LVcvM9pU8ycoIoF7Rpt3fh33pjYsTWFMyBLtqw99W6bmrp+6AKCQVusqn4v6Uq21eurUKTOV5umR/liN0bKdLseqdU0/kcdXexMVIPuIErnJZ801EOZmTWxzoO1WC1T+phzSCmS2iQ7DyyPhyFTieSE6GqBCO0yXio1omihqBPnwnBrpJp8ZoptjWJtXoX9ToCUnE4UEnqCEzoXjLthRwMN3tWIFcJ6hDPx+pk1Qf0vV7VB0NYmqBRPg/T19zGqj8n+3vGa/8PbP36MCTg5r1FelUvMTZeuFlK19huzYdCSD0gwkyUKz0HzhPQHgJfWlA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(346002)(376002)(33656002)(66556008)(71200400001)(5660300002)(55236004)(508600001)(66616009)(66946007)(8936002)(186003)(66446008)(64756008)(6916009)(66476007)(76116006)(6506007)(15650500001)(8676002)(9686003)(966005)(26005)(55016002)(99936003)(52536014)(83380400001)(2906002)(7696005)(53546011)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?7nWKW6Ko/YK4jjXS5dyB/DU/xuRfC/v3WpfRRFE/ixPVwNRSx3Ov7hk7HwS1?=
 =?us-ascii?Q?WVNBQWMNLnHbMddFXb4mTmku6lHpJfmEPRkQcgQh/CYPQfXIclttAob3Tv/l?=
 =?us-ascii?Q?oonTME7uF+ujd08CRhDfNG4oVWf3ovCq2h+eX/niiQWhjzoJ9yvkJgou1pg9?=
 =?us-ascii?Q?DCPmfjn2jcD/GInunR31eOWHYO0iAsAwDGhqxVO+k+H0nPpUgzZmXqVXchs3?=
 =?us-ascii?Q?7pod3uvKlt/Z3+Hut6cZpWWiolNFBM8/AShVyZYth34wpXBmJ18p16WhNorK?=
 =?us-ascii?Q?nF931wjFKHoLdVUmCkPbncie3k1vYhjeLxxc7Z/Ji9i5ikivz8OfZuErQ7Ha?=
 =?us-ascii?Q?oC4mqY0Rhpg0CYko/4vR05szpca9C90TZ2d45e6OGSPjv66cOij/DBYOVA4F?=
 =?us-ascii?Q?uCK+Z+jrmCQ+QPtz6B2aD7Z2KrkHWX6g/ASDjS59/HY3XSkhfM0S+sMfO1pi?=
 =?us-ascii?Q?yU1jsuT7Az5D2zaYSColbONV11KqPoRa/N3H+Fkqy1Od4jYejzWlLm8D65Zw?=
 =?us-ascii?Q?v0Kg/4ktKDTexuFW3JOJNKhH5b9rc4E7AX4iJfZEg7T8naJ6O8OpGxvq46fJ?=
 =?us-ascii?Q?Kib9l1ROU6Z5VX7ORlPIGG7LjGrt7YizvhDwxz8tddQ5RfF3V8TiXOxXm0v+?=
 =?us-ascii?Q?8iS0eoUxFfDpHOeNIRvKeax2GzkOs7ormyDA9ErV0s2aPds3ke+IzIsqxP+j?=
 =?us-ascii?Q?o992JqICIH1rj7V3QvVSOi7hBfMClh3ZVuTEa2Tkg5ZvWeMpw6rN0DGsfz0D?=
 =?us-ascii?Q?FDThclj99Mun/nrw3Yz1wGv4+PTmRb8g33mgdAHu4/4g9WHYs8CkpGl+Jrrh?=
 =?us-ascii?Q?SJ6dq7/ilULapn/M5JklbkmMgRIXPNEQEPAVg8vAsvVQfHmmPMl87qeaGM3q?=
 =?us-ascii?Q?+l8O5aDPrUcgQlWsflPuKmhVbWJI1elr4KLOakAp5rabtNJmCcHB3N65uvJg?=
 =?us-ascii?Q?CJDVErJvdo1Wvul0dtGpcQHHFqSAN5YCv4208PC7xxo=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd786890-5f0b-43db-45bf-08d8a0c6ce2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2020 06:58:19.4781
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wLD4n3p85wKj5jAVpGVYuDZ9kqeo/Q2SR80LYkWzEUZM3mfq4P6ZPsQaCXOK6bsUHtv5Y6f3evFhNO6XoXz3FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3621
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
X-Groupsio-MsgNum: 51755
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_BYAPR11MB3624FB46D8E46C8414355B3DE3C60BYAPR11MB3624namp_"

--_002_BYAPR11MB3624FB46D8E46C8414355B3DE3C60BYAPR11MB3624namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,
=20
This is the full report for yocto-3.3_M1.rc2: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No new defects are found.
No high milestone defects.
 =20
Bugs verified:

BUG id:13997 - [QA 3.2 M2 RC1] failure in ptest : libinput.libinput-test-su=
ite
   Verified Fixed.

Existing bugs observed in this release:

BUG id:14051 - [QA 3.2 M3 RC1] failure in ptest : valgrind.drd and valgrind=
.helgrind
	1 ptest passed, 2 ptest failed
       =20
  =20
 =20
=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13997
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14051

Thanks,
Sangeeta

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On=20
> Behalf Of Pokybuild User
> Sent: Thursday, 10 December, 2020 12:51 PM
> To: yocto@lists.yoctoproject.org
> Cc: qa-build-notification@lists.yoctoproject.org
> Subject: [yocto] QA notification for completed autobuilder build=20
> (yocto-
> 3.3_M1.rc2)
>=20
>=20
> A build flagged for QA (yocto-3.3_M1.rc2) was completed on the=20
> autobuilder and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.3_M1.rc2
>=20
>=20
> Build hash information:
>=20
> bitbake: 5775d9463ecedf8681cb6c919b240b80fe70f5a3
> meta-arm: 2a530c34199e9aaff2bab1ac53d81f112f34647f
> meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
> meta-intel: 7d79beb5093da8adf0f9b106a33d8e0904a50a48
> meta-kernel: e5a0723a3f3dadd880893bccf9bff88a9b46843d
> meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
> oecore: a55b01a3a1faf9a52d7edad074c76327f637aaa2
> poky: f36484e88d21346357bd1fa1bef6fdcc42bed54a
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20

--_002_BYAPR11MB3624FB46D8E46C8414355B3DE3C60BYAPR11MB3624namp_
Content-Type: text/plain; name="ATT00001.txt"
Content-Description: ATT00001.txt
Content-Disposition: attachment; filename="ATT00001.txt"; size=392;
	creation-date="Tue, 15 Dec 2020 06:54:17 GMT";
	modification-date="Tue, 15 Dec 2020 06:54:17 GMT"
Content-ID: <2FC47032FF471A4084301E4152301A25@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

DQotPS09LT0tPS09LT0tPS09LT0tPS09LQ0KTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdl
cyBzZW50IHRvIHRoaXMgZ3JvdXAuDQpWaWV3L1JlcGx5IE9ubGluZSAoIzUxNzU0KTogaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS81MTc1NA0KTXV0ZSBUaGlz
IFRvcGljOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvNzg4NDc4ODYvMzYxNjc2
OA0KR3JvdXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClVuc3Vi
c2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by91bnN1YiBbc2Fu
Z2VldGEuamFpbkBpbnRlbC5jb21dDQotPS09LT0tPS09LT0tPS09LT0tPS09LQ0KDQo=

--_002_BYAPR11MB3624FB46D8E46C8414355B3DE3C60BYAPR11MB3624namp_--
