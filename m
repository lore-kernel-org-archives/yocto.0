Return-Path: <hernan_gutierrez@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E60FE008A4; Fri, 13 Oct 2017 12:36:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.117 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0117.outbound.protection.outlook.com [104.47.41.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60236E006CA
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 12:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HP.onmicrosoft.com;
	s=selector1-hp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=Ar2j7S+0V4BqlUwxfoug7kR2KJu0lvn95PPAH6+JCdA=;
	b=Dl2SOAuci+Ls+Orc6jVISPGyj7NOoZXzSRv4zywhjKcvAYehPcxP1q0SUvUGGyKmfHRCQaLDu1eTPltxiEu3/ldOHQ9truzM3PfK8TSi066CnUYR+gTEbXQnev1hCGx7WgHC882XhQMvmlZPUF58G6ANWT4YevhSLVxrEz5z5fo=
Received: from TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM (10.169.47.144) by
	TU4PR8401MB1039.NAMPRD84.PROD.OUTLOOK.COM (10.169.47.143) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 13 Oct 2017 19:36:33 +0000
Received: from TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::899b:ab4b:d42e:5e3b]) by
	TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::899b:ab4b:d42e:5e3b%18]) with mapi id 15.20.0077.021;
	Fri, 13 Oct 2017 19:36:33 +0000
From: "Gutierrez, Hernan Ildefonso (Boise R&D, FW)" <hernan_gutierrez@hp.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] How to use two recipes to satisfy different PROVIDES --
	gpu support
Thread-Index: AdNC22ZV8TpVY/p+Rj+GscF2Iu86HQAGiESAAAUnmjAAMxOqAAAg2jKg
Date: Fri, 13 Oct 2017 19:36:33 +0000
Message-ID: <TU4PR8401MB10405BE964561C6D4995700999480@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR8401MB104097E5404DDCE3959D9401994A0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
	<CAMKF1sox3ztaxD5NRMHKemO0WMWgiZ7C+EEECXhdpa9N_tSSgA@mail.gmail.com>
	<TU4PR8401MB1040E74F1B4A2945C4F846A9994B0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
	<20171013035048.xa25jylyhigzf4ih@apollo>
In-Reply-To: <20171013035048.xa25jylyhigzf4ih@apollo>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hernan_gutierrez@hp.com; 
x-originating-ip: [15.65.244.15]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR8401MB1039;
	6:cb99Nr4108tN0+riVpP+SUT2Cv546VrdxjwKDXCrIhupif9BaAfkSbpzIkHqES6vxlH7x0IYVgNjxg5qKfg5G+WiisTnUmwxKrvIuV3d4p/tKaWiI4GUjXkgRgvJvHmVkHK0c7hfTT90AWKaUqTC6jq6s9YdnbBOj7Sr+p/hQVC/yNEkC2qie1KI/WUlOkZcaS52Ja/ffmXxfm6cBmRF2ig9bObuEs4tOJ0IYfxsM/GQjFZJjAb1KjVHGZcKk6o8yGjHAmsUaMbojz0FgktdjmukztEivMkzBp6yOq6AZ330BKAt/SkazxfU0VVFBRGo/ec8qRMcDFr81j9Z4m5Rlw==;
	5:C9MIQrbBJ1xa5SPuqaQMld6lt2kdU9jVwELNdSvAbO8TIt1MrjymPKbWolHx4S3i0/0joLApGTMwgSDfcMRtkF2NqNOvTX5Kx8YEnKmQOHQO4H/RyxIovKynCakH2iAQgB5GUKLw/88+bjbeTvipaSmrvN66xkXLfO4iFW618bw=;
	24:OxsY7HdLvLrZE69W3fM7PMomT7OPDoLLsR0E9owww+KGuXHreyMg679eQHaqw4N58cL/OfwDxvKB8y/ZVbju6JOqqM0BpmyuuYkar3yugFE=;
	7:LCkuacRQ9X4mCLRz/tRTrILAxwMda8PTKwYecReYNkw3zOw79gyIJs5cIbdlioU/CLkzHQq4OBXYrGQ80Nsj5YlhFNDXEeqOz21lCBLf0shW9OBqL51Bsf5Rj4t4E1Ez1O6j88kvz4c7t0N07+RB03rL6Xn9l8kxDXnLTV5JBiqMxpB/CaByWFyr8E1k5G8iPOIZFYZh1Sd7CXTHa7+8ZGJUKN6zz3sW9eE6BPOPRrM=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 236d0b65-a044-4451-4ade-08d51271b62d
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:TU4PR8401MB1039; 
x-ms-traffictypediagnostic: TU4PR8401MB1039:
x-exchange-antispam-report-test: UriScan:(166708455590820)(73583498263828)(17755550239193); 
x-microsoft-antispam-prvs: <TU4PR8401MB1039FB3E59E9339E7B9B74B299480@TU4PR8401MB1039.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(93006095)(93001095)(3002001)(10201501046)(6041248)(20161123562025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123555025)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:TU4PR8401MB1039; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:TU4PR8401MB1039; 
x-forefront-prvs: 04599F3534
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39860400002)(376002)(346002)(51914003)(6602003)(189002)(199003)(13464003)(377454003)(24454002)(97736004)(54356999)(66066001)(316002)(5660300001)(53936002)(102836003)(55016002)(5250100002)(6436002)(86362001)(3280700002)(50986999)(68736007)(6506006)(4326008)(6116002)(3846002)(3660700001)(2906002)(76176999)(7696004)(2900100001)(478600001)(101416001)(33656002)(6916009)(189998001)(93886005)(105586002)(74316002)(106356001)(8936002)(2950100002)(14454004)(7736002)(25786009)(39060400002)(6306002)(305945005)(6246003)(9686003)(8676002)(966005)(81156014)(81166006)(229853002)(53546010);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR8401MB1039;
	H:TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2017 19:36:33.8881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ca7981a2-785a-463d-b82a-3db87dfc3ce6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB1039
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to use two recipes to satisfy different PROVIDES -- gpu support
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
X-List-Received-Date: Fri, 13 Oct 2017 19:36:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Raj,

Thanks for your response.

I figured two issues I had in my original recipe. (after your response and =
other queries I did)

a) virtual/libgl is not provided by my recipe, and I was claiming to provid=
e it.=20
b) I read that mesa has to provide some of the libraries, even if you have =
a GPU, so I added DEPENDS +=3D "mesa"
c) I also found that there is a way to remove the conflicts in the provide =
by doing a patch to mesa, (mesa_%.bbappend) and inside that recipe, you can=
 do a PROVIDES_remove +=3D "virtual/ligegl .... etc."

Thanks,

--Hernan


> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Thursday, October 12, 2017 9:51 PM
> To: Gutierrez, Hernan Ildefonso (Boise R&D, FW)
> <hernan_gutierrez@hp.com>
> Cc: yocto <yocto@yoctoproject.org>
> Subject: Re: [yocto] How to use two recipes to satisfy different PROVIDES=
 --
> gpu support
>=20
> On Thu, Oct 12, 2017 at 03:33:53AM +0000, Gutierrez, Hernan Ildefonso
> (Boise R&D, FW) wrote:
> > Raj,
> >
> > Thanks for the response.
> >
> > Is there an example of what you mentioned below which is open source?
> >
> > So far my two references have been Freescale and Mali. I found mali
> > much simpler than Freescale, however Mali GPU doesn't really have a
> refactor of mesa, they only do a simple bbappend to mesa with the
> PROVIDES_remove statement I stated in my original note.
>=20
> you can also look at meta-raspberrypi
>=20
>=20
> >
> > For reference here:  https://github.com/ARM-software/meta-mali
> >
> > --Hernan
> >
> >
> >
> > > -----Original Message-----
> > > From: Khem Raj [mailto:raj.khem@gmail.com]
> > > Sent: Wednesday, October 11, 2017 7:01 PM
> > > To: Gutierrez, Hernan Ildefonso (Boise R&D, FW)
> > > <hernan_gutierrez@hp.com>
> > > Cc: yocto <yocto@yoctoproject.org>
> > > Subject: Re: [yocto] How to use two recipes to satisfy different
> > > PROVIDES -- gpu support
> > >
> > > On Wed, Oct 11, 2017 at 3:15 PM, Gutierrez, Hernan Ildefonso (Boise
> > > R&D,
> > > FW) <hernan_gutierrez@hp.com> wrote:
> > > > Hi,
> > > >
> > > > We have a GPU in our system. We created a recipe to satisfy all
> > > > the
> > > dependencies for core-image-weston (virtual/egl, virtual/libgl,
> > > etc.), except virtual/mesa, which is not provided by our GPU recipe.
> > > >
> > > > When one builds core-image-weston, the image requires mesa to
> > > > build as
> > > well.
> > > >
> > > > Our approach to satisfy dependencies is very similar to what
> > > > Freescale and
> > > other vendors with Mali GPU support use, which is through the
> > > following
> > > statements:
> > > >
> > > > PREFERRED_PROVIDER_virtual/egl =3D "my-gpu-recipe"
> > > > PREFERRED_PROVIDER_virtual/libgles1 =3D " my-gpu-recipe "
> > > > PREFERRED_PROVIDER_virtual/libgles2 =3D " my-gpu-recipe "
> > > > PREFERRED_PROVIDER_virtual/libgl =3D "my-gpu-recipe"
> > > > PREFERRED_PROVIDER_virtual/mesa =3D "mesa"
> > > >
> > > > The way to remove mesa support for virtual/egl, virtual/libgles1,
> > > > etc. is by
> > > adding a mesa_%.bbappend where it states explicitly to remove those
> > > provides from mesa recipe.
> > > >
> > > > e.g.
> > > > PROVIDES_remove =3D "virtual/libgles1 virtual/libgles2
> > > > virtual/libopenvg
> > > virtual/egl"
> > > >
> > > >
> > > > The problem I am running into is that bitbake complains stating
> > > > that virtual/mesa is not satisfied (Nothing PROVIDES
> > > > 'virtual/mesa')
> > > >
> > > > When I do bitbake-layers show-recipes, I see that mesa recipe is
> > > > skipped
> > > because it gave priority to my-gpu-recipe.
> > > >
> > > > How can two recipes be used and let bitbake satisfy parts of each
> recipe?
> > > >
> > > > Any hints will be appreciated.
> > >
> > > there is no easy way to control providers once a recipe is pulled in.
> > > you can refactor mesa recipe like we have done for mesa and mesa-gl
> > > which will mean adding a another recipe which just builds the needed
> > > portions of mesa in each recipe, if your GPU driver provides
> > > everything you need to run weston, then you can let it provide
> > > everything that mesa provides and bitbake wont pick up mesa at all.
> > >
> > > >
> > > > Thanks,
> > > >
> > > > --Hernan
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto

