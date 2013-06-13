Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFF4EE01409
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 00:10:32 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id ma3so4541426pbc.7
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 00:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=fHGebJN0Sqtv4tjjM+/FenvyYMsEDuEbGqKNl8ujr/Q=;
	b=NtWAiq3Va9dhcsDdJEHmyLFBsfD5/h+tfFxldtuGAXjZX4Fr/FbzzjL5ZAYqKbl+Vm
	4ashHMiIxJWJxD+sXeNU1m9IyeFdq/aVy54D7aWnQg0wJdJjbHC3R2KC6xeAbaY2YKXK
	iDD+9ZzUzbrYmKVEYFsbJ9U1PWsAjOa2BXKro4gOIb4GdrJiL38CylLPcll4pysK3Pyu
	55m0bIbfUwvTtiTmcwuq4Qh++A2EEqCOTykGzOHHc8xPavv/DF9TOEqQm+kXLxRzZ2pM
	kiul7jaiTDl7inAfCYtQHZ8vXVXm8Biqn1QuPokNbL/nxi/XtCmcq6PUXiQ9xHZkmKNk
	4c5Q==
X-Received: by 10.68.231.65 with SMTP id te1mr23096968pbc.98.1371107432130;
	Thu, 13 Jun 2013 00:10:32 -0700 (PDT)
Received: from sa-nc-common3-188.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	nt2sm22204001pbc.17.2013.06.13.00.10.30 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 13 Jun 2013 00:10:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <58DC6CADE1A5492E9E712C310E6C9019@PAULD>
Date: Thu, 13 Jun 2013 00:10:33 -0700
Message-Id: <933CE7AE-B5BF-4B04-891C-5D90D6606D5A@gmail.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD><bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
	<1875741.cStO1T6C1g@helios>
	<58DC6CADE1A5492E9E712C310E6C9019@PAULD>
To: Paul D. DeRocco <pderocco@ix.netcom.com>
X-Mailer: Apple Mail (2.1508)
Cc: 'Paul Eggleton' <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Thu, 13 Jun 2013 07:10:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jun 12, 2013, at 12:51 PM, Paul D. DeRocco <pderocco@ix.netcom.com> =
wrote:

> Okay, so now there are two stages to each cross-compilation, so =
there's
> gcc-cross-initial producing gcc-cross, and also gcc-crosssdk-initial
> producing gcc-crosssdk. But is the difference between those two pairs =
that
> the first pair ultimately produces a cross-compiler that runs on the =
host,
> and the second pair ultimately produces a native compiler that runs on =
the
> target? =46rom what I can gather about the various references to =
"SDK", it
> sounds like it's supposed to be a set of native tools that runs on the
> target and produces output for the target. If that's true, then the =
new
> descriptions are still wrong. Shouldn't gcc-cross be described as a =
"cross"
> package rather than a "native", and shouldn't gcc-crosssdk be =
described as a
> "native" binary that runs on the target? Or am I still fundamentally
> misinterpreting these things?
>=20
> For now, I really just need to know if I'm interested in the SDK, =
since I
> have no intention of ever running compilations on my target system.

OK here it is. When bootstrapping the cross toolchain there are circular =
dependencies
like gcc-cross wants to have C library to be staged but you need cross =
compiler to build
C library therefore building cross toolchains we have to bootstrap it in =
stages where
the initial recipes are temporary tools that are just means to an end.  =
gcc-cross-initial builds
enough of gcc which can build C library for us and once we have C =
library then we build the
real cross compiler. We also cheat to make gcc-cross-initial think there =
are some C library
components available e.g. libc.so which it just needs so that it can =
configure itself to generate
shared objects.=20

So there is a toolchain build sequence that is followed.

binutils-cross -> gcc-cross-initial -> kernel-headers -> libc-initial - =
> libc -> cross gcc


Now the above sequence is base of it all. Then SDK has different =
variants there are 3=20

Target/on-device SDK - This will install the dev env in the images such =
that you will be able to build stuff on the device itself
you would add tools-sdk to IMAGE_FEATURES and it will get added to your =
images

Cross SDK - like meta-toolchain or -c populate_sdk will generate a =
relocatable self installer that can be installed outside OE/Yocto build =
env
and used to develop software. You can install it anywhere and also on =
different linux systems as long as SDKMACHINE architecture is same
(x86 or x86_64)

Internal toolchain - This is what is used when you are using the OE =
build system to build images. This toolchain is used on build host and =
in theory
you can use this toolchain outside OE too as long as you specify right =
options to compilers but this toolchain is not relocatable and is meant =
for
the build host only.

OE uses the terms a bit differently

lets say you have thee systems=20

build host - The machine you are using the build OE and generate SDK
SDKMACHINE - The machine that will run SDK, its a x86/x86_64 machine it =
may be different than your build host above=20
target =3D Your target device

native - is used for programs that run on the build system ( say we want =
to use same captive perl version on any build host) then we will build =
perl-native
nativesdk - The same as above but meant for SDK which means it would run =
on SDKMACHINE host ( built on build host -> will run on SDKMACHINE )
cross - runs on build host but generates code for target ( its loosely =
like a native package built on build host -> runs on build host -> =
generates code for target)
crosssdk - cross tool meant to build apps for into SDKMACHINE ( built on =
build host -> runs on build host -> generates code for SDKMACHINE )
cross-canadian - Cross compilers hosted to run on SDKMACHINE ( we build =
on the buildhost -> it will run on SDKMACHINE -> generate code for =
target)
thats why its called cross-candian

Hope that helps

-Khem



