Return-Path: <btv1==3433b300ed1==Matt.Schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E5D4E00846; Tue, 23 Sep 2014 09:44:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from barbvt11.planar.com (mail.planar.com [199.244.172.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43BFBE00786
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 09:43:59 -0700 (PDT)
X-ASG-Debug-ID: 1411490636-04afd2135f9c0150001-yzSStA
Received: from msxbvt03.planar.net (msxbvt03.planar.net [172.16.0.147]) by
	barbvt11.planar.com with ESMTP id HL6sOQB3QxxHLgI1;
	Tue, 23 Sep 2014 09:43:56 -0700 (PDT)
X-Barracuda-Envelope-From: Matt.Schuckmann@planar.com
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Tue, 23 Sep 2014 09:43:56 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 23 Sep 2014 09:43:55 -0700
Thread-Topic: [yocto] How to include static library and headers in sdk
X-ASG-Orig-Subj: RE: [yocto] How to include static library and headers in sdk
Thread-Index: Ac/XDiaxCXpjhFd5QGiW6elZaOMZEQAPSNPg
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD872824A@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
	<37147476.ADdIiFqJFs@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <37147476.ADdIiFqJFs@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Barracuda-Connect: msxbvt03.planar.net[172.16.0.147]
X-Barracuda-Start-Time: 1411490636
X-Barracuda-URL: http://10.10.111.113:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at planar.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0041 1.0000 -1.9945
X-Barracuda-Spam-Score: -1.99
X-Barracuda-Spam-Status: No,
	SCORE=-1.99 using per-user scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.9792
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include static library and headers in sdk
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
X-List-Received-Date: Tue, 23 Sep 2014 16:44:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Tuesday, September 23, 2014 2:10 AM
> To: Matt Schuckmann
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] How to include static library and headers in sdk
>=20
> On Monday 22 September 2014 18:57:03 Matt Schuckmann wrote:
> > I've got a custom image and 2 custom recipes both very simple
> > libraries that use cmake. I included the libraries into my image by
> > adding EXTRA_IMAGEDEPENDS +=3D "simple1"
> > EXTRA_IMAGEDEPENDS +=3D "simple2"
> > To my image recipe.
>=20
> Except this doesn't actually add those things into your image, it only
> ensures they are built alongside it. To actually add them to the image
> you need to ensure you add them to IMAGE_INSTALL; see:
>
=20
If I add my simple1 and simple2 recipes to IMAGE_INSTALL I get the followin=
g error in the do_rootfs task:
* opkg_install_cmd: Cannot install package simple1.=20

I assumed that this is because there really is nothing to install in the im=
age as this is a static library with nothing that should go in the image.

> http://www.yoctoproject.org/docs/current/dev-manual/dev-
> manual.html#usingpoky-extend-customimage
>=20
> > When I build my image (i.e. bitbake custom-image ) I can see that the
> > library header files and .a files are placed in the correct place in
> > the sysroot directory.
> >
> > However when I try to create an sdk (i.e. bitbake custom-image -c
> > populate_sdk) and then install the SDK the headers and .a files are
> > nowhere to be found in the installed sysroot.
>=20
> If you want all -staticdev packages in the SDK for the libraries in
> your image, add the following to your local.conf (or the image recipe,
> doesn't matter which):
>=20
>  SDKIMAGE_FEATURES =3D "dev-pkgs dbg-pkgs staticdev-pkgs"
>=20
> If you want a single staticdev package in the SDK you'd need to add the
> following instead:
>=20
>  TOOLCHAIN_HOST_TASK_append =3D " simple1-staticdev"
>=20

Again if I try adding this to my image recipe I get a similar error
* opkg_install_cmd: Cannot install package simple1-staticdev.

For reference here is my simple1 recipe, maybe I'm missing something in the=
re.=20

DESCRIPTION =3D "Simple library 1."
LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D ""

SRC_URI =3D "git://git@gitlab.work.net/libs/simple1.git;protocol=3Dssh"
SRCREV =3D "${AUTOREV}"

S =3D "${WORKDIR}/git"=20

inherit pkgconfig cmake


Thanks,
Matt S.=20

