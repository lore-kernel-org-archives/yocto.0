Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7195DC433FE
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 20:57:08 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com
 [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web11.560.1634158627299135213
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 13:57:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hXiArNVo;
 spf=pass (domain: gmail.com, ip: 209.85.221.176,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id j12so2472739vka.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 13:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UUUIKjNIy/vrKObZHmLqnAxG32yq53vDG2hVzMz9lKY=;
        b=hXiArNVosszo4BjsnBVkDhhpuW9d9ThMtuepeWjZ/SFi+Mq+3tEYQT30ay8M45ktlM
         PcR172OiMJRgIS/1bfDEX+7ByEgmS8LflhskLwU667IXarSxL5HjmH8dTAZLe8wg8lXc
         abp3D7mavEaNhhFqMGw8k/pa8lHziChqD2atRn8ZJd6tjliLGDXrLrN9Gz+2QMs0DJ+l
         Iw9fHEqK7dQnsJA0fEB4t3J9PFHCFC8OT+VBXhD8/Wqjoc7TijEtnRd8zzXw4QNCvNgu
         7S+4SXXhepqauepJLDfc7aDQOc1/FMwST4L5vYbyO/8QrEX7YbyjNhpQsEellITz0qVr
         Qx3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UUUIKjNIy/vrKObZHmLqnAxG32yq53vDG2hVzMz9lKY=;
        b=m7TCO1NZNwVN1rLcbY81J+DxEQzJ3IcAUsRy1YnQ9duee7ONB6biF05TaJPEHVwb+h
         0HM7oGuKaxRiGxT09Prc3XwluuirHTOxOAdcben8GeUzzJpNPWRoNbgEMqIjJ3uFtP7M
         0bhiqp7X2XFm2EW1VQA9nU2AlNMwtJ3xN1phsZry3h1EQ37jPjRTZAv08Ls7OewV0cSh
         tU5pO8T1FFKGif9UQdJg4MVqd3FezNq3efIpJXIo21G9ZSv8Qe3xZF++mwucH/iIRzpi
         MDwzQ0hUjusKglTnP2OpcPQKcOEqyFZPNgwuoEcQlWARcf371cljISimbCeX8w7FV6U/
         dBTQ==
X-Gm-Message-State: AOAM531EV3AyOZJWHe3VbIKj0BKRxjwMoYqXxlkaoG6x77T7afQwch1S
	QT0PGGrQlCSX40P1+tNZe+CKOcjG7oQHyupW36I=
X-Google-Smtp-Source: 
 ABdhPJzHkzmrb3EQGujMj5UgsXnUewShH160y89+iiZ8kVCKPyOtYvaOmOA+l9kC3vxxDVG6DejDQ0tYslwsaCAdUPU=
X-Received: by 2002:a1f:1e06:: with SMTP id e6mr1951924vke.24.1634158626415;
 Wed, 13 Oct 2021 13:57:06 -0700 (PDT)
MIME-Version: 1.0
References: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
 <CANNYZj_OpPwNOb+jADgG5Escpwj+WLcr_nhihfLd-NUhyHFTNQ@mail.gmail.com>
 <af53ff0e-5abc-40fb-b4c5-3f36a3c1d8c4@www.fastmail.com>
 <CANNYZj-_znrzjOb_cjtDEg4=ZxMCGEaVzCJ+txkJEMoqzBf_Zw@mail.gmail.com>
 <c39ba639-c4a6-4260-83b0-37a88d247a3a@www.fastmail.com>
In-Reply-To: <c39ba639-c4a6-4260-83b0-37a88d247a3a@www.fastmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 13 Oct 2021 22:56:55 +0200
Message-ID: 
 <CANNYZj9kPTThuVcbCtNZi8C5NwMMRgeRduO9r0n6TNcewy9OwQ@mail.gmail.com>
Subject: Re: [yocto] How to enable graphics acceleration on qemux86-64?
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: "yocto@lists.yoctoproject.org," <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006f298805ce423443"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 20:57:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55061

--0000000000006f298805ce423443
Content-Type: text/plain; charset="UTF-8"

If you switch to master, it's best if you make a new build directory and
dont reuse the one you have.

Alex

On Wed, 13 Oct 2021 at 22:09, Manuel Wagesreither <ManWag@fastmail.fm>
wrote:

> `export DISPLAY=:0` did the trick.
>
> The following shows when still on poky dunfell:
>
> * I can now boot `runqmu kvm slirp sdl core-image-weston`. But gui is
> still slow. I cannot even type `systemctl poweroff` in weston-terminal, it
> inevitably becomes `wweesssttooo[...]`.
> * `runqemu kvm slirp sdl gl core-image-weston` still fails with `Failed to
> run qemu: qemu-system-x86_64: OpenGL support is disabled`.
>
> Updated to current poky master, but got this: `ERROR: ParseError in
> configuration INHERITs: Could not inherit file
> classes/image-mklibs.bbclass`.
>
> Switched to hardknott-3.3.3 which is four weeks old and perhaps a little
> riper. It's currently building.
>
> Regards,
> Manuel
>
>

--0000000000006f298805ce423443
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you switch to master, it&#39;s best if you make a =
new build directory and dont reuse the one you have.</div><div><br></div><d=
iv>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, 13 Oct 2021 at 22:09, Manuel Wagesreither &lt;<a h=
ref=3D"mailto:ManWag@fastmail.fm">ManWag@fastmail.fm</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u><div><div>`expor=
t DISPLAY=3D:0` did the trick.</div><div><br></div><div>The following shows=
 when still on poky dunfell:<br></div><div><br></div><div>* I can now boot =
`runqmu kvm slirp sdl core-image-weston`. But gui is still slow. I cannot e=
ven type `systemctl poweroff` in weston-terminal, it inevitably becomes `ww=
eesssttooo[...]`.<br></div><div><div>* `runqemu kvm slirp sdl gl core-image=
-weston` still fails with `Failed to run qemu: qemu-system-x86_64: OpenGL s=
upport is disabled`.<br></div><div><br>Updated to current poky master, but =
got this: `ERROR: ParseError in configuration INHERITs: Could not inherit f=
ile classes/image-mklibs.bbclass`.<br></div><div><br></div></div><div>Switc=
hed to hardknott-3.3.3 which is four weeks old and perhaps a little riper. =
It&#39;s currently building.<br></div><div><br></div><div>Regards,<br></div=
><div>Manuel<br></div><div><br></div><div></div></div></blockquote></div>

--0000000000006f298805ce423443--

