Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web12.9153.1582097610533731212
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2020 23:33:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=brtUvtkJ;
 spf=pass (domain: intel.com, ip: 134.134.136.65, mailfrom: sangeeta.jain@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2020 23:33:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; 
   d="scan'208";a="436143548"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
  by fmsmga006.fm.intel.com with ESMTP; 18 Feb 2020 23:33:29 -0800
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 18 Feb 2020 23:33:29 -0800
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX161.amr.corp.intel.com (10.22.240.84) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 18 Feb 2020 23:33:29 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 18 Feb 2020 23:33:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OX+YLXV3nQtjaDZQJtMCdxqHt7WvMsijN/3gIfXC0n6Ow3E3VC/dFkS1W2+WmJE0YBMAVxYnqDz4z7Ft+aHpew3OxmQ+mXSVslMiwN/jQAocLTdSp0ihQUZ0vInIMzSf2r9VIQg9OYCf38zfUHFjC+w7Fhf0y0Da98dxuzONcn6Ab09GFvQRN6YzzQfpZQ85HHuD3ark4eoTqrgsaIpEs/+gAw99SVln5m1UoMDn+gEkdQHNJwCClKJzoJklgIXFQD7PhnPqrmiGnuGDkc0YmX2JJ9gkemfkFUDuUgoiajPG1lbvRzXz39UOZCjEHJ739ypAM3HCaa0M85sRsc0IQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LHOctWNTZh6ysKrGlM5j8kfcA3703RIEFG5n/toAkI4=;
 b=mfKFHkAkI1/0c4hqmoxya4sUDcfHxajdAhw1rriPj1acqxJntaC/1IL+BOK+9aCZOLCJTGZ1ou+0shkFx8JKZXLjmZskU61lbfGoxaVymbOM8AnWZUMqWqdWD+Nu8u6CgEm4h2QD6n/fnvCiae3S1zLa9VXaxPpwmdgOuiyLWaPcfdoWT2o+rLMZ3cpOmiQFlm5jszrDOg3pQWBnPt0B68kLUgt0UNNsaO4jXdPItOQB1vwIspj5gEQb62vjwQ7CfAt6bSeYziyDuVzCC3rfb+l+zzIsxSxVFxbiOGPn76QLcacB64A29gN1LcyFFjw1DeOoRNAmP6ChanaLUrOdiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LHOctWNTZh6ysKrGlM5j8kfcA3703RIEFG5n/toAkI4=;
 b=brtUvtkJXCV4CcikvCHBHjCy9snMO6B3R+01vN0m/g/hToWXh79SukV2WKdggn8eWO30XozZOzX4IlcZBPPnvZxIgzQT0anUGdugknPDxSacl5uXAjGRFaJw+sgo8fx1XrGK/rC/qn63IQIhQPfXg+UZC/1x1sTR65CqGTPluQk=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
 CY4PR11MB1512.namprd11.prod.outlook.com (10.172.69.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Wed, 19 Feb 2020 07:33:27 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b%9]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 07:33:27 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>, "Tummalapalli, Vineela"
	<vineela.tummalapalli@intel.com>
Subject: QA Cycle report for build (yocto-3.0.2.rc2)
Thread-Topic: QA Cycle report for build (yocto-3.0.2.rc2)
Thread-Index: AdXm9tQL7AlvpbmGSCSL3Ar4BNZE0Q==
Date: Wed, 19 Feb 2020 07:33:27 +0000
Message-ID: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWIyN2E1YzUtNjU4Mi00ZTFlLWIzNTktZmZlY2FhMTdhYzc0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZjcrS1YxaG9OOFZCVmxxbGlFblVWTjRNQmx4cGs4aGUrdEIwTmdwTFZCM085aG1uN2tVdHRScEQ5RlZiK0NmcyJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.217]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9be9c35-b7c7-4d33-2563-08d7b50e02b7
x-ms-traffictypediagnostic: CY4PR11MB1512:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB151269F8B8688DF5E06B6908E3100@CY4PR11MB1512.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(376002)(136003)(346002)(366004)(39860400002)(189003)(199004)(81166006)(8676002)(81156014)(66446008)(107886003)(71200400001)(8936002)(66476007)(66556008)(64756008)(4326008)(2906002)(186003)(52536014)(33656002)(5660300002)(26005)(6916009)(966005)(478600001)(7696005)(66946007)(76116006)(9686003)(55016002)(86362001)(316002)(54906003)(53546011)(6506007);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB1512;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m1tiy7weUL/H4vUDY/dBoLleMeYg3SH9i+vaTxgdsxyKqGvr8df8xw81+YCgnEK0dkHPz8IXKP5WTOSxt/yyeaYski0SpodQ5V6g3Ydzfmb1YDVGOk8tgq9OWpTXUR9IGJbKxkGvNsaAxF24DcIlOPkzSdiyvrRig4zpu9TYDYpbcRcsiJtsn+dNCsoy+undXRdWh2RGjtAO3UIWZEytlJCKoEGMnjZSLsbl+yza/PChy2M7JwV7FXLjbbCxcBZoVI1sMNaqCGVQm3Q3EpXq1IT3zEpq1lDNqS/cND5YZJ3g73Hub4kKfSNdiV2qLPylthu9D0PXHSmMv/Zy9AKljgwIidh5LCl52BCjPqcFkm6PSdu2BH4hjw6ccdZJMtkLLTNeIZs8pkVxZQ+xP05rL6uyHPRcm+p+AwebB1oT9eRThRTCYVd6e6D/lgeM9oIlTMT3SSFqijMwuRKlCPFwdw6FFlk0j+xq82MZYUApdY6KgDWpVSGTRRdhBrsUDwVo7+GF9DwiGY5IGVZWuZ2iaw==
x-ms-exchange-antispam-messagedata: tq1U/8fXcsBrEuwGlbs6qcsZxaOsFw76tb1cijvCP1NgJTxyPho3/kwIHCuSdWW3jlarGxiBL5sPIaiS1bMeYP4T61g85GDtT0CpqQUBJaPOeUgYpG4bDjKU9bQ9sNsswT//tUe2r9eNhjawh3SPjA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e9be9c35-b7c7-4d33-2563-08d7b50e02b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 07:33:27.5031
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sj0k+o+ImLaKVXFlj1P275AMFz4nXvOGIZT1P87dcW2/ZaLJLMS4nok4b24XcTG4ALkwOoHkj3hyJ+ozvw4CtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1512
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

This is the full report for yocto-3.0.2.rc2: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
one new defects are found in this cycle - oeqa/runtime test 'test_dnf_exclu=
de' failed (Bugid:13797)
openssh ptest failed (BUG id:13796)
bash ptest failed (BUG id:13795)

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13797
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13796
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13795

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
