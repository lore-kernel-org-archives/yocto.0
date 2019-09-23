Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FCECE00D38; Sun, 22 Sep 2019 20:08:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8169BE00C25
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 20:08:36 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Sep 2019 20:08:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,538,1559545200"; d="scan'208";a="178988046"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
	by orsmga007.jf.intel.com with ESMTP; 22 Sep 2019 20:08:35 -0700
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
	fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Sun, 22 Sep 2019 20:08:34 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
	FMSMSX161.amr.corp.intel.com (10.18.125.9) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Sun, 22 Sep 2019 20:08:34 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (104.47.40.54) by
	edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Sun, 22 Sep 2019 20:08:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=LPR77ysKdAO0ClAogruhzXjkwdcWMCmLfaAbIAL2hsAwwZwIy7769UoMJHAZyYuHS4fzCjyYR8KrLlcPcJ39R6bw1tXzgpS4LEYX018IGohz/y0Qkh1PM/mRJVyDlI5apZkYdaPOxCJTwB1TsLiWn4NH1SqO5+v1tLctAJs6NhMljM0CrKTcyzlTWkyeD8Qh5admXw72TmCcdrxK6KH/xxvHC6sG0zhEz5Sh9XR/LhGuOi6iQcY5A1sPXZRmAkd8SbAa+uG4D3lPnNCQcpfBZJTfawwvfEYUtZSyE7Pf3PUsKbIs0cfZ/V32U/LarfL+KGXqZvMqEMzlR5C1UOc0mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=9eYro70Idj/mru4JOIuQvR2J8Kr414BrKjU6jI5Je3Q=;
	b=YiINmMbiq6LsrjUev+Qlqja1aREUs/ArrlYAYh0I6aEh8QagoRUflKHZb9tgLYsZupeNApu98sMA/D5dQ43SG8INQvA2cYTLw6/9Mll8El7upwEETd2OrYZh1yo4/oPkwt1NhkamMGK8Jbl5NvnL9nnzL1V8sn8Jn/EtZoxowdPVkqFkARybvxK86WS/cUlSgdhaBt3g9KU9ZomQgPyx4XoQN8cv8WjXIyNzySnT+optl4pDh1xjGmdtafgaSCdeKFSXtQHLuW6nHLoUTBe94nitFridqVA3SZx3B/JvZ1HpUb43uxi7bxtOvB1OpJkAm08gTsHzFOf5jdqTYNxh3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=9eYro70Idj/mru4JOIuQvR2J8Kr414BrKjU6jI5Je3Q=;
	b=Wgh021Yr0rPV8dStgwjKrM180i4oEJ0Oe0T4xzJ8dfAU517JjM1Y5h0A16KXdRP8bB4nwk7flkHF+EuCCfpIG4TAwpCv6SJXUjJskH1fqlGZ8IRutd37W5gpkHFVpBtjNwZUVB0omB0e2T3FnOJCl0LRXuLO2NnP65fyqZ5XxqU=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
	CY4PR11MB2007.namprd11.prod.outlook.com (10.173.17.135) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2284.25; Mon, 23 Sep 2019 03:08:33 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::3d46:e26e:3050:288f]) by
	CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::3d46:e26e:3050:288f%11]) with mapi id 15.20.2284.023;
	Mon, 23 Sep 2019 03:08:33 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "pokybuild@ubuntu1804-ty-1.yocto.io" <pokybuild@ubuntu1804-ty-1.yocto.io>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build
	(yocto-2.8_M3.rc1)
Thread-Index: AQHVb3CAjH+B0RA2wUCbQT8/rReVaKc4lTwAgAADKMA=
Date: Mon, 23 Sep 2019 03:08:33 +0000
Message-ID: <CY4PR11MB187921D82C8A26CC9E25CF65E3850@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20190920050052.0C767E00D8F@yocto-www.yoctoproject.org>
	<9DDD2658D1FE414E99172D2DB1E4D0434823F10E@PGSMSX109.gar.corp.intel.com>
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D0434823F10E@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDZiZmYxNzItYjNkNC00NDMwLTlmNWEtMTQ3OWU3MDlhYjMyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMnd2VHY1NVdyd3dycnoxSnhTT3E5elY5MTl5cEZXSEo1MkNVS3FrajF3ZDgrQWJDUWNCc3VtbUREdnpFUFlGZCJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28ffee3e-64ab-4f0a-ddc3-08d73fd3515d
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:CY4PR11MB2007; 
x-ms-traffictypediagnostic: CY4PR11MB2007:
x-ms-exchange-purlcount: 1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB200703D37586B4E69137100AE3850@CY4PR11MB2007.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(366004)(346002)(39850400004)(376002)(396003)(53754006)(199004)(189003)(13464003)(26005)(11346002)(256004)(186003)(7696005)(14444005)(316002)(478600001)(66066001)(86362001)(99286004)(66556008)(2906002)(14454004)(2501003)(76116006)(25786009)(15650500001)(110136005)(76176011)(54906003)(102836004)(7736002)(305945005)(74316002)(6506007)(81156014)(81166006)(52536014)(107886003)(8936002)(486006)(6246003)(966005)(5660300002)(66476007)(6116002)(3846002)(6306002)(9686003)(476003)(71190400001)(71200400001)(55016002)(4326008)(8676002)(446003)(33656002)(229853002)(66946007)(66446008)(6436002)(64756008);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB2007;
	H:CY4PR11MB1879.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: a5AK7FDhdBehQofDSJsMC3eaqFvoqgw/khC98vy+4YvfZR0Rubjj7FnCvHZjuSZerjks6bXEjmZiQqpAyLjP0rJIFzEJctLOqeTD8lD6MKccgUBamdYhkp5uVtXImhoFpS9njiGu20wxsIZsGjXtNg9QQ8ptG3wA5WPl5i1uJs4Z1fAKGNPyHOCUa7VO6I2m76yy93Q1O7Zg5S3NJAXnJ1qWTwdnu4vFBIxarfbU8QfKYlsPwB3z5pMEIwfEPm3ixcWpJzKyRrSJ32qVphCkuo75ensswzbpBHZDGTcADHiM8wLQXitQQ7bYmIEIXXn0RwUHOjJIBR/M5gm4HUevadhdoQAMcpcIvbObyc+bBEELAJAlHlzVfWns9VXAM17WjWkGEcZoW4nLy32C/g0tJk0oYHVaU+icxEt0ENEOVLY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 28ffee3e-64ab-4f0a-ddc3-08d73fd3515d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 03:08:33.1210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WqRm74iTsR/KKk4NhLZjVrssQ+Icpn+EdQJXAAmk7l5biSfa5HpT+J1j1UQF4heEuqqwynd6nwsX7kAkFuA4Qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB2007
X-OriginatorOrg: intel.com
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M3.rc1)
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
X-List-Received-Date: Mon, 23 Sep 2019 03:08:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-2.8_M3.r=
c1.
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

ETA for completion is next Thursday, September 26.

Thanks & Regards,
Sangeeta Jain

>-----Original Message-----
>From: pokybuild@ubuntu1804-ty-1.yocto.io [mailto:pokybuild@ubuntu1804-ty-
>1.yocto.io]
>Sent: Friday, September 20, 2019 1:01 PM
>To: yocto@yoctoproject.org
>Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
><apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
><chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
>akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
><sangeeta.jain@intel.com>
>Subject: QA notification for completed autobuilder build (yocto-2.8_M3.rc1=
)
>
>
>A build flagged for QA (yocto-2.8_M3.rc1) was completed on the autobuilder=
 and
>is available at:
>
>
>    https://autobuilder.yocto.io/pub/releases/yocto-2.8_M3.rc1
>
>
>Build hash information:
>
>bitbake: 797354d285f6d624d9adb52bab65823572da0e39
>meta-gplv2: 1e2480e50f34e55bdfd5e06f98441e03a3752d5a
>meta-intel: 655dfaec95196b9c0e15d34f490e4a51a7d501e3
>meta-mingw: 9df4e115ab9a7ab23f81fdbcc62b2a0269d6377f
>oecore: 95ad5626296380358c8a502a3e04879dab653d78
>poky: 81f9e815d36848761a9dfa94b00ad998bb39a4a6
>
>
>
>This is an automated message from the Yocto Project Autobuilder
>Git: git://git.yoctoproject.org/yocto-autobuilder2
>Email: richard.purdie@linuxfoundation.org
>
>
>


