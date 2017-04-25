Return-Path: <krevsbech@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 020C6E00AE6; Tue, 25 Apr 2017 01:30:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (krevsbech[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2309E00A9B
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 01:30:21 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id h2so127468533uaa.1
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 01:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=RjBY/5q/dNRTMIXL1zpQ9nhngP6wyrE/lnkUZtEx8qY=;
	b=ZNnYbfkGym/7ZOYhfRhhAhC27vN+jqn/R0iwLwiQjA570anS6x8moWJn8dr18RCGzv
	hupwe4M2bNymuH7MMaV01DC2yDNswCxYvcZMIpArTCjDEtCOJhvwPbKgx/gW9ciiiM88
	z5H9Kx7n9tbVVqBZWUqViUDbiQ5/o3AJFNxUP6FRbHjrEbLtm+b+NDYDGp+bvmjPlrbs
	1JgUYmoFztk9O9HuWj6PTzDou8H1AeIMhy6PPULxp4DcfBwUM3wRDiDsNj6RAX0J/OwH
	kkhSM2vTZRqhowmtzuwsq4E9qyiomxaTpIJa47Ui7BmdgORwaCFsUFfaJ1j7z2RU8nyO
	9W3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RjBY/5q/dNRTMIXL1zpQ9nhngP6wyrE/lnkUZtEx8qY=;
	b=NFekzWLvrc76wGLUwaPnsTOmIFvnJbZJM9/WRF5oFV03TQHoHOUT5KQiqHYRei+5+4
	jlf97iB52E72E7eCb2yyNfntq2qFYc7ycI8e7CSEfesfEtDaeid6yaT/x9lb+FyzlaAa
	45SX84bsIOZpRtB41GYwA3AecY8/hwfFhMJwstgSGWcUEsmrP7u4qWtH5ZFQK0BsDnik
	Y8upID0ysgkLpi4uiZ9iGhOVv4hMu3mHcJ4KR/hSoHFc6dPMDopjDohgpvzfSmuXKFBE
	SrfrHEkpiIVW/2W2fN5rv+JkgjgDQDhoHdd8gvTVMBeaZv+bJG6fbrL5phCQmSgDnkcd
	XvsQ==
X-Gm-Message-State: AN3rC/6ORiA9WS+MuT6nTZyd9Y1WS5p2pQu5oVeC7i3dxHuobTXxp87v
	ays1R8eSpZznqhKW/eZqjj67H/TyzTOJdsY=
X-Received: by 10.159.57.90 with SMTP id i26mr16278761uag.117.1493109020689;
	Tue, 25 Apr 2017 01:30:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.45.195 with HTTP; Tue, 25 Apr 2017 01:30:20 -0700 (PDT)
From: Kasper Revsbech <krevsbech@gmail.com>
Date: Tue, 25 Apr 2017 10:30:20 +0200
Message-ID: <CAKeNHOt29PATMW30qntKh-C45PB6U3bLOw0HYPs-VZkLYUPrJw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: CMake module integration
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
X-List-Received-Date: Tue, 25 Apr 2017 08:30:23 -0000
Content-Type: multipart/alternative; boundary=f403043eed0cca0cc7054df98869

--f403043eed0cca0cc7054df98869
Content-Type: text/plain; charset=UTF-8

Hi
I am trying to include CPPCheck into Yocto to be used by CMake as a Cmake
Module.
Hence when building my application recipes that are based on using CMake
build as build system, CPPCheck is performed.

What I currently did, was:
Making a recipe for CPPCheck to be used in the toolchain by:
BBCLASSEXTEND = "native"
This recipe is
1) providing CPPCheck in the native toolchain,
2) deploying a custom CMake module to allow the use of CPPCheck from CMake.
These modules are placed in the native sysroot:
sysroots/x86_64-linux/usr/share/cmake/Modules

When reading the  cmake.bbclass (TAG: morty) i see that the module path is
set to:
--
# Use native cmake modules

list(APPEND CMAKE_MODULE_PATH "${STAGING_DATADIR}/cmake/Modules/")
--
However, when running CMake on a recipe the ${STAGING_DATADIR} is the
target sysroot not the native sysroot.

So the question is, if I am doing it wrong and should provide my
CMakeModules in another way, and if yes how?
Or if this is a bug and the STAGING_DATADIR should be the native sysroot
and not the target sysroot?, hence:
list(APPEND CMAKE_MODULE_PATH "${STAGING_DATADIR_NATIVE}/cmake/Modules/"

Br
Kasper Revsbech

--f403043eed0cca0cc7054df98869
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi</span><div style=3D"fo=
nt-size:12.8px">I am trying to include CPPCheck into Yocto to be used by CM=
ake as a Cmake Module.=C2=A0</div><div style=3D"font-size:12.8px">Hence whe=
n building my application recipes that are based on using CMake build as bu=
ild system, CPPCheck is performed.</div><div style=3D"font-size:12.8px"><br=
></div><div style=3D"font-size:12.8px">What I currently did, was:</div><div=
 style=3D"font-size:12.8px">Making a recipe for CPPCheck to be used in the =
toolchain by:=C2=A0</div><div style=3D"font-size:12.8px">BBCLASSEXTEND =3D =
&quot;native&quot;<br></div><div style=3D"font-size:12.8px">This recipe is=
=C2=A0</div><div style=3D"font-size:12.8px">1) providing CPPCheck in the na=
tive toolchain,=C2=A0</div><div style=3D"font-size:12.8px">2) deploying a c=
ustom CMake module to allow the use of CPPCheck from CMake. These modules a=
re placed in the native sysroot:</div><div style=3D"font-size:12.8px">sysro=
ots/x86_64-linux/usr/<wbr>share/cmake/Modules</div><div style=3D"font-size:=
12.8px"><br></div><div style=3D"font-size:12.8px">When reading the =C2=A0cm=
ake.bbclass (TAG: morty) i see that the module path is set to:</div><div st=
yle=3D"font-size:12.8px">--</div><div style=3D"font-size:12.8px"># Use nati=
ve cmake modules =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0<br></div><div style=3D"font-size:12.8px">list(APPEND CM=
AKE_MODULE_PATH &quot;${STAGING_DATADIR}/cmake/<wbr>Modules/&quot;)=C2=A0</=
div><div style=3D"font-size:12.8px">--</div><div style=3D"font-size:12.8px"=
>However, when running CMake on a recipe the ${STAGING_DATADIR} is the targ=
et sysroot not the native sysroot.</div><div style=3D"font-size:12.8px"><br=
></div><div style=3D"font-size:12.8px">So the question is, if I am doing it=
 wrong and should provide my CMakeModules in another way, and if yes how?</=
div><div style=3D"font-size:12.8px">Or if this is a bug and the STAGING_DAT=
ADIR should be the native sysroot and not the target sysroot?, hence:=C2=A0=
</div><div><span style=3D"font-size:12.8px">list(APPEND CMAKE_MODULE_PATH &=
quot;${STAGING_DATADIR_NATIVE}/cmake/Modules/&quot;</span></div><div style=
=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">Br=C2=A0</d=
iv><div style=3D"font-size:12.8px">Kasper Revsbech</div><div class=3D"gmail=
-yj6qo gmail-ajU" style=3D"margin:2px 0px 0px;font-size:12.8px"></div></div=
>

--f403043eed0cca0cc7054df98869--
