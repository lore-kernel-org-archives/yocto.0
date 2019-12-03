Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2703.1575357348980346772
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 23:15:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=TqdPeGwi;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: sangeeta.jain@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73A2CE01085; Mon,  2 Dec 2019 23:15:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F3D4E00B65
	for <yocto@yoctoproject.org>; Mon,  2 Dec 2019 23:15:45 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 23:15:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; 
   d="scan'208";a="412076393"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 23:15:45 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Dec 2019 23:15:45 -0800
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Dec 2019 23:15:44 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.58) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 2 Dec 2019 23:15:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FYHzDYLw1Pmx5P9QHPiIr8X3hSzv7TCc3emZcOJLGBBu13jyyuGdpD+ILJHzIuPElJd4OC6rXg+SQuHpaAqBuFYQSUSV4fttpceYaPxgaP8+tMydpudXG/RO3sAb1PhOS0+skDDE8dcm0x85fkFhrU6GvGGGvmtbJCsRTZMXq56SVcjX1so4D2zwRPlYXFcIoTtbEc4aHjFfW0LVfYyR1b2mEdC/c4KgUMjFWf+li0ln3KNwXDI85CbqyLKKlE0rqwYCyMErS+r/0FEXXGI2IHh9lFqkJaKSu7kt+sBDsFog/VhW+ySusUJ4/T7Fk+jhdtn8Hb5R60YXhKtL4ObIOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s5tMAQ5UT8xUsO4LxE78wS/UeXmbB1i8EVjkwNP6RcE=;
 b=ogxvZTPUhV+FkqJbpwpT1UtE/LG+R5qG8GoMEYNAOh825LX86X/1+RGvD8MKwCkRpJUEYxIFntVDu3ashEKC9c9k8KXm5QWBUj6Ti7B8aUIjStqyA+DK1LxfMonuqQBcjzdgNGaVzboXejj63VJgMMMJXbBYg1O4NN0vEN6lkUEEM1skE5bz99D+2l6LUwsDMplU3kIJw0AiCGs6hC+YC6ZMqkKM8kxlc1pXxw8xYeD2xqkSSGdNkr9JgVAfoHbrPk5dnM4QEEZSxT4CQvhn/ZrpTKKnxWsSs2nBh07QC0CA51LuHFAPDk+Zdn2WQg6JxoB2e6RHfw7+x9lQcl7MYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s5tMAQ5UT8xUsO4LxE78wS/UeXmbB1i8EVjkwNP6RcE=;
 b=TqdPeGwi39Khy2Gr7s37/+m/Vxx/DnbuYHbXevTqHnuxsovl6q9lmvnj2g3xrCgsN6+EuVUSSJbxZ20DtW+/XTXg/ohCkijtw1WI7t6jJ7Yxjl+Kxrc7oK6E0TcyHXgzjcdela6lMJhjfQs4QvTR0GHXspfGK01WJXo5Un2SvGo=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
 CY4PR11MB1864.namprd11.prod.outlook.com (10.175.61.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.21; Tue, 3 Dec 2019 07:15:44 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::48d3:627c:7ffe:a558]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::48d3:627c:7ffe:a558%5]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 07:15:44 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: [yocto] QA cycle report for yocto-3.0.1.rc3
Thread-Topic: [yocto] QA cycle report for yocto-3.0.1.rc3
Thread-Index: AdWpqXLNzTAIBwTgTfa1+mSdG/Xc2Q==
Date: Tue, 3 Dec 2019 07:15:43 +0000
Message-ID: <CY4PR11MB1879465B598CFC79F8EDF1CDE3420@CY4PR11MB1879.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmM1NmUwNDctNDU1Yy00Zjk2LTkwODgtYjQ5MWM4MGYxNDc5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiT2RXWGZMYTdpeGZ6N0cxVUhDcHh5S3hEcENxUHRNNzRsV1J4NDVGaHVCWkxLaGk3OUZxUkZmSUY3KzlOaGJ6bCJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d19952d4-4379-4ac3-bbae-08d777c09c93
x-ms-traffictypediagnostic: CY4PR11MB1864:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB18643D07F36DE39B7F195640E3420@CY4PR11MB1864.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(366004)(396003)(346002)(136003)(39860400002)(13464003)(189003)(199004)(53754006)(53546011)(33656002)(1730700003)(81166006)(8676002)(64756008)(66446008)(71200400001)(71190400001)(66066001)(2906002)(4326008)(7696005)(66946007)(6436002)(7736002)(2351001)(305945005)(6116002)(5640700003)(66556008)(9686003)(76116006)(6306002)(3846002)(55016002)(66476007)(74316002)(316002)(6916009)(186003)(52536014)(5660300002)(102836004)(54906003)(26005)(86362001)(14444005)(256004)(966005)(14454004)(25786009)(2501003)(6506007)(478600001)(99286004)(8936002)(81156014);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB1864;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u5k41M2nqMansxz+3J71EkXJBsMXyENOlzqz9VR5lrqo0x2qpah6luqBV15KH47MUm2Xb9G/z8nFn4TvbLtrA74GXZzXLj4SLDOpLIIzzNyXM3X6HVu/zf7osxLUjf6HKgRIj2dGF0axQDjnTXXwPE/5/F7YNrfX6fq81cXoOvRdfG9GYqf+Z/Rq+T7AThf0BDsbe8eCcG1okwDbMZadGE42P3HSxwto89qaz3z7/Mp+vz5c2DJqPNW73tFixPN57rjl0xkzPDXUoYBHEA2CNfbDB44pQ5g2TEygBwTvImv4iI4hgIZ33UzqZL01Ck3of8BoF1eXNvI4U57JYhE5XTFpQZqICCpIzm52JBhqAgP9rSCdFzvX33+TtC6tUvgLFXIAnD/CmyMdVrXr5IDWq9ws+kncTEdy8HOccFExl6dxN7V9nTOBtzfzty8KVPORXjmXWM8R1C7GzacFH2MnOZCndbr52qQ/Xo1VH+lsxyg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d19952d4-4379-4ac3-bbae-08d777c09c93
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 07:15:43.8399
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sZA2zoGg2vT9vonFykz1mws+MjkF6ltmMxkzlG/4LDaPEZkrWc22oQP2zFA1uC6yD0siDu9j1eCZ9yZZzm0VNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1864
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the full report for 3.0.1 RC3: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
No new defects are found in this cycle.
valgrind ptest failed (BUG id:13666).=20

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13666

Thanks,
Sangeeta

> -----Original Message-----
> From: Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>
> Sent: Thursday, 28 November, 2019 11:56 AM
> To: yocto@yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
> <chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
> akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
> <sangeeta.jain@intel.com>
> Subject: QA notification for completed autobuilder build (yocto-3.0.1.rc3=
)
>=20
>=20
> A build flagged for QA (yocto-3.0.1.rc3) was completed on the autobuilder=
 and is
> available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.0.1.rc3
>=20
>=20
> Build hash information:
>=20
> bitbake: 8569ccb5e9fbdeaaf96b78bd02a263b26de54059
> meta-gplv2: 0f4eecc000f66d114ad258fa31aed66afa292166
> meta-intel: dc1fcaa858e85273676f4363a645661b5f1fb6e5
> meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
> oecore: 75a4cabf55e13e6714c0fdb229cd51b5184ddbef
> poky: 12a4c177bb541b3187c7a54d5804f30c35f22d8c
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
