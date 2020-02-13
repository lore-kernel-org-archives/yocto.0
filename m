Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web10.1133.1581563205986132086
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 19:06:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=SdLZC8TG;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: sangeeta.jain@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Feb 2020 19:06:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; 
   d="scan'208";a="281407888"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
  by FMSMGA003.fm.intel.com with ESMTP; 12 Feb 2020 19:06:45 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 12 Feb 2020 19:06:44 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Feb 2020 19:06:44 -0800
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 12 Feb 2020 19:06:44 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 12 Feb 2020 19:06:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TrUGDT/qi5Ch0p4hh0iEnx1C1OeC6OJfCQh9VxUBQRXBeIgkUhItf9ZJdaPwsWZ+CVaNhODp8f0ymRAI887tzLqYo+nwaPeWySvh1vGEjhGG0FPAO3lUu+ozTUPXM971VcPf6pMEUksVoNIa415JjDFPKsMDgjV/7tbYnPfIWK2bjBjMGEte44eD5Q/XMmEYvfqGQW2KeYnOYv1Lt6fSvPN1ixG0CIADXxkg28R4tC/q4qd/gjF6cfPPCV4jRIfE/AXzGaAN8vEf1oBcenP5GQ8JXzHOaKkfgFlV8tY9sUlzRmpyjOT6cpt5oqwy4jBoCzkRjHxD+Y2dm34Eyjkcug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vj/ksw3JrT6SZK9Uj7vhTSD8GkDN8swMZwlfofefIz0=;
 b=oPJXKo8KFB8+0xVJt74KGG2uh10jUZmz4jtxs9CGP/5Vqve7RtmjbZSJfTEsxZLT3jsQwMnrg2iClWoHX/zTp8TMeEdIyl10VXoFxg5toxRWRi0SdfMvf5Y29k1KxBsfNnnm+0f4aT6sQ9wREOM7hP3dNrt6y1cX0S80F8BYeiK8BkmeCdWi2amWUiiHxIavCZCaooq3wboa/nEi9pFrBLrd7hTV3PltKHeHjFLfJwhuwVoNNCiJhKpbYfDuFAtlbV0Pj2QS8KXBEGUDtm/qhj1oG/GXqu6z3IBnyUpTvrnR+TkRJKgYcfwbjrHUx7vrSyMNRueVEg0Hktmvqoudcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vj/ksw3JrT6SZK9Uj7vhTSD8GkDN8swMZwlfofefIz0=;
 b=SdLZC8TGhvjWWvLJjIyfb5ADKXZxULLzH9L0mQgo3HhvZXKFTaQfd7LpYJwW72xLAatwbCGlJoBELMYkvhwfMQqJ0lrirm9KTjztUol9RXCFN//oxYY5Kgn2hygShKrnfVwRCtd/FSaZPN85WfSeGU3LHVBh0OCADvbAN4cnCew=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
 CY4PR11MB1253.namprd11.prod.outlook.com (10.173.16.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Thu, 13 Feb 2020 03:06:42 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b%9]) with mapi id 15.20.2729.021; Thu, 13 Feb 2020
 03:06:42 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.0.2.rc2)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.0.2.rc2)
Thread-Index: AQHV4XnsV1rwSTpZlUu/ubUHuQ+276gYcR7g
Date: Thu, 13 Feb 2020 03:06:42 +0000
Message-ID: <CY4PR11MB187930D9163486E56B1E2529E31A0@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20200212075551.ACC13480E2@centos7-ty-3.localdomain>
In-Reply-To: <20200212075551.ACC13480E2@centos7-ty-3.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjRkMGY4YTYtZDk5My00NjMzLWExMjItYmVkZjYxNzU0OTY0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWEVjQlNzZGNhYXNyWmdtSVVRRWdHTU1sMlJBelpSbm5oRjd6VmVBNTFrT0xXa2h5Qk00SWRpNlpOYUhaMjVGNCJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.211]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51476091-17d4-47b5-a826-08d7b031c040
x-ms-traffictypediagnostic: CY4PR11MB1253:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB125328D398F506821A3900FCE31A0@CY4PR11MB1253.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(189003)(199004)(8676002)(498600001)(966005)(81156014)(53546011)(9686003)(26005)(6916009)(8936002)(54906003)(33656002)(7696005)(52536014)(71200400001)(6506007)(55016002)(81166006)(4326008)(66946007)(64756008)(2906002)(66556008)(86362001)(66476007)(15650500001)(76116006)(186003)(66446008)(5660300002);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB1253;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pdXXuZ0Od3I/kS0C+ZdjdAe29dEyYp+kBQbcbDSr65VPoEQimfBYSXE0LtUWGueF/j4/1figEqhFIShHGXGwecU1g8W54MM6kMQDI1LST2bX/5GouZ24/mgDwyS4YlojDbrhPI/UzlCdJjq2W46Nz4/jVANTJ++ZjjPtt2ToAXO2UO3qjla4jFUTLt9NBDVZyDmUUCyvR85nGcQypffkZEWl97/p1V95SbdA4On+01dRZQXKj3141N0ObEpIE3cYS69uKTjD2CsOFfY70BoUjF/5F7C/XC0WGAF6ZXMt7qo/F7o2qRFWSLRUfEaW+ciYP7cSg1HGzp1utPloqjOwoFs/lRx+9Q5I/wXhLpuQpVf6t5jAAGFDEWGAV7hcArszfMzvYCJnIN39drdt13wiNl7VzkLdWBDE423yMvjj32hDtAdcP56FO70/ud4twhkPV3phmx/DJa4rB1cL+8AegpXkgPEd5sy5MbPmT1yEIAVJec8qPaw/aN4dY8FAJ5DwiHvceCufPF1HhqmNGffYew==
x-ms-exchange-antispam-messagedata: BfWsxvIII3d90xSgwFNeBrVugoVNEdsLK4kbtqPmX42LvRlPeJiHGs3R8Y0rKffAwOqKU5m613+EeqnWFKJBwhmSm6chEe2lwo+h+e/QsIwYy8fMeJZ1EXzD69LlNbWPDYVWJRHgGmsO+zA5jfii+A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 51476091-17d4-47b5-a826-08d7b031c040
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 03:06:42.1043
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gE3qg8KP96zk2kp3IRXDk6JWY2w2L2aS3gZZbfvxyX5jYE00lfeS7tMHH6H14qYooddt1QNFq0q3yQ6+KLLcAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1253
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable




Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.0.2.rc=
2 starting from WW8.1
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
6. MPC8315e-rdb


ETA for completion is next Wednesday, February 19.

Thanks,
Sangeeta


> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf
> Of pokybuild@centos7-ty-3.yocto.io
> Sent: Wednesday, 12 February, 2020 3:56 PM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: [yocto] QA notification for completed autobuilder build (yocto-
> 3.0.2.rc2)
>=20
>=20
> A build flagged for QA (yocto-3.0.2.rc2) was completed on the autobuilder=
 and is
> available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.0.2.rc2
>=20
>=20
> Build hash information:
>=20
> bitbake: 95687be83e716220eb3893b67428f97fd59fc2c5
> meta-gplv2: 0f4eecc000f66d114ad258fa31aed66afa292166
> meta-intel: b04e1edb9300a57e200a187a3255f67b50519202
> meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
> oecore: 799b3cd1016bd765f4452a5e81ea5613c9089bce
> poky: fe857e4179355bcfb79303c16baf3ad87fca59a4
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
