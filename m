Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D31E4E01496
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 20:34:38 -0700 (PDT)
Received: by mail-ea0-f170.google.com with SMTP id a15so1522905eae.15
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 20:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=n4w+7hwjAM4hIKyb/MWv5NcozX5zJQ3w11YCD6inZOM=;
	b=Dyx6vNAlHvR9M2k0hf8f/J57qMfnIVtFZDehhagSm3O9w4Qwp688gyUZ7s0jI2icBd
	fx9+CP0PcSt2QyWSMuaE5Y6WF4uoaXg6/M+W3IhcS9bRF4cL73p9l36gOfW8CdglFZCq
	AwEb+mxVeSpUg3HwW/TGS5XUwNBMQ37NyB7vM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=n4w+7hwjAM4hIKyb/MWv5NcozX5zJQ3w11YCD6inZOM=;
	b=JADIh2MJdqMyM1WX9zjMI/3Awl6THK7uID45LpuUqdSiYYSdnAi0vT9f0W55wPMaYu
	5dQnHc5/XAeuHTB/f4Ick+8HyBcrWgHRfekfMHSqhI1k90ksjhU1llAW2qAtaY5orYCn
	R8RexcJz0dThzXhL9EWRDcs5So3pgAat5vznV1vi2n39Se2DjOJ33qfSRvJHJsw/KSF5
	vTsXha18gmu6XeOCsHo9hh3mvUYdPyzHH1a0r90h8hsXYLJ6573+qc7xjAo6Tmy29Se1
	P84t0iXyDfa52NKf4PhNXC/Pi5cfMzzfze+96CIx0KFzLj6piEFd+8oKzmdhnj1803TF
	8YlQ==
MIME-Version: 1.0
X-Received: by 10.15.94.200 with SMTP id bb48mr37297957eeb.21.1366342477299;
	Thu, 18 Apr 2013 20:34:37 -0700 (PDT)
Received: by 10.223.87.73 with HTTP; Thu, 18 Apr 2013 20:34:37 -0700 (PDT)
In-Reply-To: <CAHUNapQqzgLsC7HDyvARLDb=gJ3X6QxWLnHND69duBXBLKybGg@mail.gmail.com>
References: <CAHUNapTBjAg2U6p3nk8E_dtrJAcJ3BJ-EFYvsCtQ2R71dtGRwg@mail.gmail.com>
	<CAHUNapRTY=2TtCSFE=OJz_iGwuaJHKv8iHsL3VrJ=jKXSCf=SQ@mail.gmail.com>
	<CA+gsK-r=iE4CmnUXb79J-T5g6dy5csKZNNpMu5=SnFM4WBdKbg@mail.gmail.com>
	<CAHUNapS_dMQnpqCFMLqyGrbch0SQbJZc4aSVxFk+SRO9mU=2rQ@mail.gmail.com>
	<CA+gsK-pdGWseY5mcf3naYoFaqLieXFaVazNWQ9yo5BZEDuSm7g@mail.gmail.com>
	<CAHUNapQqzgLsC7HDyvARLDb=gJ3X6QxWLnHND69duBXBLKybGg@mail.gmail.com>
Date: Thu, 18 Apr 2013 20:34:37 -0700
Message-ID: <CA+gsK-pF=teYdc+AZxnnN5suTRpZKKkJLZtnwCAiDBAHHnNMZQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQknTfEjghel2VOKOceULqLwF0hWJiJIuEOfWnaWAzdGm0w59KW5DHZdgv5Ih5HAA8T/3sV5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: Could not initialize SDL(No available video device) - exiting
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
X-List-Received-Date: Fri, 19 Apr 2013 03:34:39 -0000
Content-Type: multipart/alternative; boundary=089e016818f00081d204daae66c6

--089e016818f00081d204daae66c6
Content-Type: text/plain; charset=ISO-8859-1

> Should YP be trying to build its own copy of libSDL (with the -devel)
> if it finds some part of libSDL (i.e. the header files) is missing
> from the host? This is almost like a "host contamination" issue, no?
>

You are raising an interesting point to which I have no answer. YP has a
recipe to build libsdl and it specifies BBCLASSEXTEND = "nativesdk" only,
not BBCLASSEXTEND = "native nativesdk" as one would expect if were to build
it for Qemu.

The qemu.inc recipe also does not list libsdl in DEPENDS_class-native but
it does so in DEPENDS_class-nativesdk and in DEPENDS. I cannot tell you why
that is but it may be worthwhile trying to add libsdl to
DEPENDS_class-native of qemu.inc and native to BBCLASSEXTEND in
libsdl_1.2.15.bb.

I wonder if bitbake qemu-nativesdk would build even if you don't have
libsdl installed on your host.

Rudi

--089e016818f00081d204daae66c6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Should YP be trying to build its own copy of libSDL (with the -devel)<br>
if it finds some part of libSDL (i.e. the header files) is missing<br>
from the host? This is almost like a &quot;host contamination&quot; issue, =
no?<br>
<div class=3D"HOEnZb"><div class=3D"h5"></div></div></blockquote></div><div=
><font face=3D"garamond, serif"><span style=3D"border-collapse:collapse;col=
or:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px"><br></span=
></font></div>
<div style><font face=3D"garamond, serif"><span style=3D"border-collapse:co=
llapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px">=
You are raising an interesting point to which I have no answer. YP has a re=
cipe to build libsdl and it specifies BBCLASSEXTEND =3D &quot;nativesdk&quo=
t; only, not BBCLASSEXTEND =3D &quot;native nativesdk&quot; as one would ex=
pect if were to build it for Qemu.</span></font></div>
<div style><font face=3D"garamond, serif"><span style=3D"border-collapse:co=
llapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px">=
<br></span></font></div><div style><font face=3D"garamond, serif"><span sty=
le=3D"border-collapse:collapse;color:rgb(102,102,102);font-family:arial,san=
s-serif;font-size:13px">The qemu.inc recipe also does not list libsdl in DE=
PENDS_class-native but it does so in DEPENDS_class-nativesdk and in DEPENDS=
. I cannot tell you why that is but it may be worthwhile trying to add libs=
dl to DEPENDS_class-native of qemu.inc and native to BBCLASSEXTEND in <a hr=
ef=3D"http://libsdl_1.2.15.bb">libsdl_1.2.15.bb</a>.</span></font></div>
<div style><font face=3D"garamond, serif"><span style=3D"border-collapse:co=
llapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px">=
<br></span></font></div><div style><font color=3D"#666666" face=3D"arial, s=
ans-serif">I wonder if bitbake qemu-nativesdk would build even if you don&#=
39;t have libsdl installed on your host.</font></div>
<div style><font face=3D"garamond, serif"><span style=3D"border-collapse:co=
llapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px">=
<br></span></font></div><div style><font color=3D"#666666" face=3D"arial, s=
ans-serif">Rudi</font></div>

</div></div>

--089e016818f00081d204daae66c6--
