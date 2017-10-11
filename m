Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18171E00C7B; Wed, 11 Oct 2017 13:10:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D79FCE00C77
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 13:10:47 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx28.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Wed, 11 Oct 2017 20:10:37 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 11 Oct 2017 13:10:30 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 11 Oct 2017 13:10:30 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] errors in recipe after move from devtool
Thread-Index: AQHTQeR3bS5Hw1lI/kCbrgtXNT82jKLdRhRGgACT2ID//5It1oAAn3CA//+g8HCAAdsaAP//jlMQ
Date: Wed, 11 Oct 2017 20:10:30 +0000
Message-ID: <b6665770af9247d9bac788acddd01462@sakuraus.com>
References: <c69919c2a00f4b6f8b9f00b46d848839@sakuraus.com>
	<4335149.ZQHvdiGDWE@peggleto-mobl.ger.corp.intel.com>
	<158f5845a0574c538b147a1fcc70a6c3@sakuraus.com>
	<2178504.Ibe9gh1eKU@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2178504.Ibe9gh1eKU@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1507752628-637138-898-54976-2
X-BESS-VER: 2017.12-r1710102214
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185899
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: errors in recipe after move from devtool
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
X-List-Received-Date: Wed, 11 Oct 2017 20:10:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

That did the trick. Thanks, you've been more than helpful.

Cheers,
Greg

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Wednesday, October 11, 2017 12:56 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: yocto@yoctoproject.org; Burton, Ross <ross.burton@intel.com>
> Subject: Re: [yocto] errors in recipe after move from devtool
>=20
> On Thursday, 12 October 2017 6:07:55 AM NZDT Greg Wilson-Lindberg wrote:
> > Thanks for the info, now I understand what is going on. Hopefully I
> > can find a way to get rid of the RPATH, I don't like ignoring errors or
> warnings.
> >
> > I've spent some more time looking into this, I haven't been able to
> > find out where the -rpath comes from. If I start a devshell none of
> > the environment variables have it set. In the run.do_compile log none
> > of the environment variables have it set, it's not set in the
> > run.do_configure log. But in the log.do_compile file the command that l=
inks
> the library:
> >
> > /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/
> > x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
> ...
> > -Wl,-rpath,/usr/lib
> >
> > There it is at the end of the command line.
> >
> > As you can see the build for zint is based on CMake. Do you have any
> > suggestions as to where I can look to figure out how this is getting
> > set, I've done searches of all of the files in the zint download and
> > the only ones that have -rpath in them are some files that build a tcl
> > based support program that has its own autotools based build system.
>=20
> This seems to be something that CMake handles itself. From a quick google
> which found the CMake wiki page on the subject [1], you may perhaps set
> CMAKE_SKIP_RPATH? In theory you could do that via EXTRA_OECMAKE in
> the recipe i.e.
>=20
> EXTRA_OECMAKE +=3D "-DCMAKE_SKIP_RPATH=3DTRUE"
>=20
> Cheers,
> Paul
>=20
> [1] https://cmake.org/Wiki/CMake_RPATH_handling
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

