Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B0D3E01708
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 14:49:18 -0700 (PDT)
Received: by mail-ea0-f181.google.com with SMTP id d10so4321070eaj.12
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 14:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=E1NN/fhaTeRepONMuDHLRtOfTAqxrZoZw2nWVKAIN3c=;
	b=AXuFpODrJkJF+gTnMCuU7IRTOk7iJBN6Xte4cB2iuN5JF8lI0KQhxfpdzN5GMZY3Gf
	EbwEhTBx8cJn5GxAit1+3Z02rrMTxXhalTgKLgXjaNWYyIagGPqWjWMT+NjzEo/zZO95
	gmvHFf4/ncRjHOzdKsBuOscRNOcH+HdYIzPhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=E1NN/fhaTeRepONMuDHLRtOfTAqxrZoZw2nWVKAIN3c=;
	b=UwyHTl2xeMvwHdtUF3bjXzc11+RN4R7ZqMEb4njKnaOpGWYTh26GI3fuBcA6Iq/bsN
	4O4DWvKqMavGwmOSk6z+wfdnhVRAQ7V1h/r7cSB6QPbDNXVysjaYBLdzB2wWOBcIltNN
	UR85XaBsuuxkX+M8hAtSlQ6hobQax65eV8oHdLguhoiGmxixU9CB5EYQM7rWuaVEjm/x
	hSAYopEv3Cbnf6MVyYkHgRnm3p7thcWS11bFbLDWs9kbvRtlwc+4RKNA078T7/1fahh5
	H9k5IEcEPutKt5F6id584dWI7PtUDDjpdS7FfxCRGk/guAF9M7OE2L/L70nTe7ZbPSPA
	Rh2g==
X-Gm-Message-State: ALoCoQmQ9Ir3yj8GqVKKfBF06xSXUjWUx6i92EM/8cjpn7afTZ/euzDWdEP1JjLTcK4RNpNkPrKo
MIME-Version: 1.0
X-Received: by 10.14.183.2 with SMTP id p2mr3847542eem.44.1381873757534; Tue,
	15 Oct 2013 14:49:17 -0700 (PDT)
Received: by 10.223.131.3 with HTTP; Tue, 15 Oct 2013 14:49:17 -0700 (PDT)
In-Reply-To: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
Date: Tue, 15 Oct 2013 14:49:17 -0700
Message-ID: <CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Tue, 15 Oct 2013 21:49:20 -0000
Content-Type: multipart/alternative; boundary=047d7b343dc471453e04e8ce8eb2

--047d7b343dc471453e04e8ce8eb2
Content-Type: text/plain; charset=ISO-8859-1

Diego,

You are appending a kernel recipe that uses the Linux Yocto tooling. The
defconfig is essentially comprised of many different pieces from the meta
branch of the Yocto kernel repository and optional configuration fragments
that you provide. This tooling will not recognize a defconfig file you
provide but it does recognize configuration fragments to be added to
.config.

You need to put

CONFIG_WATCHDOG_NOWAYOUT=y

into a file that ends with .cfg eg. watchdog.cfg and then modify your
bbappend to

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " file://0019-mine.patch \
             file://watchdog.cfg \
             "

Rudi



On Tue, Oct 15, 2013 at 2:07 PM, Diego Sueiro <diego.sueiro@gmail.com>wrote:

> Folks,
>
> I created the following bbapend recipe for linux-mainline_3.8.bb (from
> meta-beagleboard on dylan branch) for beaglebone.
> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> SRC_URI += " file://0019-mine.patch \
>              file://defconfig \
>              "
>
> But the defconfig and .config files on ${S} and ${WORKDIR} used are from
> meta-beagleboad, not from my bbappend.
>
> I tried to follow the instructions to add config fragments on the page
> below but it did not worked too.
>
> http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#changing-the-configuration
>
> The strange thing is: My patch is applied but my defconfig, or config
> fragment is not used.
> I just want to add CONFIG_WATCHDOG_NOWAYOUT=y.
>
> I already did a cleasstate but no success.
>
> Any hints?
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b343dc471453e04e8ce8eb2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Diego,<div><br></div><div>You are appending a kernel recip=
e that uses the Linux Yocto tooling. The defconfig is essentially comprised=
 of many different pieces from the meta branch of the Yocto kernel reposito=
ry and optional configuration fragments that you provide. This tooling will=
 not recognize a defconfig file you provide but it does recognize configura=
tion fragments to be added to .config.</div>
<div><br></div><div>You need to put=A0</div><div><br></div><div><span style=
=3D"font-family:arial,sans-serif;font-size:13.333333969116211px">CONFIG_WAT=
CHDOG_NOWAYOUT=3D</span><span style=3D"font-family:arial,sans-serif;font-si=
ze:13.333333969116211px">y</span><br>
</div><div><span style=3D"font-family:arial,sans-serif;font-size:13.3333339=
69116211px"><br></span></div><div><span style=3D"font-family:arial,sans-ser=
if;font-size:13.333333969116211px">into a file that ends with .cfg eg. watc=
hdog.cfg and then modify your bbappend to</span></div>
<div><span style=3D"font-family:arial,sans-serif;font-size:13.3333339691162=
11px"><br></span></div><div><div style=3D"font-family:arial,sans-serif;font=
-size:13.333333969116211px">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/f=
iles:&quot;</div>
<div style=3D"font-family:arial,sans-serif;font-size:13.333333969116211px">=
SRC_URI +=3D &quot; file://0019-mine.patch \<br></div><div style=3D"font-fa=
mily:arial,sans-serif;font-size:13.333333969116211px">=A0 =A0 =A0 =A0 =A0 =
=A0 =A0file://watchdog.cfg \</div>
<div style=3D"font-family:arial,sans-serif;font-size:13.333333969116211px">=
=A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;</div></div><div><span style=3D"font-famil=
y:arial,sans-serif;font-size:13.333333969116211px"><br></span></div><div><s=
pan style=3D"font-family:arial,sans-serif;font-size:13.333333969116211px">R=
udi</span></div>
<div><span style=3D"font-family:arial,sans-serif;font-size:13.3333339691162=
11px"><br></span></div><div class=3D"gmail_extra"><br><br><div class=3D"gma=
il_quote">On Tue, Oct 15, 2013 at 2:07 PM, Diego Sueiro <span dir=3D"ltr">&=
lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.sueiro=
@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Folks,<div><br></div><div>I=
 created the following bbapend recipe for <a href=3D"http://linux-mainline_=
3.8.bb" target=3D"_blank">linux-mainline_3.8.bb</a> (from meta-beagleboard =
on dylan branch) for beaglebone.</div>
<div>

meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:<br></div><block=
quote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><div>F=
ILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;</div>

</div><div><div>SRC_URI +=3D &quot; file://0019-mine.patch \<br></div></div=
><div><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0file://defconfig \</div></div><div><d=
iv>=A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;</div></div></blockquote><div>

<div>But the defconfig and .config files on ${S} and ${WORKDIR} used are fr=
om meta-beagleboad, not from my bbappend.</div></div><div><br></div><div>I =
tried to follow the instructions to add config fragments on the page below =
but it did not worked too.</div>


<div><a href=3D"http://www.yoctoproject.org/docs/current/kernel-dev/kernel-=
dev.html#changing-the-configuration" target=3D"_blank">http://www.yoctoproj=
ect.org/docs/current/kernel-dev/kernel-dev.html#changing-the-configuration<=
/a></div>
<div><br>

</div><div>The strange thing is: My patch is applied but my defconfig, or c=
onfig fragment is not used.</div><div>I just want to add=A0CONFIG_WATCHDOG_=
NOWAYOUT=3Dy.</div><div><br></div><div>I already did a cleasstate but no=A0=
success.</div>


<div><br></div><div>Any hints?</div><div><br></div><div><br clear=3D"all"><=
div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego S=
ueiro<br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div><div dir=3D"ltr=
"><div><font face=3D"garamond, serif"><span style=3D"border-collapse:collap=
se;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px"><br>=
</span></font></div>
</div>
</div></div>

--047d7b343dc471453e04e8ce8eb2--
