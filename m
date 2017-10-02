Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E5A2E00CC4; Mon,  2 Oct 2017 15:22:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0103.outbound.protection.outlook.com [104.47.34.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15E0CE00CB6
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 15:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=9BCVtsUjbFymWgH9hdby6ECWVISMJ+TI60cY6mHGDXQ=;
	b=LgE5WKofWMbXakk/6Mg4ElOdJsL8svSh+xXdbhY139hLLx5cEffFu739pWSdSSmTpOFi9EvWRDYfyUw71WAj9VXvEugpD4MMLQ0RmQ2tlDVMp7oWIUC0IKaa9h5Qoi7ysa6E13MSgvWXYoi8tmfeLUyR6+xONheSAsciqsBh9pY=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.5; Mon, 2 Oct 2017 20:48:58 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.20.0077.018; Mon, 2 Oct 2017 20:48:58 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>, "Dominig ar Foll
	(Intel Open Source)" <dominig.arfoll@fridu.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Errors building with Windows Subsystem for Linux (aka
	Bash on Ubuntu on Windows)
Thread-Index: AdM2vvT/ayFgE6oJRBOg0n7smNXIyQCbIGYAAFipvwAAS46c4A==
Date: Mon, 2 Oct 2017 20:48:58 +0000
Message-ID: <DM5PR05MB2954B861576FBB1E60CA8013BB7D0@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<08461abb-3f52-4110-3bb5-14773fa89286@fridu.net>
	<6ae04a22-4066-670a-87b8-f96c698c1621@linux.intel.com>
In-Reply-To: <6ae04a22-4066-670a-87b8-f96c698c1621@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2954;
	6:g/fX4B6NUUVuRmBRDj0KgNUEPuSMd+z8kBCCj+MX0d4qfGE2+d62TFp3nERDNAQdYa38BDC5S7JL5SyUhZUDFXlX40NLSXvMQy6a8wATFeyTkKRYzzym+8HjEoAyi476rt9JNCJiwvwXh/uHmooRv+JdfYvvUOPNXtfjnF2A3Pg5n5wKk37Pk3t2C9Gts+R6Y1gXZRNAc3uWzH7N2+m+OEhn7jo9RVKb7y+ifm15f1K8VIaxNDmpPq69kP65n6BLKKJpUWxTI7B+sjm3bs5Cdmb3+8HFyufSP5NxtIpmfwhul+OAy3kt5/KNzqRW0puYXgn1CF6R84qcgTUP/U9o0g==;
	5:BxNsvUrPVgbeDy7p5HxMWxQD2pfq7O7kUT/6jW+UB4iBvA1gP9bmLJ2y0TEwak73IZNokZRKNaanFdnzK2OHJwQ2sy+kIPOlWg7KugNfl8f/THDzdka/A3jgwY7eaBGZuoidC7YwY5dKi0LstGuO5Q==;
	24:euxXjgfMkJvEg1K/vsy0mmcAU2MKjezyE1CGrfQ4DQ+Lv4HIqYNtY+CM31DovGofk4Esz8KMVARTJKOY7gZjQ5OWyzg6TALe/yEXFTkNyng=;
	7:Sr/mzUeZ55SkNe4JOUoR2z8TiaflOKisYPZJyqo/ga8PDjDJRQ3AiecFsDKx7xieCrPEfXGm55Rm4+Aua5w+2hmunKNMOnKi/rPp6AKrL8lB3K6cYVM+iHLiy0o+3xwfjJddIhCVTDKsYiTeF0M0vTNkxm2TyMY3YQDc3bSdvJKFUPFyTd/ncLPnclEirsPhbSGinOE84U8wyDXxtnj9TPVnfmhGsAa/Ga9MmgiVF1I=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 35de8291-2b76-4eca-e17c-08d509d70141
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DM5PR05MB2954; 
x-ms-traffictypediagnostic: DM5PR05MB2954:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <DM5PR05MB295486CF79B6FD6C89C90A5CBB7D0@DM5PR05MB2954.namprd05.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(3002001)(100000703101)(100105400095)(10201501046)(93006095)(93001095)(6041248)(20161123560025)(20161123555025)(201703131423075)(201703061421075)(20161123564025)(20161123562025)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM5PR05MB2954; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM5PR05MB2954; 
x-forefront-prvs: 0448A97BF2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(346002)(376002)(199003)(377454003)(13464003)(24454002)(189002)(3846002)(110136005)(66066001)(102836003)(99286003)(6246003)(3660700001)(68736007)(189998001)(3280700002)(97736004)(2906002)(74316002)(229853002)(101416001)(305945005)(76176999)(50986999)(54356999)(55016002)(7696004)(5660300001)(7736002)(6506006)(53546010)(9686003)(33656002)(6436002)(86362001)(81166006)(81156014)(8676002)(77096006)(8936002)(6116002)(2501003)(53936002)(508600001)(106356001)(14454004)(25786009)(2900100001)(2950100002)(105586002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2954;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2017 20:48:58.4787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2954
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Mon, 02 Oct 2017 22:22:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Alex,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Alexander Kanavin
> Sent: Sunday, October 01, 2017 4:20 AM
> To: Dominig ar Foll (Intel Open Source) <dominig.arfoll@fridu.net>; yocto=
@yoctoproject.org
> Subject: Re: [yocto] Errors building with Windows Subsystem for Linux (ak=
a Bash on Ubuntu on Windows)
>=20
> On 09/29/2017 05:01 PM, Dominig ar Foll (Intel Open Source) wrote:
> >> Due to what our IT department can support, I am issued a Windows lapto=
p for development.  In the past I have used VMWare to make a Linux virtual =
machine for my Yocto Project based image builds and application development=
.  We are starting to get Windows 10 laptops so I am evaluating doing my bu=
ilds using the Windows Subsystem for Linux (WSL) by building a poky/morty i=
mage.  Overall it seems to be working.  I've had an issue that I've worked =
through and other issues that I'm not quite sure what is going on.
> >>
> > Hi Brian,
> >=20
> > I have been trying the same thing attempting to build Automotive Grade=
=20
> > Linux from Linux for Windows subsystem.
> > We have many adopter of AGL who also receive Windows PC from their IT=20
> > department. While VM work, they impose a serious limitation on memory=20
> > and CPU usage.
>=20
> Does anyone else think doing embedded linux development on windows machin=
es is a ridiculous situation, and needs to be discussed with companies mana=
gement? IT departments should either support product R&D work (because at t=
he end of the day that is where the company makes money), or stay out of th=
e way and let engineers self-manage their computers, including installing w=
eird operating systems.

Yes, ideally I could just get a Linux laptop and do that for development.  =
Unfortunately, that's not an option for me.  Honestly, if WSL works well I =
wouldn't mind it as a working solution.  I started trying this more out of =
curiosity if it would do anything.  I was quite surprised how much did work=
 with very little modification.

With the few changes I have already mentioned, I was able to build my compl=
ete image.  I then started working on building my development image to crea=
te and SDK that has gdb and tools for the Eclipse plugin.  That built all t=
he way to rootfs, then failed with a blank error message.  I then tried wit=
h my VM, and the development image failed in the same manner.  I recently u=
pdated to a more recent Yocto branch, so I think I broke something with my =
development image build (unrelated to WSL) that I need to go back and fix.

The biggest issue I had with build times was with antivirus tools.  I hadn'=
t setup the Windows antivirus to ignore the WSL working directory, so it wa=
s scanning every new file created and modified.  Once I told it to ignore t=
he WSL working directory, the build times were comparable to under VMWare.

I don't know how far I'll take this, but I thought others would be interest=
ed in the results.

Bryan

