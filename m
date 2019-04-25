Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBA6EE00CBC; Thu, 25 Apr 2019 05:34:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [194.138.37.39 listed in list.dnswl.org]
X-Greylist: delayed 753 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 Apr 2019 05:34:41 PDT
Received: from lizzard.sbs.de (lizzard.sbs.de [194.138.37.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4119AE00C1B
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2019 05:34:40 -0700 (PDT)
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
	by lizzard.sbs.de (8.15.2/8.15.2) with ESMTPS id x3PCLMW7028147
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Thu, 25 Apr 2019 14:21:22 +0200
Received: from DEFTHW99ERGMSX.ww902.siemens.net
	(defthw99ergmsx.ww902.siemens.net [139.22.70.132])
	by mail2.sbs.de (8.15.2/8.15.2) with ESMTPS id x3PCLLYC029595
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Thu, 25 Apr 2019 14:21:21 +0200
Received: from DEFTHW99ERDMSX.ww902.siemens.net (139.22.70.69) by
	DEFTHW99ERGMSX.ww902.siemens.net (139.22.70.132) with Microsoft SMTP
	Server (TLS) id 14.3.435.0; Thu, 25 Apr 2019 14:21:21 +0200
Received: from DENBGAT9EL2MSX.ww902.siemens.net ([169.254.9.102]) by
	DEFTHW99ERDMSX.ww902.siemens.net ([139.22.70.69]) with mapi id
	14.03.0435.000; Thu, 25 Apr 2019 14:21:20 +0200
From: "Bach, Pascal" <pascal.bach@siemens.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] ASSUME_PROVIDED, cmake-native and why cmake is
	subsequently not found?
Thread-Index: AQHU+19HJZn6U6PAgEqF2Q8AmOLliqZMywMg
Date: Thu, 25 Apr 2019 12:21:18 +0000
Message-ID: <355BE46A91031048906B695426A8D8E62EA52CDA@DENBGAT9EL2MSX.ww902.siemens.net>
References: <alpine.LFD.2.21.1904250752050.457@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.1904250752050.457@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-document-confidentiality: NotClassified
x-originating-ip: [139.22.70.26]
MIME-Version: 1.0
Subject: Re: ASSUME_PROVIDED, cmake-native and why cmake is subsequently not found?
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
X-List-Received-Date: Thu, 25 Apr 2019 12:34:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>   currently trying to build a "core-image-minimal" for a zedboard on my
> wholly unsupported fedora 30 (branched) system, so i'm well aware there
> will almost certainly be breakage as i try to resolve version numbers and=
 so
> on, but working off the "thud" branch, the first issue i had was trying t=
o
> configure cmake-native -- the error message is exactly what you can read
> someone asking about here:
>=20
> https://stackoverflow.com/questions/52663287/glibcxx-3-4-26-not-found
>=20
> /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/cmake-
> native/3.12.2-r0/build/Bootstrap.cmk/cmake:
> /home/rpjday/oe/builds/zedboard/tmp/sysroots-uninative/x86_64-
> linux/usr/lib/libstdc++.so.6:
> version `GLIBCXX_3.4.26' not found (required by
> /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/cmake-
> native/3.12.2-r0/build/Bootstrap.cmk/cmake)
> | ---------------------------------------------
> | Error when bootstrapping CMake:
> | Problem while running initial CMake
> | ---------------------------------------------
>=20
>   i'm unsure how to resolve that easily, but my first reaction was, "if i=
 already
> have cmake installed on the host, why not just take advantage of
> ASSUME_PROVIDED"? i recall from some time back asking why more host
> utils were not, by default, included in ASSUME_PROVIDED, and the answer
> (quite reasonably) was that one wants to have as few variables as possibl=
e
> for reliably replicated builds.
>=20
>   fair enough, but in my case, until i figure out how to fix that, i thou=
ght, why
> not just:
>=20
>   ASSUME_PROVIDED +=3D "cmake-native"
>=20
> so i did, and that got me past the cmake-native build issue, until i hit =
this
> trying to build libsolv-native:
>=20
> DEBUG: Executing shell function do_configure
> /home/rpjday/oe/builds/zedboard/tmp/work/x86_64-linux/libsolv-
> native/0.6.35-r0/temp/run.do_configure.16705:
> line 130: cmake: command not found
>=20
>   hang on ... why would a subsequent recipe not be able to locate
> /usr/bin/cmake on my host after i explicitly identified cmake-native as
> assumed to be provided? is there something about the libsolv-native recip=
e
> that does not take that possibility into account? i'm just about to check=
, but if
> someone has an explanation for that, i'm all ears.

There is an issue that CMake is not able to find binaries in hosttools. It =
might be the case that this is the issue you are seeing.

I submitted a patch for that but I'm not sure it
Ever made it into master or a release. I need to follow up on this, the pat=
ch is here: https://patchwork.openembedded.org/series/14429/#

>   finally, regarding ASSUME_PROVIDED, given that i'm already living life
> dangerously with an unsupported distro, is there any harm in just loading=
 up
> on ASSUME_PROVIDED packages, as long as they work? in many cases, i can
> see that the version that would be built by YP is close to, if not identi=
cal to,
> my host version. so other than risking breakage down the line as versions
> change, as long as the host packages work, is there any harm in just taki=
ng
> advantage of them?
>=20

Generally it's find to use ASSUME_PROVIDED if you don't mind the dependency=
 between the build host and Yocto.=20

Pascal

