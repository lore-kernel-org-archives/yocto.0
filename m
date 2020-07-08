Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5940.1594193560757436313
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jul 2020 00:32:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=E8UpRrGe;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EA6DE01E22; Wed,  8 Jul 2020 00:32:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96798E01DE2
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2020 00:32:37 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id rk21so49295170ejb.2
        for <yocto@yoctoproject.org>; Wed, 08 Jul 2020 00:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HiQKG+cps1JYKeptUsesMXo19Pbf0PBUBxOcX+JTUlA=;
        b=E8UpRrGe+O4/YCc3fN3BWVqrZ6XL9QACtzs/MuvAAGWwyjBPD5BUE2oaONr/I+EDY7
         7rx4mwqepJ6Hx9ebBBm1wg0zaiXS55e3OvDyWdinVeyYNdkTLvHS9OLNx+m/6zwP8Xlk
         KR6Oq8gtRAgg+N/jtAyTBaNYveO7vIVTHgiwBWNmuVKK1OWmSfsRtuXd1Ew2c7OrMqhF
         xNPy57oXn1nS6WyJ/X8mGV4A/yS+z9hoh8DvgqFcHw+8QFEqEwGAAilOfeUnut1Vdw8C
         PGT84WYTv/1zuphQBksSOsF3owtsYvH+fLjcKlYCRgD3JU7TV4dVBKjHvum45kjZ+dy+
         JZTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HiQKG+cps1JYKeptUsesMXo19Pbf0PBUBxOcX+JTUlA=;
        b=aaAH19RoE54hBbtbAb8+G0ZHXeHtii/S/87O64kkz9At/7PWNcl009n5guVkXU20Ew
         q+yfVl/G3J5DudBpiHcaPl/JrC/X17fVi/bVGwGg81ugHZZmtVP1cR5UFCMDD04QB1DN
         yAolzhNHGZIb3HjUF4Rg7kso7f1RgYESiLWOVHxrsfCTg8MT2TTlSM/O5YLXAjk8yqwH
         vxbrJrH1+8b0HRhCEmgzvFCWHuk5SHGez1qs3QmjMuIspLO8w/o5oxIm+aCvr5GmIvoJ
         JRkhD8Orbqva+JGbxMZi73ArgE/y5gFW+ccxV1Pm+2b2NmJ+4LHb2qcP79vIdwMRRTm/
         N9DQ==
X-Gm-Message-State: AOAM530he47hgVXTuoo+H2imp7MeFGRomRD+skIcQ1zbnl6VKgDpMyqm
	9yoJa79lWRVhofW66o0K5iRf6EcE8HQagDzM+y4=
X-Google-Smtp-Source: ABdhPJxx4PhIehn6sUnFNaEvRSArpTfKuJEXVcD0isYOF2zfj0Jm8s4GxydRpdX8mXeNoX5svRuVFMAoYn6y92AzFw8=
X-Received: by 2002:a17:906:940f:: with SMTP id q15mr51808414ejx.470.1594193557176;
 Wed, 08 Jul 2020 00:32:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAOf5uwnAymAOBo+BpJ_zrunMmG8-TmqRyvXsAr+SnLqGNi6E=w@mail.gmail.com>
 <CA+chaQcu4hZAG8mjgLhi_0=1hfqy6Gbt5acwvaEy3kz3VHQn0A@mail.gmail.com> <CAOf5uwkAVbia5tr+cgvkmZh7+afBCqStSnKWw8oJHEnyw1TbVg@mail.gmail.com>
In-Reply-To: <CAOf5uwkAVbia5tr+cgvkmZh7+afBCqStSnKWw8oJHEnyw1TbVg@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 8 Jul 2020 09:32:25 +0200
Message-ID: <CA+chaQeJeDW-L_XxyfR9Z2Jr=RgMwffH7xeHrnR2zwmZYRWTmg@mail.gmail.com>
Subject: Re: [yocto] iso-codes project
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000adc5ea05a9e91cf4"

--000000000000adc5ea05a9e91cf4
Content-Type: text/plain; charset="UTF-8"

Hi,

having both would be useful, but you have to ask upstream iso-codes
developers why they also removed master, OE DL_DIR just followed what they
did in upstream, which unfortunately includes pruning the master branch,
still referenced by older releases.

Cheers,

On Wed, Jul 8, 2020 at 8:55 AM Michael Nazzareno Trimarchi <
michael@amarulasolutions.com> wrote:

> Hi Martin
>
> On Wed, Jul 8, 2020 at 8:36 AM Martin Jansa <martin.jansa@gmail.com>
> wrote:
> >
> > Hi,
> >
> > it's know issue already fixed in master, see
> > https://lists.openembedded.org/g/openembedded-architecture/message/1108
> > thud is pretty much out of support and probably won't be fixed there,
> you should be able to easily fix it from .bbappend in one of your layers.
> >
>
> Why just don't continue to have both? I think was even re-history. I
> will give a try
>
> Michael
>
> > Regards,
> >
> > On Wed, Jul 8, 2020 at 7:57 AM Michael Nazzareno Trimarchi <
> michael@amarulasolutions.com> wrote:
> >>
> >> Hi all
> >>
> >> anyone has problem on iso-codes in thud. Seems that project was
> >> changed and not possible to download with the actual configuration
> >>
> >> Michael
> >>
> >> --
> >> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> >> | COO  -  Founder                                      Cruquiuskade 47 |
> >> | +31(0)851119172                                 Amsterdam 1018 AM NL |
> >> |                  [`as] http://www.amarulasolutions.com
>  |
> >> 
>
>
>
> --
> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> | COO  -  Founder                                      Cruquiuskade 47 |
> | +31(0)851119172                                 Amsterdam 1018 AM NL |
> |                  [`as] http://www.amarulasolutions.com               |
>

--000000000000adc5ea05a9e91cf4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>having both would be useful, but yo=
u have to ask upstream iso-codes developers why they also removed master, O=
E DL_DIR just followed what they did in upstream, which unfortunately inclu=
des pruning the master branch, still referenced by older releases.</div><di=
v><br></div><div>Cheers,</div></div><br><div class=3D"gmail_quote"><div dir=
=
=3D"ltr" class=3D"gmail_attr">On Wed, Jul 8, 2020 at 8:55 AM Michael Nazza=
reno Trimarchi &lt;<a href=3D"mailto:michael@amarulasolutions.com">michael@=
amarulasolutions.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi Martin<br>
<br>
On Wed, Jul 8, 2020 at 8:36 AM Martin Jansa &lt;<a href=3D"mailto:martin.j=
ansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; it&#39;s know issue already fixed in master, see<br>
&gt; <a href=3D"https://lists.openembedded.org/g/openembedded-architecture=
/message/1108" rel=3D"noreferrer" target=3D"_blank">https://lists.openembed=
ded.org/g/openembedded-architecture/message/1108</a><br>
&gt; thud is pretty much out of support and probably won&#39;t be fixed th=
ere, you should be able to easily fix it from .bbappend in one of your laye=
rs.<br>
&gt;<br>
<br>
Why just don&#39;t continue to have both? I think was even re-history. I<b=
r>
will give a try<br>
<br>
Michael<br>
<br>
&gt; Regards,<br>
&gt;<br>
&gt; On Wed, Jul 8, 2020 at 7:57 AM Michael Nazzareno Trimarchi &lt;<a hre=
f=3D"mailto:michael@amarulasolutions.com" target=3D"_blank">michael@amarula=
solutions.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi all<br>
&gt;&gt;<br>
&gt;&gt; anyone has problem on iso-codes in thud. Seems that project was<b=
r>
&gt;&gt; changed and not possible to download with the actual configuratio=
n<br>
&gt;&gt;<br>
&gt;&gt; Michael<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; | Michael Nazzareno Trimarchi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Amarula Solutions BV |<br>
&gt;&gt; | COO=C2=A0 -=C2=A0 Founder=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 Cruquiuskade 47 |<br>
&gt;&gt; | +31(0)851119172=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Amste=
rdam 1018 AM NL |<br>
&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [=
`as] <a href=3D"http://www.amarulasolutions.com" rel=3D"noreferrer" target=
=3D"_blank">http://www.amarulasolutions.com</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt;&gt; <br>
<br>
<br>
<br>
-- <br>
| Michael Nazzareno Trimarchi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Amarula Solutions BV |<br>
| COO=C2=A0 -=C2=A0 Founder=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 Cruquiuskade 47 |<br>
| +31(0)851119172=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Amsterdam 10=
18 AM NL |<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [`as] <a h=
ref=3D"http://www.amarulasolutions.com" rel=3D"noreferrer" target=3D"_blank=
">http://www.amarulasolutions.com</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0|<br>
</blockquote></div>

--000000000000adc5ea05a9e91cf4--
