Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19516E00E07; Sun, 17 Nov 2019 23:00:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B00DE00DF8
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2019 23:00:03 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Nov 2019 23:00:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,319,1569308400"; d="scan'208";a="380562367"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by orsmga005.jf.intel.com with ESMTP; 17 Nov 2019 23:00:02 -0800
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
	fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Sun, 17 Nov 2019 23:00:01 -0800
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
	FMSMSX112.amr.corp.intel.com (10.18.116.6) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Sun, 17 Nov 2019 23:00:01 -0800
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (104.47.40.55) by
	edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Sun, 17 Nov 2019 23:00:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=MgjjDonv+7Tn2ew8rNtFllBZjRB6USkZrwn4DMsyVUkzTCWlzr2prgEJ90C4gwLbbfkjgj3MojA073G8GLwOCoQUeUDhgmUdqt+v0meZs13l5b/QcfWvOpNuTBEOa1MtZW2D8IzqoL7wh7oCX7L9IjuOCsXvA9Wmrs1w84MFD2hi5/t7Hbt5XQmah5eX6odlCSnBrDNKZEGxuBf9vDBZpSQbKrsbXh80hfp+Kv2L9FVdEggBEr90hODaiAhOaM1pPsgqJ0MxtPd/T7a4V1ggau32rMkDrZcXDwxM7FoYg18VeVGGACydTQ+3n/HZmSP1YgPZ0eYy5u3hNfdg9m+24Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=t19kA90t/IE+Atnkow84e42+thIUCW+Q6s/xfod91kc=;
	b=all+1qN2ZK++laZ1HHey8MF5OgggXabwrGziwPchUjCvWLygllCDgG2+I+aL7OxnLkp588xQeyrFFrM8hMagPWXWciM6igjAJbN0oY479MK+pslpq79vL0hFQkRn68cr5s22UPoY6qhfGe9Lmr9K53XUi6KysDRrJPN9XhnnKRBYU5DMaJ3GEkptno7ubSYA0s+sSLaJb1uWTR5ZNpzOPOHMfLt5et/WoguJCe59CbUhBZN8uwXV0wbHJMSKPe7nas9y8KsUVtLBsBJqAzTsTGpC9E5gyZIkzOT8uR40Q43gLpm7YFAOp23BmdzpU8ZgL3uEuFWPq4C72yFrjbetTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=t19kA90t/IE+Atnkow84e42+thIUCW+Q6s/xfod91kc=;
	b=CU6U4eI9gVCfg4S5UsSZs9Xmobx28LyeK/GwV1kdoyge+n4xNkvwi7ULvzkYqBs9Tyq/HIUJpLOdYDVhuzkQJmjB17Z8eg0m4svrRjSny2JZyuJeED0JeTHaGXbzXljuvL2lf5rIbxvwTqw27UqLoCUhc5YlgTYkHCeB+94X0ok=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
	CY4PR11MB1431.namprd11.prod.outlook.com (10.172.65.146) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2451.27; Mon, 18 Nov 2019 07:00:00 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::4166:5d0e:5668:cfcb]) by
	CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::4166:5d0e:5668:cfcb%12]) with mapi id 15.20.2451.029;
	Mon, 18 Nov 2019 06:59:59 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build (yocto-2.7.2.rc1)
Thread-Index: AQHVj0awBDm/iowYYEmOMC/7QZy+EKdz9waAgBylMmA=
Date: Mon, 18 Nov 2019 06:59:59 +0000
Message-ID: <CY4PR11MB1879BE6554D6A371F80439F3E34D0@CY4PR11MB1879.namprd11.prod.outlook.com>
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
x-originating-ip: [192.198.147.212]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fadfbc4-43dc-499b-883d-08d76bf4edad
x-ms-traffictypediagnostic: CY4PR11MB1431:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB143123313D80FE53B244B98FE34D0@CY4PR11MB1431.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0225B0D5BC
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(39860400002)(396003)(376002)(346002)(366004)(199004)(189003)(53754006)(13464003)(229853002)(8936002)(54906003)(99286004)(316002)(81166006)(6116002)(3846002)(5660300002)(52536014)(2906002)(478600001)(25786009)(305945005)(14444005)(486006)(256004)(74316002)(2501003)(476003)(446003)(11346002)(33656002)(76116006)(66066001)(6506007)(71190400001)(6436002)(4326008)(7696005)(8676002)(71200400001)(6246003)(5640700003)(26005)(966005)(7736002)(14454004)(186003)(2351001)(66476007)(64756008)(66556008)(66946007)(66446008)(6916009)(15650500001)(86362001)(81156014)(76176011)(102836004)(6306002)(1730700003)(9686003)(55016002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB1431;
	H:CY4PR11MB1879.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BBOS2JSVxVs6gMFH0oOut5CRvqqLRyvuyDn4Jb21lNKo2WX0v5gWKjdXKG3wp/R1pE9dYpd1/DGRwjU4Tbl6Wfkqk2Z45WSFtZwWzLlkKXGZHMOqjHY99fHZOkzO8uLgzi9Wcmhh1+oY/L7+cBsXpuTsUYMkGUrsX3QVDnNoaba+P0cC9M4GGG0OZnF42BvKRippZoATlOGeO2aB0sblI8TcNoy+qyrj6SK3IBmrl10YLzBPdOY2xeCbx8k7XIo7yhvi/oOdn4Tf7dM4NJKxeyt8ddvR4AnymNuzwQlnyhfheg4FA4ppJ+bSPLdNR7cY9ZOqeGok83oWjfYuaIsHEJX9fEsb88pE5lT8La8NaKGdqxMk5vs+aZW9CE6+uyRH4xi7Fn9w27GZhBDu46UDuZrOZF41d05VMe3npHdehvhBwFxBrmphopxho+9GbSEx
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fadfbc4-43dc-499b-883d-08d76bf4edad
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2019 06:59:59.7430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lu21qrssSkfbeD7uGXt3s+WxsKHgkE3eFggOHU7lvZ7YdI/ExPG0II/zLnZy/UCCGPE+P8Z9LhBq0uJZ6CdmyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1431
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
X-List-Received-Date: Mon, 18 Nov 2019 07:00:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the full report for 2.7.2 RC1: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?=
h=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
No new defect found in this cycle.


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

