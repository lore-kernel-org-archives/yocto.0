Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A7B5C001E0
	for <webhook@archiver.kernel.org>; Sat, 21 Oct 2023 08:30:55 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web10.74229.1697877051977877605
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Oct 2023 01:30:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Vi757Sn2;
 spf=pass (domain: gmail.com, ip: 209.85.210.48, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6cd1918afb2so1047040a34.0
        for <yocto@lists.yoctoproject.org>; Sat, 21 Oct 2023 01:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697877051; x=1698481851; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hl6wwBaV4oTL/c/DKrP6uqSZKWTEpV9dwL8r4RcQ+WM=;
        b=Vi757Sn2E2li1QT8I/duaVxQLaOqWG0+f7nbxHo4EI8Kpxrvc9p6mf/+4HKuuzaYve
         TYOYc/bcEl7NbxGw0erekVqoAg0lV5bV2pbbuFRB/MJnrnlNMW2Z2MNDOEkpN4o++wzk
         zjEJaM8+AXNFHhCpxrUBA0H2vNdFei9WGrzbXYA9ZSBnyWsvkKiewWRjCFBnFRX9eb39
         cVkFwzwQSMP1XafJbsb8rfFk2V2lkcRRLAhpDuPx/G/561QG+a9Oepu3gvRRQym0FpUa
         FX/Sf3Sb/C49Rvg3YSyo6NgYu44O8d2hZiHZFMf+yYJgWo23ErdIB2lPapgskDL3mwks
         W1Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697877051; x=1698481851;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hl6wwBaV4oTL/c/DKrP6uqSZKWTEpV9dwL8r4RcQ+WM=;
        b=FQGGpmTUDAgVMLZ3VyCEy55nf9+VvPn6i9loQkT+9TBf/mM9CpGQQD8uEe4MTE4nYJ
         pgfho9s84HpSVjJ2meoPrTvJTh/z0XRXkjDs9lcichf/UZYY7DkJk+RadafsXxPNHuU0
         3Fj8/XrR+MOwBMd1r5CmF+3HFI1Ts3d5Tc/jtjc3mmkD1Ef0Y4Ku9j3uGqi8pPChZbNF
         UYmrCzhb/V5xV6tk6cPiXRaLWysoXTwpibpg1Ln4+4kvsCWYGRoM4uNixvwQaSw/Y71d
         qmrm7M3MDbbD7fRm29PcoxydNz6qkG6wwS34lJuxX0DgY2ChnZi/ashSWx+k4aWRCkz1
         hf5A==
X-Gm-Message-State: AOJu0Yzf/0F0ZSBKG++3ei/w4FQXxzuFbvcSX31cP9HUTq8qdImcy5Jq
	hVvUY/PK8q+MrUkF0yE+oY5fTd22oveI8YXc22Vff7fM
X-Google-Smtp-Source: AGHT+IEmX95NKBMM59DHs8kKsVNpOROLQl5tCRdqAxW6fTfFHUQHvyRVzLaIX1vwSPn1PPE50zvBThFkOoPMxb5q3tE=
X-Received: by 2002:a9d:7996:0:b0:6cd:8c3:5b40 with SMTP id
 h22-20020a9d7996000000b006cd08c35b40mr3955672otm.36.1697877050870; Sat, 21
 Oct 2023 01:30:50 -0700 (PDT)
MIME-Version: 1.0
References: <kOAj.1697556855987913902.FIMX@lists.yoctoproject.org>
In-Reply-To: <kOAj.1697556855987913902.FIMX@lists.yoctoproject.org>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Sat, 21 Oct 2023 10:30:38 +0200
Message-ID: <CAB3asfhAAuxUW26G6uthSC_9raBn_enPgGBUgsgD7pLBmwL+TQ@mail.gmail.com>
Subject: Re: [yocto] Trouble making a recipe for the IOBB library
To: Iurascu Teodor <iurascu_teo@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/related; boundary="0000000000007d6288060835ce5b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 21 Oct 2023 08:30:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61443

--0000000000007d6288060835ce5b
Content-Type: multipart/alternative; boundary="0000000000007d6287060835ce5a"

--0000000000007d6287060835ce5a
Content-Type: text/plain; charset="UTF-8"

The best would probably be to improve the Makefile to install the files to
standard paths such as /usr instead of /usr/local. /usr/local is usually
used for not packaged files and therefore not handled by the default FILES
package splitting rules of Yocto.

Ideally there would be a PREFIX variable in the Makefile which defaults to
/usr/local and gets over written by bitbake to /usr. Then also the FILES
line should no longer be needed.

Another approach would be to replace the Makefile by e.g. meson or cmake
which both do all these details right by default.

As a workaround extending the FILES line would work as well. But using
locations like lib or usr in FILES is not a good idea. It probably adds too
many files like debug stuff to the package.

To see the variables for you recipe you might want to use bitbake -e. To
see how bitbake spits the packages you might look into the
packages-splitted folder in the $WORKDIR of your recipe.

Regards
Adrian


Iurascu Teodor <iurascu_teo@hotmail.com> schrieb am Sa., 21. Okt. 2023,
09:05:

> Hello!
> I am new to the Yocto Project and I have been trying to make a recipe to
> include the IOBB library in my SDK for the BeagleBone Black board. I have
> used devtool to create a recipe based on a fork of the library.
>
>
> Library makefile:
>
>
> LIB_PATH = ./BBBio_lib/
> DEMO_PATH = ./Demo/
> TOOLKIT_PATH = ./Toolkit/
> LAB_PATH = ./Lab/
>
>
> LIBRARIES = iobb
>
> all
>  : libiobb.a LED ADT7301 SEVEN_SCAN SMOTOR LED_GPIO DEBOUNCING 4x4keypad
>  ADC ADC_VOICE GPIO_STATUS EP_STATUS ADC_CALC lcd3-test test-outputs
> pb-test-outputs test-inputs pb-test-inputs
>
> libiobb.a : ${LIB_PATH}BBBiolib.c ${LIB_PATH}BBBiolib.h BBBiolib_PWMSS.o BBBiolib_McSPI.o BBBiolib_ADCTSC.o i2cfunc.o
>     gcc -c ${LIB_PATH}BBBiolib.c -o ${LIB_PATH}BBBiolib.o
>
>   ar -rs ${LIB_PATH}libiobb.a ${LIB_PATH}BBBiolib.o
> ${LIB_PATH}BBBiolib_PWMSS.o ${LIB_PATH}BBBiolib_McSPI.o
> ${LIB_PATH}BBBiolib_ADCTSC.o ${LIB_PATH}i2cfunc.o
>     cp ${LIB_PATH}libiobb.a ./
>     cp ${LIB_PATH}BBBiolib.h ./iobb.h
>     cp ${LIB_PATH}BBBiolib_ADCTSC.h ./
>     cp ${LIB_PATH}BBBiolib_McSPI.h ./
>     cp ${LIB_PATH}BBBiolib_PWMSS.h ./
>     cp ${LIB_PATH}i2cfunc.h ./
>
> BBBiolib_PWMSS.o : ${LIB_PATH}BBBiolib_PWMSS.c ${LIB_PATH}BBBiolib_PWMSS.h
>     gcc -c ${LIB_PATH}BBBiolib_PWMSS.c -o ${LIB_PATH}BBBiolib_PWMSS.o -W
>
> BBBiolib_McSPI.o : ${LIB_PATH}BBBiolib_McSPI.c ${LIB_PATH}BBBiolib_PWMSS.h
>     gcc -c ${LIB_PATH}BBBiolib_McSPI.c -o ${LIB_PATH}BBBiolib_McSPI.o -W
>
> BBBiolib_ADCTSC.o : ${LIB_PATH}BBBiolib_ADCTSC.c ${LIB_PATH}BBBiolib_ADCTSC.h
>     gcc -c ${LIB_PATH}BBBiolib_ADCTSC.c -o ${LIB_PATH}BBBiolib_ADCTSC.o -W
>
> i2cfunc.o : ${LIB_PATH}i2cfunc.c ${LIB_PATH}i2cfunc.h
>     gcc -c ${LIB_PATH}i2cfunc.c -o ${LIB_PATH}i2cfunc.o
>
> install :
> ifndef locatie
>     $(info locatie is [${locatie}])
>     rm -f /usr/local/include/BBBiolib.h
>     cp ${LIB_PATH}libiobb.a /usr/local/lib
>     cp ${LIB_PATH}BBBiolib.h /usr/local/include/iobb.h
>     cp ${LIB_PATH}BBBiolib_ADCTSC.h /usr/local/include
>     cp ${LIB_PATH}BBBiolib_McSPI.h /usr/local/include
>     cp ${LIB_PATH}BBBiolib_PWMSS.h /usr/local/include
>     cp ${LIB_PATH}i2cfunc.h /usr/local/include
>     ln -s /usr/local/include/iobb.h /usr/local/include/BBBiolib.h
> else
>     $(info locatie is [${locatie}])
>     rm -f $(locatie)/usr/local/include/BBBiolib.h
>     mkdir -p $(locatie)/usr/local/lib
>     mkdir -p $(locatie)/usr/local/include
>     cp ${LIB_PATH}libiobb.a $(locatie)/usr/local/lib
>     cp ${LIB_PATH}BBBiolib.h $(locatie)/usr/local/include/iobb.h
>     cp ${LIB_PATH}BBBiolib_ADCTSC.h $(locatie)/usr/local/include
>     cp ${LIB_PATH}BBBiolib_McSPI.h $(locatie)/usr/local/include
>     cp ${LIB_PATH}BBBiolib_PWMSS.h $(locatie)/usr/local/include
>     cp ${LIB_PATH}i2cfunc.h $(locatie)/usr/local/include
>     cp $(locatie)/usr/local/include/iobb.h $(locatie)/usr/local/include/BBBiolib.h
> endif
>
>
> recipe file:
>
> LICENSE = "Unknown"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=7db6c9cd5c53a0a05ffa2f383b2408dc"
>
> SRC_URI = "git://github.com/TeoThatsMe/iobb;protocol=https;branch=master"
>
> # Modify these as desired
> PV = "1.0+git${SRCPV}"
> SRCREV = "1a7bdf1767f730b0d6058117e42c4ec77047b4ab"
>
> S = "${WORKDIR}/git"
> FILES:${PN} += "${base_libdir}"
>
> # NOTE: the following library dependencies are unknown, ignoring: iobb fftw3
> #       (this is based on recipes that have previously been built and packaged)
>
> # NOTE: this is a Makefile-only piece of software, so we cannot generate much of the
> # recipe automatically - you will need to examine the Makefile yourself and ensure
> # that the appropriate arguments are passed in.
>
> do_configure () {
> 	# Specify any needed configure commands here
> 	:
> }
>
> do_compile () {
> 	# You will almost certainly need to add additional arguments here
> 	oe_runmake
> }
>
> do_install () {
> 	# This is a guess; additional arguments may be required
> 	oe_runmake install locatie=${D}
> }
>
>
> I have modified the makefile with the locatie variable so that the install
> script installs it in the ${D} directory and not on my machine.
> Even though I am setting
>
> FILES:${PN} += "${base_libdir}"
>
> I am still getting this error.
>
>
>
>
> Do I have to set the FILES variable to something esle or am I doing
> something wrong before the packaging phase?
> Thank you!
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61442):
> https://lists.yoctoproject.org/g/yocto/message/61442
> Mute This Topic: https://lists.yoctoproject.org/mt/102097263/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000007d6287060835ce5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">The best would probably be to improve the Makefile to ins=
tall the files to standard paths such as /usr instead of /usr/local. /usr/l=
ocal is usually used for not packaged files and therefore not handled by th=
e default FILES package splitting rules of Yocto.<div dir=3D"auto"><br></di=
v><div dir=3D"auto">Ideally there would be a PREFIX variable in the Makefil=
e which defaults to /usr/local and gets over written by bitbake to /usr. Th=
en also the FILES line should no longer be needed.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Another approach would be to replace the Makefil=
e by e.g. meson or cmake which both do all these details right by default.<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">As a workaround extendin=
g the FILES line would work as well. But using locations like lib or usr in=
 FILES is not a good idea. It probably adds too many files like debug stuff=
 to the package.</div><div dir=3D"auto"><br></div><div dir=3D"auto">To see =
the variables for you recipe you might want to use bitbake -e. To see how b=
itbake spits the packages you might look into the packages-splitted folder =
in the $WORKDIR of your recipe.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Regards</div><div dir=3D"auto">Adrian</div><div dir=3D"auto"><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">Iurascu Teodor &lt;<a href=3D"mailto:iurascu_teo@hotmail.com">iurascu=
_teo@hotmail.com</a>&gt; schrieb am Sa., 21. Okt. 2023, 09:05:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div>Hello!<br>I am new to the Yocto Project an=
d I have been trying to make a recipe to include the IOBB library in my SDK=
 for the BeagleBone Black board. I have used devtool to create a recipe bas=
ed on a fork of the library.<br><br><br>Library makefile:<br><br><br>
<pre>LIB_PATH =3D ./BBBio_lib/<br>DEMO_PATH =3D ./Demo/<br>TOOLKIT_PATH =3D=
 ./Toolkit/<br>LAB_PATH =3D ./Lab/<br><br><br>LIBRARIES =3D iobb<br><br>all
 : libiobb.a LED ADT7301 SEVEN_SCAN SMOTOR LED_GPIO DEBOUNCING 4x4keypad
 ADC ADC_VOICE GPIO_STATUS EP_STATUS ADC_CALC lcd3-test test-outputs=20
pb-test-outputs test-inputs pb-test-inputs<br><br>libiobb.a : ${LIB_PATH}BB=
Biolib.c ${LIB_PATH}BBBiolib.h BBBiolib_PWMSS.o BBBiolib_McSPI.o BBBiolib_A=
DCTSC.o i2cfunc.o<br>=C2=A0=C2=A0 =C2=A0gcc -c ${LIB_PATH}BBBiolib.c -o ${L=
IB_PATH}BBBiolib.o<br>=C2=A0=C2=A0
 =C2=A0ar -rs ${LIB_PATH}libiobb.a ${LIB_PATH}BBBiolib.o=20
${LIB_PATH}BBBiolib_PWMSS.o ${LIB_PATH}BBBiolib_McSPI.o=20
${LIB_PATH}BBBiolib_ADCTSC.o ${LIB_PATH}i2cfunc.o<br>=C2=A0=C2=A0 =C2=A0cp =
${LIB_PATH}libiobb.a ./<br>=C2=A0=C2=A0 =C2=A0cp ${LIB_PATH}BBBiolib.h ./io=
bb.h<br>=C2=A0=C2=A0 =C2=A0cp ${LIB_PATH}BBBiolib_ADCTSC.h ./<br>=C2=A0=C2=
=A0 =C2=A0cp ${LIB_PATH}BBBiolib_McSPI.h ./<br>=C2=A0=C2=A0 =C2=A0cp ${LIB_=
PATH}BBBiolib_PWMSS.h ./<br>=C2=A0=C2=A0 =C2=A0cp ${LIB_PATH}i2cfunc.h ./<b=
r><br>BBBiolib_PWMSS.o : ${LIB_PATH}BBBiolib_PWMSS.c ${LIB_PATH}BBBiolib_PW=
MSS.h<br>=C2=A0=C2=A0 =C2=A0gcc -c ${LIB_PATH}BBBiolib_PWMSS.c -o ${LIB_PAT=
H}BBBiolib_PWMSS.o -W <br><br>BBBiolib_McSPI.o : ${LIB_PATH}BBBiolib_McSPI.=
c ${LIB_PATH}BBBiolib_PWMSS.h<br>=C2=A0=C2=A0 =C2=A0gcc -c ${LIB_PATH}BBBio=
lib_McSPI.c -o ${LIB_PATH}BBBiolib_McSPI.o -W<br><br>BBBiolib_ADCTSC.o : ${=
LIB_PATH}BBBiolib_ADCTSC.c ${LIB_PATH}BBBiolib_ADCTSC.h<br>=C2=A0=C2=A0 =C2=
=A0gcc -c ${LIB_PATH}BBBiolib_ADCTSC.c -o ${LIB_PATH}BBBiolib_ADCTSC.o -W<b=
r><br>i2cfunc.o : ${LIB_PATH}i2cfunc.c ${LIB_PATH}i2cfunc.h<br>=C2=A0=C2=A0=
 =C2=A0gcc -c ${LIB_PATH}i2cfunc.c -o ${LIB_PATH}i2cfunc.o<br><br>install :=
 =C2=A0<br>ifndef locatie<br>=C2=A0=C2=A0 =C2=A0$(info locatie is [${locati=
e}])<br>=C2=A0=C2=A0 =C2=A0rm -f /usr/local/include/BBBiolib.h<br>=C2=A0=C2=
=A0 =C2=A0cp ${LIB_PATH}libiobb.a /usr/local/lib<br>=C2=A0=C2=A0 =C2=A0cp $=
{LIB_PATH}BBBiolib.h /usr/local/include/iobb.h<br>=C2=A0=C2=A0 =C2=A0cp ${L=
IB_PATH}BBBiolib_ADCTSC.h /usr/local/include<br>=C2=A0=C2=A0 =C2=A0cp ${LIB=
_PATH}BBBiolib_McSPI.h /usr/local/include<br>=C2=A0=C2=A0 =C2=A0cp ${LIB_PA=
TH}BBBiolib_PWMSS.h /usr/local/include<br>=C2=A0=C2=A0 =C2=A0cp ${LIB_PATH}=
i2cfunc.h /usr/local/include<br>=C2=A0=C2=A0 =C2=A0ln -s /usr/local/include=
/iobb.h /usr/local/include/BBBiolib.h<br>else<br>=C2=A0=C2=A0 =C2=A0$(info =
locatie is [${locatie}])<br>=C2=A0=C2=A0 =C2=A0rm -f $(locatie)/usr/local/i=
nclude/BBBiolib.h<br>=C2=A0=C2=A0 =C2=A0mkdir -p $(locatie)/usr/local/lib<b=
r>=C2=A0=C2=A0 =C2=A0mkdir -p $(locatie)/usr/local/include<br>=C2=A0=C2=A0 =
=C2=A0cp ${LIB_PATH}libiobb.a $(locatie)/usr/local/lib<br>=C2=A0=C2=A0 =C2=
=A0cp ${LIB_PATH}BBBiolib.h $(locatie)/usr/local/include/iobb.h<br>=C2=A0=
=C2=A0 =C2=A0cp ${LIB_PATH}BBBiolib_ADCTSC.h $(locatie)/usr/local/include<b=
r>=C2=A0=C2=A0 =C2=A0cp ${LIB_PATH}BBBiolib_McSPI.h $(locatie)/usr/local/in=
clude<br>=C2=A0=C2=A0 =C2=A0cp ${LIB_PATH}BBBiolib_PWMSS.h $(locatie)/usr/l=
ocal/include<br>=C2=A0=C2=A0 =C2=A0cp ${LIB_PATH}i2cfunc.h $(locatie)/usr/l=
ocal/include<br>=C2=A0=C2=A0 =C2=A0cp $(locatie)/usr/local/include/iobb.h $=
(locatie)/usr/local/include/BBBiolib.h<br>endif
</pre>
<br>recipe file:<br>
<pre>LICENSE =3D &quot;Unknown&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://L=
ICENSE;md5=3D7db6c9cd5c53a0a05ffa2f383b2408dc&quot;<br><br>SRC_URI =3D &quo=
t;git://<a href=3D"http://github.com/TeoThatsMe/iobb;protocol=3Dhttps;branc=
h=3Dmaster" target=3D"_blank" rel=3D"noreferrer">github.com/TeoThatsMe/iobb=
;protocol=3Dhttps;branch=3Dmaster</a>&quot;<br><br># Modify these as desire=
d<br>PV =3D &quot;1.0+git${SRCPV}&quot;<br>SRCREV =3D &quot;1a7bdf1767f730b=
0d6058117e42c4ec77047b4ab&quot;<br><br>S =3D &quot;${WORKDIR}/git&quot;<br>=
FILES:${PN} +=3D &quot;${base_libdir}&quot;<br><br># NOTE: the following li=
brary dependencies are unknown, ignoring: iobb fftw3<br>#       (this is ba=
sed on recipes that have previously been built and packaged)<br><br># NOTE:=
 this is a Makefile-only piece of software, so we cannot generate much of t=
he<br># recipe automatically - you will need to examine the Makefile yourse=
lf and ensure<br># that the appropriate arguments are passed in.<br><br>do_=
configure () {<br>	# Specify any needed configure commands here<br>	:<br>}<=
br><br>do_compile () {<br>	# You will almost certainly need to add addition=
al arguments here<br>	oe_runmake<br>}<br><br>do_install () {<br>	# This is =
a guess; additional arguments may be required<br>	oe_runmake install locati=
e=3D${D}<br>}<br>
</pre>
<br>I have modified the makefile with the locatie variable so that the inst=
all script installs it in the ${D} directory and not on my machine.<br>Even=
 though I am setting <br>
<pre>FILES:${PN} +=3D &quot;${base_libdir}&quot;</pre>
I am still getting this error.<br><br><img src=3D"cid:attach_0_178EEEF76BA7=
0201_15435@groups.io" alt=3D""><br><br><br>Do I have to set the FILES varia=
ble to something esle or am I doing something wrong before the packaging ph=
ase?<br>Thank you!<br>=C2=A0=C2=A0=C2=A0
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61442): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61442" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/61442</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102097263/445=
4582" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/102097263/4454582</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D=
"_blank" rel=3D"noreferrer">adrian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000007d6287060835ce5a--

--0000000000007d6288060835ce5b
Content-Type: image/png; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64
Content-ID: <attach_0_178EEEF76BA70201_15435@groups.io>
X-Attachment-Id: attach_0_178EEEF76BA70201_15435@groups.io

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
AAAAA/X/AcdZnJaBlvPiAAAAAElFTkSuQmCC
--0000000000007d6288060835ce5b--

