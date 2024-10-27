Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1B2D1358D
	for <webhook@archiver.kernel.org>; Sun, 27 Oct 2024 23:46:36 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.40436.1730072787181052568
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Oct 2024 16:46:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=klihLLan;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2e2eb9dde40so2978192a91.0
        for <yocto@lists.yoctoproject.org>; Sun, 27 Oct 2024 16:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730072786; x=1730677586; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oo/Y7SIpOYAKN7t5mwtEq3srqEXDPx/Wzln1OXYn+g8=;
        b=klihLLanql7fuLMh7WrvV1J4fGnsdwW7nsAQy04LwnjRClCJnHn3yzzy/vT3wdxD15
         Nav4CeIKUv+BQmt/lLlkrjDfBCeBswmrZCHxE0qy799RxMGXYf9k5FHNJWUHgEvUjdaJ
         INXb5xbVkZlzQOcFawYGbI14JTdbElqmIcKE9KOFWnH0DYYZg31EdlTgynhX8PuDnuVl
         mRorYTfmb9X0chrjzO/xbdTiJxHDhGNzCmOfmvvLi1QJurmZ2droQ9rssnmjjVUZd+6J
         LUr07VpUDfXBZzRvFPUgNDUd8Gusy4q7zr7Ay/+uxuAGxbbIapTe9DFG23Z/wm06/qAR
         KDeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730072786; x=1730677586;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Oo/Y7SIpOYAKN7t5mwtEq3srqEXDPx/Wzln1OXYn+g8=;
        b=dlZuGGLAI3oJcu+6IV6X/QmHTUT/0Iq7cThcYvR/u5wHTNG/OyWz9gfJ10azchMR+Q
         Uxbi85AieU0f1x1nOApJaZx2U0n3DiidwKYePTeR9sA5Cf4w1jMX6RZ0Cg8Tt4MWldvx
         eP8aRjCMBhPu0BULq5spDU1yqPgiD6ckmBjxf8feOYPMujVvlPBmubfWWutSDLod/fF2
         1OzdRr58XvFCqFzlGPOxeibYSy//reFwnxEGjMJ42blpT7DZ6EhWKW4R4M6BrCeu7BOY
         BEUqJTDz47gfwA1eiRYlzWc+O0nJ/VURONu9c8nLynyKzNGKmEX4I3LLxttPHOwtzZ3A
         Qi7Q==
X-Gm-Message-State: AOJu0YxZLWqAeOXhf1w5jZgSrT4JyxafP6fEZhUTH965vNOMXUxfKx6m
	OpCGcj4wSW00WXSnzu24GItsR6q6C47b8HEqHy9K/UpcMnnvfJs4Q3TAa8v3BYdmPZd9AzHRBh4
	USKshDmxyZvYNCNWmP4HlIx+WULLcEx71
X-Google-Smtp-Source: AGHT+IETEd4855FiSj74e/IwJ+wHvkLHUqeAvLuT7D5M13LCyVKmrWGiGaqL2+sfJ4CpJbAehCEI74Lq+oyMKSyNeQ4=
X-Received: by 2002:a17:90a:d158:b0:2da:7536:2b8c with SMTP id
 98e67ed59e1d1-2e8f11c29b7mr8703471a91.36.1730072784608; Sun, 27 Oct 2024
 16:46:24 -0700 (PDT)
MIME-Version: 1.0
References: <d8d28f79-8b34-4309-8778-49bae8267cf8@gmail.com>
 <27982.1729962606213889652@lists.yoctoproject.org> <CADkTA4NCoj4xTDQ4U-xyYosuJECWd0cMNWK8wUDSPJ7WGYHDMw@mail.gmail.com>
 <jwupHh780GGookLO8E-o4cVDtcLdc3wdpyAFvaZsyuknphKUSJzWU4JD4QIWwHxZ1eqjLVZ0Q27J8VJV9wrSdDGIZ42JI8AML08hSZyhzSU=@protonmail.com>
In-Reply-To: <jwupHh780GGookLO8E-o4cVDtcLdc3wdpyAFvaZsyuknphKUSJzWU4JD4QIWwHxZ1eqjLVZ0Q27J8VJV9wrSdDGIZ42JI8AML08hSZyhzSU=@protonmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 27 Oct 2024 19:46:13 -0400
Message-ID: <CADkTA4OmAOXj1-qLnAQnAV5EzQ8WVkwqF8Z9=g0=Q0jsLFV67A@mail.gmail.com>
Subject: Re: [yocto] How to set real time patch correctly? #honister
To: yocto@lists.yoctoproject.org, codusnocturnus@protonmail.com
Content-Type: multipart/alternative; boundary="000000000000c3273a06257df5bf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 27 Oct 2024 23:46:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64149

--000000000000c3273a06257df5bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 27, 2024 at 6:49=E2=80=AFPM codusnocturnus via lists.yoctoproje=
ct.org
<codusnocturnus=3Dprotonmail.com@lists.yoctoproject.org> wrote:

> No magic expected. It will just be nice to not have to essentially merge =
3
> kernel flavors together to get full RT going.
>

I'm not exactly sure what that means in your context, but that isn't
important since I don't need to :)

I just wanted my statement to be on the record, since the amount of people
who think that something fundamental has changed is quite surprising. But
clearly, that isn't the case here, and you are going into things eyes wide
open!



>
> I hadn=E2=80=99t seen (or looked for) the Xilinx tags in linux-yocto befo=
re. I=E2=80=99ve
> always been leery about using anything other than linux-xlnx. There are
> usually enough things to do when moving between Xilinx yocto releases tha=
t
> I haven=E2=80=99t wanted to add more things to remember, but I will defin=
itely take
> a look.
>
>
Full disclosure. I work for AMD/Xilinx (but you may have known that), so
there's some assurance that what makes it into linux-yocto is aligned with
other sources. Wind River contributes the SDK ports, so they are tested and
supported from that level as well.

Bruce



> Thanks,
>
>
>
> Sent from Proton Mail <https://proton.me/mail/home> for iOS
>
>
> On Sun, Oct 27, 2024 at 15:20, Bruce Ashfield <bruce.ashfield@gmail.com
> <On+Sun,+Oct+27,+2024+at+15:20,+Bruce+Ashfield+%3C%3Ca+href=3D>> wrote:
>
> Alternatively:
>
>
> https://git.yoctoproject.org/linux-yocto/log/?h=3Dv6.6/standard/preempt-r=
t/sdkv6.6/xlnx-soc
>
> Also, please anyone reading this. Do not expect any magic from 6.12 to
> make all your -rt dreams come true. Outside of patching the kernel, all o=
f
> the challenges with supporting -rt in embedded SDKs and devices will be
> exactly the same. Dust off our tracing and latency spike debugging skills=
,
> because you are going to need them.
>
> Cheers,
>
> Bruce
>
> On Sat, Oct 26, 2024 at 1:10=E2=80=AFPM Haimbach via lists.yoctoproject.o=
rg
> <haimbachar2008=3D gmail.com@lists.yoctoproject.org> wrote:
>
>> Do you know if there any example of setting the rt patch with Xilinx
>> kernel?
>> the default procedure not working as you say it=E2=80=99s for the vanill=
a kernel.
>>
>> Regards,
>> Haim
>>
>>
>>
>>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await the=
e
> at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64148):
> https://lists.yoctoproject.org/g/yocto/message/64148
> Mute This Topic: https://lists.yoctoproject.org/mt/109223260/1050810
> Mute #honister:https://lists.yoctoproject.org/g/yocto/mutehashtag/honiste=
r
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000c3273a06257df5bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sun, Oct 27, 2024 at 6:49=E2=80=AFPM codusnoctur=
nus via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a=
> &lt;codusnocturnus=3D<a href=3D"mailto:protonmail.com@lists.yoctoproject.=
org">protonmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div>   <div dir=3D"auto">No magi=
c expected. It will just be nice to not have to essentially merge 3 kernel =
flavors together to get full RT going.</div></div></blockquote><div><br></d=
iv><div><div class=3D"gmail_default" style=3D"font-size:small">I&#39;m not =
exactly sure what=C2=A0that means in your context, but that isn&#39;t impor=
tant since I don&#39;t need to :)=C2=A0</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">I just wanted my statement to be on the record, since the am=
ount of people who think that something fundamental has changed is quite su=
rprising. But clearly, that isn&#39;t the case here, and you are going into=
 things eyes wide open!=C2=A0</div><br></div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div><div dir=3D"auto"><br></div><div =
dir=3D"auto">I hadn=E2=80=99t seen (or looked for) the Xilinx tags in linux=
-yocto before. I=E2=80=99ve always been leery about using anything other th=
an linux-xlnx. There are usually enough things to do when moving between Xi=
linx yocto releases that I haven=E2=80=99t wanted to add more things to rem=
ember, but I will definitely take a look.</div><div dir=3D"auto"><br></div>=
</div></blockquote><div><br></div><div><div class=3D"gmail_default" style=
=3D"font-size:small">Full disclosure. I work for AMD/Xilinx (but you may ha=
ve known that), so there&#39;s some assurance that what makes it into linux=
-yocto is aligned with other sources. Wind River contributes the SDK ports,=
 so they are tested and supported from that level as well.</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">Bruce</div><br></div><div>=C2=A0</div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div><div dir=3D"auto"></di=
v><div dir=3D"auto">Thanks,</div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><br></div><div><br></div> <div id=3D"m_-8051114874962413388protonmail_m=
obile_signature_block"><div>Sent from <a href=3D"https://proton.me/mail/hom=
e" target=3D"_blank">Proton Mail</a> for iOS</div></div> <div><br></div><di=
v><br></div>On Sun, Oct 27, 2024 at 15:20, Bruce Ashfield &lt;<a href=3D"ma=
ilto:On+Sun,+Oct+27,+2024+at+15:20,+Bruce+Ashfield+%3C%3Ca+href=3D" target=
=3D"_blank">bruce.ashfield@gmail.com</a>&gt; wrote:<blockquote type=3D"cite=
">  <div dir=3D"ltr">
 <div style=3D"font-size:small">
  Alternatively:
 </div>
 <div style=3D"font-size:small">
  <br>
 </div>
 <div style=3D"font-size:small">
  <a href=3D"https://git.yoctoproject.org/linux-yocto/log/?h=3Dv6.6/standar=
d/preempt-rt/sdkv6.6/xlnx-soc" target=3D"_blank">https://git.yoctoproject.o=
rg/linux-yocto/log/?h=3Dv6.6/standard/preempt-rt/sdkv6.6/xlnx-soc</a>
  <br>
 </div>
 <div style=3D"font-size:small">
  <br>
 </div>
 <div style=3D"font-size:small">
  Also, please anyone reading this. Do not expect any magic from 6.12 to ma=
ke all your -rt dreams come true. Outside of patching the kernel, all of th=
e challenges with supporting -rt in embedded SDKs and devices will be exact=
ly the same. Dust off our tracing and latency spike debugging skills, becau=
se you are going to need them.
 </div>
 <div style=3D"font-size:small">
  <br>
 </div>
 <div style=3D"font-size:small">
  Cheers,
 </div>
 <div style=3D"font-size:small">
  <br>
 </div>
 <div style=3D"font-size:small">
  Bruce
 </div>
</div>
<br>
<div class=3D"gmail_quote">
 <div class=3D"gmail_attr" dir=3D"ltr">
  On Sat, Oct 26, 2024 at 1:10=E2=80=AFPM Haimbach via=20
  <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctopr=
oject.org</a> &lt;haimbachar2008=3D
  <a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_blank">gma=
il.com@lists.yoctoproject.org</a>&gt; wrote:
  <br>
 </div>
 <blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex" class=3D"gmail_quote">
  <div>
   Do you know if there any example of setting the rt patch with Xilinx ker=
nel?=C2=A0
   <br>the default procedure not working as you say it=E2=80=99s for the va=
nilla kernel.
  </div>=20
  <div>
   =C2=A0
  </div>=20
  <div>
   Regards,
  </div>=20
  <div>
   Haim
  </div>=20
  <br>=20
  <br>=20
  <br>=20
 </blockquote>
</div>
<br clear=3D"all">
<div>
 <br>
</div>
<span class=3D"gmail_signature_prefix">-- </span>
<br>
<div class=3D"gmail_signature" dir=3D"ltr">
 - Thou shalt not follow the NULL pointer, for chaos and madness await thee=
 at its end
 <br>- &quot;Use the force Harry&quot; - Gandalf, Star Trek II
 <br>
 <br>
</div></blockquote></div><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64148): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64148" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64148</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109223260/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109223260/1050810</a><br>
Mute #honister:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashta=
g/honister" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject=
.org/g/yocto/mutehashtag/honister</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">- =
Thou shalt not follow the NULL pointer, for chaos and madness await thee at=
 its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br><b=
r></div></div>

--000000000000c3273a06257df5bf--

