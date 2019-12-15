Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1336.1576382513224826293
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Dec 2019 20:01:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=s4Rfo/aw;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: sangeeta.jain@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 944DCE011C1; Sat, 14 Dec 2019 20:01:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43DE4E0085D
	for <yocto@yoctoproject.org>; Sat, 14 Dec 2019 20:01:50 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Dec 2019 20:01:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,316,1571727600"; 
   d="scan'208";a="211894749"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
  by fmsmga008.fm.intel.com with ESMTP; 14 Dec 2019 20:01:50 -0800
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 14 Dec 2019 20:01:50 -0800
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX153.amr.corp.intel.com (10.18.125.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 14 Dec 2019 20:01:49 -0800
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.51) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Sat, 14 Dec 2019 20:01:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h+nHlfbV5IPCUeGv7aCclkxu6nEz2tA8jdAWtSqL9tayxDJc3I4SZW37DtLrQ+BSca4V732eqTxLdIII1ZokUKaQXdaubM05hwQ1dTg/CQPFGqH25rzvs7l90UXUpdTI7rG/dRCdBkbYa1ZSQRfNt0VWPXja7bDnux43xoIcZs06Vr3AD57VYLYq7YmyGkhpnu2X1Y6axih7HpKrANSLNiv5ZJpdRF+AgVgHdZv6tDmYMfGRE/yOlO/uXMG/uU53NA5cCqZdtHcCtygEFnqoyVlkDUDNh+CifeAiPGdXzbEakQZB+ajI3pXwOUTtert0NUpulQDBlTa1hXq44KelhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ry6/S49Oh0aHnmrLuI81kIP3yBWVegsEi21X0458zRo=;
 b=F9lqx2apegAJ1zZ+4Y9thu/qc5IchfzTKH+AfsW13dOKZ6LV/Vlz2zF6/tv6exmneArlSgQ8hMH+xVs3mba4JdYuO9ozSbnv1mZnmJ2CeKF0SvARQUzvr3sW5uXXtKiyY2DrZVoCqoT+/qU97ElhMScxXY+HXifwLCYEtjb5qcntQXZYRONAkF0KMauxnF+vNPWLydlFWZFZb4bgGSawTDX//UDz94cw9Fvfzx+smmqPl9/In6jMnFvYNHyMUqcii99Tow4X5Yyxi94c2npl16bV7kdlQtwxzMYvMLJNl3lk+X69d59KWdrcG/3fq233xCuy3507dksdaE1QVGs9eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ry6/S49Oh0aHnmrLuI81kIP3yBWVegsEi21X0458zRo=;
 b=s4Rfo/aw0pqQiuV2G9OsZzmvD+uvLqpSEm6+P6fw5J5Iq/4RqMOSbaScAblKJK4OeYJ6gAn7wxKRDsO6gmIMw4Sm3sJw/4UglD+7fIm3AMKzqpEb4GOaOIxGLIatH9p8f1SffTYqzV4hpVazf9T1K36BcXzKPKblCsLbEEKYTTg=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
 CY4PR11MB0007.namprd11.prod.outlook.com (10.171.254.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Sun, 15 Dec 2019 04:01:44 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::48d3:627c:7ffe:a558]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::48d3:627c:7ffe:a558%5]) with mapi id 15.20.2538.019; Sun, 15 Dec 2019
 04:01:44 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "Ang, Chin Huat"
	<chin.huat.ang@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "akuster808@gmail.com"
	<akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1_M1.rc8)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.1_M1.rc8)
Thread-Index: AQHVsYUWoh8qVl9iokmRmZ466ytzAKe6lUew
Date: Sun, 15 Dec 2019 04:01:44 +0000
Message-ID: <CY4PR11MB18794D7A3781F3447EB70A59E3560@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20191213071448.B67E8E01080@yocto-www.yoctoproject.org>
In-Reply-To: <20191213071448.B67E8E01080@yocto-www.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmZjZDI4NTMtNDgxMy00NDY5LWJjYWMtYmRjOTU2ZDVmZmFlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMERicmVVeWxQZjlFSzV4Nk5rckVUR3hlZkpCWHRyRFBiYU9sc0dDT1gxNW9xSVVtN095UkxWUHdHR3VMMzZRMiJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78f7ffd6-4e31-4bda-beb5-08d781137fc6
x-ms-traffictypediagnostic: CY4PR11MB0007:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB00077E909097F7474F69C4B2E3560@CY4PR11MB0007.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02524402D6
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(366004)(136003)(376002)(39850400004)(396003)(53754006)(13464003)(199004)(189003)(52536014)(316002)(7696005)(966005)(6916009)(64756008)(71200400001)(66446008)(15650500001)(66556008)(81166006)(54906003)(76116006)(55016002)(66946007)(8676002)(6506007)(53546011)(186003)(5660300002)(81156014)(4326008)(26005)(66476007)(33656002)(9686003)(8936002)(86362001)(2906002)(478600001);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB0007;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DbQ+SL7wv/K/sEmHJt0z/RuopbM37iUI23f0kb7RQ7hbW3m1WXHsKSXqVgi2Y4edqLnKx9cP9G8aUShfHr8SAeeyKE6IyAP+OP0vOzD77NVO6wh4W3rJ7Ztesg3W0jEKLQI+xlYoxv31ByisQtnHMSjS/r56nAj1kZrEoHiuGhyKYDEtyOYeU0gLpntyxcFxvaZLKHee0yytu3/YY2q1ylx9pOxyn2znzW+VGzquuyKVkvQ+WvbDLNXD1dBQU3OQrkcnRYB4dn+HYeR1TbxVWM+AW7IU28da8aBgekZCsxmpHTz2j1ULtATWZFtIJs3DuT2pmzYmEYMWoybyTDV0KbmqOc/HvqWWD2xnPZgkyoAJHD1++DE6mGTe67yzsSkRgfMCb9PNU6sanJAxEDa/dRjvRx1mMqYhK5Dj3pTb8oTGAoIgyt+1TiPaCbDE4d1EKMPJQJ3FOzJfD69rw6Fy6t85+cjZvtjT4U8yNmNq2r1Nib4m00ZZrJ5Le118Pd5wcjE8o2jCYg7meBSt4Q9Kkpystz0HY2MOlH4jvLd7RudcDerAKr7OzS1vusnfB3m2
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 78f7ffd6-4e31-4bda-beb5-08d781137fc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2019 04:01:44.1878
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cWWzz+Rrb3CHwLL6FATGP94iY7zA2FCgty7QaXdjYSNxM7MtaTB+GsdmrsE+YqVDWCeW0cAxlfmc+0Ql0w4CbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB0007
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.1_M1.r=
c8.
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

ETA for completion is next Wednesday, December 18.

Thanks & Regards,
Sangeeta Jain

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf
> Of pokybuild@ubuntu1804-ty-1.yocto.io
> Sent: Friday, 13 December, 2019 3:15 PM
> To: yocto@yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
> <chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
> akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
> <sangeeta.jain@intel.com>
> Subject: [yocto] QA notification for completed autobuilder build (yocto-
> 3.1_M1.rc8)
>=20
>=20
> A build flagged for QA (yocto-3.1_M1.rc8) was completed on the autobuilde=
r
> and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1_M1.rc8
>=20
>=20
> Build hash information:
>=20
> bitbake: 99d46107ccfcec576238d32cfe7903440857038d
> meta-gplv2: a67a5fd160f97129a6afd65f107cd2cbdfec41e7
> meta-intel: e1b373f3cbb9acd71efe84d782675025d59b6035
> meta-mingw: 126efdad243e1a3bead5b695df6656e94353dd46
> oecore: 0f04e81c797d5d337ece4e8638a6b71c75bc0a00
> poky: 1abffc542a0571f0d1512b92c1a59d138cf3ea6a
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
