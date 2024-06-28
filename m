Return-Path: <mcorbin@lunarenergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A252FC2BBCA
	for <webhook@archiver.kernel.org>; Fri, 28 Jun 2024 11:03:35 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.14575.1719572605374513455
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jun 2024 04:03:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lunarenergy.com header.s=google header.b=HhGsQ86G;
 spf=pass (domain: lunarenergy.com, ip: 209.85.218.51, mailfrom: mcorbin@lunarenergy.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a6cb130027aso23786866b.2
        for <yocto@lists.yoctoproject.org>; Fri, 28 Jun 2024 04:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lunarenergy.com; s=google; t=1719572603; x=1720177403; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vv6CxeZqPfSeULIltsZ6eGpEDYE/4t7YJ2wcTwH6E7Y=;
        b=HhGsQ86GTuf16t6AMIJ9o0zGeox5EcszYszHxqvzd47zfzf72BJe8o4SNa89vK6ofD
         OMdGfFZAKyG790MhUc/c9i9lYycTlpA9h93yR5H+7yXnUeeDCEG8CcwBZVA+dUuJIbeV
         YzV2BkKy5X/rAkt0i8jxcYsxx4CpgI9yVqd2g2hAdL2ooFv6yq/L+1im99khSOWHPLWy
         VHdKbrv+dUrjKJC1B82ovlH3Gj83UVKv48Gwf//oJ3EsMzl3kXBIxQSjuxbTFzmbgy86
         N1dRqMOPW4JDQ1BQV6iatqZm/0rYywP8jyJ9ipakBbLK7BHNXK8gd/DCypMgsMcliFJH
         kFiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719572603; x=1720177403;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vv6CxeZqPfSeULIltsZ6eGpEDYE/4t7YJ2wcTwH6E7Y=;
        b=rhV+RmxbeemqRzSgtAuw+IQFB8u4Atx40s5P4RUbiSS6urhjvVL/zEakwAtGu0yYDw
         /yJaMJ7hCWOliSPGK1qHa/+aa9yAJQVYSXTtUv1+Nzbq+oF6SB5G717z4TBmKgCaaK3V
         CCga++PrJEuy4fNqQ9QD+6pGP0PujB9d8hUowBU+J57JxYDLgTye4ViitUN8PDL87gQP
         0nsI9WxQ217u/Np9QtYcS6mbLHDBxw7UZnabYhCnwfiydPEa8/65JT8UeAuO8XgfnpsE
         GVjUjUMveSuxnVQIMY3QrKKtg0ikNCyrtPE1PqJq5H2QhnLdgUDSlC7RrDNkvUiI9nd4
         iYJA==
X-Gm-Message-State: AOJu0YxEI7BSGY70CMKhex2tQlxbSpMdVcQtBLXv42XwD0UBFW7mtb+a
	eqBDiOLrCNiBvR6uZelF3UP+KbESWZbwKuVpMvJiLMlOKVEs2PohAJ0stl2kSbyOtAXrTuTYdrv
	gne/s53Bc6JhGLOuqRwmH1hdDCgRtaihHI5cgMn5XrX6JVNPv4gLcedeaD+9u9NIk+W1PCI0SUv
	VgVFQagoEOrF40Uw49cRJSSMGnBY+uOSMboU5IO2ccZbQ=
X-Google-Smtp-Source: AGHT+IF6H4sv0FzpdPAu/krGf0sCMKKFf0XceJi0Urj5VvQ2He9s+Ka5FwqRy6Purj1vPkqNJX+nQkz8NoPpkLWRVDI=
X-Received: by 2002:a50:d7dc:0:b0:57d:26a4:2e3a with SMTP id
 4fb4d7f45d1cf-583e415035amr5171658a12.40.1719572603290; Fri, 28 Jun 2024
 04:03:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAPfD7w=LCH33=5C9=F83pGuwYSJFaaNap-eR48R9Mwzqg=XL-A@mail.gmail.com>
 <83b7b88acf6a2b3b1e2b3c42cf0c830535617bd4.camel@linuxfoundation.org> <CA+chaQe0SRoVzDAbZ3L+u2PRQTUQ3cE6bwVGp5OB6ZNCXssgrQ@mail.gmail.com>
In-Reply-To: <CA+chaQe0SRoVzDAbZ3L+u2PRQTUQ3cE6bwVGp5OB6ZNCXssgrQ@mail.gmail.com>
From: Mark Corbin <mcorbin@lunarenergy.com>
Date: Fri, 28 Jun 2024 12:03:12 +0100
Message-ID: <CAPfD7wncz5vt+rD_aF9LiQt-JsXeqHMUEeS0dotc=B5A5XHhzA@mail.gmail.com>
Subject: Re: [yocto] Class file priority between meta-rust and oe-core layers
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002fe556061bf13240"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jun 2024 11:03:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63413

--0000000000002fe556061bf13240
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 27 Jun 2024 at 15:28, Martin Jansa <martin.jansa@gmail.com> wrote:

> On Thu, Jun 27, 2024 at 4:23=E2=80=AFPM Richard Purdie via
> lists.yoctoproject.org
> <richard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:
> >
> > On Thu, 2024-06-27 at 13:35 +0100, Mark Corbin via
> > lists.yoctoproject.org wrote:
> > > Hello
> > >
> > > I'm currently updating my project from Kirkstone to Scarthgap and
> > > have run into an issue with bbclass file priorities.
> > >
> > > We are using our own modified 'meta-rust' layer, but rust recipes are
> > > inheriting the 'cargo.bbclass' file from 'openembedded-
> > > core/meta/classes-recipe' directory even though the 'meta-rust' layer
> > > has a higher priority. This wasn't an issue under Kirkstone.
> > >
> > > Is there any way to ensure that my 'meta-rust' classes are used by
> > > default?
> >
> > I'd just note that the behaviour hasn't changed and that inherits
> > search BBPATH for the class. I suspect your BBPATH ordering has changed
> > or needs tweaking to do what you expect.
>
> Priority didn't change, but to use cargo.bbclass from your meta-rust
> layer, then you need to move it from classes to classes-recipe as all
> other "overlayed" bbclasses you might have after they were moved to
> different subdirectories in oe-core with:
>
> https://git.openembedded.org/openembedded-core/commit/?id=3Df5c128008365e=
141082c129417eb72d2751e8045
>

Thanks Martin, moving the overlayed classes to 'classes-recipe' solved the
problem.

--=20

*Mark Corbin*
Senior Software Engineer  |  lunarenergy.com <https://www.lunarenergy.com>
  |  LinkedIn <https://www.linkedin.com/company/lunar-energy>  |  Instagram
<https://www.instagram.com/the_lunarenergy/>
[image: Lunar Energy Logo]

--=20
C2:Restricted unless otherwise stated.

--=20








Lunar Energy Limited is a company registered in England and Wales,=C2=A0
authorised and regulated by the Financial Conduct Authority under reference=
=20
number 767876. Company registration number: 05631091. Registered office: 55=
=20
Baker Street, London, England, W1U 7EU

--0000000000002fe556061bf13240
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, 27 Jun 2024 at 15:28, Martin Jans=
a &lt;<a href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&=
gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On Thu, Jun 27, 2024 at 4:23=E2=80=AFPM Richard Purdi=
e via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;richard.purdie=3D<a href=3D"mailto:linuxfoundation.org@lists.yoctoproje=
ct.org" target=3D"_blank">linuxfoundation.org@lists.yoctoproject.org</a>&gt=
; wrote:<br>
&gt;<br>
&gt; On Thu, 2024-06-27 at 13:35 +0100, Mark Corbin via<br>
&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D=
"_blank">lists.yoctoproject.org</a> wrote:<br>
&gt; &gt; Hello<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m currently updating my project from Kirkstone to Scarthgap=
 and<br>
&gt; &gt; have run into an issue with bbclass file priorities.<br>
&gt; &gt;<br>
&gt; &gt; We are using our own modified &#39;meta-rust&#39; layer, but rust=
 recipes are<br>
&gt; &gt; inheriting the &#39;cargo.bbclass&#39; file from &#39;openembedde=
d-<br>
&gt; &gt; core/meta/classes-recipe&#39; directory even though the &#39;meta=
-rust&#39; layer<br>
&gt; &gt; has a higher priority. This wasn&#39;t an issue under Kirkstone.<=
br>
&gt; &gt;<br>
&gt; &gt; Is there any way to ensure that my &#39;meta-rust&#39; classes ar=
e used by<br>
&gt; &gt; default?<br>
&gt;<br>
&gt; I&#39;d just note that the behaviour hasn&#39;t changed and that inher=
its<br>
&gt; search BBPATH for the class. I suspect your BBPATH ordering has change=
d<br>
&gt; or needs tweaking to do what you expect.<br>
<br>
Priority didn&#39;t change, but to use cargo.bbclass from your meta-rust<br=
>
layer, then you need to move it from classes to classes-recipe as all<br>
other &quot;overlayed&quot; bbclasses you might have after they were moved =
to<br>
different subdirectories in oe-core with:<br>
<a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=3Df5c1=
28008365e141082c129417eb72d2751e8045" rel=3D"noreferrer" target=3D"_blank">=
https://git.openembedded.org/openembedded-core/commit/?id=3Df5c128008365e14=
1082c129417eb72d2751e8045</a><br>
</blockquote></div><br clear=3D"all"><div>Thanks Martin, moving the overlay=
ed classes to &#39;classes-recipe&#39; solved the problem.<br></div><div><b=
r></div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"lt=
r" class=3D"gmail_signature"><div><div><br><span style=3D"color:rgb(38,77,1=
16);line-height:1.6;font-size:10pt;font-family:&quot;IBM Plex Sans&quot;,sa=
ns-serif"><strong>Mark Corbin</strong></span><br><span style=3D"color:rgb(3=
8,77,116);line-height:1.4;font-size:10pt;font-family:&quot;IBM Plex Sans&qu=
ot;,sans-serif"> Senior Software Engineer=C2=A0=C2=A0|=C2=A0=C2=A0<a href=
=3D"https://www.lunarenergy.com" target=3D"_blank">lunarenergy.com</a>=C2=
=A0=C2=A0|=C2=A0=C2=A0<a href=3D"https://www.linkedin.com/company/lunar-ene=
rgy" target=3D"_blank">LinkedIn</a>=C2=A0=C2=A0|=C2=A0=C2=A0<a href=3D"http=
s://www.instagram.com/the_lunarenergy/" target=3D"_blank">Instagram</a><br>=
</span><img style=3D"padding-top: 5px;" src=3D"https://storage.googleapis.c=
om/lunarenergy/email-sigs/lunarenergy-logo.png" alt=3D"Lunar Energy Logo" w=
idth=3D"100"></div></div></div></div>

<br>
<font size=3D"1">C2:Restricted unless otherwise stated.</font><br>
<br>






<p><font size=3D"1">Lunar Energy Limited is a company registered in England=
 and Wales,=C2=A0authorised and regulated by the Financial Conduct Authorit=
y under reference number 767876. Company registration number: 05631091. Reg=
istered office: 55 Baker Street, London, England, W1U 7EU</font><br></p>
--0000000000002fe556061bf13240--

