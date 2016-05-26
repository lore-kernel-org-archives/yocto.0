Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DA77E00DD5; Thu, 26 May 2016 10:03:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from Perses.usurf.usu.edu (unknown [129.123.197.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD287E009AC
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 10:03:15 -0700 (PDT)
Received: from EK.usurf.usu.edu (172.31.35.73) by Perses.usurf.usu.edu
	(172.31.35.68) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Thu, 26 May 2016 11:03:14 -0600
Received: from EK.usurf.usu.edu (172.31.35.73) by Ek.usurf.usu.edu
	(172.31.35.73) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Thu, 26 May 2016 11:03:13 -0600
Received: from EK.usurf.usu.edu ([172.31.191.13]) by Ek.usurf.usu.edu
	([172.31.191.13]) with mapi id 15.00.1104.000; Thu, 26 May 2016 11:03:13
	-0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] DEPENDS problem with core-image-full-cmdline
Thread-Index: AQHRt2fjPGIqNwxbtk+i7DSj2Ouu6w==
Date: Thu, 26 May 2016 17:03:13 +0000
Message-ID: <f1580aa91ce14956beb3129c2343f9ea@Ek.usurf.usu.edu>
References: <5fd08a77744a4c39943de4111eadd535@Ek.usurf.usu.edu>
	<CAJTo0LY-0iaFzY=fQSagQWHikUiMYo2P8wWvpetW1H23BTqKcA@mail.gmail.com>
	<35cb4951b7994fd1a323e3da04d7978b@Ek.usurf.usu.edu>
	<CAJTo0LYkngeh80Y7js0Tki_9jEVtFmoZeUB=Fp3+JXhV0Fd7ZA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.31.22.119]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEPENDS problem with core-image-full-cmdline
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
X-List-Received-Date: Thu, 26 May 2016 17:03:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> DEPENDS is built-time for the recipe, so the concept of per-package=0A=
> build dependencies doesn't really make sense.=0A=
>=0A=
> DEPENDS =3D "foo bar" are build dependencies=0A=
> RDEPENDS_${PN} =3D "foo bar" are package-specific runtime dependencies.=
=0A=
=0A=
Ross, thanks for clearing that up.  Is there anything in the =0A=
documentation that talks about that?  I've read through most of the docs =
=0A=
and don't remember any details about that distinction.  Are there other =0A=
variables that this applies to?=0A=
=0A=
> If you have recipes that work, then submitting them to meta-oe or even=0A=
> just uploading a layer onto github and then adding it to=0A=
> layers.openembedded.org <http://layers.openembedded.org> would be much=0A=
> appreciated so that others can find them.=0A=
=0A=
Sounds good.  Uploaded to my github account and layer posted to OE =0A=
index.  I hope it helps someone else!=0A=
=0A=
Jon=0A=
=0A=

