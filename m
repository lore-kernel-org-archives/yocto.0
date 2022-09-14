Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B71AC6FA82
	for <webhook@archiver.kernel.org>; Wed, 14 Sep 2022 17:53:56 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.140.1663178027967830105
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 10:53:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FvCDWUzh;
 spf=pass (domain: gmail.com, ip: 209.85.208.176,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id q17so5334411lji.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 10:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=GrnUqBEereyipo5ye0dZZx83NPgyk1CqJSpF8138Cv8=;
        b=FvCDWUzhlLCHfO7u8BBBI/okcmeGdy828oma9OdRLYgfq8UZL1hrnt3hURWNIEw+xP
         RT2VfS1fqmwcVtKiRonCOxYQyZ7Jub2sqvWV9WKeA0Ha7FLJsust8qlM05hsWe0FNXY4
         7BhYrEcSVky/hIwJn9hdGcaNZO00kInPSmjkhZVrv+gXCh/tdYbA0ABmyFi9gwkTkyaI
         ByFqXJM00Q+veGnctVo0+j3+gQRIJ2yWWrSYdpYMmGZWEd03qDrVNrZEsrz/7eYb4/k7
         D61iSfJRMNICRaDLhDtVmJysTzF55uz46Vf1m07uyBylBp7tmkkVCKJ++4k/a/gV3YvU
         xVdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=GrnUqBEereyipo5ye0dZZx83NPgyk1CqJSpF8138Cv8=;
        b=HAabqZovwi3TDgCoREUhuMedAdvZ1ciRQfxLieFenW6QuKU/+dzAKBcTHgw5WVieCp
         GbF31sZi8OreIADTEN4iThm3gXRnrmL4yrxBHd69tfkh/oYZxhmlX/xeXdQlz0sIuTRb
         iFWPiuNl1gspVKBEU0w0KE2pYpNO0YR5rI3CQe5ddatQD4mX8PMhZQqVdH06vOieV0dl
         YW3NjcIh04D2wfeYzVqcpiwfUspL1Q6sSQ+cC/8O5LkMtErVjFVUr/Y7YNkRYysVoQ52
         Bahuc3FjCCCLxylPUqYr6jYDLuHwsPIA7msgaxGLgHiA6VIGL6k8uboEzIapjY0gTEYi
         Xceg==
X-Gm-Message-State: ACgBeo20v5Yc8h+0g1sIo+8auGmzViedw1Hue6qO4+wmy7eiXFkK+Zss
	XoYZ81yAlD9Ux4fAGH9NUcoCK99k3FwM9pkjrNM=
X-Google-Smtp-Source: 
 AA6agR7NlhrfeGYNkM0dqBrlvbfk/jYXowUp3fJHdHWHhV3vVIweWLqsKBBZeZaf+TIMTkrb2cW+H0uVqD67D9XGfmc=
X-Received: by 2002:a2e:9e50:0:b0:261:e3fd:cdc5 with SMTP id
 g16-20020a2e9e50000000b00261e3fdcdc5mr11141294ljk.56.1663178025981; Wed, 14
 Sep 2022 10:53:45 -0700 (PDT)
MIME-Version: 1.0
References: <cZtA.1663177353817106080.nKg8@lists.yoctoproject.org>
In-Reply-To: <cZtA.1663177353817106080.nKg8@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Sep 2022 18:53:35 +0100
Message-ID: 
 <CANNYZj__GxuzidL4KVuxmtdqp4MK4PVi86+z+-wzmWpmibzJ_Q@mail.gmail.com>
Subject: Re: [yocto] meta-go dependencies #dunfell #golang
To: edmundwatson@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006fdafb05e8a6cf6b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Sep 2022 17:53:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58040

--0000000000006fdafb05e8a6cf6b
Content-Type: text/plain; charset="UTF-8"

It helps if you can name the project. Are the sources public?

Alex

On Wed 14. Sep 2022 at 18.42, <edmundwatson@gmail.com> wrote:

> Hello,
>
>
> I am trying to include a go project in my yocto build. It has quite a few
> dependencies. I may have missed something, there is a meta-go around that I
> have missed? Or a quick way of pulling in multiple dependencies.
> Thanks
>
> Edmund Watson
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58039):
> https://lists.yoctoproject.org/g/yocto/message/58039
> Mute This Topic: https://lists.yoctoproject.org/mt/93683134/1686489
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000006fdafb05e8a6cf6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It helps if you can name the project. Are the sources pub=
lic?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed 14.=
 Sep 2022 at 18.42, &lt;<a href=3D"mailto:edmundwatson@gmail.com">edmundwat=
son@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:soli=
d;padding-left:1ex;border-left-color:rgb(204,204,204)">Hello,<br><br><br>I =
am trying to include a go project in my yocto build. It has quite a few dep=
endencies. I may have missed something, there is a meta-go around that I ha=
ve missed? Or a quick way of pulling in multiple dependencies.=C2=A0<br>Tha=
nks<br><br>Edmund Watson
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58039): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58039" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58039</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93683134/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93683134/1686489</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/dunfell</a><br>
Mute #golang:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/=
golang" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/mutehashtag/golang</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000006fdafb05e8a6cf6b--

