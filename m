Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.2362.1576795858287102043
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 14:50:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Zujtk6g+;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: vineela.tummalapalli@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Dec 2019 14:50:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; 
   d="scan'208";a="267353707"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by FMSMGA003.fm.intel.com with ESMTP; 19 Dec 2019 14:50:57 -0800
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 14:50:57 -0800
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX126.amr.corp.intel.com (10.18.125.43) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 14:50:57 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 19 Dec 2019 14:50:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BoF+7+pAVwazOUo0ZFoQa+IrR7bSN/enaFMx/+I0OKIaR8a+ChrHgQttuTLuA5a7ps739mdYaOZ1q7NQm7N5OSaxhukrEY5eOHz7C4L8NZNpljOWLyJ+leK0BCyU/+vcphr2aoDHD58l0wI7CjLOdXzH3+ARQklgun2KbnDiUfpMrkArO6ngoPN27Y8QGi+GCgSah3GvnDXUc0cY4NMUERRXpnGEberqN5OkPkee0H8FoH++e+1Kr/eU/nMHDi/XpRV+c0kX05ACjGks/kBoDZGH/60G8q73IOCK6AhD7W9BJbe1DJ9IEQmUeNkW4+qwnDSmtmX3y/lRURr2fjykhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OGBBMgTFwE4ITdtA23JYvyaE5jDFwRSjLnepHQ4dP/s=;
 b=GHME7Owxro6b4PSAiKX864auQhOP166TYXNJviEnDmWlRcpGEY7mgFPCBO4GO5zzjt6lDDz3DlwjDIKHRVPon+k3bF7uqNP7gHbgvL0xn6Q+3Pf3nG6otIeJ+1Z7bWkj2K11NJTCJ/8m2bHNkPvGA2SWfI8+XwUvt0JWjzvDDCKJ2E7E+upFZn06t7cWewk7c9J6K7csXP5Nxdr+QPgvgVZI0riqO8BedFoO+FES8QJvSl7EbAa1aSlHTUnXbwEra8C16+av4evF7uFOXhof7tVDEcmpxQTkGxGXmUJa0AYdUm5mkhGeRnW12nh+ucr65QTlbnoP2qAlRcAkSe9c3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OGBBMgTFwE4ITdtA23JYvyaE5jDFwRSjLnepHQ4dP/s=;
 b=Zujtk6g+B0+3FfiMB+icn/xKLGHiIEjFikIXjhJn7MqSZXvKGs4F+iDK+j/5QMEb96kxeNW1D2kdi8znPpSylEKrIPCSgqEgZz45nrRyDpkE6yW1xzSputRgUtoICqh2NXdcluwIYJtNboJCh/j8Yg/7OUJUqd2OGRKjVjzUuyg=
Received: from BN8PR11MB3809.namprd11.prod.outlook.com (20.178.221.91) by
 BN8PR11MB3812.namprd11.prod.outlook.com (20.178.222.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Thu, 19 Dec 2019 22:50:42 +0000
Received: from BN8PR11MB3809.namprd11.prod.outlook.com
 ([fe80::d840:7fa0:2766:2fc6]) by BN8PR11MB3809.namprd11.prod.outlook.com
 ([fe80::d840:7fa0:2766:2fc6%7]) with mapi id 15.20.2559.012; Thu, 19 Dec 2019
 22:50:42 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 3.1 (yocto-3.1_M1) now available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 3.1 (yocto-3.1_M1)
 now available
Thread-Index: AdW2vfXEjYtg6wtbQwaLHG+O9wnbZg==
Date: Thu, 19 Dec 2019 22:50:41 +0000
Message-ID: <BN8PR11MB3809B48BDB19473D156B7A9B88520@BN8PR11MB3809.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWJiYjgwZjUtZjYyNy00NjhkLTk1NDAtZDhmMGZjYzE5ZTJiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia1BtQmNpeUNXbEpaSlZicEVQdVZxYWhmMVhZNTlZV1dkS0ZjMEtiRGN3dnY4eTJlMFNcL2gra2hDdWZScVpIRFgifQ==
x-ctpclassification: CTP_NT
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vineela.tummalapalli@intel.com; 
x-originating-ip: [192.55.52.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dea5d6e2-45ed-4dbd-7828-08d784d5e02d
x-ms-traffictypediagnostic: BN8PR11MB3812:
x-microsoft-antispam-prvs: <BN8PR11MB3812E86BD797E0702750DA0C88520@BN8PR11MB3812.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(396003)(136003)(376002)(39860400002)(346002)(189003)(199004)(8936002)(2906002)(66476007)(8676002)(81166006)(81156014)(7696005)(5660300002)(110136005)(55016002)(52536014)(66556008)(9686003)(66946007)(76116006)(4744005)(66446008)(64756008)(316002)(26005)(186003)(86362001)(478600001)(33656002)(6506007)(71200400001)(966005)(491001);DIR:OUT;SFP:1102;SCL:1;SRVR:BN8PR11MB3812;H:BN8PR11MB3809.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4BMZZ4cvtot6Z2LAn2nF/1jT63ydqn5UXK3NjeVsYwS9GyHS8rSY1EjzecQ5gya1auaDGw1yVoWVsZQZln8W4/oGcl/ayPjHnzZDdzljjhnzvWm2DKDkiNMiOmGHu4jxg1DoKW/4StBx7HSDNU105SP7ptLxTKa8NXdNgVWmgrBxzwalFzWbp5izxiqRtdM+PWXakKoVHcFN7gycZIJxlFIpPa3iA7ZccpfP7GHuBfF+jLVDpVMG+43zwmu0ZlDu/MJwspFqe6+bls2dvWmm/K88rEzRZDm1Hc1NQtwUxa0ThUlIIZoIgQTTHbDMc0IV+v8j3D0uAnvnhuBTN7hlZZf6e0/0nPoVtSNISrp6WiLcOkhKk7f8O2MLhX5wA/O/+jZatDm8ZTcu+dCBKFBuGjQyN8OTKSpnpH9Z0jGcFHWdaW3EcgYp+mW9MI1FHBwc2/uWQwQcbdM6QBzDhffdSrLTE068hWZ9mEb9otZTBB+T1tBDOF/NL7Wod3kyjC28caIG52lIJdDP52GwLwQERQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dea5d6e2-45ed-4dbd-7828-08d784d5e02d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 22:50:41.8782
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9QwxpU53bsXYqiATde00x1KrSyWzgbpbf5kpf/cbogIEllA8lCmkxjCKkVptJMojWAn0eMeg9ZclLwbh3RiNBUf4sIKwn50IbnVpDnf9OBY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3812
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the first milestone release for Yocto Project 3.=
1 (yocto-3.1_M1) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M1

bitbake: 99d46107ccfcec576238d32cfe7903440857038d
meta-gplv2: a67a5fd160f97129a6afd65f107cd2cbdfec41e7
meta-intel: e1b373f3cbb9acd71efe84d782675025d59b6035
meta-mingw: 126efdad243e1a3bead5b695df6656e94353dd46
oecore: 0f04e81c797d5d337ece4e8638a6b71c75bc0a00
poky: 1abffc542a0571f0d1512b92c1a59d138cf3ea6a

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M1/te=
streport.txt

Thank you.
Vineela Tummalapalli
vineela.tummalapalli@intel.com
Yocto Project Build and Release
