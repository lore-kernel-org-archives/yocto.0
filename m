Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2DD6E00D8E; Thu, 17 Oct 2019 22:34:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D9AFE00D5F
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 22:34:24 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Oct 2019 22:34:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,310,1566889200"; d="scan'208";a="186722940"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga007.jf.intel.com with ESMTP; 17 Oct 2019 22:34:22 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 17 Oct 2019 22:34:22 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
	FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 17 Oct 2019 22:34:22 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.50) by
	edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 17 Oct 2019 22:34:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=kOPz6GLibbKXcMr0zG7uBOsmesi7NucalFU8Cs6XacdkdZp7ql9+JY9QU1boi9buA80l1Ps1mu7Vy/9NKDGAlLcfGJu408pRm6w9Xj4i5qD4rOokT6qR6EsNs8OuR27ZcoVtmzICe4CvphnUekAGKmklY2JN6kL07rxMXF//bCZADUpLEzkAkJxIoAbrwWu8yKDZ1bXlJ+0kUC/xFlZUby98Ib3ue0ysUN86cFsuDkLRJ2Ywa10NQdTixGCH4UATXLgSY336wh/2dRSU96M+XnPrxWtNngboxSCt3mTL0dq8CutTe3longngoKa3SvE2F3rucjmFJ4A/om+EabVQ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=64EVKkwhK78Hg24i/GV7jSmwWSpx2SyP2WZ6OiQNbV4=;
	b=iQsotRzjQdKt9kvBb2C/V7zTHvWJPPoams8a11VBDvztI60KrkMaiewZv1Ki+WscMGKK6sKA/rxfIi9DsIISjiZ5b2E87KALusCNDjZEF94XMO8HqI7ILo/bBMAKcgZYKRJbcTQjVxBaE4v8LvaNsrCX7BczNMsWuYPS45Dz2O8PDAVCfUCDWU6eh60L/EHUIKYnLBsOT0gCXW/JhWR0w6G+e/pbmmvmHwcAJAfgE7zgtIvocDOb4POyB53XZ7Wx9SiZ1qGjPrs1tRi250KOO4rB0GarifiV3BdKJeSqpNIkl1igsqVoP0Lyic25gB5GLt7KKv4Lr/eliAiTeOsAww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=64EVKkwhK78Hg24i/GV7jSmwWSpx2SyP2WZ6OiQNbV4=;
	b=bfNLJWjj/ug1DoO90bQs/2r3bfP4KfUrqO0BLvQ10gBxPYnW7leF7t05ojaHdt8pRm4+CZXjpXPyKr/FnLB8UqSFkm8w5zeb4psyWtnF9NSnvYczvmM/e/wNxybcfa2ctrm0QfornfKoc51QY1VJDcqJQh70EHgR3wm1SLrpuNc=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
	CY4PR11MB1399.namprd11.prod.outlook.com (10.173.17.13) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.16; Fri, 18 Oct 2019 05:34:06 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::581b:6fbf:a761:35e9]) by
	CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::581b:6fbf:a761:35e9%11]) with mapi id 15.20.2347.024;
	Fri, 18 Oct 2019 05:34:06 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build (yocto-2.6.4.rc2)
Thread-Index: AQHVhTBiIbcNDF3K20uAc6lqLYj3RKdfldgAgABKKrA=
Date: Fri, 18 Oct 2019 05:34:06 +0000
Message-ID: <CY4PR11MB1879AC6AA15BB0AFD1E66607E36C0@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20191017211733.34EB81C0386@ubuntu1604-ty-1.yocto.io>
	<BN7PR11MB2721D442E4925D6788AC41E6C86C0@BN7PR11MB2721.namprd11.prod.outlook.com>
In-Reply-To: <BN7PR11MB2721D442E4925D6788AC41E6C86C0@BN7PR11MB2721.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmM4MmI1YTEtNDllNC00NjgyLWFiMDEtMmNmMzg2MzViNDFiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZGxjcEZjUlNRMUE1ZnhUeEVQWXJZVnpCSTlFazF4cmRKa3JsUWdjMzJGeWNYK1ZRY3VYN0loVnhhOWJ1WE9MSiJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.223]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22bfc102-9a9d-4a83-3b90-08d7538ccb6d
x-ms-traffictypediagnostic: CY4PR11MB1399:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1399C21CC130089D71A52449E36C0@CY4PR11MB1399.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(136003)(396003)(39860400002)(366004)(346002)(53754006)(199004)(189003)(13464003)(66476007)(486006)(76116006)(66446008)(476003)(5660300002)(3846002)(66556008)(66946007)(64756008)(14444005)(6116002)(2906002)(14454004)(11346002)(478600001)(33656002)(256004)(446003)(52536014)(966005)(7736002)(4326008)(15650500001)(305945005)(2351001)(74316002)(186003)(54906003)(2501003)(71190400001)(81166006)(55016002)(25786009)(66066001)(316002)(86362001)(9686003)(26005)(102836004)(6306002)(7696005)(8676002)(5640700003)(76176011)(6436002)(229853002)(6246003)(1730700003)(71200400001)(6506007)(8936002)(81156014)(6916009)(99286004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB1399;
	H:CY4PR11MB1879.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hx68QR54Gki7kB0AkmUOX4JLd0Ag2x+Yu576xSA/njLfoBfJkMqnfOqFnlrfRORFrpjx+t/J9fU2cJCeAIDoKHNzubSDOmLajIOvG4hib8yfAdYsK3W1xubd2IukF+JuxIOQzSkWcBF+oa75y7YuOtcX6qPo50kcX0KROqSv0y2esMioriNd8PqFKGxcmRAm+cYGi3wGTnInKWK89mtrY3qGkZgrnRfyPuhGvHAj5+r96pkXVxoqB+YwkV+6s1vgjtF1c2+z/ch4icP1GvZ0/dinAx6SdnCXW+ghoQYur0bzdk1TKSgkaFGgcvUuWrhM7Hi+afq8yYqPZ9FYb5vcEIhICOLycZLRFgc0StqXQ/90UwgDh2fq3ZlfFiruvlVC2uNftOCLNheb4qsdMAMcDfRgOj60f7BvHVqnCldaYuLPBQpEwq1idSvqZu3KXArz4Bv39nYWJhxfW1P35NonAQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 22bfc102-9a9d-4a83-3b90-08d7538ccb6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 05:34:06.8205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /HcLWsOR8EHr/8a2wbWBoN6UGYcS99uwJGxCxpnZjwUFVlLl00/fJHjyCi1U4fg4RugJqhiDngn7jYJRuor+Qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1399
X-OriginatorOrg: intel.com
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.4.rc2)
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
X-List-Received-Date: Fri, 18 Oct 2019 05:34:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-2.6.4.rc=
2.
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

ETA for completion is next Wednesday, October 23.


Thanks & Regards,
Sangeeta Jain

>-----Original Message-----
>From: Yeoh, Ee Peng <ee.peng.yeoh@intel.com>
>Sent: Friday, 18 October, 2019 9:05 AM
>To: Jain, Sangeeta <sangeeta.jain@intel.com>
>Subject: FW: QA notification for completed autobuilder build (yocto-2.6.4.=
rc2)
>
>FYI
>
>-----Original Message-----
>From: Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>
>Sent: Friday, October 18, 2019 5:18 AM
>To: yocto@yoctoproject.org
>Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
><apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
><chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
>akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
><sangeeta.jain@intel.com>
>Subject: QA notification for completed autobuilder build (yocto-2.6.4.rc2)
>
>
>A build flagged for QA (yocto-2.6.4.rc2) was completed on the autobuilder =
and is
>available at:
>
>
>    https://autobuilder.yocto.io/pub/releases/yocto-2.6.4.rc2
>
>
>Build hash information:
>
>bitbake: 6b045e074c6fea97d4e305a5a3c8bf82135d95eb
>meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
>meta-intel: c200851435f39acd2fe4abbf7a05fbf617833964
>meta-mingw: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
>oecore: cd7cf933b3235560ec71576d8f3836dff736a39f
>poky: 51f6145f8f99a02df1dad937684f014b0172e72a
>
>
>
>This is an automated message from the Yocto Project Autobuilder
>Git: git://git.yoctoproject.org/yocto-autobuilder2
>Email: richard.purdie@linuxfoundation.org
>
>
>

