Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.3583.1574923383532477145
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 22:43:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=mqAcXe4l;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: sangeeta.jain@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D646DE01088; Wed, 27 Nov 2019 22:43:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92795E00AC8
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2019 22:43:01 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Nov 2019 22:43:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,252,1571727600"; 
   d="scan'208";a="203339676"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
  by orsmga008.jf.intel.com with ESMTP; 27 Nov 2019 22:43:00 -0800
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 22:43:00 -0800
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (104.47.33.55) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 27 Nov 2019 22:43:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A4Kdhx/YD8xVQEVD4e4kSTRgn3ZRwrVsQq1YLFT4VsjrkHlaawfK+esVLg5B8+akdfXF4NYmoTC4djnSU2BiysmXtBjBO3ol/Xf86G5LjbiY1r+l6z9H6doyLSob84MSTG4Ing0SJ0+JBFqGxWMkTeMUtCKcQpTGK6amv9us8pWchPUVo+5YKB0PiAdVi1TI48KE0zbqGB0hSkoWhQXbPLzRHq5ljCSH3938x87qamK0d5Vq3OWdLReRueKAT9STyw+zSay6gqk3fxPQqL9JeNqbTzSYs2PkxyiUOdM8TNtAwzkhSoUYIxjtvRFyvIfQrKapkSPQENTuRQxl/84c9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXy5vjKt15/JihYLIe09EJo2cCR66MVcWH205WF6L3s=;
 b=PHAQ/HgzZPiIEAS3EofnrnzpNmMRQHZBcBssxfkWhDU4deA0ZVafVWdfaNOWvuJiQIdV1Jz7VPT97vK7Ca8+FC4UBWj6WfkK0AM1Bl08BEKhIIllG6DZwMX1lyu5j4jQwjsWdAYDlMzdpe0HzxQ4ylStbe0cmnZKSVT3YLTO1S3g5gBW+/SdKJrB/veDuMZ0ODEiDk/mDVT09dkS79KXtMT5Q/yjJqc0qNzzk7Ek+8GgaDU6JA11VwFVpi+Vq232WUqHtdLuY439ov/o7DVCSVIT0TFrdBiUsh6FovuIq6SuBkX4f9S2BjyKcd6kZ6MV8WSknzBS3NHunPmaJVaDOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXy5vjKt15/JihYLIe09EJo2cCR66MVcWH205WF6L3s=;
 b=mqAcXe4l04bXt82UQFKrh2C8DglBHn56GU/ThT1pGODItQPbEIi8iqKsge49HOjl/xGeGJVHn8A7HfQMNtHOYV1pYGnYrdtsxLHyyJeosT9bUvNDmuwdoKG+NgOv14K2KMLXveOyV1na/oCu3lKVFCc+uGbFErpDY+zvuylKbpg=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
 CY4PR11MB2021.namprd11.prod.outlook.com (10.173.16.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.22; Thu, 28 Nov 2019 06:42:58 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::48d3:627c:7ffe:a558]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::48d3:627c:7ffe:a558%5]) with mapi id 15.20.2474.023; Thu, 28 Nov 2019
 06:42:58 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.0.1.rc3)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.0.1.rc3)
Thread-Index: AQHVpZ/L8+B+r+Xk2UG/mpIafBdawKegIFsw
Date: Thu, 28 Nov 2019 06:42:58 +0000
Message-ID: <CY4PR11MB18795B0B179C1B53D3D0F424E3470@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20191128035547.91A6B1C0162@ubuntu1604-ty-1.yocto.io>
In-Reply-To: <20191128035547.91A6B1C0162@ubuntu1604-ty-1.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmIyZDQ5ZWYtYjMzNS00NmVlLWE1NDctMmYyMmRiNDJiMmIwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid1VwUU1hbllzREpSWGNcL05KcWd5ZkM3TzRtMkJNdE1tcnlrMFo5TXVtWjVkMXordVlObzQ4UUZISW8wM0ZiTUMifQ==
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29560eac-ecbe-4e00-419d-08d773ce34d8
x-ms-traffictypediagnostic: CY4PR11MB2021:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB2021E5DBF99DD81C66FF6B18E3470@CY4PR11MB2021.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0235CBE7D0
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(396003)(346002)(376002)(136003)(39860400002)(53754006)(13464003)(189003)(199004)(229853002)(26005)(2906002)(6506007)(81156014)(102836004)(8676002)(7736002)(66946007)(14454004)(14444005)(4326008)(186003)(66066001)(74316002)(256004)(54906003)(55016002)(446003)(81166006)(316002)(7696005)(6306002)(11346002)(6436002)(9686003)(110136005)(99286004)(76176011)(15650500001)(86362001)(33656002)(5660300002)(966005)(66476007)(25786009)(71190400001)(66556008)(66446008)(64756008)(71200400001)(2501003)(478600001)(6116002)(3846002)(8936002)(305945005)(52536014)(6246003)(76116006);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB2021;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xQ7tEQ8H5t8Ril02E3uBl+/mJPTzZOhm6WHVaEvgGyiOlwmmM/TVwMDusJHoQ8AGSkNEQcZ6tUsh7EGVN0VIqsXoA0ckm9grn0KFe+ZfAbiSGaROA19oJQsdchHUNX/Zc+8jrJcw9a2WhNpuNxIsCEyzoQIxxQ0/Fa2xveq4GeTnxRCpsjWNtkudd1IBsiq3dhX4y+nXbmODB4ZQW3cHcWDuedMC5mVtl0PaU9xiH430wEHZflG2RcGZdFQ7WeYibmC8YUENnNZkEc1pGQYHhn439L65Ytxq8j+vzijSuJe3RVfQra1knRGPG8atzFWeyKLhYJAkbE5qetQVXDj2hRdU4KV5eyfy2EwmT3NY+KAkmnAqI75a/ct1fOKHIbipdCbw+XsDRgMHb6cdkd3aADouL2IL4jOwYujqSistrBMXcRs314Q33/ruFHcoZJKni9F+lntHSTdf4X/k5OHVXCHJDtYgM7c6Y9LA1ktalzw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 29560eac-ecbe-4e00-419d-08d773ce34d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2019 06:42:58.1130
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WwF/MAJi8O1QM5TD+Ih763hXcj+ML+Oi687xdg0kTdqxFebC8hKXRYv4y6qAc741OAyY/24rRus2aL87JL+Ozg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB2021
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.0.1.rc=
3.
We are planning to execute following tests for this cycle:

OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw
3. BSP-Qemu

Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. Coffee Lake
3. NUC 7
4. NUC 6
5. Edgerouter
6. MPC8315e-rdb
7. Beaglebone

ETA for completion is next Tuesday, December 3.

Thanks & Regards,
Sangeeta Jain

>-----Original Message-----
>From: Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>
>Sent: Thursday, 28 November, 2019 11:56 AM
>To: yocto@yoctoproject.org
>Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
><apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
><chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
>akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
><sangeeta.jain@intel.com>
>Subject: QA notification for completed autobuilder build (yocto-3.0.1.rc3)
>
>
>A build flagged for QA (yocto-3.0.1.rc3) was completed on the autobuilder =
and is
>available at:
>
>
>    https://autobuilder.yocto.io/pub/releases/yocto-3.0.1.rc3
>
>
>Build hash information:
>
>bitbake: 8569ccb5e9fbdeaaf96b78bd02a263b26de54059
>meta-gplv2: 0f4eecc000f66d114ad258fa31aed66afa292166
>meta-intel: dc1fcaa858e85273676f4363a645661b5f1fb6e5
>meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
>oecore: 75a4cabf55e13e6714c0fdb229cd51b5184ddbef
>poky: 12a4c177bb541b3187c7a54d5804f30c35f22d8c
>
>
>
>This is an automated message from the Yocto Project Autobuilder
>Git: git://git.yoctoproject.org/yocto-autobuilder2
>Email: richard.purdie@linuxfoundation.org
>
>
>
