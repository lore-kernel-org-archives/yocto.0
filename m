Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6110.1576639954994464512
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 19:32:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=EMs0nZmG;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: sangeeta.jain@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F4ACE01233; Tue, 17 Dec 2019 19:32:34 -0800 (PST)
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
	*      [134.134.136.24 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F301E0122F
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 19:32:33 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Dec 2019 19:32:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,328,1571727600"; 
   d="scan'208";a="212781531"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
  by fmsmga008.fm.intel.com with ESMTP; 17 Dec 2019 19:32:31 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 17 Dec 2019 19:32:31 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Dec 2019 19:32:31 -0800
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Dec 2019 19:32:31 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 17 Dec 2019 19:32:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T0p3TLIMQXO3SibtE7OrHpn1xSY8CYimR4IV/V7Mc2vGP0VRu+qeQlPDe13if43HF0ZBmo71Mzpd1CaW/VWFiJcf9OyBklFz3a4aniyx0DwxsD6Q9HdJHgCdUZBn6wZEJ+kmd6pic2T8UrLYZYswTP7mkQ++qK1o9hGN4JBILUmTWetInYvjvNkiSpvBykvQpe+73+E8gMwHwm1/7H0JF589Ipe+IY7nzE5v1MF7IcFGZvdEu/wXQ7hSLQRR1/8FoiKfQQzHwAv4RPwpimVq1YrYCh3U3MLGo/hM8FN4PALhmZnrz6831HobTdI1byXAfXmYIN+t2seYrttqCthubA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q6VwAX2Dr6yxsu9MVTaOOtvVk5KUiloYD4fjAcaPzMw=;
 b=XG50gyGRiBmKQDDXQ9woIShEQW47UphamZw//BO8g+QBFouPvHRr3C4Q5mlIgz/vlcnJOn71AT6G+26voMnB2rrMcInt3+KVs2NXvAwEgQBLLoGRaT3lqVeqMHDdlBm5F6voKcG8MJf9wXoikvY9teXPhCkvMsx5VuKATiOtUucqDssWOnP1vybToMwMaRX6fkAttXgsPdhP8Ulv0RVeDVzF3dxjZr9QxnZNVPH4Wa0a6cjFc0LQs8lKkR9VUg77X+tBJrdhwq+BcER4I2631yjrNA4dSufBXSJHJ0pOwFkNHlD+7k8A7zV3S+6yMk8B7lHho6DNe+zjX04m4L//Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q6VwAX2Dr6yxsu9MVTaOOtvVk5KUiloYD4fjAcaPzMw=;
 b=EMs0nZmGOKehKWQsi3s5xjQOQ1aAQQQsUv2EpIpxZesOUJIG2ME014wbjqOis57eLNuAy+bpt1yz9EmICZNihuY0DWusZJwgbaHo268NcYe30vegBH0Ejn/tdEXBxMHBQPXAPftJClwEQ8Bkt6sywr3fV8bGtHRHfNt//SsZLCA=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
 CY4PR11MB2006.namprd11.prod.outlook.com (10.173.17.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Wed, 18 Dec 2019 03:32:15 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::48d3:627c:7ffe:a558]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::48d3:627c:7ffe:a558%5]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 03:32:15 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: QA Cycle report for build (yocto-3.1_M1.rc8)
Thread-Topic: QA  Cycle report for build (yocto-3.1_M1.rc8)
Thread-Index: AdW1UyKljDyWDoJ/Sei6YnM1iwR8/Q==
Date: Wed, 18 Dec 2019 03:32:15 +0000
Message-ID: <CY4PR11MB1879E2568F55FFDDB413B54FE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTUzNjc0NTItN2E3MC00N2NmLTg2ZDMtZTFjZmYxZjljZWY4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVU41T2VrWkkzOWozZ3M5cG03MkZVd0tjNmJxSTNub0lzSDJXRGVLNmM5ckhzeGs5T29CUDdvUXNBYXdMU3ZZaiJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1890fc0f-f99a-4cd0-4f5d-08d7836ae0a5
x-ms-traffictypediagnostic: CY4PR11MB2006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB20069BE8F74B1390E22CAD02E3530@CY4PR11MB2006.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(396003)(346002)(136003)(39860400002)(366004)(189003)(199004)(53754006)(13464003)(7696005)(33656002)(5660300002)(26005)(86362001)(52536014)(186003)(66556008)(64756008)(66446008)(66476007)(81166006)(66946007)(8936002)(71200400001)(4326008)(55016002)(9686003)(53546011)(76116006)(6506007)(81156014)(966005)(6916009)(478600001)(54906003)(2906002)(316002)(8676002);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB2006;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y6RM6r7ZvKnOUQUhUFFMwcSWnvElffRlvYkxx26Pd62d+nKynEn2tLlLKXhdXnB7WeeA7Eow8mNCTCfaTIfvrMEQlysHfE1KcZ6yFzXt8r4kcNkop2k/a8IkyaroGGKs0mwLJRmZCVVUzpd4X8NUiodWAtFww3WBkRYP8qE/Wp+1BexV33p7V5b1ut2Zc+syHlkx+mKTJ+ncTcFLo8PZ842Hhx3ieJ+uJDanKuU6wn7rAnUazp2DMnfPTvaNZD1VHKYsnS3VEqxSLpZ/C1cTyxDuAzb/3rXO7hLpASB7lJG+rcyceg+RQ2Z4jSjza84pBUd6IZqrHvF+vnjNlBDW05p9wlnyOlI2tDCITRNlNMkVnsO7hD695JDC5afk425kDmN1QN+niLy/AzS+QEkBIENkGW38CT7nMijifCvA5o5QXPCUD6198N60mzpC2L/84RFlcvYyVbj7IPxBXv/0i8B0Rbb9duAYp6qLpxrG7QaGJGyqto14Ou2bnQCDLMS9i2rAaRVAwYRmRIfxcBY1C8zbSjZuDj5eAN0sy6AgA+OL7NNlfYEpNBdsQk+Kw1MR
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1890fc0f-f99a-4cd0-4f5d-08d7836ae0a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 03:32:15.2577
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mkH7kDl1oakLkJsvwrByeVvKFwQ1SorYu7lHJt5gDSoV2Hih7p1zG0gvBcUcdcuwJCfCrFVJWeqVPnS/mBAAgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB2006
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the full report for 3.1_M1.rc8: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults


=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
No new defects are found in this cycle.
glib and valgrind ptest failed (BUG id:13713).=20

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13713


Thanks,
Sangeeta
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
