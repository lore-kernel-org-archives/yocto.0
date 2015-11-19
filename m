Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04920E00985; Thu, 19 Nov 2015 00:45:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F455E007DA
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 00:45:55 -0800 (PST)
Received: by lbbsy6 with SMTP id sy6so39238984lbb.2
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 00:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=pEUhBBSYs0a9Y7/z/Y7SXH//v85a7uaVQ9gdUAj7W/A=;
	b=pUKWuOOMtor2CdAwFpAuQbbJAdE2spz6uAN9VuM7x6yM1k3jXFJdOtw/uoFGMmr9gt
	nkmc1TTi7HmWYLubFf8a5iEZM9a7bVVb22HVIRiVaFdi4qcvxNbjKJ4j70m4d8JtTHit
	C4Dv7KMWz8o/hI+kU7f4bHZzieFX41ZDubEUNHF4IArYhii7WlbIoDzf0TH6DuUEic9v
	W6hYES5YJJ0MYJaQrQDP5aW5uT2cnHFUUrzHItTsCho+ji5XIvg0cDfkmDqN22KUKuio
	OFQKZ+BtzzJLOodmCBJCpmRUnFj7bxQJduDl8J8ULHIE7dTDSzgTCe5JYLjpYgwnCTid
	b+6g==
MIME-Version: 1.0
X-Received: by 10.112.135.136 with SMTP id ps8mr2276980lbb.38.1447922754052;
	Thu, 19 Nov 2015 00:45:54 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Thu, 19 Nov 2015 00:45:54 -0800 (PST)
In-Reply-To: <CAMKF1sqPTa8B6BbV2k3RAx0SJ3k4zZBRLQCvFwOW25Q+MJjGaQ@mail.gmail.com>
References: <CABatt_y2weW-YiHJP_Si9_Qk-xP0DxOuLfLZXsAjFy2q_Ph6Yw@mail.gmail.com>
	<CAMKF1sqPTa8B6BbV2k3RAx0SJ3k4zZBRLQCvFwOW25Q+MJjGaQ@mail.gmail.com>
Date: Thu, 19 Nov 2015 08:45:54 +0000
Message-ID: <CABatt_yshpHYr1zjZmSxOq=sRp9bDKZvo0J=Asr3GPsWRi6KWA@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, yocto@yoctoproject.org
Subject: Re: aclocal warnings
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
X-List-Received-Date: Thu, 19 Nov 2015 08:45:57 -0000
Content-Type: multipart/alternative; boundary=089e011607126aebc10524e0c9e6

--089e011607126aebc10524e0c9e6
Content-Type: text/plain; charset=UTF-8

Hi,

It's just a warning which I can suppress with export LANG=C, autotools is
working fine with the SDK after a bit of tweaking in the ac and am files.

Cheers,
Martin.


On Thu, Nov 19, 2015 at 7:03 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Nov 18, 2015 at 1:23 AM, Martin Townsend
> <mtownsend1973@gmail.com> wrote:
> > Hi,
> >
> > I've created an autotools project to test out my SDK I've generated.  The
> > SDK was generated from a Yocto build system based the Fido branch.
> > After souring the environment setup file in the SDK, running aclocal I
> get
> > the following warnings
> > perl: warning: Setting locale failed.
> > perl: warning: Please check that your locale settings:
> >     LANGUAGE = "en_GB:en",
> >     LC_ALL = (unset),
> >     LANG = "en_GB.UTF-8"
> >     are supported and installed on your system.
> > perl: warning: Falling back to the standard locale ("C").
> > perl: warning: Setting locale failed.
> > perl: warning: Please check that your locale settings:
> >     LANGUAGE = "en_GB:en",
> >     LC_ALL = (unset),
> >     LANG = "en_GB.UTF-8"
> >     are supported and installed on your system.
> > perl: warning: Falling back to the standard locale ("C").
> >
> > If I take the same project and build for the host aclocal works fine.
> >
> > Does anyone know what I can do to fix this in the SDK? even a hint as to
> > where to look would be appreciated.
>
> its using perl from SDK it seems and we dont have all locales
> installed in SDK. Do you see any problems due to this ?
> or is it just a warning
>
> >
> > Many Thanks,
> > Martin.
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--089e011607126aebc10524e0c9e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br><div>It&#39;s just a warning which I can suppr=
ess with export LANG=3DC, autotools is working fine with the SDK after a bi=
t of tweaking in the ac and am files.</div><div><br></div><div>Cheers,</div=
><div>Martin.</div><div><br></div></div></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On Thu, Nov 19, 2015 at 7:03 AM, Khem Raj <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">r=
aj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">O=
n Wed, Nov 18, 2015 at 1:23 AM, Martin Townsend<br>
&lt;<a href=3D"mailto:mtownsend1973@gmail.com">mtownsend1973@gmail.com</a>&=
gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;ve created an autotools project to test out my SDK I&#39;ve gene=
rated.=C2=A0 The<br>
&gt; SDK was generated from a Yocto build system based the Fido branch.<br>
&gt; After souring the environment setup file in the SDK, running aclocal I=
 get<br>
&gt; the following warnings<br>
&gt; perl: warning: Setting locale failed.<br>
&gt; perl: warning: Please check that your locale settings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0LANGUAGE =3D &quot;en_GB:en&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0LC_ALL =3D (unset),<br>
&gt;=C2=A0 =C2=A0 =C2=A0LANG =3D &quot;en_GB.UTF-8&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0are supported and installed on your system.<br>
&gt; perl: warning: Falling back to the standard locale (&quot;C&quot;).<br=
>
&gt; perl: warning: Setting locale failed.<br>
&gt; perl: warning: Please check that your locale settings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0LANGUAGE =3D &quot;en_GB:en&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0LC_ALL =3D (unset),<br>
&gt;=C2=A0 =C2=A0 =C2=A0LANG =3D &quot;en_GB.UTF-8&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0are supported and installed on your system.<br>
&gt; perl: warning: Falling back to the standard locale (&quot;C&quot;).<br=
>
&gt;<br>
&gt; If I take the same project and build for the host aclocal works fine.<=
br>
&gt;<br>
&gt; Does anyone know what I can do to fix this in the SDK? even a hint as =
to<br>
&gt; where to look would be appreciated.<br>
<br>
its using perl from SDK it seems and we dont have all locales<br>
installed in SDK. Do you see any problems due to this ?<br>
or is it just a warning<br>
<br>
&gt;<br>
&gt; Many Thanks,<br>
&gt; Martin.<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>

--089e011607126aebc10524e0c9e6--
