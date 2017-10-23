Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A11DBE0096A; Mon, 23 Oct 2017 14:47:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 109DAE007EF
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 14:47:43 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1411.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Mon, 23 Oct 2017 21:47:38 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 23 Oct 2017 14:47:37 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 23 Oct 2017 14:47:37 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Andrea Adami <andrea.adami@gmail.com>
Thread-Topic: [yocto] Problem with populate_sdk
Thread-Index: AQHTSQVi8LeK/WvtBEi7bRUf6L68KKLw+ZKAgADv20CAAHrzgP//l69g
Date: Mon, 23 Oct 2017 21:47:36 +0000
Message-ID: <0fce0090435443fbbd15024f5a844056@sakuraus.com>
References: <7e4405635662496696c940f21d8591a7@sakuraus.com>
	<CAAQYJAu4e4WCUAP55pPUpU-7mZ5ixq8AAEtHpGv7zqEjj2xipQ@mail.gmail.com>
	<fd2f7a350be54f15b16885e6bc261a8b@sakuraus.com>
	<CAAQYJAvbh6SB-_p_2qPAaeFVCFtmaSaP2AoFTQzK9PzENo0rRw@mail.gmail.com>
In-Reply-To: <CAAQYJAvbh6SB-_p_2qPAaeFVCFtmaSaP2AoFTQzK9PzENo0rRw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1508795258-452059-5272-953621-1
X-BESS-VER: 2017.12.1-r1709122024
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.186234
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with populate_sdk
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
X-List-Received-Date: Mon, 23 Oct 2017 21:47:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Andrea,
You're right, I missed the SDK in the IMAGE_FEATURES. I just changed that i=
n my image recipe and rebuit the image and then the SDK and the sdk was not=
 rebuilt from the one earlier this morning.

Here is the line from my image recipe:
SDKIMAGE_FEATURES +=3D "dev-pkgs dbg-pkgs staticdev-pkgs"

Regards,
Greg

> -----Original Message-----
> From: Andrea Adami [mailto:andrea.adami@gmail.com]
> Sent: Monday, October 23, 2017 1:50 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Problem with populate_sdk
>=20
> On Mon, Oct 23, 2017 at 10:31 PM, Greg Wilson-Lindberg
> <GWilson@sakuraus.com> wrote:
> > Hi Andrea,
> > I added the dbg-pkgs to the IMAGE_FEATURES but it didn't seem to make a
> difference in what was included, still no .a file in the SYSROOT.
> > Regards,
> > Greg
>=20
> Hi Greg,
> maybe I wasn't clear, from the manual:
>=20
> SDKIMAGE_FEATURES: Lists the features to include in the "target" part of =
the
> SDK.
>=20
> IMAGE_FEATURES: Specifies features to include in the image. Most of these
> features map to additional packages for installation.
>=20
> So please use  SDKIMAGE_FEATURES =3D "dev-pkgs staticdev-pkgs"
>=20
> Cheers
> Andrea
>=20
> >
> >> -----Original Message-----
> >> From: Andrea Adami [mailto:andrea.adami@gmail.com]
> >> Sent: Sunday, October 22, 2017 4:12 PM
> >> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> >> Cc: yocto@yoctoproject.org
> >> Subject: Re: [yocto] Problem with populate_sdk
> >>
> >> On Thu, Oct 19, 2017 at 8:26 PM, Greg Wilson-Lindberg
> >> <GWilson@sakuraus.com> wrote:
> >> > I'm trying to build an SDK for a Raspberry Pi3, and I got a problem
> >> > with the files from one of my custom recipes.
> >> >
> >> >
> >> > In my recipe I have:
> >> >
> >> > FILES_${PN}-dev =3D "lib/lib${PN}.a lib/lib${PN}_unix.a lib/pkgconfi=
g
> >> > include/canfestival/*.h"
> >> >
> >> >
> >> > The *.a files get put into staticdev not dev in the package split.
> >> >
> >> >
> >> > In my image recipe I've added:
> >> >
> >> > IMAGE_FEATURES +=3D "dev-pkgs  staticdev-pkgs"
> >> >
> >> > I get all of the libraries in my image. In the SDK I don't get the
> >> > *.a libraries from the staticdev, I do get the header files which
> >> > were put into dev.
> >> >
> >> >
> >> > So, at this point I'm a bit confused, even though I include both
> >> > the dev & staticdev I am only getting the dev files in the SDK.
> >> > And, also, why are the *.a libs being put into staticdev in the firs=
t place?
> >> >
> >> >
> >>
> >> Hi,
> >> these defaults are defined in meta/conf/bitbake.conf:
> >>
> >> PACKAGES =3D "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc
> >> ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}"
> >>
> >> This means that staticdev package is created before dev package, just
> >> after dbg.
> >>
> >> and
> >>
> >> FILES_${PN}-staticdev =3D "${libdir}/*.a ${base_libdir}/*.a
> ${libdir}/${BPN}/*.a"
> >>
> >> indicates that the .a files in these dirs belongs to the staticdev pac=
kage.
> >>
> >> Now, I guess you should try:
> >>
> >>  SDKIMAGE_FEATURES =3D "dev-pkgs dbg-pkgs staticdev-pkgs"
> >>
> >> Se https://lists.yoctoproject.org/pipermail/yocto/2014-
> >> September/021645.html
> >>
> >> Cheers
> >> Andrea
> >>
> >>
> >> > Regards, Greg
> >> >
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >

