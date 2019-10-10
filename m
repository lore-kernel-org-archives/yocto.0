Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F615E00DA4; Thu, 10 Oct 2019 00:37:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AAA9E00D9F
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 00:37:57 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Oct 2019 00:37:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,279,1566889200"; d="scan'208";a="345618397"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by orsmga004.jf.intel.com with ESMTP; 10 Oct 2019 00:37:56 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
	FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 10 Oct 2019 00:37:55 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.59) by
	edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 10 Oct 2019 00:37:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=LD5lkzGKzXb/WSE0Miyr9QA8ocWXrR59OBJnQttsE2XBXqp2mw7DZqnIGOma5Z4rYTfqmHu1AKKzcNg8X9sR/GLW+M5DqgFF0/AgQ7P5PRNDtfc4XI8g7VXNSvYUZJ0bmLE/yjbR+owsl3x8PiK94ufXOu12KYmb7A9hTuWncPsXQ0KKoy8L6Oq+yEzmk4eWQGpgqoXHDWGxTO0sHg2ryArRJwlLxC9h5vdeEPfixUDYLeQx9ObB8Qt1sVvZfHBv52IxMOe6wG0QI1/YfdX1xeQGzEYOQ8oDQ905xpJt/jGz+CpI6i0FdXUvJtxP9OLpescf2WkNgUF7RrzFysz/rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ssGO8BtuFkHralnCyKSf6W32/OGNBRFHH9OV+VBj5ic=;
	b=ZIt9t/Bijh5BcD2Zop11Mo3pF5hWbwELFxuRHxmywPpYHBIwmZettVkEVdTyvjPWzvn1aqe9ObP4R5GpKMrh1c9iIlUU/yEZCsmTAdI8Xex57+mlbOQzFVb5gI7F7+ybuzNDaAW5IVYAGSC/Q6VQLNo6PTp9L3SseYhpM2TAsXf871n/wHsP+NdZj/mZdpBpLHPZZncjlHfbbOYhGr7sqb8oq5QuIBCt54aH8qrs/krAR3eCduoxQj/5jglI9VxZmnScY+70b9VFSxRQ5DrlpYyA9zL073HSfSdZoJigwXJnMX0Ar3xe03hmXGqAgde22gw8KW/Y2poPJ7JiOGNcCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ssGO8BtuFkHralnCyKSf6W32/OGNBRFHH9OV+VBj5ic=;
	b=vXypy0c9XfIDOmE6e4IF//fejygyKZrnA31Q4n752vwwrUiPlWFfNqWuUl8SaSFPWTBBurLCJf6xG9v6IXkbf46VNn7jNqLZfYRqNijfiHTJ7zq/QW7FsMhIUQfDQLW9VEgjJbMhyGMPHQ0jNcrCSXpY8AdX9XpNb1BXyUzapUw=
Received: from BN6PR11MB1876.namprd11.prod.outlook.com (10.175.97.136) by
	BN6PR11MB1666.namprd11.prod.outlook.com (10.172.18.8) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.16; Thu, 10 Oct 2019 07:37:52 +0000
Received: from BN6PR11MB1876.namprd11.prod.outlook.com
	([fe80::4d9c:60a2:7b78:5a81]) by
	BN6PR11MB1876.namprd11.prod.outlook.com
	([fe80::4d9c:60a2:7b78:5a81%6]) with mapi id 15.20.2347.016;
	Thu, 10 Oct 2019 07:37:52 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build (yocto-3.0.rc2)
Thread-Index: AQHVfyDZdzus4oncNU6gw2sLLS2qUadTWYmAgAAhTzA=
Date: Thu, 10 Oct 2019 07:37:52 +0000
Message-ID: <BN6PR11MB187632286B529991AE50E0F3E3940@BN6PR11MB1876.namprd11.prod.outlook.com>
References: <20191010041128.E627F6912C@fedora30-ty-2.yocto.io>
	<9DDD2658D1FE414E99172D2DB1E4D0434824BD95@PGSMSX109.gar.corp.intel.com>
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D0434824BD95@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmJhNDZjZGUtNjE5YS00ZGQyLTliMjktN2Y1ZTgxMmM5NmU4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMXl0YVgxbDZlajJTRUs2OWpUU0VTWTdwcm5JdHhQUlNcL3FIRFp6NVZUYXhSaU54K2lIN3YyRHJIZGRWVytOUEQifQ==
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6987cf7a-f0c8-4c75-8e83-08d74d54c246
x-ms-traffictypediagnostic: BN6PR11MB1666:
x-ms-exchange-purlcount: 1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1666BED3B629418421371975E3940@BN6PR11MB1666.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(39860400002)(346002)(366004)(136003)(396003)(199004)(189003)(13464003)(53754006)(6916009)(8936002)(476003)(25786009)(8676002)(81156014)(1730700003)(81166006)(9686003)(76116006)(229853002)(14444005)(305945005)(7736002)(256004)(486006)(14454004)(74316002)(86362001)(966005)(6436002)(66066001)(66446008)(55016002)(71200400001)(71190400001)(11346002)(446003)(6306002)(66946007)(64756008)(66556008)(66476007)(5640700003)(102836004)(478600001)(186003)(5660300002)(316002)(2351001)(3846002)(26005)(6116002)(33656002)(15650500001)(2501003)(4326008)(6246003)(52536014)(76176011)(99286004)(54906003)(7696005)(6506007)(2906002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR11MB1666;
	H:BN6PR11MB1876.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R3spEKneJBYjADaDYM2I0zZ2hziFraJCx2Z9GuaafdcpZN0qX6wSUtg8sU3I7Wppq2vV6T2NFF3skejRZ6+tFG3YLSkCVl5B19NxH4yj25mUEMOb0WcoVhWOmayp/w+q0BhFdoua64ydMrcRu7d8OjYp4VizcqvtvEkb9b1Bu5PaHrVwSbwQmaDH1fh1I6Ki+fAlrrxl8geBgRuTmR86zirYra8fxdkm3hoYe67QZm747rdl4W7phmvfuWii7UF4tgYz8byUFOUTFmyjjBx4rhjNx7brebl567uIMvN+dIfRKNskjnsXY6/xi5/qDCBnddd4ooLmsE2bhy+QvhB8Dv0T4Y/Z83fA1NUC/VQp/JnD4/bWHrr8IMhnIhNcWRyY3u72meacHe399oDe/LnTJQPQkfcYx/QHauRwYyFXzlOZ2PgFqDIoc/7O32JHMNZ+pOyIpP6/NqAevYuCUkgXUA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6987cf7a-f0c8-4c75-8e83-08d74d54c246
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 07:37:52.5801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SGBYqlQw69MCUY+8X7N+XspDGi3ckzApxrAZpmAoeJCBSICB/DLvAi77mbNldbjFVb03L/fvNPS68Odzyh+k/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1666
X-OriginatorOrg: intel.com
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-3.0.rc2)
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
X-List-Received-Date: Thu, 10 Oct 2019 07:37:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.0.rc2.
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

ETA for completion is next Tuesday, October 15.


Thanks & Regards,
Sangeeta Jain


>-----Original Message-----
>From: pokybuild@fedora30-ty-2.yocto.io <pokybuild@fedora30-ty-2.yocto.io>
>Sent: Thursday, October 10, 2019 12:11 PM
>To: yocto@yoctoproject.org
>Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
><apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
><chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
>akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
><sangeeta.jain@intel.com>
>Subject: QA notification for completed autobuilder build (yocto-3.0.rc2)
>
>
>A build flagged for QA (yocto-3.0.rc2) was completed on the autobuilder an=
d is
>available at:
>
>
>    https://autobuilder.yocto.io/pub/releases/yocto-3.0.rc2
>
>
>Build hash information:
>
>bitbake: 5d83d828cacb58ccb7c464e799c85fd2d2a50ccc
>meta-gplv2: 9ca96786fd851150b518388bcb166efa0b4dfff9
>meta-intel: 13fcf624491cdd0d9b3eb78a4f0cd1781b482b51
>meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
>oecore: 59938780e7e776d87146002ea939b185f8704408
>poky: 94f6b31befda5c496f65e863a6f8152b42d7ebf0
>
>
>
>This is an automated message from the Yocto Project Autobuilder
>Git: git://git.yoctoproject.org/yocto-autobuilder2
>Email: richard.purdie@linuxfoundation.org
>
>
>


