Return-Path: <aaron@assonance.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D6FDE00C33; Mon, 30 Jul 2018 19:56:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 821E1E00AC8
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 19:56:58 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id d70-v6so11056463ith.1
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 19:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=assonance-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Nbgx0s7XhFDzU1+MuXurFdBPXIUdgw0TIogmlOhH8Q8=;
	b=kHFAU3Sc8h7Gq3N6DK3EGpvSwBGmdkjW/Ybjhj1SrsdWkwavDawi99KVvmnr1N7DFp
	1wJxRjef2BmBr7SrJwvi/ALkLUrmri3D4Op4TiOmqw1QsGT0GeQwmW7kjLj31faH+V4g
	R/LKhM1BMH8qRezzWengmSgFTuW87kCo6HRkEbOeEzND0dz52gVQ5GIVuiZpN4dc98qa
	64n3hmhegdwnx6hljNA99xNg9QMAoZoL4xT4t8eb7fYtedKuvNDc8zpBAHrKnrfWPK/D
	P1AXXw3Yp3qQAIwHW65ZDTkn2POdQEmiFavjh+Kljz9A/FjS7f3+KPDRXilHwWioVnjP
	Za3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Nbgx0s7XhFDzU1+MuXurFdBPXIUdgw0TIogmlOhH8Q8=;
	b=EdCdGO8WSHk6hNRuFXHWzz7JTvyyY3NqsnEJ9D1tsOBDQINEMXxSEjcRZ+QLVmd7V7
	t3ZEgFiLlitVxC6X62ZVS7T9fZ8SprNSuaEvo4ldXdVkZvZS1rBhBn7ibNo7i/Fy8sKw
	dHbXNfjDODdOg0yLUVPNDlM59pu8SHXSGZu3FXKGE1CtfkmObK1wH37QJiFI+XHZcrxn
	rqzAMrglNPPTzsiS6sILJYLimfuklduPbTonIPElUEJgg4Bywos4NDg/Lx1ouLyt/4e5
	88HplV1wFO+OoPGRSox2xAnyEMWBB2Qg7gBlGHUIcEoe2kXKGiJSDBqgMHBVrEnyt5yU
	bsgg==
X-Gm-Message-State: AOUpUlHkiymAW20qR4VWffn+hElgg8QkyB0jDmGmqoFqGDUL5rrfUJcP
	eNMixBGDfthzQmLnAowpSw9NBxb4nFbnoiRv/S8Pipzy
X-Google-Smtp-Source: AAOMgpfN9NJion+LDnNHA7gVjQyTqAkf+R7NVU9osmfwjJbOwdEKu+XrJCARRCx8MDVi5H7FSWPDHB23CPh7gMBfY00=
X-Received: by 2002:a24:4511:: with SMTP id
	y17-v6mr1576830ita.67.1533005817581; 
	Mon, 30 Jul 2018 19:56:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LyOWR90ZL8o3H=MNJR3Mwt_Ycpdfx-N+fVcG_O2cwZWDQ@mail.gmail.com>
	<CAGAf8LyucDcZD4q3ncreUM_cPdhf_JFpx+Vr4ut5vuaBHhRJWw@mail.gmail.com>
In-Reply-To: <CAGAf8LyucDcZD4q3ncreUM_cPdhf_JFpx+Vr4ut5vuaBHhRJWw@mail.gmail.com>
From: Aaron Cohen <aaron@assonance.org>
Date: Mon, 30 Jul 2018 22:56:20 -0400
Message-ID: <CAFSZm+hbw0kdACRpwwKuxeTEE_X8PnCOo2-RLtun43cB34gk_w@mail.gmail.com>
To: zoran.stojsavljevic@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: do_configure for socketcand package failed
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
X-List-Received-Date: Tue, 31 Jul 2018 02:56:59 -0000
Content-Type: multipart/alternative; boundary="0000000000003226a5057242bb3a"

--0000000000003226a5057242bb3a
Content-Type: text/plain; charset="UTF-8"

That configure script is looking for libconfig.

You need DEPENDS = "libconfig"

On Mon, Jul 30, 2018 at 4:20 AM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Seems, that this does work?!
> _______
>
> SUMMARY = "Socketcand ..."
> SECTION = "socketcan"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
> PR = "r0"
>
> RDEPENDS_${PN}-dev += "${PN}-staticdev"
>
> SRCREV = "df7fb4ff8a4439d7737fe2df3540e1ab7465721a"
> SRC_URI = "git://github.com/dschanoeh/socketcand.git;protocol=http"
>
> S = "${WORKDIR}/git"
>
> EXTRA_OECONF = "
> --without-config
> "
>
> inherit autotools update-alternatives
> inherit autotools-brokensep
> _______
>
> Any additional comments?
>
> Thank you,
> Zoran
>
> On Mon, Jul 30, 2018 at 8:40 AM, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> > Hello,
> >
> > I am writing the recipe for the socketcand package. It looks so far very
> simple:
> >
> > PR = "r0"
> >
> > RDEPENDS_${PN}-dev += "${PN}-staticdev"
> >
> > SRCREV = "df7fb4ff8a4439d7737fe2df3540e1ab7465721a"
> >
> > SRC_URI = "git://github.com/dschanoeh/socketcand.git;protocol=http"
> >
> > S = "${WORKDIR}/git"
> >
> > inherit autotools
> > _______
> >
> > I did install the following:
> > sudo apt-get install autoconf
> > sudo apt-get install libconfig-dev
> >
> > The error is in do_config():
> >
> > | checking for config_init in -lconfig... no
> > | configure: error: in
> >
> `/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/socketcand/1.0-r0/build':
> > | configure: error: config test failed (--without-config to disable)
> >
> > What should I include in the recipe to make it work (the both autoconf
> >  and ./configure work normally for the normal installation)???
> >
> > Thank you,
> > Zoran
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000003226a5057242bb3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That configure script is looking for libconfig.</div>=
<div><br></div><div>You need DEPENDS =3D &quot;libconfig&quot;<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Jul 30, 2018 at =
4:20 AM Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail=
.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Seems, that this does work?!<br>
_______<br>
<br>
SUMMARY =3D &quot;Socketcand ...&quot;<br>
SECTION =3D &quot;socketcan&quot;<br>
LICENSE =3D &quot;GPLv2&quot;<br>
LIC_FILES_CHKSUM =3D<br>
&quot;file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=3D801f80980d171dd6425610833a=
22dbe6&quot;<br>
PR =3D &quot;r0&quot;<br>
<br>
RDEPENDS_${PN}-dev +=3D &quot;${PN}-staticdev&quot;<br>
<br>
SRCREV =3D &quot;df7fb4ff8a4439d7737fe2df3540e1ab7465721a&quot;<br>
SRC_URI =3D &quot;git://<a href=3D"http://github.com/dschanoeh/socketcand.g=
it;protocol=3Dhttp" rel=3D"noreferrer" target=3D"_blank">github.com/dschano=
eh/socketcand.git;protocol=3Dhttp</a>&quot;<br>
<br>
S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
EXTRA_OECONF =3D &quot;<br>
--without-config<br>
&quot;<br>
<br>
inherit autotools update-alternatives<br>
inherit autotools-brokensep<br>
_______<br>
<br>
Any additional comments?<br>
<br>
Thank you,<br>
Zoran<br>
<br>
On Mon, Jul 30, 2018 at 8:40 AM, Zoran Stojsavljevic<br>
&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zora=
n.stojsavljevic@gmail.com</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am writing the recipe for the socketcand package. It looks so far ve=
ry simple:<br>
&gt;<br>
&gt; PR =3D &quot;r0&quot;<br>
&gt;<br>
&gt; RDEPENDS_${PN}-dev +=3D &quot;${PN}-staticdev&quot;<br>
&gt;<br>
&gt; SRCREV =3D &quot;df7fb4ff8a4439d7737fe2df3540e1ab7465721a&quot;<br>
&gt;<br>
&gt; SRC_URI =3D &quot;git://<a href=3D"http://github.com/dschanoeh/socketc=
and.git;protocol=3Dhttp" rel=3D"noreferrer" target=3D"_blank">github.com/ds=
chanoeh/socketcand.git;protocol=3Dhttp</a>&quot;<br>
&gt;<br>
&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;<br>
&gt; inherit autotools<br>
&gt; _______<br>
&gt;<br>
&gt; I did install the following:<br>
&gt; sudo apt-get install autoconf<br>
&gt; sudo apt-get install libconfig-dev<br>
&gt;<br>
&gt; The error is in do_config():<br>
&gt;<br>
&gt; | checking for config_init in -lconfig... no<br>
&gt; | configure: error: in<br>
&gt; `/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yoct=
o-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/socketcand/1=
.0-r0/build&#39;:<br>
&gt; | configure: error: config test failed (--without-config to disable)<b=
r>
&gt;<br>
&gt; What should I include in the recipe to make it work (the both autoconf=
<br>
&gt;=C2=A0 and ./configure work normally for the normal installation)???<br=
>
&gt;<br>
&gt; Thank you,<br>
&gt; Zoran<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000003226a5057242bb3a--
