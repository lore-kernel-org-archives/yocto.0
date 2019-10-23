Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C68B9E00D85; Wed, 23 Oct 2019 01:00:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 709BEE00D85
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 01:00:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2019 01:00:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="196704383"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by fmsmga008.fm.intel.com with ESMTP; 23 Oct 2019 01:00:49 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Wed, 23 Oct 2019 01:00:49 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
	FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Wed, 23 Oct 2019 01:00:49 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.59) by
	edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Wed, 23 Oct 2019 01:00:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=YKggz9BvBXNBXxrgJI5eh/sOq6rUceKAOU/Dl/g7PBxWzCgk5lcF3M1qkNIxk7MuuB5QWOvBbHZ/6uvk1ga2kIHnC9+sPELVfHsoM6XNne3t5amHswOV1xeTVGsdUl6ZgeVyAGxlejzmwHF2rKuFuJlxw2Jav74hW3Q/WRu0Fd/j1IoyvY37w1OS2CRCURcR2NXmkl5zJXVPlOKkjntw8E2GjYr83nFinhqMvFSWlUW36ywL7OFkVXdn/LcS16lLSvf3hJK/SsoaiErxq/tQgEgsh6cYh2jt5oexyxVdDzhn4Iws/o/NiCqLTVQyDOpIpFucTB3j7Db7n0EUukjB0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=PYCEsCG/VLvaTaVaFziEpadgrY17O4Ao4D1rz3KTWqE=;
	b=I+2DDdLCX9u7h6PF52wMT7A9EPy8WN1B/itjVLrwZF9CRdfRMVE2SwTP1aEfo1CR5vA9CDsf8y0jiTzJGKECAGN0b90FJnyn8k8gxs9LD/njGxqnffcuJPU9oJ/+IqWw3/AljEO7Bp0JQU/sDxTEOVgw2EsFbu0DhwPmzEQaqkVfqHXvek4HMNiipX84atp+q1yBWinH1cqM3GodarD1xMhKoVPS994dSzB1tAYjS+r++SjiyAkIyqtCgWjyyeH6yN/GPvFa6t9xGRK45IstHgW9+VLkv2V4S64KAQhY1i8o/gA7Wc9BVgkoCGZF1PtOLCcQZbrnllrnbdCITjVWKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=PYCEsCG/VLvaTaVaFziEpadgrY17O4Ao4D1rz3KTWqE=;
	b=wF+6SCiHDW4Sv5XHNJ2VujHP/a5yKVJoZ/5Yad79++oHg0MI3Zo0n825+GSawAQDBgmPSPYBzW3Gdi2g+PGEr9M7hY1HAICd6myP2nXV+vMhldHav0sUIyOg3yzP97jkUrJgTYKQSGFb20M94yY7H0fo5z6cyGclJNgQHZzk6X4=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
	CY4PR11MB1766.namprd11.prod.outlook.com (10.175.59.23) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.20; Wed, 23 Oct 2019 08:00:47 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::581b:6fbf:a761:35e9]) by
	CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::581b:6fbf:a761:35e9%11]) with mapi id 15.20.2367.022;
	Wed, 23 Oct 2019 08:00:47 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build (yocto-2.6.4.rc2)
Thread-Index: AQHVhTBiIbcNDF3K20uAc6lqLYj3RKdfldgAgAhPHsA=
Date: Wed, 23 Oct 2019 08:00:47 +0000
Message-ID: <CY4PR11MB1879D36BFFD921ECB8929D57E36B0@CY4PR11MB1879.namprd11.prod.outlook.com>
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
x-originating-ip: [192.198.147.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 672a123f-a135-4f1e-d5c9-08d7578f1d17
x-ms-traffictypediagnostic: CY4PR11MB1766:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB17661F531A61D0F4A6441898E36B0@CY4PR11MB1766.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39860400002)(396003)(376002)(346002)(136003)(53754006)(189003)(199004)(13464003)(4326008)(6436002)(6246003)(5640700003)(55016002)(9686003)(6306002)(8936002)(966005)(81156014)(81166006)(1730700003)(14454004)(25786009)(33656002)(8676002)(478600001)(316002)(54906003)(256004)(14444005)(6916009)(71190400001)(71200400001)(229853002)(305945005)(74316002)(66066001)(7736002)(86362001)(5660300002)(446003)(11346002)(486006)(476003)(76116006)(64756008)(66556008)(66476007)(15650500001)(66946007)(2351001)(6506007)(52536014)(3846002)(76176011)(7696005)(26005)(2906002)(2501003)(186003)(102836004)(6116002)(99286004)(66446008);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB1766;
	H:CY4PR11MB1879.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WQ9XbHjnLYLcpIKKgL1+M0QBUPqwPhLerGQhm+7ei23RRdqsDlu0ABjxJmB106UutjGCj6gkRSv7gUo1yrmT+39U0ZZWDfn82C6itrz2is8GpjE3hwfjZFuoAYoit+hAIplug8UMwLtYKQJsvBg5awAqdnGHSbZkb8RImCQKfLSQYHBbixtY7FhhY0t1rbET78xOMzh+AtNbs8PJZSBjFEGBMCoMlbCm04UD6j+HXpoEami8XIxFovtpaOdivMpu+UEWd4T9SZClB01QIl/kHKQId40i0C+tS+rBOSdxA1CLbHBX4u3Rs+z4hu3bx36u6QsVpahq6qYbesMrwDrcrJdnOVABNtdRi7cVHV1Y39RIRvA9xoz93FmwLEHh9baRVMBkkkhTRk+mIy3+FVQA753Yp8+p92+c22NyAQjIRy4fLBZcDWR9eSuT6il9kJXJLken4a4eZ7JWK18wijqryTJNYRfdzXegOtVls7kukDo=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 672a123f-a135-4f1e-d5c9-08d7578f1d17
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 08:00:47.3117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YKztoV4zQ8ME4VV6bcjuKz8DfuV/sRpgKKJIADTzRgy/bSuDrDtsob5AAuDBU3xHvQAfarYot2jczjbrvpWqOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1766
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
X-List-Received-Date: Wed, 23 Oct 2019 08:00:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the full report for 2.6.4 RC2: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
No new defect found in this cycle.
The stap test case failure on beaglebone still exists in this release (BUG =
id:13273).=20

=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13273

Thanks & Regards,
Sangeeta Jain

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

