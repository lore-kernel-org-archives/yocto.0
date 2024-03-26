Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67A1C54E67
	for <webhook@archiver.kernel.org>; Tue, 26 Mar 2024 17:59:40 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
 by mx.groups.io with SMTP id smtpd.web11.16916.1711475972045462171
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Mar 2024 10:59:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RTiAPs1G;
 spf=pass (domain: gmail.com, ip: 209.85.161.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5a550ce1a41so1307024eaf.0
        for <yocto@lists.yoctoproject.org>; Tue, 26 Mar 2024 10:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711475971; x=1712080771; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdsUBp+ZAfGys0QwgalsbrnhFHl5mFZfCFDwOI22sls=;
        b=RTiAPs1GvhGgwQLHRQkR/mDe8kZ+8/HQnIDrcXceTClksQmqJ7WArhbcuQ4uBywV/P
         9U0WqluAAXZ7Eolu2Lsn76WNqIPOLKpUllGYthNHG6CKZGq7TEaZHzOlzHrftQxoDs7s
         qppT+bbTEAX/nxWRxgzR73Z0vPXTcSCdXOcBa7b/jVhdr3EMDHp334pTCYzM1RY1bP6j
         dRksa0jQ5EKbc+lWKCbbAJz7QrRV65rpHNa2K2Q06UQ2Gm8lZGDwEQgPJuEYtb0N+Ocq
         LH1GEjk048nn5Q41zzChApIGoaQ49wzLWo7+TF5S4vucQn9c/GLwhCa9hqK9Ju5+z15T
         GI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711475971; x=1712080771;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zdsUBp+ZAfGys0QwgalsbrnhFHl5mFZfCFDwOI22sls=;
        b=Fs/tBTEoVDrhEnNatjz7h4AmLRFF2oIZIFh3fZU8RPfS8R7D29VC4mbBbAsErZhRHH
         DTTx54Wa/ZaWghltyilbKR2TWZ9yNcsSSefq9bb55cME7pv3vvA8ustkloOQ2DcRTYNA
         Gpr3ghZ6Cqs1+Sdaw5T2BDr7VbvQrIIHtf47lQK3UtDbBuXX0Wt1IVT9D7Q1lS8DYb/h
         l+AO3IUp3NCPEWaYYpLMMiFfwp6jDb1XwkETlAC5sbGisWIvdPbDvEfoZF4/zyBXtY7H
         +T1H+1Nr5inmMquWlFA17aCQcoktuM0BG6TwgcSYPbyQZcJGudCOgG9JsMWi0VlUVK0Q
         ghuA==
X-Gm-Message-State: AOJu0YyNXzOZZ7K2clrPIMRAVsMxYIAlEuQyUhUZi0/69cBP0doGVPM7
	+xAvZbzc0p1WjFaDJZItC3IbduUuoGDHNMdgB0DWlNDC0Ausd4tU2l+ZYvtGl85glj30v80cjQ/
	KMEtt7ehCdRPQe1MhwfDKGOvje2kVfO58
X-Google-Smtp-Source: AGHT+IFtA2efbk7LzoEsorAlbOFktjnd/Lh2SFbS/zJMvIk3g4h2Xyy7naeRmQITpGYR5Qw+ZHYakGERMsB38aKZoC8=
X-Received: by 2002:a05:6870:a714:b0:21f:9eaa:3f5 with SMTP id
 g20-20020a056870a71400b0021f9eaa03f5mr1880638oam.59.1711475971046; Tue, 26
 Mar 2024 10:59:31 -0700 (PDT)
MIME-Version: 1.0
References: <Ws4w.1711454234860006570.EdLJ@lists.yoctoproject.org>
In-Reply-To: <Ws4w.1711454234860006570.EdLJ@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 26 Mar 2024 10:59:05 -0700
Message-ID: <CAMKF1spJDACujg-zPAtCJdMnTNQjUg0rH5eyikfZ69pk3tH4ag@mail.gmail.com>
Subject: Re: [yocto] Pipewire Integration with Yocto 4.0.13 (kirkstone)
To: yocto@lists.yoctoproject.org, sudarshana.singathala@moschip.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Mar 2024 17:59:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62848

On Tue, Mar 26, 2024 at 5:01=E2=80=AFAM Sudarshana Reddy Singathala
<sudarshana.singathala@moschip.com> wrote:
>
> Hi,
>
> I am working with yocto project on IMX8MM board, i am trying to replace p=
ulseaudio with pipewire as I have seen pipewire is part of  yocto meta-opem=
bedded/meta-multimedia/recipe-multimedia/pipewire.
>
> But im not able to see pipewire configuration and commands in my image.
>
> And then i added the below packages in local.conf file
> IMAGE_INSTALL:append =3D " libspa-dbus libpipewire pipewire pipewire-puls=
e wireplumber pipewire-alsa pipewire-modules-meta pipewire-v4l2"
>
> And i getting the below error message while running pipewire service,
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [W][00008.835990]=
 pw.context   | [       context.c:  374 pw_context_new()] 0xaaab10aeba40: c=
an't load dbus library: support/libspa-dbus
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008.836576]=
 pw.module    | [   impl-module.c:  278 pw_context_load_module()] No module=
 "libpipewire-module-rt" was found
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008.838528]=
 pw.module    | [   impl-module.c:  278 pw_context_load_module()] No module=
 "libpipewire-module-profiler" was found
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008.838576]=
 pw.conf      | [          conf.c:  560 load_module()] 0xaaab10aeba40: coul=
d not load mandatory module "libpipewire-module-profily
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 pipewire[483]: [E][00008.839009]=
 default      | [      pipewire.c:  125 main()] failed to create context: N=
o such file or directory

I guess it needs some additional pipewire-modules to be installed, you
might have to add them into the IMAGE_INSTALL as well.

> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: Ma=
in process exited, code=3Dexited, status=3D254/n/a
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: Fa=
iled with result 'exit-code'.
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: Sc=
heduled restart job, restart counter is at 5.
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: Stopped PipeWire Mul=
timedia Service.
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: St=
art request repeated too quickly.
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: pipewire.service: Fa=
iled with result 'exit-code'.
> Apr 28 18:28:37 phyboard-pollux-imx8mp-3 systemd[1]: Failed to start Pipe=
Wire Multimedia Service.
>
> Can some one help me in integrating pipewire.
>
> Best Regards,
> Sudarshan.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62845): https://lists.yoctoproject.org/g/yocto/messag=
e/62845
> Mute This Topic: https://lists.yoctoproject.org/mt/105156440/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

