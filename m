Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web12.1129.1580456764862897974
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 23:46:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=aFxGj97+;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: sangeeta.jain@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Jan 2020 23:46:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; 
   d="scan'208";a="253265100"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
  by fmsmga004.fm.intel.com with ESMTP; 30 Jan 2020 23:46:03 -0800
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 23:46:03 -0800
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX161.amr.corp.intel.com (10.22.240.84) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 23:46:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 23:46:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f7VZYJZ/lQG+BHD6j6RPkHUZPP+cujHoZN583UYf0GA2aRAjxxkDou9Ztj0n7FcVDcsCgCuiHzae0/+B3RcXxcOhUkuQo5ubuXpdswfB27XeWEQ1ux2X6q8lQ8cKt53wBzxijkQ+n6V4YtPgrp7Wsgv5h5418CQq5huI+CbdyDVTa016regQ026ZeqXEZjiY1v9Ywby0BdELtw2QFM76BMecrPR2jQgOLrisTIvAMn4fDL8sAydImpBkrxpijxMpt35GXkgsHVuIzJNJvcKXhx7Ts60U5B5Va3/OZWDP5ojsZ627EHsGYnDNYXjz75Azs+jGKUF8EtFBLaQgxAQwCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KD8ebcE1fIbN80CrVVNpmuSd4vYYsReN4ukr60po89U=;
 b=Hp6NT1CG35j4P/Tv+MpWTZHSVyCBGLI1VQDlSRNT9epziq0gqLuCDM82HUaPW09kpgSMgFthiMTLcVkOTXE7orIYS/G8Pt8xG/r7T620ILs+TAczsWY4Czhn/1tJZvF0wwPHhVd089ACjglrmkWdMPxV0PnydbVNMR9MeuMzCZTx6+STfUuCyyzpJxC+aDG61WmblxJRmlyXMrvLyZyqxd+KO9ovn/XO1tFELq8KI4iNjBMGKVv1RsJJBZK8AUleugymL0Sln7oh3B4FpYC0kZQV8mT70o5ZwBxgUaxrRX0bcCJ9jvYGpNg9QnLcNg0IOQFxTP/t0EOjeWMY+QBYIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KD8ebcE1fIbN80CrVVNpmuSd4vYYsReN4ukr60po89U=;
 b=aFxGj97+filxjJ45kgctkAusmEXQAWkMmXoZZcJY2DREYfUFkYj7Yfa7igJaAiqzm/ZKUULiX6iF5R43nnlldD7yXX5mf8qDvjsd5yFtiKw0v7z2THE+NvFKAZ3XpMFW0qVjPOR8dzG57eMY6kN35h8QZ4L21BCpxQ3I0ZtfyK0=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
 CY4PR11MB1685.namprd11.prod.outlook.com (10.169.250.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Fri, 31 Jan 2020 07:46:01 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::69a4:ad54:33d6:41b%9]) with mapi id 15.20.2686.028; Fri, 31 Jan 2020
 07:46:01 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: Pokybuild User <pokybuild@debian10-ty-1.yocto.io>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: QA Cycle report for build (yocto-3.1_M2.rc1)
Thread-Topic: QA Cycle report for build (yocto-3.1_M2.rc1)
Thread-Index: AdXYCkdmspdDrLVHSt2XqzIuBlnsTg==
Date: Fri, 31 Jan 2020 07:46:01 +0000
Message-ID: <CY4PR11MB187929CF849C81DA3A971950E3070@CY4PR11MB1879.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNGUwYTc5NjEtZjA1My00ODdmLThlMjgtY2FhNGUyMDc3MWQxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia0Q3SkFwNFNUcEd4d2ZrYmVxcWZlWkZpVFwvMk9UaFY4eElhUFdkZDlHNGlOUFd0aitnc3JaZitYaHpnU01wV1UifQ==
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3575d2ae-d319-4b1c-712d-08d7a6219e70
x-ms-traffictypediagnostic: CY4PR11MB1685:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB16858999C102FF018C6048C5E3070@CY4PR11MB1685.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 029976C540
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(396003)(346002)(366004)(136003)(39860400002)(199004)(189003)(478600001)(66476007)(66556008)(66946007)(64756008)(76116006)(86362001)(2906002)(52536014)(5660300002)(54906003)(66446008)(26005)(110136005)(316002)(33656002)(71200400001)(55016002)(6506007)(53546011)(8936002)(8676002)(966005)(9686003)(81156014)(186003)(81166006)(4326008)(7696005);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB1685;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ShhXTMAgwHoHg19L06Ccw5kVXt342f3ss6PeOoqpGCSrmVae26STCKngkYeYWGTtCaHtyqgabuBKg1IodV699un6+qYyR3Flk0Lxtuu0eS7jS8WWqTnP2p2NibJNCz+rdZjnBqyUIs27vcbCvNCBoriKdV2+6O5WBM1EoJQBU92aV3HDMIhutChrBjoWfxxaUSMhvO7/LBR/rj8Amp852YrZ5ke8B6vXaYD/A+5OfM8m7FqgXniHFu8bYFRPq6lTIGY/fzeMPM5clvIRw/Tj/nWaIirhtccflXd4mRtWq1ISpqvSwr4ANEkLZon2dvSEPIa3xDXFYJpYOGVTv5oQSul8fRWts77b1uu6V4lKWqU7xfIiTA/ZcrgBxQBc5HnEi/x5xYHx+rNp0gnGS2O8EjmLPiRybZImySUD2EinUpfyIPzdxdjnETTOmstqgFINV1mxDoHM86dPWKQq3w26EnicQOMyDGYhdOE/udsN05WZRbLvU6pisdMM0tvcI5m1oVX7LQLSms7NfD5Ahc/LKQ==
x-ms-exchange-antispam-messagedata: SaLeNmpnlJsK29O3fgM1XYtKxwSgbO9tZPAkoHv8MRQd0CM6Y8jBmaz5XAw7U0w8HPbFvomKU4kLEFu63+8idU1M4kdtM4Ax4wctvKj0I3zRcILO06dVIDyiVDfuCT1EXZoImmmF79u+7HHcM0CnTg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3575d2ae-d319-4b1c-712d-08d7a6219e70
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2020 07:46:01.6296
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x88+KiMST+TGpY+ogvlBa8iy2elXTvfGYkdbStZUcZvwiFBgkRuUQslRjaxqdwDHHewpM/Hkm0Nw/cEJpjZFKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1685
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

This is the full report for yocto-3.1_M2.rc1: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
No new defects are found in this cycle.
starce ptest failed (BUG id:13765).=20

Note: failure for test_ltp_help, test_stap, test_mmc_mount, test_usb_mount =
is observed on Beaglebone, edgerouter and mpc8315erdb.=20
QA team is analysing more on failures.=20

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13765

Thanks,
Sangeeta



> -----Original Message-----
> From: Pokybuild User <pokybuild@debian10-ty-1.yocto.io>
> Sent: Thursday, 23 January, 2020 5:25 AM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: QA notification for completed autobuilder build (yocto-3.1_M2.rc=
1)
>=20
>=20
> A build flagged for QA (yocto-3.1_M2.rc1) was completed on the autobuilde=
r
> and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1_M2.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: d5a4a352723258b4d499d3a51f340109c4f36f60
> meta-gplv2: 6107be140fdec204586850ea1f7e4b968be7670b
> meta-intel: 0c092dde58bb688dca787c653ee7a3282d58aeab
> meta-mingw: e3dadc9f28c24a8d182121d0246b3d9ec048846a
> oecore: 15049c610bcfd0a3e161379651b5ea117ea02715
> poky: ca3993cc4b13d4e661228cee6fb9448adfd0a4ba
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
