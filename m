Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1CD7E00E97; Mon, 12 Mar 2018 06:45:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEB05E0084E
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 06:45:05 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id j7-v6so11513085ita.3
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 06:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Atk93C0Z8ixWSjg+lqVYGNmxLXQ1KYl5KQUEB3R3i3g=;
	b=R+YtNTdDqfpA77eMaeuq3O2xoqa818PLQtxl/2U4fWxvIrhq+xLTKetz8en58ciK6o
	j7hP6QKkSmjB8v9wbeUA94mr+j3zjWyPaG7QZyCWJQf0TLoGUUSirZVO8wV589+IQOw1
	IKdSFLFSgy3RcF8y7sQD+cVsRk/aHboNbcIsZqaFdWI/tHv4K9TeEJ2uDK4CF86Ymmi/
	yjhw6ZG42JySvQ7Ieda72DxYN121/kqezFUz9jo60F9WAy8fOwo1XKMRZ8JhIu1X9ryi
	y/UxMVHAt7mlkaSq5MHkQnNi3gH5p9lq6JpC0gt4rpMUwRg1v4O4WOnuklDsF5Ckoyk1
	g5Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Atk93C0Z8ixWSjg+lqVYGNmxLXQ1KYl5KQUEB3R3i3g=;
	b=AX77zwGLsVvmS+5PAdab6HqGTnyZDPOy4/St2hRyW3AXME74RnZC+wOvJQt2MSmUSZ
	aD3s9+eNLK259HLaQ/PGlVhTM10wcKeUDyQAmktFfgbAjJBLVVBkkHIHTZpY+2grcrDs
	C/Fnce5lEsjXpAXM8fC741FMD5R9kcdHEyqu8ud4nvZsp+HIE5qVk2f2wn5HPc8YwIOM
	I0Xm5zb7/yEbzj2TVHfVGQdxmDqXbAV5KjNS1xPMH5n8l/y4uazQ4CsyFIfw68V/Tjj1
	fKkapwTDzLbpttgh6v+qkuS1By2uv2BORXqV0IBgyokX8UG03BFGOHtVHB36K9uwHQex
	5XSg==
X-Gm-Message-State: AElRT7EHatwzVZOla1ko+l/AkfQop11/sj32TZwcq0eRCpeAb86+aK3T
	11n1WSdl40vnPkj7963rGRrDHUpKwm3iOn77+jii+A==
X-Google-Smtp-Source: AG47ELuk+FPsJIfEFga2PRpusrtmvcibLTDkEpzJUkTFwgAfILfWhGVe3dAz+g11BRoNDR8b5pxwaQtvBpi+4s9c+Xo=
X-Received: by 10.36.185.24 with SMTP id w24mr8473899ite.127.1520862305005;
	Mon, 12 Mar 2018 06:45:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 12 Mar 2018 06:44:44 -0700 (PDT)
In-Reply-To: <CAKYr3zwfPo26gCC40NAgYuC3Cr23KeXUhGO=JLsDZEat8aO77Q@mail.gmail.com>
References: <CAKYr3zzndywLdf220YPUoCWLLNsuZgXmN_wOaYhqi=G0T63dMw@mail.gmail.com>
	<CAJTo0LbUJHFNVhGi7xkgdOKWhvUwynuCNuKcvvJB1esxoGPYUQ@mail.gmail.com>
	<CAKYr3zwfPo26gCC40NAgYuC3Cr23KeXUhGO=JLsDZEat8aO77Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Mar 2018 13:44:44 +0000
Message-ID: <CAJTo0LZ6g01VWHG59yg_PyYBv9VTWih5YEzzNF7YjFP3m7cJeg@mail.gmail.com>
To: Outback Dingo <outbackdingo@gmail.com>
Cc: "Yocto-mailing-." <yocto@yoctoproject.org>
Subject: Re: Function failed: do_package_qa
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
X-List-Received-Date: Mon, 12 Mar 2018 13:45:06 -0000
Content-Type: multipart/alternative; boundary="f403045d9a5071689a056737594a"

--f403045d9a5071689a056737594a
Content-Type: text/plain; charset="UTF-8"

On 12 March 2018 at 13:35, Outback Dingo <outbackdingo@gmail.com> wrote:

> Well heres the dltwrapper bb file it appears to build fine
> #
> # This file was derived from the 'Hello World!' example recipe in the
> # Yocto Project Development Manual.
> #
>
> DESCRIPTION = "DLT Wrapper"
> SECTION = "examples"
> DEPENDS = "boost libusb1 dlt-daemon"
> LICENSE = "COMPANY_COMMON_LICENSES"
> LIC_FILES_CHKSUM =
> "file://${COMPANY_COMMON_LICENSES}/LICENSE;md5=
> 18f1f6bf24836561f3a65cef19477d20"
>
> TARGET_CFLAGS += "-std=gnu++14"
>
> Just use CFLAGS


> # This tells bitbake where to find the files we're providing on the
> local filesystem
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>

Redundant, remove this


> FILES_${PN} += "${includedir}/*"
>

Wrong, includedir goes into PN-dev.  This is the default, so remove this.


> inherit autotools gettext cmake
>

Does DLT wrapper use autotools or cmake? It can't use both.  Does it need
to inherit gettext?


> do_install() {
> install -d ${D}${libdir}
> install -d ${D}${includedir}
> install -m 0755 ${WORKDIR}/build/libDLTWrapper.so ${D}${libdir}
> install -m 0755 ${WORKDIR}/DLTWrapper/include/* ${D}${includedir}
> }
>

Presumably you're doing this because the autotools or cmake files in your
tarball doesn't have an install target?

Anyway, that's the problem.  You're installing an unversioned .so file
which will be put into PN-dev by default.  Unversioned libraries are
frowned upon but if you can't change it then the wiki has a guide:

https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries#Non-versioned_Libraries

Ross

--f403045d9a5071689a056737594a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 12 March 2018 at 13:35, Outback Dingo <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:outbackdingo@gmail.com" target=3D"_blank">outbackdin=
go@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:r=
gb(204,204,204);padding-left:1ex">Well heres the dltwrapper bb file it appe=
ars to build fine<br>
#<br>
# This file was derived from the &#39;Hello World!&#39; example recipe in t=
he<br>
# Yocto Project Development Manual.<br>
#<br>
<br>
DESCRIPTION =3D &quot;DLT Wrapper&quot;<br>
SECTION =3D &quot;examples&quot;<br>
DEPENDS =3D &quot;boost libusb1 dlt-daemon&quot;<br>
LICENSE =3D &quot;COMPANY_COMMON_LICENSES&quot;<br>
LIC_FILES_CHKSUM =3D<br>
&quot;file://${COMPANY_COMMON_<wbr>LICENSES}/LICENSE;md5=3D<wbr>18f1f6bf248=
36561f3a65cef19477d<wbr>20&quot;<br>
<br>
TARGET_CFLAGS +=3D &quot;-std=3Dgnu++14&quot;<br>
<br></blockquote><div>Just use CFLAGS</div><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;=
border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex=
">
# This tells bitbake where to find the files we&#39;re providing on the<br>
local filesystem<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br></blockquote>=
<div><br></div><div>Redundant, remove this</div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-lef=
t:1ex">
FILES_${PN} +=3D &quot;${includedir}/*&quot;<br></blockquote><div><br></div=
><div>Wrong, includedir goes into PN-dev.=C2=A0 This is the default, so rem=
ove this.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;bord=
er-left-color:rgb(204,204,204);padding-left:1ex">
inherit autotools gettext cmake<br></blockquote><div><br></div><div>Does DL=
T wrapper use autotools or cmake? It can&#39;t use both.=C2=A0 Does it need=
 to inherit gettext?</div><div>=C2=A0</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style=
:solid;border-left-color:rgb(204,204,204);padding-left:1ex">do_install() {<=
br>
install -d ${D}${libdir}<br>
install -d ${D}${includedir}<br>
install -m 0755 ${WORKDIR}/build/<wbr>libDLTWrapper.so ${D}${libdir}<br>
install -m 0755 ${WORKDIR}/DLTWrapper/include/<wbr>* ${D}${includedir}<br>
<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5">}<br></div></div></bloc=
kquote><div><br></div><div>Presumably you&#39;re doing this because the aut=
otools or cmake files in your tarball doesn&#39;t have an install target?</=
div><div><br></div><div>Anyway, that&#39;s the problem.=C2=A0 You&#39;re in=
stalling an unversioned .so file which will be put into PN-dev by default.=
=C2=A0 Unversioned libraries are frowned upon but if you can&#39;t change i=
t then the wiki has a guide:</div><div><br></div><div><a href=3D"https://wi=
ki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries#Non-ver=
sioned_Libraries">https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packagin=
g_Prebuilt_Libraries#Non-versioned_Libraries</a></div><div><br></div><div>R=
oss</div><div><br></div></div></div></div>

--f403045d9a5071689a056737594a--
