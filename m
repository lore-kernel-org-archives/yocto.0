Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9856E00E44; Wed, 13 Nov 2019 18:11:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D842E00E43
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 18:09:50 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Nov 2019 18:09:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="404819327"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga005.fm.intel.com with ESMTP; 13 Nov 2019 18:09:49 -0800
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Wed, 13 Nov 2019 18:09:49 -0800
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (104.47.40.59) by
	edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Wed, 13 Nov 2019 18:09:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=Pqfi9+wzHTmQCUkE+4An4gbZ21KUzfSqaw+2F11H3YynqScrUQQwgeWhrpzmn+qOYBhP5d/2vYl6+ocuyFijg/FqMOVw3N9OqGHyk9ZFJR3K5p/X5ZGke19eJcQch8pJ24JREYgjGrA2a895zIiDi4djPGQONMa8dS3BqxTISpWLuo7rP8NdI/nHntz+Rhcv3ONNtCEvGc/58YkjHcFvA3kJ48M9+oVuJ4yxq3wQaRrsna3a1S9JfTrYx61eGjy7x1vCHudA98YsV56DtIG3boSIxe8eQrt5XZO1Xm4mDpknqMIBV4PPDTYaUnVy0OzsfDXnN4lefjW936M3lVtHzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xHkb+a7M/JHRRk+7USycqC63kFp7AM/EQ5QO4pmp2UE=;
	b=hoxor2twk2NGF5UJyeV4rIT8isiKOwFGaAu7nZ/uU1X1mFBdd3ruTQJ4HSKI3TTLz7h/OIJiUnl11L4n7nq6A2THd/SI9SWzsZ8QF+yBTMvLEZvKEl1mSK5XsKYegCvtR8IfWo3NR+cXOM/8HoOJcNy8EH45bIFthqRSt+E5A8qt6BkKbwsAc8IEOlKyWfELvB0SfbLLi0TxLbG8P/UVBaH35pfhILlByV8lnQJVqyUq+zTB/ogQcLRIxnIr2RlRY/L9dY0dngmcGn/3cKfssxYCWLAs+XjhD74ndbeeNIXX7OggFDyUJJsQQmR2QratJjdf8x9fFba1kBkpDueOzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xHkb+a7M/JHRRk+7USycqC63kFp7AM/EQ5QO4pmp2UE=;
	b=ihqG8ccMdUzicClmuCis+wORZvRmIVhOmzLlDVtG6BFsHf0enCochm3SExb5UbHqEdXy+8JyyGtibgjzbS/Ch+B/+iczcHCw3EDTtAmGfOU0A6KPQEReDDT34WNWvdcYjHyEWfV7EvdZSQg/6cqQ3QZskiOhiLkxfUObB0yz3eQ=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
	CY4PR11MB1334.namprd11.prod.outlook.com (10.173.16.140) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2451.23; Thu, 14 Nov 2019 02:09:48 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::4166:5d0e:5668:cfcb]) by
	CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::4166:5d0e:5668:cfcb%12]) with mapi id 15.20.2430.028;
	Thu, 14 Nov 2019 02:09:48 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build (yocto-2.7.2.rc1)
Thread-Index: AQHVj0awBDm/iowYYEmOMC/7QZy+EKdz9waAgBUGuGA=
Date: Thu, 14 Nov 2019 02:09:47 +0000
Message-ID: <CY4PR11MB1879A1DBA0F6F65FF4B1EF49E3710@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20191030172230.71E0F860286@debian10-ty-2.yocto.io>
	<BN7PR11MB272124A3092ACFC1752456D1C8630@BN7PR11MB2721.namprd11.prod.outlook.com>
In-Reply-To: <BN7PR11MB272124A3092ACFC1752456D1C8630@BN7PR11MB2721.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDhkYzcyZWYtYjQyNy00ZTA3LWI3ZWEtNjI1ODNjOThlMjIzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYzVaK2JoQ0ptM1BuV1hxU2luV3oyTmNGTHAwYk95WGVjZUZLaDBtVFwvMGFHcnQyYjBmTDBhZ1pnQnN5ZEdsN2IifQ==
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd7dc1ef-2cb2-4a3c-51f8-08d768a7b9c4
x-ms-traffictypediagnostic: CY4PR11MB1334:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB13344C5E612D3E85AF703C67E3710@CY4PR11MB1334.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(376002)(396003)(136003)(39860400002)(366004)(53754006)(189003)(199004)(13464003)(55016002)(966005)(26005)(6506007)(25786009)(305945005)(102836004)(6306002)(7736002)(76176011)(7696005)(5640700003)(6436002)(74316002)(66476007)(4326008)(486006)(107886003)(11346002)(446003)(5660300002)(52536014)(33656002)(478600001)(66556008)(64756008)(186003)(476003)(6246003)(76116006)(66446008)(86362001)(14454004)(3846002)(6116002)(2501003)(66946007)(2906002)(229853002)(8936002)(9686003)(81156014)(81166006)(1730700003)(15650500001)(6916009)(71200400001)(2351001)(66066001)(8676002)(256004)(14444005)(54906003)(316002)(71190400001)(99286004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB1334;
	H:CY4PR11MB1879.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oO/QjGKQd1nodev/DHWnEnm4gFFehL9YDUXhTx/nDF7bJb5tOMVpOHg79wlLl5lyUMgjHCQkfLyOd/Iw8hqkKwb+NrMKdMRmgdBpcBvzGBRDD321t83JMgRNkq1iOR/T9Pbaz6+fbNNje9NYi7E7GxftQH1XohtkHy6wGtNisSJzmHd6Xf4TSBkZVL44mL1gRmG+MwwizmW/VHdNaLxmZ0sxoBQXH47n20itFBcw3gEs3RAp3Ha+o/9Z8+s63YqkNsDYp/Fih+8ycixCgX2yTzOaikF8YiwKvNsKdIdXOyEPgyK6O5iy9jsfrvK+ncB238diPniIUlIFxsUHypfYeEZo2TP4O0W7z7GjAzz6KF+DTYId/a3WxWR8Y4kQhYYjmxE9MHUjQiblFMxCsFmRFn+ebvJyoJai4ty/pvmXMZU7fVYmilUPXbA9gKwkMTTH
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bd7dc1ef-2cb2-4a3c-51f8-08d768a7b9c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 02:09:47.8544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gtZM/4NSrYSZWFCRusT6PKFa76KzrOU76ARvcoHPNzlYan71S0VhHLxuwGMVvWKpXFLMAhmFBWk7BffrSFpY0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1334
X-OriginatorOrg: intel.com
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.7.2.rc1)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Nov 2019 02:11:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-2.7.2.rc=
1.
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

ETA for completion is Monday, November 18.

Thanks & Regards,
Sangeeta Jain
>-----Original Message-----
>From: Pokybuild User <pokybuild@debian10-ty-2.yocto.io>
>Sent: Thursday, October 31, 2019 1:23 AM
>To: yocto@yoctoproject.org
>Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
><apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
><chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
>akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
><sangeeta.jain@intel.com>
>Subject: QA notification for completed autobuilder build (yocto-2.7.2.rc1)
>
>
>A build flagged for QA (yocto-2.7.2.rc1) was completed on the autobuilder =
and is
>available at:
>
>
>    https://autobuilder.yocto.io/pub/releases/yocto-2.7.2.rc1
>
>
>Build hash information:
>
>bitbake: 75d6648f232a06b99c54a1e33324a7fc1cd15b38
>meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
>meta-intel: ca26bed652722167b2dbe0042cfc2406029e9c6c
>meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
>oecore: 726c3b92298981f5aa2f2449ceeec7b4bf84ed29
>poky: d0f73121551dc98f6924cd77952bf9ebf5ef3dd7
>
>
>
>This is an automated message from the Yocto Project Autobuilder
>Git: git://git.yoctoproject.org/yocto-autobuilder2
>Email: richard.purdie@linuxfoundation.org
>
>
>

