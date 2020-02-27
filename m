Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web12.253.1582783809415747050
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 22:10:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=LdHDHzke;
 spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: sangeeta.jain@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2020 22:10:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,490,1574150400"; 
   d="scan'208";a="410896026"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
  by orsmga005.jf.intel.com with ESMTP; 26 Feb 2020 22:10:08 -0800
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Feb 2020 22:10:08 -0800
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX111.amr.corp.intel.com (10.22.240.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Feb 2020 22:10:08 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Feb 2020 22:10:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iw3g/lgE+ch34gZ6FdyFUWP0AMSQ+wbBbbq3OXSDDbRxpg8GMe/wQ5amfso1nBIb3IpnoyksDQC249YKD50d4BpKyZXHIwo2cMiVm5h2EgXRSE4Ircbj21nWUBg1FQfHpJMhvdxsca7QNLJbQrNzVrOL7BdDatDMHAJXmZJ60UYFkm47fwZdSmUx7Dmrk/HSkVXuRop92Khq50EfZHxNnqmr3v9q9A8cD47UJzHtld9i+IRNbBOX/oaEwfmvk1GpjmspKrEdJefNTGU+mPQPsyGIq2pRkIMROaD1oyqw4EtN+f5yjY8NfUeEg2Tt6Zvx7mmauI7cI+2VKciQmlDPsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iAL+zdsFjs/zhrxm9RmUZznVe8ufLagfCkFUmE9v0Qs=;
 b=bR7eycmddGARYToXKJZ6vbCicku17NEA67oi/dD1U8wUytJpMsClrBabZnkwmx2dqv+0tCWv3/uJH/iHGVXHKvfAeJJBbreX0s8rMo/mJsTdN8165fiXLXuukKg4K3/Uv/mt5q/jNN6Pr7Zbucfv4y8dLKu3zSq+HfqwnuEGHbypbziwHxJcY1/854SRUbhEpJyQrs8f9q4qf99RC7z/4bN+STBhouiwfMoKgWj84i+Lw2Y4oVTiGmfgBOZc8SOV0QMpyTX6FjJpsV/0EJFtajwIG4weyX0B/UKqzCya/eGRkfSf1hVekLphCiLBsxHR4lw3b0Jw8feJGsxj9QNFaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iAL+zdsFjs/zhrxm9RmUZznVe8ufLagfCkFUmE9v0Qs=;
 b=LdHDHzketTN5VsUg1VdKFlD/eaxFcvn5gu/8DPVfJ1JiHfxfqhwJyU6LeojE1ycGTKxnemUmvKGJcI74/K8bqU8JeC4grhn8XAJTxk0K5/AlQoUu6Shj39lVTt4AIWrfJ3MN9VRHLhg5z2QL2YKLaLQl1MdYNni7IC+E/9PWhpg=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (2603:10b6:903:11d::9)
 by CY4PR11MB1783.namprd11.prod.outlook.com (2603:10b6:903:11d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.22; Thu, 27 Feb
 2020 06:10:00 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::4b6:55cc:35fe:441d]) by CY4PR11MB1879.namprd11.prod.outlook.com
 ([fe80::4b6:55cc:35fe:441d%11]) with mapi id 15.20.2772.012; Thu, 27 Feb 2020
 06:10:00 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: [yocto] QA cycle report for build (yocto-2.7.3.rc1)
Thread-Topic: [yocto] QA cycle report for build (yocto-2.7.3.rc1)
Thread-Index: AdXtNHFywwO9n3C+Rw+qaIHXhwT2XQ==
Date: Thu, 27 Feb 2020 06:10:00 +0000
Message-ID: <CY4PR11MB1879B273CC4B6DAA714B03C6E3EB0@CY4PR11MB1879.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTJlZTExZjQtZDU0ZC00NGEwLTg5MjQtNmUxY2RjZDlkYjRlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiR3V0d055dittRnViN2Z1WkJwUDlBVkN3bXZxMUQyNjdaSFh1cHJEVjBaY0dZWEVVdEZqXC9ud2hLcTZaTlNFSDAifQ==
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.196]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 458c38db-b38d-4f27-5b47-08d7bb4bad8e
x-ms-traffictypediagnostic: CY4PR11MB1783:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB178333CA03971DDC4A6F12D4E3EB0@CY4PR11MB1783.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(376002)(136003)(396003)(39860400002)(366004)(199004)(189003)(26005)(71200400001)(66446008)(64756008)(6506007)(53546011)(66476007)(86362001)(66556008)(9686003)(7696005)(81166006)(6916009)(81156014)(8676002)(4326008)(66946007)(52536014)(8936002)(966005)(186003)(54906003)(5660300002)(33656002)(478600001)(76116006)(2906002)(55016002)(316002);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR11MB1783;H:CY4PR11MB1879.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RHiJ/3Px9ZcAHb5xB3NmO9/JGy3eLRqj7aY+DwmQoNeSqPmjkb5o+zx5vG4Q1LkVDmRZ3QkhxPyZ60u3wIzSRTukylbx7wmT9hVEGInIcPAx63cUqmeks39QQEKVCbt2Bw1+qW1Mr09bQP1+GHD7dLnkMMfiHakGQbiKA4NTBfrljhXdHIKv9SPozd/FbsOODwk6ZcNimDbESRvlVNsOUXxpVZze7VcF2tTsNMxcXtKlfZlVdXe7yVxZcMwypLhiCuee96EzenMvasD6K3gxSzVAlvQOf1ZbQQ5HMCyNbrtlc7oyTovbsORU41xbOuryzIEx0vuhLNO6PoHAxrtWXTyJUMP4pcgDXDPcFZLoAYBr6oHEMFQKWO4Sytc24Ihhk/MxY38rHmwiuf8Fvr/BhZ58QdE2cHoWl5u+uagR+2fsegvA1ZuPtKWQmwPhgczHY5eHaYyKH7//zINV3bcugfs8pitUwS3ajbMewtN7NizLXfPXqf7oE5iYD5I2UT0R4mB6OMBK0wbdRtXMiCEOGw==
x-ms-exchange-antispam-messagedata: sM7zC7vpX/FkqxOaoH4qoQ3CpEZGvdJAHGQH1rv4SQDltaAoB45KSzMZ+p+Zkrid/3Q8pUbgpE7NJMpzes+vaJRNIzq11d3ZOJJCt4uKPziRFGO5KUoQXqBDE0mm1oMtOOdz8hkDtOCU0aNZJm27VQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 458c38db-b38d-4f27-5b47-08d7bb4bad8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 06:10:00.3674
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YsJoc/nh5Je1FtwyDM11ojpIooT1vimOB42kl90uETdgOYk3ea7GbviaIq/lOsuwRGqzHPTNBv/z8wypyphB5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1783
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

This is the full report for yocto-2.7.3.rc1: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
3 failures observed in ptest:
openssh ptest failed (BUG id:13818)
perl ptest failed (BUG id:13817)
gstreamer ptest failed (BUG id:13816)

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13818
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13817
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13816

Thanks,
Sangeeta

> -----Original Message-----
> From: pokybuild@centos7-ty-2.yocto.io <pokybuild@centos7-ty-2.yocto.io>
> Sent: Saturday, 22 February, 2020 6:32 AM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: QA notification for completed autobuilder build (yocto-2.7.3.rc1=
)
>=20
>=20
> A build flagged for QA (yocto-2.7.3.rc1) was completed on the autobuilder=
 and is
> available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-2.7.3.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: d411b097d810c386d35dc561f8812bb3f35c9a36
> meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
> meta-intel: fbd06132e6cb2b5fd43f7671aea0d431d0927a91
> meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
> oecore: ca019eec1304ca2a400ea744c0eaafe0a766d5d1
> poky: f475afc5df0837532dcd0f3a831ddc3aec8941f1
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
