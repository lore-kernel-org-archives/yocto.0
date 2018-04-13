Return-Path: <richard.collins@guidedknowledge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B527E00B01; Fri, 13 Apr 2018 00:59:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f47.google.com (mail-pl0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B1E8E00857
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 00:59:05 -0700 (PDT)
Received: by mail-pl0-f47.google.com with SMTP id c7-v6so5652877plr.5
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 00:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=guidedknowledge-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=kRcIiiaVSQkScButv+nGke5g5LeFE6Uui2zv8IxxTVI=;
	b=gPdSmBT8LvGnRBuPvJ1/TDtOAYdDCJ+2vsA+ta7sDd51yzcDHMwe+nLGi4qfP4fKEf
	tiKz6dla1Ga4UZlNPJr8UDgMKDUymeLVtaRcUNbJt7ZCvPnnZrUP6YG20ULHnDuqnqbB
	Y9K3VOXH6yph6D5W1mUfaDdPslPKYqWdsNUk8dzAq8Nd7Eo+Z1o8u8dxZSq5JkRfd/zh
	qt/7Fm8HPkaeJ/W2bl7CNTsGutycoYkZ3fC4rZkAi9BkvUwPl2EXR5f3ElVFtNLkEXlQ
	VAbSh6c7OxCiU8vv1QEVpoi5e+REfLWoQkO16UFh4SmTXIZmwly+verSPak1ZWuJf0cB
	x95g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=kRcIiiaVSQkScButv+nGke5g5LeFE6Uui2zv8IxxTVI=;
	b=IPUBr/aE4oeWm+jLESpPgtL82jZ7nRJGLCHDBpzeESSMy/NlKHk4JU+yw8nZPhQr69
	Xmt/c+KXMW5KdZ7NsEQjrRWHJLQBi1HbYzLPnQiOx5MCd0Icos9mYn7LLN3nlmeIDqtX
	VCM01y1pvA2RK1/YvhkoowZBR2tjQZzXvvwDDYVgMfJimGWWzvPyl6ZLNvepagCe7YBL
	40t+ngqpa+8SgM2O74+sDKjNho2ITL4gk3qj2Sna1uv7X5Jy4pR9X67+gX3w54NNlDev
	Oh15at6VpNCLFl8vpsGwYdxxC74bscWA4BqjAwohz4wDU2pSNRau0bngSo9FfZUiT9Ei
	JWEA==
X-Gm-Message-State: ALQs6tDyB+Oe50l6Nq84j38L5CbLcCAv9t6tNOYhq1EcvAA0r5teX0Cs
	LlsG7WbmbXg+SH9w0yzwhVejPEBCkojs0/tAnBF4EQ==
X-Google-Smtp-Source: AIpwx48U8+95olc5BRG4SV6XpQO3avT+chO6IAoaQAL3kXgA83yUk4eoQzxgzPY6UQO6WIwxNVZQ3N1cB7HQes2Jamg=
X-Received: by 2002:a17:902:6bc1:: with SMTP id
	m1-v6mr4232705plt.366.1523606345338; 
	Fri, 13 Apr 2018 00:59:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.164.199 with HTTP; Fri, 13 Apr 2018 00:59:04 -0700 (PDT)
In-Reply-To: <20180412184546.75r7dmfuy7epgnli@jholzmayr.localdomain>
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
	<37b0eb72-940b-71bb-a3e5-50857e490a2f@linux.intel.com>
	<CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
	<20180412184546.75r7dmfuy7epgnli@jholzmayr.localdomain>
From: Richard Collins <richard.collins@guidedknowledge.com>
Date: Fri, 13 Apr 2018 08:59:04 +0100
Message-ID: <CAD-1PJgoZWihtRyUyz+oJLEDGnK2TmQEU=ygvbPdfQfwoEw2-g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Fri, 13 Apr 2018 07:59:07 -0000
Content-Type: multipart/alternative; boundary="000000000000fde42d0569b63e8d"

--000000000000fde42d0569b63e8d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the help. :)

Yes they are Phytec boards. I have inherited the project from a 3rd party
and so in the mids of chasing up the support contacts and our account
details for their site. I'm sure you've all played the "Q) What are the
support / login details? A) I don't know, ask X, ask Y, ask Z.,
ask............" development game. ;)

On 12 April 2018 at 19:45, Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
wrote:

> On Thu, Apr 12, 2018 at 01:11:17PM +0100, Richard Collins wrote:
> > I get the following for DISTRO.
> >
> > DISTRO            =3D "yogurt"
> > DISTRO_VERSION    =3D "BSP-Yocto-RK3288-PD17.1.1"
> >
>
> For further reference by anyone who is reading this in the archive: the
> supplier is Phytec, and the distro layer is here:
> https://git.phytec.de/meta-yogurt/
>
> Greetz
> --
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Josef Holzmayr
> Software Developer Embedded Systems
>
> Tel: +49 8444 9204-48
> Fax: +49 8444 9204-50
>
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> www.rsi-elektrotechnik.de
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> Ust-IdNr: DE 128592548
>
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548
>
>

--000000000000fde42d0569b63e8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the help. :)=C2=A0<div><br></div><div>Yes they =
are Phytec boards. I have inherited the project from a 3rd party and so in =
the mids of chasing up the support contacts and our account details for the=
ir site. I&#39;m sure you&#39;ve all played the &quot;Q) What are the suppo=
rt / login details? A) I don&#39;t know, ask X, ask Y, ask Z., ask.........=
...&quot; development game. ;)</div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On 12 April 2018 at 19:45, Josef Holzmayr <span di=
r=3D"ltr">&lt;<a href=3D"mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_=
blank">holzmayr@rsi-elektrotechnik.de</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><span class=3D"">On Thu, Apr 12, 2018 at 01:11:17PM +010=
0, Richard Collins wrote:<br>
&gt; I get the following for DISTRO.<br>
&gt; <br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;yogurt&quot;=
<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;BSP-Yocto-RK3288-PD17.1.1&quot;<=
br>
&gt; <br>
<br>
</span>For further reference by anyone who is reading this in the archive: =
the<br>
supplier is Phytec, and the distro layer is here: <a href=3D"https://git.ph=
ytec.de/meta-yogurt/" rel=3D"noreferrer" target=3D"_blank">https://git.phyt=
ec.de/meta-<wbr>yogurt/</a><br>
<br>
Greetz<br>
-- <br>
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
Josef Holzmayr<br>
Software Developer Embedded Systems<br>
<br>
Tel: +49 8444 9204-48<br>
Fax: +49 8444 9204-50<br>
<br>
R-S-I Elektrotechnik GmbH &amp; Co. KG<br>
Woelkestrasse 11<br>
D-85301 Schweitenkirchen<br>
<a href=3D"http://www.rsi-elektrotechnik.de" rel=3D"noreferrer" target=3D"_=
blank">www.rsi-elektrotechnik.de</a><br>
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393<=
br>
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
Ust-IdNr: DE 128592548 <br>
<br>
______________________________<wbr>______________________________<wbr>_<br>
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363<br>
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
USt-IdNr.: DE 128592548<br>
<br>
</blockquote></div><br></div>

--000000000000fde42d0569b63e8d--
