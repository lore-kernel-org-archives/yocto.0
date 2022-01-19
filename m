Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39165C433EF
	for <webhook@archiver.kernel.org>; Wed, 19 Jan 2022 23:30:00 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.4472.1642634999011836929
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 15:29:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=El95emhl;
 spf=pass (domain: gmail.com, ip: 209.85.167.44,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id o15so14494260lfo.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 15:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2sPVUhkFEz29Uq/7ehlUftohc0o/V6ROMuaW8mhcssA=;
        b=El95emhlmRVyP9e+UkQHzzGmqkeugYXTUB/O+LMWtu1+SJXAmiRTW6k6yBi0DARjvi
         8VSfC7uzKLR/qLKNvxztajrn38VlzKzWIGDeR7bVcZg9wXL1nM5OisxFyM+V+RLC5sVM
         uvRfYJAPh6PQcRnD+2NS4Cii25QrjV2lTnmgx7wV3OXJmdE0AuosFCSpuc0ZK1rfLThu
         E8A9blfNyKOSApApEO1CIJhtv8K9T9DABznfksvYR3uCl43tGbe7ZV5hqeMgT/Qsl33a
         mL6QFQRp1CecYcyGkAxDbAqTmPKcRhPAvYnUklu9R7oFI1yjJyAs4y1R57eQ8A/R6Zbl
         T5AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2sPVUhkFEz29Uq/7ehlUftohc0o/V6ROMuaW8mhcssA=;
        b=bBy3dEZhBpg8RpS7XXoV0U1xqGfiKzw+JxgpZyxb1aFZRGu24pvkWm8r9Ll6U9Z/u0
         iVtW3/7FtC+P4dyFAgHqIOvEqH+BswGGS5m1PagfFkieBrY9MiFwSzgCdAAycN2AtJ9a
         jPMwvwnK+g/I3z1qTQtF70yhYZ5HqJme+HcxzjyVpbXxCOMpR7fSuIrcuTTAc5EU6Tg8
         nduSiAq85gGVu0Ir2HB47fSoHQhQJOL5mAy4kbTphYI73Zl80DlSz4VGExA1+qYbgoRs
         JdrCm87E7xnACrn4QWyidlILNt8psFFMPp9h3EK1sTe+wAgg/RPwuX/L+Sxcm6CE8CWP
         5FMQ==
X-Gm-Message-State: AOAM5327udNbShxd67ipGWzqRgwYXolSY6Nzls2+0folU5Oqe8CgoEkd
	Ky/3GLGt3I2ue8IQLjanOBypXfup+kDvQXFPxB4=
X-Google-Smtp-Source: 
 ABdhPJwJglgE9B3tkT8OsehhAF2Xiui/UC4UZD4YtWj84kI5qIm8pPM5Br2v7IXW3+5sYbD5nroVkn9WdtWfgAvABhc=
X-Received: by 2002:a19:f803:: with SMTP id a3mr28416521lff.95.1642634997124;
 Wed, 19 Jan 2022 15:29:57 -0800 (PST)
MIME-Version: 1.0
References: <b4336117-2693-c1f4-30fb-08b92a5e5e1a@bootlin.com>
 <CANPvuR=fxxv_aFFJvo0y265r8NrpFwTevx33sdoTkZYdsP5YAA@mail.gmail.com>
 <9963686e-1acb-2cf0-a33b-74713ab99b51@bootlin.com>
 <a7a99ebd18e88097a0967fe8ab40f08ad4c5b028.camel@linuxfoundation.org>
 <f2eec148-ea04-eeec-f765-f6448504a649@bootlin.com>
In-Reply-To: <f2eec148-ea04-eeec-f765-f6448504a649@bootlin.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 19 Jan 2022 23:29:46 +0000
Message-ID: 
 <CANPvuR=2Ei6wtyn8ivBmR6YRm2qaACFpevEN43D8F1h=qY=3kg@mail.gmail.com>
Subject: Re: [yocto] Red alert but apparently harmless setscene errors
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="0000000000007fd25705d5f7c3af"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jan 2022 23:30:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55924

--0000000000007fd25705d5f7c3af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have tested the state mirror locally with my own http mirror and it works
perfectly.
There are no problems with the concurrent connections.
I'm more sure that the root cause is some bandwidth/connection limitation
on the http YP mirror.

Jose

Michael Opdenacker <michael.opdenacker@bootlin.com> escreveu no dia sexta,
14/01/2022 =C3=A0(s) 19:16:

>
> On 1/13/22 10:53 PM, Richard Purdie wrote:
> > On Thu, 2022-01-13 at 19:37 +0100, Michael Opdenacker wrote:
> >> Hi Jose,
> >>
> >> Thanks for your advice!
> >>
> >> On 1/13/22 6:37 PM, Jose Quaresma wrote:
> >>> Hi,
> >>>
> >>> I've seen the same for some time now when building core-image-minimal
> >>> with yocto state mirror and hashequiv servers.
> >>>
> >>> After some investigation I think the root cause is some
> >>> bandwidth/connection limitation on the http yocto mirror.
> >>>
> >>> Reducing the BB_NUMBER_THREADS=3D"1" to a single core solves many of =
the
> >>> fetch issues for me,
> >>> my config is the default one with:
> >>>
> >>>   BB_NUMBER_THREADS=3D"1"
> >>>   SSTATE_MIRRORS =3D "file://.*
> >>> http://sstate.yoctoproject.org/dev/PATH;downloadfilename=3DPATH
> >>> <http://sstate.yoctoproject.org/dev/PATH;downloadfilename=3DPATH>"
> >>>   BB_HASHSERVE_UPSTREAM =3D "typhoon.yocto.io:8687
> >>> <http://typhoon.yocto.io:8687>"
> >>
> >> Oops, it seems you're right. I have the same SSTATE_MIRRORS and
> >> BB_HASHSERVE_UPSTREAM settings as you do, and adding
> >> BB_NUMBER_THREADS=3D"1" makes the errors disappear.
> >>
> >> It seems I should file a bug about that. The error messages just menti=
on
> >> local paths, not remote ones, so it sounds like a local issue while it=
's
> >> apparently not.
> > That is useful to debug it but suggests there is an issue with concurre=
nt
> > connections to the YP server.
> >
> > I think we should have an open bug and get Michael Halstead's input on
> this.
>
>
> Done: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14690
> Thanks for your advice.
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000007fd25705d5f7c3af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div>I have tested the state mirro=
r locally with my own http mirror and it works perfectly.<div>There are no =
problems with the=C2=A0<span style=3D"color:rgb(0,0,0)">concurrent=C2=A0</s=
pan><span style=3D"color:rgb(0,0,0)">connections.</span></div><div>I&#39;m =
more sure that the root cause is some=C2=A0bandwidth/connection limitation =
on the http YP mirror.<span style=3D"color:rgb(0,0,0)"><br></span></div><di=
v><br></div><div>Jose</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">Michael Opdenacker &lt;<a href=3D"mailto:michael=
.opdenacker@bootlin.com">michael.opdenacker@bootlin.com</a>&gt; escreveu no=
 dia sexta, 14/01/2022 =C3=A0(s) 19:16:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><br>
On 1/13/22 10:53 PM, Richard Purdie wrote:<br>
&gt; On Thu, 2022-01-13 at 19:37 +0100, Michael Opdenacker wrote:<br>
&gt;&gt; Hi Jose,<br>
&gt;&gt;<br>
&gt;&gt; Thanks for your advice!<br>
&gt;&gt;<br>
&gt;&gt; On 1/13/22 6:37 PM, Jose Quaresma wrote:<br>
&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I&#39;ve seen the same for some time now when=C2=A0building=C2=
=A0core-image-minimal<br>
&gt;&gt;&gt; with yocto state=C2=A0mirror and hashequiv servers.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; After some investigation I think the root cause is some<br>
&gt;&gt;&gt; bandwidth/connection=C2=A0limitation on the http yocto mirror.=
<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Reducing the=C2=A0BB_NUMBER_THREADS=3D&quot;1&quot; to a singl=
e core solves many of the<br>
&gt;&gt;&gt; fetch issues for me,<br>
&gt;&gt;&gt; my config is the default one with:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =C2=A0 BB_NUMBER_THREADS=3D&quot;1&quot;<br>
&gt;&gt;&gt; =C2=A0 SSTATE_MIRRORS =3D &quot;file://.*<br>
&gt;&gt;&gt; <a href=3D"http://sstate.yoctoproject.org/dev/PATH;downloadfil=
ename=3DPATH" rel=3D"noreferrer" target=3D"_blank">http://sstate.yoctoproje=
ct.org/dev/PATH;downloadfilename=3DPATH</a><br>
&gt;&gt;&gt; &lt;<a href=3D"http://sstate.yoctoproject.org/dev/PATH;downloa=
dfilename=3DPATH" rel=3D"noreferrer" target=3D"_blank">http://sstate.yoctop=
roject.org/dev/PATH;downloadfilename=3DPATH</a>&gt;&quot;<br>
&gt;&gt;&gt; =C2=A0 BB_HASHSERVE_UPSTREAM =3D &quot;<a href=3D"http://typho=
on.yocto.io:8687" rel=3D"noreferrer" target=3D"_blank">typhoon.yocto.io:868=
7</a><br>
&gt;&gt;&gt; &lt;<a href=3D"http://typhoon.yocto.io:8687" rel=3D"noreferrer=
" target=3D"_blank">http://typhoon.yocto.io:8687</a>&gt;&quot;<br>
&gt;&gt;<br>
&gt;&gt; Oops, it seems you&#39;re right. I have the same SSTATE_MIRRORS an=
d<br>
&gt;&gt; BB_HASHSERVE_UPSTREAM settings as you do, and adding<br>
&gt;&gt; BB_NUMBER_THREADS=3D&quot;1&quot; makes the errors disappear.<br>
&gt;&gt;<br>
&gt;&gt; It seems I should file a bug about that. The error messages just m=
ention<br>
&gt;&gt; local paths, not remote ones, so it sounds like a local issue whil=
e it&#39;s<br>
&gt;&gt; apparently not.<br>
&gt; That is useful to debug it but suggests there is an issue with concurr=
ent<br>
&gt; connections to the YP server.<br>
&gt;<br>
&gt; I think we should have an open bug and get Michael Halstead&#39;s inpu=
t on this.<br>
<br>
<br>
Done: <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14690"=
 rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D14690</a><br>
Thanks for your advice.<br>
Cheers<br>
Michael.<br>
<br>
-- <br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer" target=3D"_blank">https:=
//bootlin.com</a><br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div>

--0000000000007fd25705d5f7c3af--

