Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFFBEE00AF6; Tue, 25 Apr 2017 11:15:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.179 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10785E00A31
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 11:15:36 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id u75so54969114qka.3
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 11:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Bpo+usvlxRcOy7IUBiGvlBORhRlGhtq9GbwqVItpmro=;
	b=B/ev6W7Lmsv4WGRiUKSiSXBgpLMc/xNjgpTdOM0YWTx3nGZ6UnvSb8ONs8xkdkz2BL
	gckYM9sJNJAsQgPQlsxPLBX5bLh+fPa74d22R6pA+TXU1eaBoCE4Rt52+g4nvYIArbD/
	mc1rrJnn1UBopUbjufvKJ1VdF+4rPW9pv4g4A6gw0/I3/7GDP6LNGu3Mm3Y3fHEx4UI4
	8lR0UVSuOOmRNyTKNYD6Awo9xL9WKFtjuIHrrdek75jfgrU5mim3KhteQYM9iorCi7NI
	pEZCZ5y1Yijcv3CruFVe0r85nxXEBfXbP06PlCAJ43Oab+/WUSXzpeUcqYdtPbuiyurO
	hBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Bpo+usvlxRcOy7IUBiGvlBORhRlGhtq9GbwqVItpmro=;
	b=C5BtJzoytBmZrE8daP47CB3h47jRbpBgDB+rxkcKiJTx++FnJFi0peZMcbdgiJLSuK
	RrVdPjg3SJ5d+v5/VhKxFA9QVQLvzgegKmzdDmnZrJONYfzkT2ovIkAAp9HB4qVuwKO4
	rKgoTQRR3itAxGJQe5d8JV0Cus3ktys+wXOPxGIbrj6Y5JTFenrqtzjrZdM3Z27wO7VA
	G7QMAi8MBoXJO2l98e4yleZvDQ+kSShNFYYc2AHDr3mKDD9IWhFC514SwYRt0BuPOCBO
	GADrgtgu5GDEeDlRC687y0PAG4p5i5W7wgfrPLrr4+8OLNiMKGq0P+uXJ+fHNEmMocdF
	7GHA==
X-Gm-Message-State: AN3rC/7CFq56kYDx0DVhTbazY2nfmnJ9F4AKt95XOOHEEddTyBYdjUVI
	BrGw/UkzK+SzZ7hQQF3xu9/TrMeDjA==
X-Received: by 10.55.92.3 with SMTP id q3mr31813133qkb.164.1493144136047; Tue,
	25 Apr 2017 11:15:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.48.73 with HTTP; Tue, 25 Apr 2017 11:15:35 -0700 (PDT)
In-Reply-To: <CAMKF1sp4_2eLn=xx3=C5VRquVhZe4hz_dovxsbJp0PDtVFtYiw@mail.gmail.com>
References: <CAOsmwBS1n4eayjhZZZZ4-RpotTSryiDOEA-xRJK59aR-ypbxEw@mail.gmail.com>
	<CAMKF1sp4_2eLn=xx3=C5VRquVhZe4hz_dovxsbJp0PDtVFtYiw@mail.gmail.com>
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Tue, 25 Apr 2017 20:15:35 +0200
Message-ID: <CAOsmwBSu_Z+B0w_=-MgTC0D_7djXJqau+Yn=cf5XYDvqqT-T7g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with mesa and nvidia
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
X-List-Received-Date: Tue, 25 Apr 2017 18:15:37 -0000
Content-Type: multipart/alternative; boundary=001a114ed840d3e19f054e01b57c

--001a114ed840d3e19f054e01b57c
Content-Type: text/plain; charset=UTF-8

Hi! This worked perfectly!

But now I have the following problem:
If I set prefered virtual/libgl as my nvidia recipe, then mesa is not
installed and when xorg-xserver is compiling the library libepoxy cannot
compile because of: No package 'egl' found (because this is provided by
mesa I guess)
If I set prefered virtual/libgl as default (mesa) some files are in
conflict (The recipe nvidia-proprietary is trying to install files into a
shared area when those files already exist) because they are provided by
mesa and my nvidia recipe. Files for example: libEGL.so.1, libGL.so
or xorg/modules/extensions/libglx.so

The only thing I saw relative to this problem is for example in
mesa.inc FILES_libegl-mesa
= "${libdir}/libEGL.so.*"

Im stucked again, its being hard to finish this recipe. At this moment I'm
overwritting these files in the installation script (when the roofs are
copied). This solution works and altought its not the right one, at least I
know that overwritting these files is the last step (got hardware
acceleration, playing video by hardware and full hd resolution).

Thank you for your help!


2017-04-23 17:11 GMT+02:00 Khem Raj <raj.khem@gmail.com>:

> On Sun, Apr 23, 2017 at 7:35 AM, Alvaro Garcia <maxpowel@gmail.com> wrote:
> > mesa-driver-i915
>
> if you are building for x86 based machines and including
> conf/machine/include/x86-base.inc in your machine config then you are
> getting it. You need to define XSERVER variable that fits your
> machine.
> you can start by just removing stuff from the preset value for it
>
> this is current value
>
> XSERVER ?= "${XSERVER_X86_BASE} \
>             ${XSERVER_X86_EXT} \
>             ${XSERVER_X86_I915} \
>             ${XSERVER_X86_I965} \
>             ${XSERVER_X86_FBDEV} \
>             ${XSERVER_X86_VESA} \
>             ${XSERVER_X86_MODESETTING} \
>            "
>
> remove whatever you dont need by overriding it in your machine conf file.
>

--001a114ed840d3e19f054e01b57c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi! This worked perfectly!<div><br><div>But now I have the=
 following problem:</div><div>If I set prefered virtual/libgl as my nvidia =
recipe, then mesa is not installed and when xorg-xserver is compiling the l=
ibrary libepoxy cannot compile because of: No package &#39;egl&#39; found (=
because this is provided by mesa I guess)</div><div>If I set prefered virtu=
al/libgl as default (mesa) some files are in conflict (The recipe nvidia-pr=
oprietary is trying to install files into a shared area when those files al=
ready exist) because they are provided by mesa and my nvidia recipe. Files =
for example:=C2=A0libEGL.so.1,=C2=A0libGL.so or=C2=A0xorg/modules/extension=
s/libglx.so</div><div><br></div><div>The only thing I saw relative to this =
problem is for example in mesa.inc=C2=A0<span style=3D"color:rgb(0,0,0);whi=
te-space:pre-wrap">FILES_libegl-mesa =3D &quot;${libdir}/libEGL.so.*&quot;<=
/span></div><div><br></div><div>Im stucked again, its being hard to finish =
this recipe. At this moment I&#39;m overwritting these files in the install=
ation script (when the roofs are copied). This solution works and altought =
its not the right one, at least I know that overwritting these files is the=
 last step (got hardware acceleration, playing video by hardware and full h=
d resolution).</div><div><br></div><div>Thank you for your help!</div><div>=
<br></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">2017-04-23 17:11 GMT+02:00 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</spa=
n>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">On Sun, Apr 23, 2017 at 7:35 AM, Alva=
ro Garcia &lt;<a href=3D"mailto:maxpowel@gmail.com">maxpowel@gmail.com</a>&=
gt; wrote:<br>
&gt; mesa-driver-i915<br>
<br>
if you are building for x86 based machines and including<br>
conf/machine/include/x86-base.<wbr>inc in your machine config then you are<=
br>
getting it. You need to define XSERVER variable that fits your<br>
machine.<br>
you can start by just removing stuff from the preset value for it<br>
<br>
this is current value<br>
<br>
XSERVER ?=3D &quot;${XSERVER_X86_BASE} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${XSERVER_X86_EXT} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${XSERVER_X86_I915} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${XSERVER_X86_I965} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${XSERVER_X86_FBDEV} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${XSERVER_X86_VESA} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${XSERVER_X86_MODESETTING} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
remove whatever you dont need by overriding it in your machine conf file.<b=
r>
</blockquote></div><br></div>

--001a114ed840d3e19f054e01b57c--
