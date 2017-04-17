Return-Path: <Manish.Jaggi@cavium.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2339CE00524; Mon, 17 Apr 2017 02:30:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.87 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3545 seconds by postgrey-1.32 at yocto-www;
	Mon, 17 Apr 2017 02:30:28 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0087.outbound.protection.outlook.com [104.47.33.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A134AE00349
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 02:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-cavium-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=imvm4icAfYoud3filVtywHsRTCFoYSdbJizDUui4ZhA=;
	b=ddJsImajqwKrp/ENGkt3H/9VanllTyojrNbCuhSUQxhUsCmCdgFAZeRbGj/0LshlGxQIOkVNQSrPYP2I0lEVYptW91WDtQEzwHVZEEj/c512Zzu2LoO7cU2eln0GTX2AZm7l6NL6QC/tO7bMSZBbMQjZLrvYqIxfn/XOZE/uYzY=
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) by
	BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1034.10;
	Mon, 17 Apr 2017 07:59:32 +0000
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) by
	BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) with
	mapi id 15.01.1034.015; Mon, 17 Apr 2017 07:59:32 +0000
From: "Jaggi, Manish" <Manish.Jaggi@cavium.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to  write a recipe to  add files/links  in yocto rootfs 
Thread-Index: AQHSt1AciL9Z6WDGUUGSboEIMTEp0Q==
Date: Mon, 17 Apr 2017 07:59:32 +0000
Message-ID: <BY1PR0701MB15941732B57F9F2C6496B22DEC060@BY1PR0701MB1594.namprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=cavium.com;
x-originating-ip: [25.163.199.4]
x-microsoft-exchange-diagnostics: 1; BY1PR0701MB1594;
	7:yoDuLXikFjYS4iDVcyzaDrY/4TPzog6PXQkaWvOvSD7PRY1c4+c1zCd+zwsCRsGkDZ9xSS+vgSKaYISAEcNivca+FDeVMHYkK0YqvwTc8NFYCpj29Z+SLRHSpipJTARyrVyY3y2rx3ZdKZtYS6Lv6DK+FVLUSbXpzR9wd6+fZ23+bXtRtUoEM0yTzM80BP/cQPKpfCgvsjDf6/48tnJVr5EZ84Nxsm2+jkQk9nfF3hnkyS2gdaiEOKcC4qIOyKUnToV6Ua7XfqN/h19reDV/nWneGfsxcS88HGeXiuBezfHbTA3I4/OEuHNaomJCkHG9A5kiIqwiLKDLg1I15VTBTA==
x-ms-office365-filtering-correlation-id: 1e17fdde-9378-465c-8f36-08d48567aece
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081);
	SRVR:BY1PR0701MB1594; 
x-microsoft-antispam-prvs: <BY1PR0701MB159469A99FB17342F357BBD0EC060@BY1PR0701MB1594.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(10201501046)(6041248)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(20161123560025)(20161123555025)(20161123562025)(6072148);
	SRVR:BY1PR0701MB1594; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1594; 
x-forefront-prvs: 02801ACE41
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39400400002)(39410400002)(39840400002)(39450400003)(110136004)(38730400002)(558084003)(5640700003)(6436002)(2906002)(25786009)(81166006)(6116002)(102836003)(3846002)(8936002)(1730700003)(6506006)(305945005)(7736002)(122556002)(6916009)(66066001)(55016002)(53936002)(54356999)(5660300001)(74316002)(50986999)(9686003)(8676002)(2351001)(189998001)(3660700001)(77096006)(86362001)(7696004)(33656002)(2501003)(2900100001)(3280700002)(99286003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0701MB1594;
	H:BY1PR0701MB1594.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: cavium.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2017 07:59:32.4637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1594
Subject: How to write a recipe to add files/links in yocto rootfs
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
X-List-Received-Date: Mon, 17 Apr 2017 09:30:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

When I run bitbake core-image-minimal  a rootfs is generated.
I have to create links to some files in the rootfs, and add some files.
How to create a recipe which does that ?

I thought of trying to extend do_rootfs but that didnt work.

 Regards,=20
Manish Jaggi    =

