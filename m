Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 059CBE00C1E; Wed,  6 Feb 2019 16:09:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.205.24.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [216.205.24.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60288E0048C
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 16:09:13 -0800 (PST)
X-CrossPremisesHeadersFilteredBySendConnector: MSXBEBVT32.planar.net
Received: from webmail.planar.com (mail.planar.com [199.244.172.52]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-9-cARJHn1UP2-Csjffd0LwQA-1; Wed, 06 Feb 2019 19:08:56 -0500
Received: from MSXBEBVT28.planar.net (172.16.10.28) by MSXBEBVT32.planar.net
	(172.16.10.32) with Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Wed, 6 Feb 2019 16:08:55 -0800
Received: from MSXBEBVT28.planar.net ([fe80::6ceb:1c1f:9e0a:3af0]) by
	MSXBEBVT28.planar.net ([fe80::6ceb:1c1f:9e0a:3af0%12]) with mapi id
	15.00.1365.000; Wed, 6 Feb 2019 16:08:55 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: =?iso-8859-1?Q?Andreas_M=FCller?= <schnitzeltony@gmail.com>
Thread-Topic: [yocto] CMake based recipes and defining CMAKE_BUILD_TYPE
Thread-Index: AQHUvkgDVc0bTtt08kO3Rpe7lTSuEKXT0CwA//+Cu82AAIv6AIAACDcAgAAE9AD//4mvSQ==
Date: Thu, 7 Feb 2019 00:08:54 +0000
Message-ID: <1549498134289.97332@planar.com>
References: <1549477388545.2721@planar.com>
	<CALbNGRQrxMp2MuLPy1newCaHRLf2BAL9uohqc_A8bPoSodtMHA@mail.gmail.com>
	<1549490698733.2960@planar.com>
	<CALbNGRQFycyLQALGNqRc43evigPgH8m6KatgbHSfmbfpHmfUcA@mail.gmail.com>
	<CALbNGRSf+rO6jCgZMWA5DPb6ZOdz4Xw=U+7jesYn24vN6afFOw@mail.gmail.com>,
	<CALbNGRSFTLXtRa4Q7nAsA3dctrj3axXkbD=N3KAh71iMiMHryQ@mail.gmail.com>
In-Reply-To: <CALbNGRSFTLXtRa4Q7nAsA3dctrj3axXkbD=N3KAh71iMiMHryQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.15.0.62]
MIME-Version: 1.0
X-OrganizationHeadersPreserved: MSXBEBVT32.planar.net
X-MC-Unique: cARJHn1UP2-Csjffd0LwQA-1
X-Mimecast-Spam-Score: 0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: CMake based recipes and defining CMAKE_BUILD_TYPE
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
X-List-Received-Date: Thu, 07 Feb 2019 00:09:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Aright thank you for checking into this, you went farther then I expected.=
=20=0AI will take the approach of setting it for the recipes I really care =
about and leave the rest alone.=20=0A=0AMatt S.=20=0A______________________=
__________________=0AFrom: Andreas M=FCller <schnitzeltony@gmail.com>=0ASen=
t: Wednesday, February 6, 2019 3:11 PM=0ATo: Matt Schuckmann=0ACc: yocto@yo=
ctoproject.org=0ASubject: Re: [yocto] CMake based recipes and defining CMAK=
E_BUILD_TYPE=0A=0AOn Wed, Feb 6, 2019 at 11:53 PM Andreas M=FCller <schnitz=
eltony@gmail.com> wrote:=0A>=0A> On Wed, Feb 6, 2019 at 11:24 PM Andreas M=
=FCller <schnitzeltony@gmail.com> wrote:=0A> >=0A> > On Wed, Feb 6, 2019 at=
 11:05 PM Matt Schuckmann=0A> > <Matt.Schuckmann@planar.com> wrote:=0A> > >=
=0A> > > Hi Andreas,=0A> > >=0A> > > Thanks for the response, do you set bu=
ild type in each recipe individually or is there some central .conf file or=
 other other location that you set it?=0A> > >=0A> > > Matt S.=0A> > Honest=
ly: I do not set them yet because I thought RelWithDebInfo is=0A> > default=
. That assumption was based on some projects but I checked now:=0A> > it do=
es not seem to be something to rely on...=0A> >=0A> Will build-/run-test th=
is with my 'world':=0A>=0A> diff --git a/meta/classes/cmake.bbclass b/meta/=
classes/cmake.bbclass=0A> index fd40a9863e..a8e08e6d6f 100644=0A> --- a/met=
a/classes/cmake.bbclass=0A> +++ b/meta/classes/cmake.bbclass=0A> @@ -153,6 =
+153,7 @@ cmake_do_configure() {=0A>           -DCMAKE_TOOLCHAIN_FILE=3D${W=
ORKDIR}/toolchain.cmake \=0A>           -DCMAKE_VERBOSE_MAKEFILE=3D1 \=0A> =
          -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 \=0A> +         -DCMAKE_BUILD=
_TYPE=3D${@d.getVar(oe.utils.vartrue('DEBUG_BUILD',=0A> 'Debug', 'RelWithDe=
bInfo', d))} \=0A>           ${EXTRA_OECMAKE} \=0A>           -Wno-dev=0A> =
 }=0A>=0A> Takes a while...=0A>=0ANot exactly: After short build I saw:=0A=
=0A* There are some sed on '*-noconfig.cmake' they are going to break=0A* l=
ibeigen fails because it supports 'Debug' and 'Release' only (and I=0Abet t=
here are more)=0A=0AWill skip further tests and get the feeling that a comm=
on solution won't do...=0A=0AAndreas=0A=0A


