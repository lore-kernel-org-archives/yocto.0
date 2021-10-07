Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15181C433F5
	for <webhook@archiver.kernel.org>; Thu,  7 Oct 2021 23:28:50 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web11.2096.1633649328571919227
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Oct 2021 16:28:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GNkOlSUQ;
 spf=pass (domain: gmail.com, ip: 209.85.160.177,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id i1so6781000qtr.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 07 Oct 2021 16:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+dbzyqVwrdI32dTN7/JXjF8QaKUnIEI261FX2dRiPBA=;
        b=GNkOlSUQUB4wvjJw5Bib8Bvn3zK4VDJpNeTwzFNf/UH3zOu7XgnzohHUsR8/BG1Atv
         LmVEfOYP212iIvji966rNHwMOJYrtW47HjSIjxZ8xJwHMIZz+ejSq5rerdB4QCMzEO2v
         tjCG/9Xg8APCK8FQfKGtgz1F+YR4wxKMwQZQ+C6JBkreeC4oNmOrcAIqxq9rooXdY1BG
         8sm08bC7EcAfKXs7g+bu/FAUKBTa4Tqqlrw8QMddqdNpeA70CM36rN5ooy16xEIZTfzm
         2g32DD8awTJAq6srbQF86ExFWxc32XwIFwifXB3AXvfcOfMBwLPXm/oq2vqLwH7EpA+K
         L7pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+dbzyqVwrdI32dTN7/JXjF8QaKUnIEI261FX2dRiPBA=;
        b=0z0YB8egl1e56vKA8nDGKtZWRhQ7XPGfNr2uQLNTBtB6nIorYZv9dstcD5QosApuVq
         wU4H6vNs8qVSzUdw6X7i5CYbR07Q5FKzv7bheNUMoIvjGX4gAS9pCGnHsKHT+GGnuD+h
         H4qttX4lFxXu0xxgoXvlnA/hmvQGk1T1uGrf7EOfpHud3kqjDofX92zfXdROiiaDepNX
         CoSrez7ckn1bqs4MKymcwn20VbI12Ku+yb435gN57UW9mLBAD0tkzkxnrSgZ3AiVt+eb
         F+kQtJUSxwckaNqTFyrtlsTxmjyMAU9qsiEdFDaIeo76OCfW+CMEnlI2X9ep1/xlqH3o
         EtnQ==
X-Gm-Message-State: AOAM532fhVkXIiyF1EXieKJBFnH8snv8Vt7kbmZz81lPQvELAr92gPIp
	5f7ye0Ucl5EqTHR9Y2u/l7feE8RH3vtdTT5TWCk=
X-Google-Smtp-Source: 
 ABdhPJxYFbY7jycx3nhOuXjcBi+3u7iEgnAMU5CF+HJNL++bf630looqCXg4Sk17Z6K/G6PrUEInad6zRJBGPe4iZc8=
X-Received: by 2002:ac8:1e0b:: with SMTP id n11mr8047097qtl.274.1633649327610;
 Thu, 07 Oct 2021 16:28:47 -0700 (PDT)
MIME-Version: 1.0
References: <JbES.1633631366549333859.AamO@lists.yoctoproject.org>
In-Reply-To: <JbES.1633631366549333859.AamO@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Oct 2021 16:28:36 -0700
Message-ID: 
 <CAMKF1srAo_bvuaEc+MG9SVnaAWo2Cju9uZtvHdK8JpsQF1QiNA@mail.gmail.com>
Subject: Re: [yocto] Machine overrides for x86 and x86-64
To: Luiz Balloti <luiz.balloti@timpelmedical.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dc20fc05cdcb9f24"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Oct 2021 23:28:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54989

--000000000000dc20fc05cdcb9f24
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 7, 2021 at 11:29 AM Luiz Balloti <luiz.balloti@timpelmedical.co=
m>
wrote:

> Hi everyone. I'm not a Yocto/bitbake expert, so please forgive me for the
> possibily confusing message.
>
> Our current Yocto setup uses sumo (we're stuck with that right now, don't
> know if it matters). It has one shared layer, an ARM layer with one machi=
ne
> and a "x86" layer with two 32-bit machines. A few recipes in shared our
> layer use a "x86" override to restrict functionality to these machines
> (bbappends were causing trouble, so I went the override route).
>
> We now have a requirement to migrate one of the x86-32 machines to a
> 64-bit system. My first step was to use "genericx86-64" as a test machine
> and inspect a few variables. I was surprised to find out that
> MACHINEOVERRIDES does not list "x86" anymore, just the machine's name. I'=
d
> expect that a common override for x86 machines would be defined, regardle=
ss
> of the bitness, but repeating this with "genericx86" tells me this is not
> the case. We have meta-intel, but it seems our x86 machine variables come
> from meta-yocto-bsp (I wonder now if this is a layer priority issue).
>
> Is this not a common use case or is our setup fundamentally wrong?


x86 is for 32 bit intel arch you won=E2=80=99t see
It in pure 64bit machines

>
>
> Thanks in advance for any help.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54987):
> https://lists.yoctoproject.org/g/yocto/message/54987
> Mute This Topic: https://lists.yoctoproject.org/mt/86152549/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000dc20fc05cdcb9f24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Oct 7, 2021 at 11:29 AM Luiz Balloti &lt;<a href=3D=
"mailto:luiz.balloti@timpelmedical.com">luiz.balloti@timpelmedical.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi everyone. I&#39;m not=
 a Yocto/bitbake expert, so please forgive me for the possibily confusing m=
essage.<br><br>Our current Yocto setup uses sumo (we&#39;re stuck with that=
 right now, don&#39;t know if it matters). It has one shared layer, an ARM =
layer with one machine and a &quot;x86&quot; layer with two 32-bit machines=
. A few recipes in shared our layer use a &quot;x86&quot; override to restr=
ict functionality to these machines (bbappends were causing trouble, so I w=
ent the override route).<br><br>We now have a requirement to migrate one of=
 the x86-32 machines to a 64-bit system. My first step was to use &quot;gen=
ericx86-64&quot; as a test machine and inspect a few variables. I was surpr=
ised to find out that MACHINEOVERRIDES does not list &quot;x86&quot; anymor=
e, just the machine&#39;s name. I&#39;d expect that a common override for x=
86 machines would be defined, regardless of the bitness, but repeating this=
 with &quot;genericx86&quot; tells me this is not the case.=C2=A0We have me=
ta-intel, but it seems our x86 machine variables come from meta-yocto-bsp (=
I wonder now if this is a layer priority issue).<br><br>Is this not a commo=
n use case or is our setup fundamentally wrong?</blockquote><div dir=3D"aut=
o"><br></div><div dir=3D"auto">x86 is for 32 bit intel arch you won=E2=80=
=99t see</div><div dir=3D"auto">It in pure 64bit machines=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex" dir=3D"auto"><br><br>Thanks in advance for any hel=
p.
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#54987): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54987" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/54987</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86152549/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86152549/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000dc20fc05cdcb9f24--

