Return-Path: <bratiranjan12@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 177C7C10F1A
	for <webhook@archiver.kernel.org>; Tue,  7 May 2024 10:19:35 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
 by mx.groups.io with SMTP id smtpd.web11.8215.1715077171232242103
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 May 2024 03:19:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=S4pkNkyH;
 spf=pass (domain: gmail.com, ip: 209.85.210.46, mailfrom: bratiranjan12@gmail.com)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6f0307322d5so1441037a34.0
        for <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 03:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715077170; x=1715681970; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+lAnwAvJr8ULTUY65KnQ3/fXajUEZmEJ1xkThy/mbZQ=;
        b=S4pkNkyH1yTkZg/aA+VoLnD5pT9l/2g5gsPkZACq6xp6r6nik7nJdI06uV1gvpp31f
         MRf089EbOcbK+W9YVGNQ7Ef9pttFeWEggDLi6b/LR40FA8E3kvbvVEyZgVAB8igwctMr
         o8Z2P4jwqQzG3WdjhTT4ZR1inStuoQFwytP9tIwNgzmGZUVaPW3jwFZciyhRRb501Jee
         E9DOZvgaLin2dlPBUNTtWskQCqMcwsROdl9RjkSTMq7ahOL3cwunV6nXSAZs4pOUNsaY
         DWK1mZp8mlo6FGyW4xXjS29wosiPF5FQkVfEkMUmeEw2khGwNpT665Bdlrl8FbMr+a1g
         p5rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715077170; x=1715681970;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+lAnwAvJr8ULTUY65KnQ3/fXajUEZmEJ1xkThy/mbZQ=;
        b=Pl1pKN5J+TDB1dBNbBLgU+gbN1w9kliBoOHkJ4cJn50qjkV3+ps++JYqp17Sip5PW8
         VAAfz/+16juy1H8xGI8XMgePqQEzg4sd6RMljvyS1F0o4RnpOgrb+lmN0QvVipcv0ZSn
         9D62vwcUKQ5wlsqSGoDxxHmPfGlUuQnjfwQ4LSXBcWfFjSC03Sw6BC14QJNkADxSwceq
         YfgxL41dSbcS0S7vNzq4rHEuEO+Ej/0OrdJG/tgQ1BET4KZ9+89upArTWqOsJcThfcOm
         5WqQ2I/6F+W9XiyGURb/GXTlj6ys1YPjpS1sAJrtMzlxm4w0AYDWo89nfWMRdqeYGNwy
         WHvg==
X-Gm-Message-State: AOJu0YwpVXDNrVxymK85vcZURCkSwrMHiBsKOYM2NtZ/lXy/Qtk8wWBV
	MC2qp3ITguwkP1jvGaLcYVdEQKgqgl2TKYQurecZ61ybuI70TqNkc9x+1TZRb0Q2TVxYcr1Q2vy
	1rQMK7z+exUQE/E/F4gOpGij3pkI=
X-Google-Smtp-Source: AGHT+IGCLOod4GLpsR57LIkvmVMQFebZCiW1jH71+Xx/24+E5GF/NVRt46cHlWWuiWCljZ+4EwolpoquHz/4Q55ZtTU=
X-Received: by 2002:a05:6870:ed90:b0:23e:5c0c:92dd with SMTP id
 fz16-20020a056870ed9000b0023e5c0c92ddmr14535013oab.9.1715077170133; Tue, 07
 May 2024 03:19:30 -0700 (PDT)
MIME-Version: 1.0
References: <CALSmAY7=T9hENBfNFt8nUGT98boRZF5_3KdubfDLipcTkG+-vQ@mail.gmail.com>
 <CAMKF1srgDX5tNk2J3ik=pAD2z7nDqs5BtAWwW-s5HPGh=w6OGA@mail.gmail.com>
 <CALSmAY4KzeeBNktsKiD5eiiDSfh3v451Fqg3EDcaXsWA4-Vq9g@mail.gmail.com> <7daf5cfc-46de-4911-9848-171e7b675189@cherry.de>
In-Reply-To: <7daf5cfc-46de-4911-9848-171e7b675189@cherry.de>
From: Bratiranjan Acharya <bratiranjan12@gmail.com>
Date: Tue, 7 May 2024 15:49:18 +0530
Message-ID: <CALSmAY6QmKUfa7Lse_hxFPOtqvu00027zvdQNw073q5UBxh9WA@mail.gmail.com>
Subject: Re: [yocto] Command line Variable
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007d03410617da8547"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 10:19:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63043

--0000000000007d03410617da8547
Content-Type: text/plain; charset="UTF-8"

Hey Quentin,

I wanted to extend my gratitude for your assistance. I found the solution
in the Yocto manual, scripted accordingly, and after exporting, everything
is functioning smoothly now. Your help was greatly appreciated!

Thanks & Regards Brati

On Tue, 7 May 2024 at 15:24, Quentin Schulz <quentin.schulz@cherry.de>
wrote:

> Hi Brati,
>
>
> On 5/7/24 7:17 AM, Bratiranjan Acharya via lists.yoctoproject.org wrote:
> > Hello there! I've recently experimented with incorporating the following
> > lines into my recipe file:
> > BB_ENV_PASSTHROUGH_ADDITIONS = "BUILD_ID"
> > BUILD_ID ?= "none"
> > However, despite these additions, I encountered a persistent issue. Even
> > after executing the command "BUILD_ID=123456 bitbake custom-img" the
> value
> > of BUILD_ID consistently defaults to "none." I'm curious if there's an
> > alternative approach worth exploring. Any insights would be greatly
> > appreciated!
> >
>
>
> https://docs.yoctoproject.org/bitbake/2.8/bitbake-user-manual/bitbake-user-manual-ref-variables.html#term-BB_ENV_PASSTHROUGH_ADDITIONS
>
> """
> You must set this variable in the external environment in order for it
> to work.
> """
>
> So it needs to be outside any file from Bitbake, just have it in the
> shell environment before calling Bitbake.
>
> Also, this variable was name something different before Kirkstone so it
> depends on which version of Yocto you're using here, c.f.
>
> https://docs.yoctoproject.org/migration-guides/migration-4.0.html?highlight=bb_env_passthrough_additions#inclusive-language-improvements
>
> Cheers,
> Quentin
>

--0000000000007d03410617da8547
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"border:0px solid rgb(227,227,227);box-sizing:b=
order-box;margin:0px 0px 1.25em;color:rgb(13,13,13)"><font face=3D"arial, s=
ans-serif" style=3D"">Hey Quentin,</font></p><p style=3D"border:0px solid r=
gb(227,227,227);box-sizing:border-box;margin:1.25em 0px;color:rgb(13,13,13)=
"><font face=3D"arial, sans-serif">I wanted to extend my gratitude for your=
 assistance. I found the solution in the Yocto manual, scripted accordingly=
, and after exporting, everything is functioning smoothly now. Your help wa=
s greatly appreciated!</font></p><p style=3D"border:0px solid rgb(227,227,2=
27);box-sizing:border-box;margin:1.25em 0px;color:rgb(13,13,13)"><font face=
=3D"arial, sans-serif" style=3D"">Thanks &amp; Regards
Brati</font></p></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, 7 May 2024 at 15:24, Quentin Schulz &lt;<a href=3D"=
mailto:quentin.schulz@cherry.de">quentin.schulz@cherry.de</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Brati,<br>
<br>
<br>
On 5/7/24 7:17 AM, Bratiranjan Acharya via <a href=3D"http://lists.yoctopro=
ject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> w=
rote:<br>
&gt; Hello there! I&#39;ve recently experimented with incorporating the fol=
lowing<br>
&gt; lines into my recipe file:<br>
&gt; BB_ENV_PASSTHROUGH_ADDITIONS =3D &quot;BUILD_ID&quot;<br>
&gt; BUILD_ID ?=3D &quot;none&quot;<br>
&gt; However, despite these additions, I encountered a persistent issue. Ev=
en<br>
&gt; after executing the command &quot;BUILD_ID=3D123456 bitbake custom-img=
&quot; the value<br>
&gt; of BUILD_ID consistently defaults to &quot;none.&quot; I&#39;m curious=
 if there&#39;s an<br>
&gt; alternative approach worth exploring. Any insights would be greatly<br=
>
&gt; appreciated!<br>
&gt; <br>
<br>
<a href=3D"https://docs.yoctoproject.org/bitbake/2.8/bitbake-user-manual/bi=
tbake-user-manual-ref-variables.html#term-BB_ENV_PASSTHROUGH_ADDITIONS" rel=
=3D"noreferrer" target=3D"_blank">https://docs.yoctoproject.org/bitbake/2.8=
/bitbake-user-manual/bitbake-user-manual-ref-variables.html#term-BB_ENV_PAS=
STHROUGH_ADDITIONS</a><br>
<br>
&quot;&quot;&quot;<br>
You must set this variable in the external environment in order for it <br>
to work.<br>
&quot;&quot;&quot;<br>
<br>
So it needs to be outside any file from Bitbake, just have it in the <br>
shell environment before calling Bitbake.<br>
<br>
Also, this variable was name something different before Kirkstone so it <br=
>
depends on which version of Yocto you&#39;re using here, c.f. <br>
<a href=3D"https://docs.yoctoproject.org/migration-guides/migration-4.0.htm=
l?highlight=3Dbb_env_passthrough_additions#inclusive-language-improvements"=
 rel=3D"noreferrer" target=3D"_blank">https://docs.yoctoproject.org/migrati=
on-guides/migration-4.0.html?highlight=3Dbb_env_passthrough_additions#inclu=
sive-language-improvements</a><br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--0000000000007d03410617da8547--

