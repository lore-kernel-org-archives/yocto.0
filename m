Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web10.13015.1592815520745164730
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jun 2020 01:45:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=GMrDiIdE;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: XPAJUgEJAN/45y2NVKNSJ5oGc8oJWb/AjAj9cK41xj48O7lIXttd5M+VIGwcyd6RvtmxVlEOS2
 YhZNCEInZ+Yg==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="208904667"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; 
   d="scan'208";a="208904667"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2020 01:45:19 -0700
IronPort-SDR: 7mO+VahPNiGwFJA7uhKXtd5PTYp9EXqV+A7ryUh3cYwiHyihLBXnXa+7yinSiB07Kuu57Aft2z
 3NBegFTqMfBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; 
   d="scan'208";a="262908581"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by fmsmga007.fm.intel.com with ESMTP; 22 Jun 2020 01:45:19 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 01:45:19 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 22 Jun 2020 01:45:18 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 22 Jun 2020 01:45:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 22 Jun 2020 01:45:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YEijtnkLcgwIt6w4yiXzog/FCRCbHJ9htGitT+tdf83ylmjH2PNFEBUvgaLYFMhynaYFElRcGF/YUS5fzNzEDGsEqK42dYE/0Pm5n7cogTyqyIvh08TaB0k2pJkUpWC3OVTyabymfO4b4psAMzJBKUSXI8L9DxYM7QML/IuQcthQWA+p5bCv1qk6++OypiKvVPE6UhWFOS2csbeFEqaLd4oshjIjaCzWh5CHvCYUPwm60pQCenyhTyQI9tC1BZM6VhASjynDPHfMRUm3D0pCVssh7nJpX7MAynUDtUzSOtfigIS2qIDziLE/wKBs4lLTAn5oEHLsiZt5JfIteMa34A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kkUIrLjqgMmMKDlr59Q33x8KBj6H6cLEXxE1BiUG5YI=;
 b=YPR7wjkig7lVxuM8+dP2VpxrQFvh+lm/EAy1ut5dxYYf0gKcNGFtxlcjB8Sywnyns9APW48PRfeEWVfd2SdRU37rdhzB52vu5+tp98IwREPk9+SxOsAc3xczr4l1B99iT8oiJ2DIZr/ExSrORS1Qm2FEQit5sBzKEEgzsDAXMfipWlth6U3p2E3YXPjF+Fbrdu870gE5VbHcMnveLaZejrVwE9lhHsXv6LGltwnc84wXzORSTwEZeoSGh1P2STTwqf15G2kmmEfkCsNPLOCq6RoMWOZIFlvhPg/yutB+TV2WBnB+I2mpy0S4QiMdJp1zTfWmIbwMc+gPivmrWrmuog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kkUIrLjqgMmMKDlr59Q33x8KBj6H6cLEXxE1BiUG5YI=;
 b=GMrDiIdE/lZ4Vzl43p9XKBK//GGmgMTujfdMuZGn5FyNrJ7MwkhV+pn7GO7vrKh9jG3VqF3J85a9M1EjpRH+GkVTAxQDAMpReUJt5v6u6AsBWNPdz/Q1NXB8QjtyUJPzY9ntJPNz22XAGuWgCqUJvLpJLFjKmB2tW9QsQZZSSsA=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BYAPR11MB3222.namprd11.prod.outlook.com (2603:10b6:a03:79::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Mon, 22 Jun
 2020 08:45:13 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::341a:eb30:746f:e614]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::341a:eb30:746f:e614%7]) with mapi id 15.20.3109.027; Mon, 22 Jun 2020
 08:45:13 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.2_M1.rc1)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.2_M1.rc1)
Thread-Index: AQHWRQIAe+MWH6/DV0qqE4uEKIJbTKjkWKyA
Date: Mon, 22 Jun 2020 08:45:13 +0000
Message-ID: <BYAPR11MB3624C1828C81AD1B18F636BEE3970@BYAPR11MB3624.namprd11.prod.outlook.com>
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
x-originating-ip: [192.198.147.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd25b0cd-3496-40e5-79f6-08d816889498
x-ms-traffictypediagnostic: BYAPR11MB3222:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3222A1A1B1DA443F184FDAA8E3970@BYAPR11MB3222.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0442E569BC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HGCH4Y9vLwjKs63DCe2hjfPMS0miqEXC4rTcRoR3rLXEMRXbH8d28hwkI2Esj+t6YcnS3o+FkANJzqQMU65YSsmvEyGl0YnBSMMHWZ2S0WWwNS9wg1lJQzga1iazCee1jwG1mq/bi5J+rZrozsrZEhpZPcTSTLV05KOCLpXMDYcalIYG3BZNpFSrzhN5AvzCEuhwwTh+0zDvYvUZkF4pv235PRqJix6ehAwa+lvkeMBPWS4PuUbNFfIWqT3uDzCZpBwke+gOjkVr7xO2N6//jhqCMq8SAYveExp4es5uTnRpoge502LBBjhqaCXJbiYTkAT4D8hQvOCUsyouCzbNNBDNbccasHC3mwbxFH3/AfygqbCCIRJE22W0BF2QaYgQthY89qQAma1xU3h+6xQ4VA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(376002)(396003)(136003)(346002)(39860400002)(366004)(5660300002)(478600001)(71200400001)(15650500001)(66556008)(76116006)(6916009)(66446008)(66476007)(66946007)(966005)(83380400001)(2906002)(64756008)(8676002)(7696005)(9686003)(33656002)(8936002)(52536014)(4326008)(54906003)(6506007)(316002)(55016002)(86362001)(186003)(53546011)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: ggE4oTrul396SSAJtxWtZfU92qxrlDo985eFR3/BME/urE7aBKFllONgn33gTm4Y37E4S+5rydCpjSJTuznXQ0Mi5qlv31+kn9NMzc+dYKzywPsaq8ErwUlFeYmwzPDYadqb77EAJ8v9Ci15WXlV5qwDh9Rc+y4So6XFTBMaXXMGI75p/yOu4+u38MSrp7N36Yx7qNsfUsu7OsFXVSnuHtmISawnXhjnoB1QHaaVbVGmwPV4FYkxRKCJ79qYUuV5ZW5F+KNOCWlpSob4KiI3jXsyHG5lJMaTIcUFrELgd3nFuPHb9wLzqfvJ3eyPeIG9C7D8KU9eyHu/XsKJcDx3rO3RykqHSgxHBaVI/CfTOv5n6CoDd/R6M34zaYTUIiLJ2rNWcupaGBcf7ca3djIUrFarlKbV2rJKCJoTOBjZ5d4w9tin0ttB1fGUxwmHO16MviTkV+TeCiK6N9x4o6QhtMMNgTqoTyWed/5jgewHv8Dz1c5KBQhX9KYARfWisyCe
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bd25b0cd-3496-40e5-79f6-08d816889498
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2020 08:45:13.5680
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pnp/ziVm2h/m31SvxzfoykrH4jftG/6SYWmtHKbcmhHb599QpZ5L+pz92ryzolu05T9NgAUse73aDcujrUofaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3222
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the full report for yocto-3.2_M1.rc1: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
No new defects are found in this cycle.

valgrind ptest failed (BUG id:13951)

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13951

Thanks,
Sangeeta

> -----Original Message-----
> From: Pokybuild User <pokybuild@ubuntu2004-ty-1.yocto.io>
> Sent: Thursday, 18 June, 2020 7:50 AM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
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
