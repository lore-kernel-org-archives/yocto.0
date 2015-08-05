Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAF48E00AC0; Wed,  5 Aug 2015 02:17:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.169.111 listed in list.dnswl.org]
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0111.outbound.protection.outlook.com [65.55.169.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6D51E00A97
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 02:17:35 -0700 (PDT)
Received: from BN3PR03MB1367.namprd03.prod.outlook.com (10.163.34.153) by
	BN3PR03MB1366.namprd03.prod.outlook.com (10.163.34.152) with Microsoft
	SMTP Server (TLS) id 15.1.225.19; Wed, 5 Aug 2015 09:17:33 +0000
Received: from BN3PR03MB1367.namprd03.prod.outlook.com ([10.163.34.153]) by
	BN3PR03MB1367.namprd03.prod.outlook.com ([10.163.34.153]) with mapi id
	15.01.0225.018; Wed, 5 Aug 2015 09:17:33 +0000
From: Luo Zhenhua <zhenhua.luo@freescale.com>
To: Khem Raj <raj.khem@gmail.com>, Sarayu Krishna Sivanandam
	<sarayu@zaikenn.com>
Thread-Topic: [yocto] ADD GDB in FSL toolchain
Thread-Index: AQHQzphhsLGHvRUXIkyORV9wQkFj8J37ur+AgAAOBQCAAH49gIAA2YiQ
Date: Wed, 5 Aug 2015 09:17:32 +0000
Message-ID: <BN3PR03MB1367948110F93EB2C59A8343E4750@BN3PR03MB1367.namprd03.prod.outlook.com>
References: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>
	<55C0A75F.1000701@mlbassoc.com>
	<CAF5S8SMdfH8rNHznXCLJ_yt7PDGnKDujiu9=dpZce8eMzH4DrA@mail.gmail.com>
	<CAMKF1sq8GDP9fbZyyN7cJzM4ByMvd6p4xuKY-tyOd-VFe8=CLg@mail.gmail.com>
In-Reply-To: <CAMKF1sq8GDP9fbZyyN7cJzM4ByMvd6p4xuKY-tyOd-VFe8=CLg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@freescale.com; 
x-originating-ip: [123.151.195.51]
x-microsoft-exchange-diagnostics: 1; BN3PR03MB1366;
	5:CSSqA1reg6kYM800836YYbOfKyxEsaB2tWy8qs3FBJaZu/I8mv1svC7fhE2X3pCnB7pFIl3oKU7DWxFeO7Y+Kr2u3C2YhQydoeQ9VnQpjIGIJ9Mo2tk/bmTkZDioYiH6HBqiOGi1O0IVQMUmH852tg==;
	24:h4Bph48gvIuzKoB9TA9MNGwF/BzVYcuTpLA7ORNWwSbop3TO58ulwnRWddNlLM6WDi7nZnMQHQpSWh3yW+dpb+Mb8QZXVbGZaDPBWE3Q0kA=;
	20:7Xr9p/+thJ8HTUKLMBZ6UNPMLjykw9kYRkGr8THTVYhF/SvhMuerhLOTlGjwBz/4Q/VXAKJurnA14Ld2AO/vKA==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR03MB1366;
bn3pr03mb1366: X-MS-Exchange-Organization-RulesExecuted
x-microsoft-antispam-prvs: <BN3PR03MB1366A797BAEC565C7269C51DE4750@BN3PR03MB1366.namprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:BN3PR03MB1366; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR03MB1366; 
x-forefront-prvs: 06592CCE58
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(51914003)(199003)(13464003)(377454003)(189002)(53754006)(377424004)(24454002)(87936001)(2900100001)(92566002)(5002640100001)(106116001)(97736004)(99286002)(77096005)(19580405001)(66066001)(5001830100001)(5001770100001)(101416001)(62966003)(93886004)(106356001)(76576001)(81156007)(105586002)(2950100001)(15975445007)(50986999)(102836002)(68736005)(74316001)(76176999)(5001860100001)(86362001)(2656002)(64706001)(54356999)(122556002)(46102003)(77156002)(19580395003)(40100003)(5001960100002)(10400500002)(5003600100002)(4001540100001)(33656002)(189998001)(217873001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR03MB1366;
	H:BN3PR03MB1367.namprd03.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: freescale.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2015 09:17:32.7782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 710a03f5-10f6-4d38-9ff4-a80b81da590d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB1366
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: ADD GDB in FSL toolchain
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
X-List-Received-Date: Wed, 05 Aug 2015 09:17:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Sarayu,=20

Do you want the gdb utility which can be executed on host machine or gdb st=
uffs of target machine? If the former, the utility is already included(<too=
lchain-install-dir>/sysroots/x86_64-fslsdk-linux/usr/bin/arm-fsl-linux-gnue=
abi/arm-fsl-linux-gnueabi-gdb), if the latter, you can follow Khem's sugges=
tion.=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Khem Raj
> Sent: Wednesday, August 05, 2015 4:14 AM
> To: Sarayu Krishna Sivanandam
> Cc: yocto@yoctoproject.org; Gary Thomas
> Subject: Re: [yocto] ADD GDB in FSL toolchain
>=20
> On Tue, Aug 4, 2015 at 5:42 AM, Sarayu Krishna Sivanandam
> <sarayu@zaikenn.com> wrote:
> > hi Gary ,
> >
> > Thanks for the quick response. I still see the below error .
> >
> > NOTE: Resolving any missing task queue dependencies
> > ERROR: Nothing RPROVIDES 'gdb-cross-arm'
> > NOTE: Runtime target 'gdb-cross-arm' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['gdb-cross-arm']
> > ERROR: Required build target 'fsl-toolchain' has no buildable providers=
.
> > Missing or unbuildable dependency chain was: ['fsl-toolchain',
> > 'gdb-cross-arm']
>=20
> this is not a target task. Its a host-x-target tool you should add db-cro=
ss-
> canadian-${TRANSLATED_TARGET_ARCH}  to TOOLCHAIN_HOST_TASK
>=20
> if you want gdb on target then you would add 'gdb' to
> TOOLCHAIN_TARGET_TASK
>=20
> > -----
> >
> > Below is how the change ,
> > TOOLCHAIN_TARGET_TASK +=3D " \
> >     glib-2.0 \
> >     glib-2.0-dev \
> >     dtc-staticdev \
> >     libgomp \
> >     libgomp-dev \
> >     libgomp-staticdev \
> >     libstdc++-staticdev \
> >     ${TCLIBC}-staticdev \
> >     util-linux-dev \
> >     gdb-cross-arm \
> > "
> >
> >
> > Thanks and Regards,
> > Sarayu K S
> > Tech Lead
> > Zaikenn Technologies
> >
> > On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> >>
> >> On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:
> >>>
> >>> Hi all ,
> >>>
> >>> I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation for
> >>> my ARM board .  I wanted to build gdb along with the toolchain . I
> >>> got some ideas from google to add the gdb-cross in the
> >>> fsl-toolchain.bb <http://fsl-toolchain.bb> but on doing the same it
> >>> gave me some errors when trying to build .
> >>>
> >>> Can you please let me know the right method to add gdb in the toolcha=
in ?
> >>>
> >>> Below is the error i got ,
> >>> *ERROR: gdb-cross not found in the base feeds (ls1021atwr
> >>> cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vfp
> >>> armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any all).*
> >>
> >>
> >> Use gdb-cross-arm
> >>
> >> --
> >> ------------------------------------------------------------
> >> Gary Thomas                 |  Consulting for the
> >> MLB Associates              |    Embedded world
> >> ------------------------------------------------------------
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

