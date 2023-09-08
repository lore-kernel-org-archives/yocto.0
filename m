Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15C4EE57DE
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 07:21:53 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.34109.1694157704223123301
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Sep 2023 00:21:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20230601.gappssmtp.com header.s=20230601 header.b=kt6RcoJg;
 spf=softfail (domain: sidebranch.com, ip: 209.85.216.42, mailfrom: leon@sidebranch.com)
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-26b41112708so1364090a91.3
        for <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 00:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20230601.gappssmtp.com; s=20230601; t=1694157703; x=1694762503; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jCERIT6+rMTcCR3LBtRnkiy3hgKWYQoO/k9ZDW4qhj8=;
        b=kt6RcoJgYEOU295QltRR1RgXSSfw0XipPT/GbsKgOxTLo71ex9dEis3r4BH4rc7obW
         naBpNIu12No16r3EpybOANGUMKAhc+dnsgbj1Z2KlOPqnGgM/kgrgaf5svt3xjelWesv
         fsKpR5zisP/aQlizZEX43FzDSwoxWmZaoO6Rl5c0c4YaqqDiNBn4xOfawArNTDYTE1IR
         7zYg7klIeM/zEBnQS9JOEt6Y3UFJg5h78/88NeCr0IDcmnY5gKqcRWFIRg5Ga09BBxcz
         pmDiQvi5K7VNoDWEe88h0EM+2KY/rK9R64fpGxrpw1qk3S35cAt36yC41YcmlrcEVgAP
         jbiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694157703; x=1694762503;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jCERIT6+rMTcCR3LBtRnkiy3hgKWYQoO/k9ZDW4qhj8=;
        b=eVgHXBHDVDYfBRqXtTf9xjvg2zg9idW/TV/EkSt7oMK4ZdRkQnRBue2IDO/RkM0cJQ
         8aOFwUfZZ2qVKW9uMlrPCHhxoJE58NRUp/+bf/WFW7l6Ru6ctxoSiPsCNx51KAqqtUaj
         F+Ogl2Gi+9WhH4OksnIsJinJ2ENqRC0zqVIgTk7fKdTv1K6RH0pO7Q6LNKLL8zrw1Owi
         ZmFsYIyX8tyIzoDvQ64d/k6TRP/aK6JAE55av9hwSzMXfzMd8Lot5qwFyH68EtcGq8DZ
         I0pMeAHf+1GVF7CQdVOmAxj0JCtGsaCDeyeKBqHWeuU/qcYXmW2kiTW6s1eFQe/GLwjx
         rfOg==
X-Gm-Message-State: AOJu0Ywi60YZiYQIFnA3GacuNnM4PID7tv88yA/2ssCJdDCtgGTmqfQj
	y/32lOUanOLRlsygZ/zJf97Gn9mhZpS7QNNLBfi+Ng==
X-Google-Smtp-Source: AGHT+IEWL4O91eqqv7ewK+8t4ohyJe4rVa65B4ECSlUcdG8TkKd6Hs8X8y8n0UtMElAFmcL9AgXvkl8hfEMBzVZwCC4=
X-Received: by 2002:a17:90a:d504:b0:26d:227c:9068 with SMTP id
 t4-20020a17090ad50400b0026d227c9068mr1858062pju.16.1694157703295; Fri, 08 Sep
 2023 00:21:43 -0700 (PDT)
MIME-Version: 1.0
References: <CA+chaQdiOTNYTsrhPzbT=9aB3fT9Mo=DoorvNm4Bay2ioRTsdA@mail.gmail.com>
 <27912.1694157496851550594@lists.yoctoproject.org>
In-Reply-To: <27912.1694157496851550594@lists.yoctoproject.org>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Fri, 8 Sep 2023 09:21:32 +0200
Message-ID: <CAMjhiJi-n_kGOvZLKaUScPmzqAr5uHMijv3NgJJJooS_iL=EBg@mail.gmail.com>
Subject: Re: [yocto] Memory requirements for building images with different architectures
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000194c490604d3d442"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 07:21:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60948

--000000000000194c490604d3d442
Content-Type: text/plain; charset="UTF-8"

Hello Mohammed,

On Fri, 8 Sep 2023 at 09:18, MOHAMMED HASSAN <hassanchattarki@gmail.com>
wrote:

> My builds on an average take 15-20 mins with the build folder intact.
> How much time do you think it will take on average with rm_work enabled?
>

Depends on what changed. If nothing changed, time remains the same, except
for maybe the final image build.

But what is your goal? Reduce development/test cycle time? There are
ways to do that, sometimes.

Cheers, Leon


> Regards,
> Hassan
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60946):
> https://lists.yoctoproject.org/g/yocto/message/60946
> Mute This Topic: https://lists.yoctoproject.org/mt/101231469/1051774
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> leon@sidebranch.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000194c490604d3d442
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello Mohammed,</div><div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, 8 Sep 2023 at 09:18, MOHAMMED=
 HASSAN &lt;<a href=3D"mailto:hassanchattarki@gmail.com">hassanchattarki@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">My builds on=
 an average take 15-20 mins with the build folder intact.<br>How much time =
do you think it will take on average with rm_work enabled?<br></blockquote>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Depends on what changed. If n=
othing changed, time remains the same, except for maybe the final image bui=
ld.</div><div dir=3D"auto"><br></div><div dir=3D"auto">But what is your goa=
l? Reduce development/test cycle time? There are</div><div dir=3D"auto">way=
s to do that, sometimes.</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>Cheers, Leon</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><br>Regards,<br>Hassan
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60946): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60946" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60946</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101231469/105=
1774" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101231469/1051774</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:leon@sidebranch.com" target=3D"_blank">leon@side=
branch.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000194c490604d3d442--

