Return-Path: <pierre-yves.mordret@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B640E00543; Fri,  8 Aug 2014 11:41:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.209.51.94 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
	[62.209.51.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2601E0034B
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 11:41:15 -0700 (PDT)
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	s78Ie5ic031341; Fri, 8 Aug 2014 20:41:11 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 1nmsdkaufa-1
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 08 Aug 2014 20:41:11 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DE80631;
	Fri,  8 Aug 2014 18:41:04 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas2.st.com [10.75.90.16])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0B9F0B4B77;
	Fri,  8 Aug 2014 18:41:09 +0000 (GMT)
Received: from SAFEX1MAIL5.st.com ([10.75.90.80]) by SAFEX1HUBCAS2.st.com
	([10.75.90.16]) with mapi; Fri, 8 Aug 2014 20:41:08 +0200
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: Mark Hatle <mark.hatle@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 8 Aug 2014 20:41:07 +0200
Thread-Topic: [yocto] Installing Application Development SDK hangs when
	using "screen"
Thread-Index: Ac+zElwDhhUy8PaETiOVfvqeqb6cGQAJWQGA
Message-ID: <888B7DC5D4899F46A972198928366696B7458820F7@SAFEX1MAIL5.st.com>
References: <888B7DC5D4899F46A9721989283666969C1E56EE1B@SAFEX1MAIL5.st.com>
	<53E3A6DE.7010500@windriver.com>
	<888B7DC5D4899F46A9721989283666969C1E56EE49@SAFEX1MAIL5.st.com>
	<53E4DA09.9080307@windriver.com>
In-Reply-To: <53E4DA09.9080307@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.27,
	0.0.0000
	definitions=2014-08-08_05:2014-08-08, 2014-08-08,
	1970-01-01 signatures=0
Subject: Re: Installing Application Development SDK hangs when using "screen"
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
X-List-Received-Date: Fri, 08 Aug 2014 18:41:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

You're right this has solved my issue !

I keep it as patch in my side and waiting it in daisy branch

Thanks !

> -----Original Message-----
> From: Mark Hatle [mailto:mark.hatle@windriver.com]
> Sent: vendredi 8 ao=FBt 2014 10:09
> To: Pierre Yves MORDRET; yocto@yoctoproject.org
> Subject: Re: [yocto] Installing Application Development SDK hangs when
> using "screen"
>=20
> On 8/8/14, 8:21 AM, Pierre Yves MORDRET wrote:
> > Hi Mark,
> >
> > This is on Daisy branch. On Dylan branch I didn't experience such troub=
le. It
> came up with Daisy.
>=20
> (I haven't used Daisy very much... but...)
>=20
> There was a bug in the master version of the SDK installer that was displ=
aying
> special characters to the screen in some instances.  It caused what appea=
red
> to be a lockup on my screen for a while, but it was actually just taking =
a very
> long time to complete the operation, then a 'return' would allow the prom=
pt
> to come back.
>=20
> This was recently fixed by a commit from Richard
> 2d1660112e54653f7bb763939d0416472c49fe01
>=20
> If you can, cherry-pick that commit from master into your Daisy branch an=
d
> try again.  If this works, we should get that submitted to Daisy.
>=20
> --Mark
>=20
>=20
> > Regards
> >
> >> -----Original Message-----
> >> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >> bounces@yoctoproject.org] On Behalf Of Mark Hatle
> >> Sent: jeudi 7 ao=FBt 2014 12:19
> >> To: yocto@yoctoproject.org
> >> Subject: Re: [yocto] Installing Application Development SDK hangs
> >> when using "screen"
> >>
> >> On 8/7/14, 8:59 AM, Pierre Yves MORDRET wrote:
> >>> Hi there,
> >>>
> >>> I have a tricky issue to sort out. I'm using a build server(Ubuntu
> >>> 12.04 LTS)
> >> for building my Yocto project and Application Dev SDK (bitbake -c
> >> populate_sdk).
> >>> On this build server I 'm used to using "screen" tool. Using
> >>> "screen" and
> >> bitbake at the same time seems to have no issues.
> >>>
> >>> However when installing the App. Dev. SDK via self-installer, it
> >>> hangs every
> >> time after a while. The culprit seems to be "screen".
> >>> If I am IN a "screen" session OR I am OUT "screen" session but there
> >>> is a
> >> running screen session that belongs to me, it hangs.
> >>>
> >>> Did someone experience such trouble ? Any ideas ?
> >>
> >> I've seen some terminal failures in the past, but it's always been
> >> due to overwriting in-place terminal files.
> >>
> >> I've not seen anything on a new SDK installation.
> >>
> >> Which branch of the Yocto Project are you using?
> >>
> >> --Mark
> >>
> >>> Thanks in advance
> >>> Pierre-Yves
> >>>
> >>>
> >>>
> >>>
> >>>
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto


