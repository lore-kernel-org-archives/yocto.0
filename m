Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91499C4167B
	for <webhook@archiver.kernel.org>; Tue,  5 Dec 2023 21:22:52 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web10.7557.1701811368827414318
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Dec 2023 13:22:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=g8qXpnQp;
 spf=pass (domain: gmail.com, ip: 209.85.167.177, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3b837d974ecso3879833b6e.2
        for <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 13:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701811368; x=1702416168; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JIOhFNKN6zeMyURYpdU5kRRISidb00UtUo/MzV7T+jY=;
        b=g8qXpnQpZ6RLNgL5WHZXcBytYu+NmZ5t5XiVf67+RGRxskBhzXHAY/3UBaHlWhQJf9
         2p+nOIBy+SzUTPTAhyOJ1KgqqEkdu0zcKZiQzA55dWp4yl8HP/SB3zhj/omuckrJNchL
         WzyQK/5SE+412Hn7AjNsrsm37nQgFBFtnR481BCjkAXrnw2GqM0s4hm0ONTbo5Mr+hTW
         X12NPLI3lULZR7N/zx7ftHRzLPgYnQUrY5JfPAyRooEHhtUf7ogjfqwo7u3bm6A8qAGy
         FhQHd/5DX28/DMzdHK7+U7zmTeUBt2aYXuLc/h6aa64UWQCB/+ELNilT9dNslkNNJ8tR
         A5aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701811368; x=1702416168;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JIOhFNKN6zeMyURYpdU5kRRISidb00UtUo/MzV7T+jY=;
        b=CSBNVy9qF+tYZc82w2XDE9RIV+xk3NuETJRMDDTu6x2rpR2gLekbnNMA3HbP8emNE/
         I1mM5kwhp3jVOijA5awppp7CXRqNZfpg6o7O0gwPRWfLmA1N0Y7CFkHLlfQlxcDbEss1
         tR1pkwF6G2lt3OnOC7RSbxlXmuB/o8DHjek1ses8YSVnAIG+Ag2nEfx1oBrG3CMNBMea
         +VbKsK/FlMaAqz9ae1mjZf4NWBnaA0LfTUjwDl4oEPcbU8v6Xql+LCW5Sn6IWiVYv1kV
         AOSy/nRZB7UKb4fML1+v0CeNJ7eo5CsDJJNy9KsBYWm0WdzMAGxPKZpva9SLCvFY3yd1
         6gfA==
X-Gm-Message-State: AOJu0YzQo3VZwZKKl9p/6Lk5z7G+Svm9jcD4yslLEqTYl3N8ECX7eATT
	etaxFDbnljVdG0nKHaPzqHkp48KbeqWP98bNjoQ=
X-Google-Smtp-Source: AGHT+IFUUguzdPH3CTBZh76FZhdyfAyfBHwmi1cwypwCaqc+Uz4YxwC+VmV2BHlA1pQqQXk/7G+G5ljgc1VqaKx4/KY=
X-Received: by 2002:a05:6870:5cc7:b0:1fa:f404:b959 with SMTP id
 et7-20020a0568705cc700b001faf404b959mr10807554oab.58.1701811367943; Tue, 05
 Dec 2023 13:22:47 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPJ3-KK_Y0tMrp2QC=K0P0hm_2-cV0UorSQOSvZ7PVub6A@mail.gmail.com>
 <CAMKF1spuPKtEPvkBZ68uPNMSQbCx4GDWC47hJGoRTW6qH0fbfQ@mail.gmail.com> <1470abd7-f24a-4fcf-816d-6d0603640441@windriver.com>
In-Reply-To: <1470abd7-f24a-4fcf-816d-6d0603640441@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Dec 2023 13:22:36 -0800
Message-ID: <CAMKF1spfJvFz++0qp2b5zum8b+-LfTzBq0S93Px8GMajHkn+_Q@mail.gmail.com>
Subject: Re: [yocto] Mold linker
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Joel Winarske <joel.winarske@gmail.com>, "Mali, Narpat" <narpat.mali@windriver.com>, 
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000fa319060bc9d674"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 21:22:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61808

--0000000000000fa319060bc9d674
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 5, 2023 at 1:10=E2=80=AFPM Randy MacLeod <randy.macleod@windriv=
er.com>
wrote:

> On 2023-02-15 2:22 a.m., Khem Raj via lists.yoctoproject.org wrote:
>
> On Tue, Feb 14, 2023 at 9:36 PM Joel Winarske <joel.winarske@gmail.com> <=
joel.winarske@gmail.com> wrote:
>
> Has anyone played around with the mold linker?
> https://github.com/rui314/mold
>
>
> Curious what the build time difference might be on a large multi-core mac=
hine.
>
> Yes, lightly. I found it similar to lld in many cases, only used it on
> native links for chromium
> it seems to be better at parallelization.
>
> Has anyone checked recently, there's been quite a bit of work since Feb
> 2023 (1)
>
> Narpat might try this out for Chromium.
>

Chromium builds use lld already in meta-browser so I am not expecting day
and night difference but it will be certainly good to know how much delta
it can reduce

>
> I'd expect that the overall build time isn't reduced much even on our 100=
+
> core systems
> since there are just soooooo many .cpp files to compile but it's worth
> checking.
>
> ../Randy
>
>
> 1)
>
> mold.git on main
> =E2=9D=AF TZ=3D$(date +%z) git log --reverse --date-order --format=3D"%cd=
"
> --date=3Diso-local 9615b8b962edc659f7113029c5c85a81b173e4dc... \
>         | cut -d- -f1-2 \
>         | uniq -c \
>         | column -t \
>         | perl -pwe 's{\s+}{\t}'
> 145    2023-01
> 34    2023-02
> 37    2023-03
> 11    2023-04
> 12    2023-06
> 55    2023-07
> 143    2023-08
> 43    2023-09
> 105    2023-10
> 95    2023-11
> 12    2023-12
>
>  Joel
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59230): https://lists.yoctoproject.org/g/yocto/messag=
e/59230
> Mute This Topic: https://lists.yoctoproject.org/mt/96977773/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod@=
windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>
>

--0000000000000fa319060bc9d674
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Dec 5, 2023 at 1:10=E2=80=AFPM Randy MacLeod &lt;<a=
 href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><u></u>

 =20
  <div>
    <div>On 2023-02-15 2:22 a.m., Khem Raj via
      <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoc=
toproject.org</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre>On Tue, Feb 14, 2023 at 9:36 PM Joel Winarske <a href=3D"mailto:=
joel.winarske@gmail.com" target=3D"_blank">&lt;joel.winarske@gmail.com&gt;<=
/a> wrote:
</pre>
      <blockquote type=3D"cite">
        <pre>Has anyone played around with the mold linker?

<a href=3D"https://github.com/rui314/mold" target=3D"_blank">https://github=
.com/rui314/mold</a>


Curious what the build time difference might be on a large multi-core machi=
ne.
</pre>
      </blockquote>
      <pre>Yes, lightly. I found it similar to lld in many cases, only used=
 it on
native links for chromium
it seems to be better at parallelization.</pre>
    </blockquote>
    <p>Has anyone checked recently, there&#39;s been quite a bit of work
      since Feb 2023 (1)<br>
      <br>
      Narpat might try this out for Chromium.</p></div></blockquote><div di=
r=3D"auto"><br></div><div dir=3D"auto">Chromium builds use lld already in m=
eta-browser so I am not expecting day and night difference but it will be c=
ertainly good to know how much delta it can reduce=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div><p dir=3D"auto"><br>
    </p>
    <p>I&#39;d expect that the overall build time isn&#39;t reduced much ev=
en on
      our 100+ core systems<br>
      since there are just soooooo many .cpp files to compile but it&#39;s
      worth checking.<br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <p>1)</p>
    <p>mold.git on main<br>
      =E2=9D=AF TZ=3D$(date +%z) git log --reverse --date-order --format=3D=
&quot;%cd&quot;
      --date=3Diso-local 9615b8b962edc659f7113029c5c85a81b173e4dc... \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | cut -d- -f1-2 \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | uniq -c \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | column -t \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | perl -pwe &#39;s{\s+}{\t=
}&#39;<br>
      145=C2=A0=C2=A0=C2=A0 2023-01<br>
      34=C2=A0=C2=A0=C2=A0 2023-02<br>
      37=C2=A0=C2=A0=C2=A0 2023-03<br>
      11=C2=A0=C2=A0=C2=A0 2023-04<br>
      12=C2=A0=C2=A0=C2=A0 2023-06<br>
      55=C2=A0=C2=A0=C2=A0 2023-07<br>
      143=C2=A0=C2=A0=C2=A0 2023-08<br>
      43=C2=A0=C2=A0=C2=A0 2023-09<br>
      105=C2=A0=C2=A0=C2=A0 2023-10<br>
      95=C2=A0=C2=A0=C2=A0 2023-11<br>
      12=C2=A0=C2=A0=C2=A0 2023-12<br>
      <br>
    </p>
    <blockquote type=3D"cite">
      <pre>
</pre>
      <blockquote type=3D"cite">
        <pre>Joel



</pre>
        <br>
        <fieldset></fieldset>
        <pre>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#59230): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59230" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/=
message/59230</a>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96977773/3616=
765" target=3D"_blank">https://lists.yoctoproject.org/mt/96977773/3616765</=
a>
Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" targe=
t=3D"_blank">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"m=
ailto:randy.macleod@windriver.com" target=3D"_blank">randy.macleod@windrive=
r.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre></blockquote></blockquote></div><div><blockquote type=3D"cite"><block=
quote type=3D"cite">
      </blockquote>
    </blockquote>
    <p><br>
    </p>
    <pre cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </div>

</blockquote></div></div>

--0000000000000fa319060bc9d674--

