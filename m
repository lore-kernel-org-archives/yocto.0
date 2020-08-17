Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web11.38566.1597648167499206311
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 00:09:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=X1e3hVkh;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: T0pZBQl6Ic6YhZHTkEz1fV9ynrs0p6KwYaBtyxfR0yGkgwHB7F03eQhJDc7Ly4wlg4Tkopfrs1
 ya+/lKrU5rZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="172701181"
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; 
   d="scan'208";a="172701181"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Aug 2020 00:09:26 -0700
IronPort-SDR: WHE1OgyvHWWkWH89uiwERatXpBWo4/11UmDJJCc8sDabjzGLQS0Tl3e7hlrq1xTJXq6DZ8WeZj
 9vY2gGxnfZGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; 
   d="scan'208";a="328531390"
Received: from fmsmsx602-2.cps.intel.com (HELO fmsmsx602.amr.corp.intel.com) ([10.18.84.212])
  by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2020 00:09:26 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 17 Aug 2020 00:09:26 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 17 Aug 2020 00:09:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 17 Aug 2020 00:09:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 17 Aug 2020 00:09:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IuMtC34vFKfDlmLk6jyKONcyn2r2sjJzN1NfHOGjbEFg0V9ihSrr1PFg3ngv9lVh7L7JLe8h4GSXAVnN5ZZ4wfjmbKbcdIMBxbIbKNDrK6250hCpFrO8s/XHj5tqM/hUjWjL/qYQjDcMTT0pai6lB/p13ClC46lMVDq08h0Gr63LeK+3EJ0w8FU3x/Z+2Qa0N8QrnWZxcyzEAyH8P+8I0MPgQ45X80ev6pqMtakWP1rp+7f2EWyvhn9IB1dwylgEmOS8egeds0hlf7en1fX/r8UGVnj+kEpDjEu/jw1B7XkauP+pebHHU0MLZg7ayyaumT4jHDjntW0E4OkEhH+bwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TvDXoUTvYwRr0xbA9e/g2wSUDqnAxlc/fkrr3cOqlds=;
 b=PvhGb7AoC8rjcgmcpEhU+E0ygyKCQAFRXaCiPp361q1dqIFTVZpDtg9KDARe2nSN3Uy7sWp9HmoLQO7wi3vxuftScqOMqg7cIp8qaISEjSyvqESv+OAUvbYjQYeqTxYd+KVBGK1vLPkU9bFKsQEa2dJDluggbKrX/LxjBDgnfViwgrv/8ndJ9LBoAhK6Y1ZH0mvN1fl98nc/WbXCMQPe+jcUyLq3b4QuPF/lNIktYy16Xds/qrNRR6WIou4yg6V0H1GcNHzD7k7K9DIGxR30678f9RKpTAwkhkJkH1blNQlm8+uXGpAuzHustH/DEb0j/7mT2W3CfE1RTF89QFYPlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TvDXoUTvYwRr0xbA9e/g2wSUDqnAxlc/fkrr3cOqlds=;
 b=X1e3hVkhXK3p8D82/RksWKazlzIDtmXBUPUqn2ke3RvbuJp2kg3EjzC8cWmCiY0Ud9mvFRrK1T+xulyWDl/r4iM13mEiBW0q48A6377HAc+8r7BW6V+1M6sDefyxCOJGmAiSr0uIvSw7+OriKPCjfzNFUB3Bf8XK7jbvCTPo4hY=
Received: from BYAPR11MB3624.namprd11.prod.outlook.com (2603:10b6:a03:b1::33)
 by BYAPR11MB3815.namprd11.prod.outlook.com (2603:10b6:a03:fa::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.23; Mon, 17 Aug
 2020 07:09:19 +0000
Received: from BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::86c:9bbb:7b9f:c30d]) by BYAPR11MB3624.namprd11.prod.outlook.com
 ([fe80::86c:9bbb:7b9f:c30d%7]) with mapi id 15.20.3283.027; Mon, 17 Aug 2020
 07:09:19 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.0.4.rc1)
Thread-Topic: QA notification for completed autobuilder build
 (yocto-3.0.4.rc1)
Thread-Index: AQHWcsHfJuA3Tf/D70ijCx0lKk/WD6k74NtQ
Date: Mon, 17 Aug 2020 07:09:19 +0000
Message-ID: <BYAPR11MB3624C7C679599BA7EB0070A6E35F0@BYAPR11MB3624.namprd11.prod.outlook.com>
References: <20200815050617.E1710247EA@centos7-ty-4.yocto.io>
In-Reply-To: <20200815050617.E1710247EA@centos7-ty-4.yocto.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [42.189.136.88]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9da611ee-4339-4743-4bb1-08d8427c7608
x-ms-traffictypediagnostic: BYAPR11MB3815:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3815450E22F5F6F5FD363564E35F0@BYAPR11MB3815.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ErqPdIBCqYD4nz382X8Z9ZNi1SdUcp38/HwlVlYjs/aCl8jTpR2opJQcILI0kZinR9ReceRCrO/KxVqf5s1+Tk8+19WtkKUfMyocRNrjM0eop5CPFnj2VLtmVasSPpL0EPnQzfPzqbfKmoKoDmT55KZurMjAFz7LBeeGdb1ai5+VvWqRQNiJoJu5Q7sTXle54I7OtwSym6jypQcPVHPh64p6ihCLqwyqRsOWyTynq7x3+qGsFYn+NcaDOcXjd6HfFTmFtCZAH9lU4X2DJOjnm3OWiAvszJuigI2YP6QGSRQkt04AgHYi1cejl1TrmgecL6CHo92QTkWktwsCVqgK2E17eCfIv/HkmtgqH2eYYHh3d6qRlTi6iWPb5cGmbVUsKlO3+Qq0myWadFN1Wu1zhg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3624.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(396003)(366004)(39860400002)(376002)(54906003)(8936002)(2906002)(8676002)(316002)(4326008)(9686003)(478600001)(966005)(86362001)(55016002)(66946007)(76116006)(15650500001)(66446008)(64756008)(66556008)(66476007)(186003)(5660300002)(7696005)(33656002)(71200400001)(6916009)(26005)(83380400001)(53546011)(6506007)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: Jca73AoEMgHvnHD4lghkSXhfWeYMDS+0IiDqYi+4k3JufZtDGAGN/TKL+xKvf2HzmTB79hpMUqEG/6ARDRwYzCMpS0nRRSWs3hb3i02Fhw5saX9Nv5kZwraWVoE3uovKaSEZB1QlZ25NwNivnjNH0ANn0hEIB+ao4bUqR+BwRxsqtK5Jc7Cw5TU1eHg0SnhJI6gn9cyYckEno1XJlWRx8R7i7gZDdsBB9o/Y8CUqX9tCjJQNsAHSDGh3hxHmeCZ3aPbeZwI0yGR1vlDinDWA7bCvDf7a9t+GlVIKqxkFv3+BhSBceV65WGRBjpXICd4dTnC3psqeMBcw34F8BfCsK0sW2xNtFfIVql6W2d2DTSMzO3zXLwVq5XZHikdE8sm7S+ea82UtQQSk7vkX+szVSGknrJvRZbJrMSGn7wDp7ytrGsrzxU9MG//TRY+RYnGUaztUdYtoh5ANR44ch7P/PwVrJpHtZkD/WBO6YQLZcm80W1RPLE0ZHDbNFj2LJuDxf+Lpu1Uw7t154NI0eesWrJcClTDh41EERYeFCfgmNCTcZeG2v+gVtRynVvj76IorReYc8LvkgGx0uV6f/Ax8bmxgXl/x0XkIpoDR4czUAMU+qyFFruSPNAZ1yvOKhGoA0bLp0SasHKPFqsMsSn9HAQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9da611ee-4339-4743-4bb1-08d8427c7608
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2020 07:09:19.4959
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zQ7CWYZ076QMyET3CrXXajhX5ezaG0NGTc1cMWn40/U5W7bCL4kgAC+f5tLm7PQameOPNKSyCRZ6uFGTes/2Fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3815
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.0.3.rc=
2. We are planning to execute following tests for this cycle:

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

ETA for completion is next Wednesday, Aug 19.

Thanks,
Sangeeta

> -----Original Message-----
> From: Poky Build User <pokybuild@centos7-ty-4.yocto.io>
> Sent: Saturday, 15 August, 2020 1:06 PM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: QA notification for completed autobuilder build (yocto-3.0.4.rc1=
)
>=20
>=20
> A build flagged for QA (yocto-3.0.4.rc1) was completed on the autobuilder=
 and is
> available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.0.4.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: fd279f857c98d492f43cc62d9ebae18ce6412b6e
> meta-arm: 38de27d05f104f989adfed5c5363464dd600b316
> meta-gplv2: 0f4eecc000f66d114ad258fa31aed66afa292166
> meta-intel: ce6f8ddd2d7f42a9fe530d30332b0d9695e4904b
> meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
> meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
> oecore: 9cad716656b427e625a470a820b8b29b1ec9f976
> poky: f2eb22a8783f1eecf99bd4042695bab920eed00e
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
