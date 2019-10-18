Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5DFCE00D9E; Thu, 17 Oct 2019 19:01:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D2D1E00D89
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 19:01:40 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Oct 2019 19:01:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,309,1566889200"; d="scan'208";a="200571759"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
	by orsmga006.jf.intel.com with ESMTP; 17 Oct 2019 19:01:39 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
	fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 17 Oct 2019 19:01:39 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
	fmsmsx123.amr.corp.intel.com (10.18.125.38) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 17 Oct 2019 19:01:38 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (104.47.49.51) by
	edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 17 Oct 2019 19:01:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=DTxzbGCLmWgWJu9hNXSwY77gGiB6zoUwcOaX9jweMikIfa5lojoTu4K5EPX8x8dfu4RCAyOiCcJ+CHibsvgQ/LZjXDKj69nXnE87iiS+9ZwOE4+Of1sya134pZ9nzYGZ03176P2g0hr5t3XeyCemY922k0a9HDfazFgt1e5M1OZYSSU5tibMbQvHw8LppzCeFjG/lgHY0gKW1ohu/XMutcyOUYtg4isNDkEW89tWilSvmiQsQqhJ9wm+dwkErJXJe6jA6CCic6v/lHPFn10l0T95LSRHPjdMJUSXxdND9SKiAurjFYwWHkBmiK2fTNkeEDXygDSTCzLy3dFvcGkbxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=C/VFmxU+3mB2yyF/ZvElTmZ026lsT0AnEnAQ+wP353c=;
	b=YRPF0uKjWuPE53HsHWOhJ6JsjcIyWwROG8kYS4uVzTpTsnFr3a1AU9a1GlZHwE1QA3VOofTIEIvv88WlFFNoHWSc2M14JlUBSeGa7cJrRK+wYPczu3D6gYvFyk87TXUX3E9LrLI61VOIXVa8X8d61v21f/HclaBF9sCsYrDN6UbArJPCAFe90V0o+pJlGL+6fPo8rfE+zss3P99vGfkXXZCGp4GOO3N/vzHcILuuTKZzIIFIwMJTV2JfeIjVYB4jl+AtzrOq7RGaQDbXS7j1ZgrBsmd8r4HbN7ee6v4Uz4ol8XnV+z0wkoVYZIoAWQKBKC+VfoB0CUT1wlOZ9xt0Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com; 
	dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
	s=selector2-intel-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=C/VFmxU+3mB2yyF/ZvElTmZ026lsT0AnEnAQ+wP353c=;
	b=WxSTcck3QTxQ5kb1UuNBFZSQbn/+kUw2NGd/JugpY5J41YcJIgxp16/j9RxxS444IRxHem8ME3s0ruFy/wC+Q2HQMKU2H64EniyMYdN4dPOfpUCTBsBveihbqdxT8PUi81OlR79h2SKtlkmD8mjZgBx3b5xssvBml3ihyvY7Go8=
Received: from CY4PR11MB1879.namprd11.prod.outlook.com (10.175.60.137) by
	CY4PR11MB1319.namprd11.prod.outlook.com (10.173.16.137) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.16; Fri, 18 Oct 2019 02:01:35 +0000
Received: from CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::581b:6fbf:a761:35e9]) by
	CY4PR11MB1879.namprd11.prod.outlook.com
	([fe80::581b:6fbf:a761:35e9%11]) with mapi id 15.20.2347.024;
	Fri, 18 Oct 2019 02:01:35 +0000
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: akuster <akuster@mvista.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] QA notification for completed autobuilder build
	(yocto-2.6.4.rc2)
Thread-Index: AQHVhTBiIbcNDF3K20uAc6lqLYj3RKdfcMcAgAA0VEA=
Date: Fri, 18 Oct 2019 02:01:35 +0000
Message-ID: <CY4PR11MB18798A880817EFD912D21A03E36C0@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20191017211733.34EB81C0386@ubuntu1604-ty-1.yocto.io>
	<f16291d5-196e-33bb-58ab-1eeb75c03271@mvista.com>
In-Reply-To: <f16291d5-196e-33bb-58ab-1eeb75c03271@mvista.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDYxNjg4ZTktMWYyNC00MWJlLWIyMTgtNmEwMzI0Nzc2MzFkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiT09yZDBHMlozWmdLU1k2VjAxNGNJQnF5RlZGemQ1ZlU1N1RoeStxdG5oNUg3Z09USTNKNlFGY0VFd2pZdXlHeiJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [192.198.147.223]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c6424037-d6f8-421c-95b5-08d7536f1b2b
x-ms-traffictypediagnostic: CY4PR11MB1319:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB13199B8B7A6880C5B2128ECDE36C0@CY4PR11MB1319.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(136003)(346002)(396003)(39850400004)(366004)(199004)(189003)(13464003)(81156014)(102836004)(81166006)(76176011)(8936002)(55016002)(14454004)(6436002)(966005)(478600001)(99286004)(6306002)(8676002)(9686003)(7696005)(6246003)(66066001)(33656002)(74316002)(66446008)(64756008)(66556008)(66476007)(4326008)(76116006)(66946007)(86362001)(2906002)(229853002)(3846002)(6116002)(11346002)(7736002)(15650500001)(71200400001)(256004)(25786009)(26005)(316002)(54906003)(305945005)(14444005)(110136005)(6506007)(186003)(486006)(52536014)(446003)(5660300002)(476003)(2501003)(71190400001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR11MB1319;
	H:CY4PR11MB1879.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:3; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bzCbDXdiik/1p/A6lQoN6pi+cJXCwQIG6BJuHiLEbDWCBCzg7WqiFTYgZv5KM5D6kG0MGssO08FpJdNyK7JZ+57euA+dHHcT206lvd8eVxPQyMaG0Vog9Xy7/JcIxuGOlfibUIPs4WMyx4CvAs5VtJb9GkrJxCPyECb3XcIAk1FCJAWypS5fDfxnSgc3/cUu3RsPTSd0WU4BLhICPYYJiac93wqOGf5EeqOVhhBYgv+yzfp4jRUQeN1PsV5KiOVp88tqwoEMuydg1iN0YkC+X61OR2uVr9PNfDGHEFTLv0JvYGyEo7ihHj9mwctIWiFeYgs/RrOO3IKRmdtC1Te9BkoiGSzUhfbfIwMbxgUNKnBYacG2oDEF192JLtFJdSlzr34IgT3DX0E/dmYVyFsVbylszo/tI9ivfjW8YOhEpRJ3Vq4MXqsS7Kb3WfeFIJUA602X+YfSHjYVOxSaf03I+Q==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c6424037-d6f8-421c-95b5-08d7536f1b2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 02:01:35.7701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eyVzX2oiXKPn/Qq/yturqblmimhfRUC8sf2E54O8g9o5oBUZRIfvxbuEv+yoZHaYK1Io8gAwpwTf8fbV787H8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1319
X-OriginatorOrg: intel.com
Cc: "akuster808@gmail.com" <akuster808@gmail.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
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
X-List-Received-Date: Fri, 18 Oct 2019 02:01:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable




>-----Original Message-----
>From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On
>Behalf Of akuster
>Sent: Friday, 18 October, 2019 6:53 AM
>To: yocto@yoctoproject.org
>Cc: akuster808@gmail.com; Chan, Aaron Chun Yew
><aaron.chun.yew.chan@intel.com>; otavio@ossystems.com.br
>Subject: Re: [yocto] QA notification for completed autobuilder build (yoct=
o-
>2.6.4.rc2)
>
>Can we get 2.6.4-rc2 in a QA queue for the next dot release?

Do you mean that we should wait for 2.7.2 before starting QA for 2.6.4-rc2?
>
>- armin
>

Thanks & Regards,
Sangeeta Jain

>On 10/17/19 2:17 PM, Poky Build User wrote:
>> A build flagged for QA (yocto-2.6.4.rc2) was completed on the autobuilde=
r and
>is available at:
>>
>>
>>     https://autobuilder.yocto.io/pub/releases/yocto-2.6.4.rc2
>>
>>
>> Build hash information:
>>
>> bitbake: 6b045e074c6fea97d4e305a5a3c8bf82135d95eb
>> meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
>> meta-intel: c200851435f39acd2fe4abbf7a05fbf617833964
>> meta-mingw: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
>> oecore: cd7cf933b3235560ec71576d8f3836dff736a39f
>> poky: 51f6145f8f99a02df1dad937684f014b0172e72a
>>
>>
>>
>> This is an automated message from the Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>> Email: richard.purdie@linuxfoundation.org
>>
>>
>>
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

