Return-Path: <home.paul.grant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85548E009D2; Thu, 16 Jul 2015 08:57:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, TRACKER_ID autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (home.paul.grant[at]gmail.com)
	*  1.3 TRACKER_ID BODY: Incorporates a tracking ID number
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15715E009C8
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 08:56:58 -0700 (PDT)
Received: by lagw2 with SMTP id w2so46137708lag.3
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 08:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=HsBJCVZRZnYOxsU9cyEyoU+hF90uQl6JWUmal5JbWiY=;
	b=zjg7KDYzMktdeoVHi6n6COJAJuhgrRyEfD9pQCbPjnyleELxSr58RFcujSBZM5Am92
	t+PnA+pDdGSAA5WyXbp2XxU/61lwsSdz31xLC8IVed+noJd0cjT0FSYIOBWHwzYqa5HW
	zMV5BslJQD4pXZfIdYmbMvaITDbOH5qZadDblpZAucToC3bIOo7GDbdbZhLQYWqNwz+v
	trZRsDAyvoUq/h+3Goe69HvHixJiABOU3U73A2UVraZcvOYo3wPp3wy6IEjwDB8iKsxz
	w/GNQdKhdUb6L4gk2PhtqEvPPVFvBj+HQ24aoJIIKryyQoK+RlCXIK3vrQBiP+hqZh3b
	av4w==
MIME-Version: 1.0
X-Received: by 10.152.36.7 with SMTP id m7mr9774090laj.87.1437062216225; Thu,
	16 Jul 2015 08:56:56 -0700 (PDT)
Received: by 10.152.219.37 with HTTP; Thu, 16 Jul 2015 08:56:56 -0700 (PDT)
Date: Thu, 16 Jul 2015 16:56:56 +0100
Message-ID: <CADF5PPEzdXYmU8u3ee4cQF9KAW0zLO_zXEM7EvwQhRuXCbwhGw@mail.gmail.com>
From: paul grant <home.paul.grant@gmail.com>
To: yocto@yoctoproject.org
Subject: meta-toolchain uclibc issue
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
X-List-Received-Date: Thu, 16 Jul 2015 15:57:04 -0000
Content-Type: multipart/alternative; boundary=089e0160b972eb1ccd051b001eb1

--089e0160b972eb1ccd051b001eb1
Content-Type: text/plain; charset=UTF-8

Hello All,

I'm trying to build a cross compiler toolchain for PowerPC (mpc8544).

I'm able to successfully bitbake the meta-toolchain target
for glibc, when I check inside the sysroot directory of the sdk,
I find the following directories:

ppce500v2-poky-linux-gnuspe
x86_64-pokysdk-linux

The directory ppce500v2-poky-linux-gnuspe, contains root filesystem
for target (ppc500v2).
The directory x86_64-pokysdk-linux, contains the cross development tools,
for my host, particularly gcc (powerpc-poky-linux-gnuspe-gcc)

If I execute:

powerpc-poky-linux-gnuspe-gcc -v

the target is set to: powerpc-poky-linux

which I interpret to mean a powerpc based target with glibc&linux

I want to build a uclibc toolchain:

to this I understand you need to add the following line to my local.conf:

TCLIBC = "uclibc"

After doing so, I am again able successfully build the target
meta-toolchain.
Again if I look inside the sysroot directory two directories have been
created:

ppce500v2-poky-linux-uclibcspe
x86_64-pokysdk-linux

ppce500v2-poky-linux-uclibcspe, this time the root filesystem is based on
uclibc and this is refelected in the name.
x86_64-pokysdk-linux, again a directory to hold the host tools has been
created.
The gcc tools are located in under directory
./usr/bin/powerpc-poky-linux-gnuspe
as before,

If I execute:

powerpc-poky-linux-gnuspe-gcc -v

the target is set to: powerpc-poky-linux

However given that I've selected uclibc, I was expecting the gcc tools to
be located
under a directory: ./usr/bin/powerpc-poky-linux-uclibcspe
to reflect the fact that the tools are targeting uclibc.

If I look inside the environment script created by the meta-toolchain target
it shares this expectation as is reflected by the extract for CC envvar:

export CC="powerpc-poky-linux-uclibcspe-gcc  -m32 -mcpu=8548 -mabi=spe
-mspe -mfloat-gprs=double --sysroot=$SDKTARGETSYSROOT"

If I search the files created by the target meta-toolchain, it has actually
created
an apprpriate gcc located deeply nested under the work diretcory, a gcc
toolset
of the correct form has been created, namely:

powerpc-poky-linux-uclibcspe-g++

Just to confirm when I run with the -v option it shows its target as:

powerpc-poky-linux-uclibcspe

Can someone clarify what's happening here?!?

1. Are my expectations correct?
2. If so, why is the correct toolchain created, but not put in the correct
place
by the populate-sdk target?

Thanks in advance for any help you can provide!

--089e0160b972eb1ccd051b001eb1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I&#39;m trying to build a cr=
oss compiler toolchain for PowerPC (mpc8544).</div><div><br></div><div>I&#3=
9;m able to successfully bitbake the meta-toolchain target</div><div>for gl=
ibc, when I check inside the sysroot directory of the sdk,</div><div>I find=
 the following directories:</div><div><br></div><div>ppce500v2-poky-linux-g=
nuspe<br></div><div>x86_64-pokysdk-linux<br></div><div><br></div><div><div>=
The directory ppce500v2-poky-linux-gnuspe, contains root filesystem</div><d=
iv>for target (ppc500v2).</div><div>The directory x86_64-pokysdk-linux, con=
tains the cross development tools,</div><div>for my host, particularly gcc =
(powerpc-poky-linux-gnuspe-gcc)</div><div><br></div><div>If I execute:</div=
><div><br></div><div>powerpc-poky-linux-gnuspe-gcc -v<br></div><div><br></d=
iv><div>the target is set to:=C2=A0powerpc-poky-linux</div><div><br></div><=
div>which I interpret to mean a powerpc based target with glibc&amp;linux</=
div><div><br></div><div>I want to build a uclibc toolchain:</div><div><br><=
/div><div>to this I understand you need to add the following line to my loc=
al.conf:</div><div><br></div><div>TCLIBC =3D &quot;uclibc&quot;<br></div><d=
iv><br></div><div>After doing so, I am again able successfully build the ta=
rget meta-toolchain.</div><div>Again if I look inside the sysroot directory=
 two directories have been created:</div><div><br></div><div>ppce500v2-poky=
-linux-uclibcspe<br></div><div>x86_64-pokysdk-linux<br></div><div><br></div=
><div>ppce500v2-poky-linux-uclibcspe, this time the root filesystem is base=
d on<br></div><div>uclibc and this is refelected in the name.</div><div>x86=
_64-pokysdk-linux, again a directory to hold the host tools has been create=
d.</div><div>The gcc tools are located in under directory ./usr/bin/powerpc=
-poky-linux-gnuspe</div><div>as before,=C2=A0</div><div><br></div><div><div=
>If I execute:</div><div><br></div><div>powerpc-poky-linux-gnuspe-gcc -v<br=
></div><div><br></div><div>the target is set to:=C2=A0powerpc-poky-linux</d=
iv></div><div><br></div><div>However given that I&#39;ve selected uclibc, I=
 was expecting the gcc tools to be located=C2=A0</div><div>under a director=
y: ./usr/bin/powerpc-poky-linux-uclibcspe</div><div>to reflect the fact tha=
t the tools are targeting uclibc.</div><div><br></div><div>If I look inside=
 the environment script created by the meta-toolchain target</div><div>it s=
hares this expectation as is reflected by the extract for CC envvar:</div><=
div><br></div><div>export CC=3D&quot;powerpc-poky-linux-uclibcspe-gcc =C2=
=A0-m32 -mcpu=3D8548 -mabi=3Dspe -mspe -mfloat-gprs=3Ddouble --sysroot=3D$S=
DKTARGETSYSROOT&quot;<br></div><div><br></div><div>If I search the files cr=
eated by the target meta-toolchain, it has actually created</div><div>an ap=
prpriate gcc located deeply nested under the work diretcory, a gcc toolset<=
/div><div>of the correct form has been created, namely:</div><div><br></div=
><div>powerpc-poky-linux-uclibcspe-g++<br></div><div><br></div><div>Just to=
 confirm when I run with the -v option it shows its target as:</div><div><b=
r></div><div>powerpc-poky-linux-uclibcspe<br></div><div><br></div><div>Can =
someone clarify what&#39;s happening here?!?</div><div><br></div><div>1. Ar=
e my expectations correct?=C2=A0</div><div>2. If so, why is the correct too=
lchain created, but not put in the correct place</div><div>by the populate-=
sdk target?</div><div><br></div><div>Thanks in advance for any help you can=
 provide!</div><div><br></div><div><br></div><div><br></div><div><br></div>=
<div><br></div><div><br></div><div><br></div><div><br></div><div>=C2=A0</di=
v></div></div>

--089e0160b972eb1ccd051b001eb1--
