Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2BF5C4332F
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 14:32:10 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.48.1652365920443734505
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 07:32:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DP+8OSvC;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id kl21so4443663qvb.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 07:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vVsvFkzqd8/W5M7fMu6RAjMHEROON7mlvcjuVmDmQ68=;
        b=DP+8OSvCNS36c9t49Woct0WTJOCV8jluo7++AV+asdfn3iLXMy5KKPZrC0TZ69LGE3
         4joKTNxvYQAdGxGTUgY8FyUNmjrpdARD8FN4IZihi8/nTVXXEFnfH7JlWp7B/GfHOX8N
         5viLAv1IWFznagLPvrZivJo3t7qSMvPFDhlrjYc5oJX2DU2BSI2mgyeQFThKM4CZDtb+
         zeiR2OtvddofT/6tNH3XSmpXwMNjLPXkpGD3MrS1lWBcI+YHWx1UVw8geBLCCGsKVINt
         YKkdcw78q3WrdcMxhMa0sZ7cAf0U5XghocWd09U2dFNVdm/9n+Gl0fggwTo83mBOykVS
         TlHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vVsvFkzqd8/W5M7fMu6RAjMHEROON7mlvcjuVmDmQ68=;
        b=Qrg7FgrCHIqKt595hIxXIAgd9j+ezUj1+4ZV++6uE786d8Ds9Ymc7Q5tVqa112tP3E
         3bDnarNw0gZVFl1FvHLZuVS5td7caUbDoAi5jPG+Bi0ElbreQwxgGXJlWRHacVPvtiop
         DgMAmT0YJlbX/Bo2iTn3tk8K+rRe5uIcUo9EXWL4zfSM3SOHLSXB3a8jS0bWYjcLySnp
         E9ESZxDylE/7EHA3HxyHd6KNiDl0Az/lwKsaa4AquUYswg2tKn8ATPY/vbK+JOgz53eA
         TylOlH8Z7yZt72Tbx9NqH4pndArFLiR8AXJHN+3BN4Rn6SPYegla80khXN5axVgjC2s5
         injA==
X-Gm-Message-State: AOAM5325YuvQmOkiRvTlFJssPK1EkzYJZ6jxw1UO7qknV6foGgGSChRl
	U8jiIaGGOsC3DL4aD4L2Gs7WxtpKs3qw0ZKLZ030d8oOOL8=
X-Google-Smtp-Source: 
 ABdhPJy9X+TeyebpJXombp4D6X4CPhHvnvcULRJyfAu2u6e6UOiA/Jj0zCwlyK6hS4aWGXvUGgsRBDwPzCjHbzCaG7U=
X-Received: by 2002:a05:6214:e6b:b0:45b:1ee:86ec with SMTP id
 jz11-20020a0562140e6b00b0045b01ee86ecmr19498qvb.36.1652365919152; Thu, 12 May
 2022 07:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <38d98d22-b1c5-7b53-dfd-b12bcbe96a92@crashcourse.ca>
In-Reply-To: <38d98d22-b1c5-7b53-dfd-b12bcbe96a92@crashcourse.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 May 2022 07:31:48 -0700
Message-ID: 
 <CAMKF1srMGpfHOng4nw4o8f6nGKPwdNATwyPA7G4MpO_FoV5b4g@mail.gmail.com>
Subject: Re: [yocto] are there any plans for meta-riscv support for StarFive
 VisionFive?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a6706505ded16bd0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 14:32:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57080

--000000000000a6706505ded16bd0
Content-Type: text/plain; charset="UTF-8"

On Thu, May 12, 2022 at 2:00 AM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>
> https://shop.allnetchina.cn/products/starfive-visionfive-ai-single-board-computer?variant=39522167783526
>

Yes There already is beagleV machine and it will be derived from that I
have plans to add it if
Someone is working on it please let me know


> rday
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57063):
> https://lists.yoctoproject.org/g/yocto/message/57063
> Mute This Topic: https://lists.yoctoproject.org/mt/91054159/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000a6706505ded16bd0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, May 12, 2022 at 2:00 AM Robert P. J. Day &lt;<a hre=
f=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><br>
<a href=3D"https://shop.allnetchina.cn/products/starfive-visionfive-ai-sing=
le-board-computer?variant=3D39522167783526" rel=3D"noreferrer" target=3D"_b=
lank">https://shop.allnetchina.cn/products/starfive-visionfive-ai-single-bo=
ard-computer?variant=3D39522167783526</a><br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Yes There alread=
y is beagleV machine and it will be derived from that I have plans to add i=
t if</div><div dir=3D"auto">Someone is working on it please let me know=C2=
=A0</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
rday<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#57063): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57063" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57063</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/91054159/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/91054159/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000a6706505ded16bd0--

