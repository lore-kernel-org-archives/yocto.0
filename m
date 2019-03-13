Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D795E00DAF; Wed, 13 Mar 2019 08:15:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 854B7E0048C
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2019 08:15:09 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id p1so1746424lfk.9
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2019 08:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=4vd4g+V+ZqClfOyPzVMKH9EoIKLS66vxxrRu69FPwIs=;
	b=js+d0eiKh04jZWQxOt2vuZpx7zdXtVJ3eGJqlokzroCDz/WuYeTGaedVYc5qRZWr/c
	SfF0fD5VltX+Q6xXbybY4ZoE3ACuxpvVUttyxI/7dmw1PbqSwhIofW7Uy3PesLXu7ymH
	mEwgeKuH/x5/jiBv02Y2GGE9yNnaNWylF3bHYB0monFOuk/OK9YROgP9cOVrdUnV10Sd
	JT3226QXBeA+3wxSKrkqdzZeSHowkLzSTX3NnqmsrT/Myilo3yqAS9mlvD3nk9+oBLve
	RBGuY6BksEVIkb1EJ9eYHbgFFX/rqQ0NThkenZPH548JicmQk4uO+TiqZTXbr5hcIThL
	4ovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=4vd4g+V+ZqClfOyPzVMKH9EoIKLS66vxxrRu69FPwIs=;
	b=PYT3pwgx+aL6drqQ9Msuhs20nLMzk2DUdF1D9TpAZHyue4hZT/kTuBLf+pVQ2aC1Cd
	r5cULo2fTYmf0A2pqj7rPTAmWermgviiVcGQdartkcrn542Ia8AAgUfS+6k2Huz4RPZL
	NIE8HYfaFEoabgI5JPJZyWvTkrkuuIMDKngW65UjuKzCHuOxhEpnPeEYeMaxmygmJJvZ
	44v2jgW2+v+c0ILuK/s70LpkEIkxz+pBxLexDOGGidmJHmjpV6JAaxoB0rXOrbRntByW
	sw+7BSpNQHTDqkX9ggv6rI43SwBUHmQqHttz1fgQJphTTdTdk0/loT1xz5p0CvgN7RK9
	1fmQ==
X-Gm-Message-State: APjAAAWe2kJMoElEQMU5InahXiGfdcRyNBaDO+Hstbjla4R7q7ZT99oo
	59gVTm+jSl+AuMd6y74FZk20XDuAy+kwk8/Eni8fvA==
X-Google-Smtp-Source: APXvYqwqT0UjdtXFYI19mwyrSnRahFGMo+bg/U4sWMdDu+9T/Rhs8DSFZeMMvhHlDDIdsiKDun908Sx1HYV9PqCgL9s=
X-Received: by 2002:a19:6609:: with SMTP id a9mr24454646lfc.47.1552490107745; 
	Wed, 13 Mar 2019 08:15:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
	<A2A9E37E9C946847B2258F923F7CFE42047B38BE@GOEMAIL-Server2.goerlitz.int>
	<6rh8ceu2rn.fsf@pengutronix.de>
In-Reply-To: <6rh8ceu2rn.fsf@pengutronix.de>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Wed, 13 Mar 2019 16:14:55 +0100
Message-ID: <CAAx3WaDQKbNg0tXZd07s8i_5PTDVctuOcScDMDbXFMmotjoJpw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Multiple ubifs partition
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
X-List-Received-Date: Wed, 13 Mar 2019 15:15:10 -0000
Content-Type: multipart/alternative; boundary="00000000000063c2460583fb4560"

--00000000000063c2460583fb4560
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

thank you very much for the suggestion, I will check genimage and test it.

Gabriele

Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =C3=96lmann <
u.oelmann@pengutronix.de> ha scritto:

> Hi there,
>
> On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten <
> Carsten.Stelling2@goerlitz.com> wrote:
> > Have you seen https://github.com/pengutronix/genimage?
>
> you can find it included within https://github.com/pengutronix/meta-ptx
> with an accompanying genimage.bbclass.
>
> Best regards
> Ulrich
>
> > Regards,
> >
> > Carsten
> >
> > Von: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] Im Auftrag von Gabriele Zampieri
> > Gesendet: Montag, 4. M=C3=A4rz 2019 12:17
> > An: yocto@yoctoproject.org
> > Betreff: [yocto] Multiple ubifs partition
> >
> > Hi all,
> >
> > I'm trying to build a distribution that has multiple partitions. The
> desiderata is something like:
> >
> > - rootfs.ubifs mounted on /
> > - data.ubifs mounted on /data
> > - opt.ubifs mounted on /opt
> >
> > I was wondering if there is a standard way to achieve the goal. I see
> that there is a tool called wic, but it does not seems to support ubifs. =
I
> could post process the tarball image and doing stuff with my scripts, but
> I'd prefer doing this in a single bitbake run. Can you suggest something?
> >
> > Thanks,
> > Gabriele
>
>
> --
> Pengutronix e.K.                           | Ulrich =C3=96lmann          =
     |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  =
|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>

--00000000000063c2460583fb4560
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>thank you very =
much for the suggestion, I will check genimage and test it.</div><div><br><=
/div><div>Gabriele<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =C3=96=
lmann &lt;<a href=3D"mailto:u.oelmann@pengutronix.de">u.oelmann@pengutronix=
.de</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">Hi there,<br>
<br>
On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten &lt;<a href=3D"mailto=
:Carsten.Stelling2@goerlitz.com" target=3D"_blank">Carsten.Stelling2@goerli=
tz.com</a>&gt; wrote:<br>
&gt; Have you seen <a href=3D"https://github.com/pengutronix/genimage" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/pengutronix/genimage</=
a>?<br>
<br>
you can find it included within <a href=3D"https://github.com/pengutronix/m=
eta-ptx" rel=3D"noreferrer" target=3D"_blank">https://github.com/pengutroni=
x/meta-ptx</a><br>
with an accompanying genimage.bbclass.<br>
<br>
Best regards<br>
Ulrich<br>
<br>
&gt; Regards,<br>
&gt;<br>
&gt; Carsten<br>
&gt;<br>
&gt; Von: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blan=
k">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounc=
es@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] =
Im Auftrag von Gabriele Zampieri<br>
&gt; Gesendet: Montag, 4. M=C3=A4rz 2019 12:17<br>
&gt; An: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt; Betreff: [yocto] Multiple ubifs partition<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I&#39;m trying to build a distribution that has multiple partitions. T=
he desiderata is something like:<br>
&gt;<br>
&gt; - rootfs.ubifs mounted on /<br>
&gt; - data.ubifs mounted on /data<br>
&gt; - opt.ubifs mounted on /opt<br>
&gt;<br>
&gt; I was wondering if there is a standard way to achieve the goal. I see =
that there is a tool called wic, but it does not seems to support ubifs. I =
could post process the tarball image and doing stuff with my scripts, but I=
&#39;d prefer doing this in a single bitbake run. Can you suggest something=
?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Gabriele<br>
<br>
<br>
--<br>
Pengutronix e.K.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Ulrich =C3=96lmann=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
Industrial Linux Solutions=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| <a href=3D"http://www.pengutronix.de/" rel=3D"noreferrer" ta=
rget=3D"_blank">http://www.pengutronix.de/</a>=C2=A0 |<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0=C2=A0=
 =C2=A0 |<br>
Amtsgericht Hildesheim, HRA 2686=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =
Fax:=C2=A0 =C2=A0+49-5121-206917-5555 |<br>
</blockquote></div></div>

--00000000000063c2460583fb4560--
