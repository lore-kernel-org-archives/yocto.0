Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web11.65736.1584358954990770309
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 04:42:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=ty4teeut;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: 148TeGU5iV7c8BF+eId1O4UlRB8wjL+BelpsJdy9jzbihBf0Vv3czO6lW7g0DyYQFRnMPhSjoE
 hJap5n2fVgqQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 04:42:34 -0700
IronPort-SDR: dy0o4Rk4dhsYWQUy8q/xLqx+QFZYdFwvpHci7wFiQo5+Dr3Tfl3G1dhP70sQMU7TtBLSkLq6MR
 h+kD24fY+jGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; 
   d="scan'208";a="279003296"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
  by fmsmga002.fm.intel.com with ESMTP; 16 Mar 2020 04:42:33 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 04:42:33 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Mar 2020 04:42:33 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 16 Mar 2020 04:42:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 04:42:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SzdRIquhNYzoE33icfRo2KivYA8Qx9lB2QE/EfWePWNv6lZe+/pR1lyOX4hyYXt6XzceRNvPH2pmOInSclv6x4eo3tlwdFQDiW2yRRnZAHG8kivXFeAiVnvxL0va6zbGsWuDInOmPRo2N5/FVT+prt6cr/QjgzQzK4zoXtwlwt+4qOqViufxx/yjyGGw4hBB8y9BFRGzXBQ8heG0CKGPwehGKqyDVkvBjWaQCy/Mkw8jreTOeumRKUnYzZFqdThn0XiO3BmsMu6A+z5dNsFRvyftMVCx9MBoXLgQvNPg+8IrZkwPz39kzyOL6xD6HsS4cE+Est73Tm8hjI7o/ladpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8mOHkNuZ6nh1J99edezRdeBGVR15CAO1KIbiuOD+1w=;
 b=lHZxIHmnefwmsgORY9dxs1M7DqiqA09YM4p8MtKXJRtufxRCh/kEzxqSgiS6uPo0y9I6/nWygpFVKDIlgSH+cY+8pfF3XGQXDwZ1ag+Of3z+IQM5Og9Acic4ucvYcPkJTu4kVEZMTSfFCKP+dXfzuajaHsPyFfLm0IQ1CEFsM+t1h2jdulDNv/8jmUFuDtoTDaYZACTOpD3idRTFUvxsIYfW47GHpotm/FpUdxENrMduebpDsuxVjn6bY5VLmDwkUwbP0oGVoVWNHFn3O58SE8MNvMxtf47HmUr5nzvfy6NZlXd65d7Iup6tftkVrB7iK5ewEi4s/8NNwbLdXg5VTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8mOHkNuZ6nh1J99edezRdeBGVR15CAO1KIbiuOD+1w=;
 b=ty4teeutsR6kuN86trwdVW6O88vxx6e3FLc7OZbxdW/+QeIXmbP8z8s2TlWA82pBgeWvoiyQNNHKPnWgCuRkUyAEQG+N17o3geTt8GDQCcOGDzDujcUhRJYiagZ1krn/RyNIWA98he7uwsfLz7BcHwWVFUgsxAzqJYOyw287eDg=
Received: from MWHPR11MB1885.namprd11.prod.outlook.com (2603:10b6:300:111::8)
 by MWHPR11MB1422.namprd11.prod.outlook.com (2603:10b6:300:25::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21; Mon, 16 Mar
 2020 11:42:22 +0000
Received: from MWHPR11MB1885.namprd11.prod.outlook.com
 ([fe80::a841:1e1c:9ad5:f095]) by MWHPR11MB1885.namprd11.prod.outlook.com
 ([fe80::a841:1e1c:9ad5:f095%5]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 11:42:22 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "pokybuild@ubuntu1804-ty-2.yocto.io" <pokybuild@ubuntu1804-ty-2.yocto.io>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1_M3.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.1_M3.rc1)
Thread-Index: AQHV+3btrZncKwmncECtaZHainEurahLGFdA
Date: Mon, 16 Mar 2020 11:42:22 +0000
Message-ID: <MWHPR11MB1885A54E561C1063624148A1E3F90@MWHPR11MB1885.namprd11.prod.outlook.com>
References: <20200316093949.2D615E01861@yocto-www.yoctoproject.org>
In-Reply-To: <20200316093949.2D615E01861@yocto-www.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [42.189.136.148]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb6d5b65-43e0-414c-bbd7-08d7c99f1793
x-ms-traffictypediagnostic: MWHPR11MB1422:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB14222CC8435B80BED4D78E3EE3F90@MWHPR11MB1422.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(39860400002)(346002)(396003)(366004)(136003)(376002)(199004)(76116006)(81156014)(81166006)(15650500001)(110136005)(54906003)(8936002)(8676002)(71200400001)(5660300002)(33656002)(86362001)(7696005)(316002)(2906002)(186003)(4326008)(26005)(66476007)(55016002)(64756008)(66446008)(53546011)(66556008)(6506007)(66946007)(9686003)(966005)(478600001)(52536014);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR11MB1422;H:MWHPR11MB1885.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e1QTvKbE6rESYZiFGR9nPt7/neF5pD8vjQfnqjmaTpCao8ywvwPxp/kPdrf4wFzfyfdMY5y1J3GmnGAEi9oprwWFk7NDr39lHDP+RXyZrfDxjl1Hcb2NMEijMxp0oslir76Az78lJEVCdoVD6cZVMeMM8NUHemKr6JezuChQqhcc4uOOPxGzCTY36rthALx73HQ8R+pZi3fmanjz95tDkTGCVuJkbTIV+/d5D7V5IgQYacBAkJncRF1btmcH72wYkyQW+Xg0+XryuzPMrjVUNsQJy5kaY4sPDrYh0AfbL8xX0qyeBJrdcMBlTBjnpP2aJD9/sC02jJO/2PXHsK9gDhf8shrWEEQxohCG1xI6Sich7t7MrnGFgCFpahQPWX5sF5YZ252qOZKIKExn+PDo9SfkDcMAj1K6kvlAKa0aBoVEXd3achdEDRo4IDlliFGmtAqEpiAtpfEy+yH1Y2I9KH4/81sBkq54PSH60SvIM4yIB8lfD/G9LgPI6f8SymJtIIRO7RYnuvpyBvrvuoS7UA==
x-ms-exchange-antispam-messagedata: h2pbVNqEzi9tTMDB59E54Klct8lch6VTbByU+ykl0IqAEFNnmu//StT2PGFUfgVJVCyJSMN63yQeqQY/0qxK8Tr2xNCeHyyloixs0w6CX7oCh8QxfFPMVD+lTplEcxbdlctJx0/ZI3ESjtT+rYgt7w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bb6d5b65-43e0-414c-bbd7-08d7c99f1793
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 11:42:22.7276
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 97wqGEF+AAta+jeT4hSSh0eqVUHmzfC+/woSASthIaDQxcSmdW9kpcWvaMLfDrfBiFClUJeGeoWZEiQDj+QMSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1422
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.1_M3.r=
c1.
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
7. Beaglebone

ETA for completion is next Thursday, March 19.

Thanks,
Sangeeta

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf
> Of pokybuild@ubuntu1804-ty-2.yocto.io
> Sent: Monday, 16 March, 2020 5:40 PM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: [yocto] QA notification for completed autobuilder build (yocto-
> 3.1_M3.rc1)
>=20
>=20
> A build flagged for QA (yocto-3.1_M3.rc1) was completed on the autobuilde=
r
> and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1_M3.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: e67dfa4a4d0d63e4752655f25367582e5a95f1da
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: 60773e8496370d821309e00f2c312128a130c22b
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> oecore: 61d80b07bcfa4adf5f1feb2904fec0a8d09c89f6
> poky: 6f02caa39985fb89d9ad49e1f788a9a8dd6e12d7
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
