Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FACC433F5
	for <webhook@archiver.kernel.org>; Tue, 28 Dec 2021 09:18:24 +0000 (UTC)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
 [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web12.36355.1640683087908903205
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 01:18:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QaVJEVOz;
 spf=pass (domain: gmail.com, ip: 209.85.222.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id i6so30783182uae.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 01:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eSzSx/qRfSTBIOqF87ITqZ2cLWxbfO+7Sn8/tT2yLMY=;
        b=QaVJEVOz1ZxygOvxuK/RSbEdLnYSUXTjPtSzx7Tw2ZeChd/KVfv7AjQqyVRqQDxFeQ
         wkGebHxWRCJMkkrBpuTLL1JiTDrho3oybGLaioh/POzxU2NDiLRmKrnyxnDm8Fp3c7so
         54zMjE5nXJ8ELplDK1cVSK6HrNk3Hx/ZkA4aH0fJn2yK4LmJUMmii649UcfWjsn0nlI8
         pB3YqcpIL/Cq+19qaNh80fvGyJt1+tgNnG/EJJ69jJ2A+kiMHC+HCbJVAxDLlsiS9I1V
         fg6NTKLPDSBODxFXADYTHyKk+4DltjFlK5BV2vjFkOzVFm+mf9O9DTWOdWV/xPqKceUs
         +t0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eSzSx/qRfSTBIOqF87ITqZ2cLWxbfO+7Sn8/tT2yLMY=;
        b=i6FcXXC/5+bNS04FLGDXS/oV6J4HAEZ4SH5GJ8EU495ec7c8JnSqO6vrVhlTYVV5tM
         /+SbUZ8b0lUGpU5hNnS2KsT3QhwOjq3ZkUcijp6qFPDQEu2y6UYG7FYHywojeTGTG4EJ
         CF1fPdRfV0BXPt4hC9waS1QvM4QWeQ07tDCsGvR2wL5CUBwUNnrNXavpODfONKGz7g5s
         9YW5JqYW2Rz8Fkxrr0dDC9pP/Pn5lGrTww/PRJTsfqgXUc12m9Q+UdmVlPHWrR52QM14
         tJjL3K0iwVEzItGKTo0UyEaoWAn+AAh0A0I9rwFYnWpXIoGjPVOMRRgefVFTAxaxU4TG
         IubA==
X-Gm-Message-State: AOAM531R29SR96NvG7AhmGZyQCvm/3UBo363nbypq33yTvqRyiDwdefZ
	iD7tJS1qFhtUyyBejBlv7tUQYbNXds6g1YNofKs=
X-Google-Smtp-Source: 
 ABdhPJy/YwP94lWQ0W9ZHuWdJLuyiyOyLBr3qC6r6QoazmgNptdopoNZ6isrqgNafM3aZFaCelv5GMkqyix7lleIUts=
X-Received: by 2002:a05:6102:370c:: with SMTP id
 s12mr5138673vst.42.1640683086833;
 Tue, 28 Dec 2021 01:18:06 -0800 (PST)
MIME-Version: 1.0
References: <11173.1640637570026517473@lists.yoctoproject.org>
 <4836.1640642659824461408@lists.yoctoproject.org>
In-Reply-To: <4836.1640642659824461408@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 28 Dec 2021 10:17:55 +0100
Message-ID: 
 <CANNYZj99CLXyQipUHG5oZhJ00Bsd+0RUR_mmacYOF6DBBbhtww@mail.gmail.com>
Subject: Re: [yocto] Fetch of shared-mime-info and shared-mime-info-native
 never finishes.
To: Howard <howard.egan@avid.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000946c2205d4314c51"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Dec 2021 09:18:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55672

--000000000000946c2205d4314c51
Content-Type: text/plain; charset="UTF-8"

I think it's just holiday season and freedesktop infra went down with no
one to fix it. Give it a few days, it'll come back.

Alex

On Mon, 27 Dec 2021 at 23:04, Howard <howard.egan@avid.com> wrote:

> Ok so for some reason the repo for shared-mime-info is offline.
>
> I just ran a simple git clone of:
>
>
> git clone git://
> gitlab.freedesktop.org/xdg/shared-mime-info.git;protocol=https
>
> and it never completes or even starts near as I can tell.
>
> The src URI above is what is specified in the recipe.
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55667):
> https://lists.yoctoproject.org/g/yocto/message/55667
> Mute This Topic: https://lists.yoctoproject.org/mt/87984659/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000946c2205d4314c51
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think it&#39;s just holiday season and freedesktop =
infra went down with no one to fix it. Give it a few days, it&#39;ll come b=
ack.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 27 Dec 2021 at 23:04, H=
oward &lt;<a href=3D"mailto:howard.egan@avid.com">howard.egan@avid.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Ok=
 so for some reason the repo for shared-mime-info is offline.=C2=A0=C2=A0</=
p>
<p>I just ran a simple git clone of:</p>
<p><br>git clone git://<a href=3D"http://gitlab.freedesktop.org/xdg/shared-=
mime-info.git;protocol=3Dhttps" target=3D"_blank">gitlab.freedesktop.org/xd=
g/shared-mime-info.git;protocol=3Dhttps</a><br><br>and it never completes o=
r even starts near as I can tell.=C2=A0=C2=A0 <br><br>The src URI above is =
what is specified in the recipe.<br><br></p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55667): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55667" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55667</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87984659/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87984659/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000946c2205d4314c51--

