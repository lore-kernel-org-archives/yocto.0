Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F4D9D6ACC4
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 12:30:30 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.70663.1732710626665087607
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2024 04:30:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=d9jYR5tY;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kiernan@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53de79c2be4so3254139e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 04:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732710624; x=1733315424; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=leO3K3wDwwJa0nlK4axYqpwtOZk+uOwdASae2u5tTaY=;
        b=d9jYR5tYXlk27vVc3txe7quuUuQB90fmc/V7414ahfKaHwVCaQgkrAZyYch6Ic9vXI
         ZQ/amR762R0gUJOpFDggOkWUdIcdNs9f4jc9X2qRQO7mNrqQxZPf3eW5RTOu0lIJuNqg
         vUrfV7TmIzJ3cUdFq6eEf1TlomBUzQXhL4rahHgYZCJZ+tTl+jwhRlrehw79oNNuaUN+
         ++Hg/iXiNvg5D6VpzdEsXw2M3wwOPkVLoLMYoGS/p0GQV6NjVBH+mjofRQD7O1paawv7
         Ko8G43spOZWjZlxWZ6SEEuQs1VKhEinc3EPLjKY+VLh22HJgBdd6nEZbtLnSOQBbY0yq
         aL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732710624; x=1733315424;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=leO3K3wDwwJa0nlK4axYqpwtOZk+uOwdASae2u5tTaY=;
        b=MBSsmHJr9VdLloSXDMlHT2k/dZASqzTsU0+d6tI69RyD4nLjyRVbghh7YjGoXXGCPE
         qcViQ2r8pC9OOJCStqRFoStD5cJX0bujTRNGcuYl5QYZxsMQXUCxFAEVTJvB3WUDP3TN
         QbMZO9scxHqGACSac0Wh4h8p/XoDHOE3JXjIzs51i3X88KUZKQFsQkodJjCuswQxfkqq
         wP5cfqTskvdbykrfyGdbvWQdSm4CZVSv3DbmA06uquxfPti6nXFR5MvRrofB71kYWAFe
         72Tcwq64596CtUqC32Ng6eQgM3s4xVDi7HiDcaFwKtl3PlMUVqQrbHSmq4mIl3eHZoQl
         xOSA==
X-Gm-Message-State: AOJu0Yww8Qq7Q6dtXSqL0I6j/EEnt06Y04h+MGCWJPuY6Alj9D/Qt1eT
	i32fZebsxBxym2Brebi6FZAZ+5sTERZozIIJsOzFpL7S/LXKogsdIKjRcyjq00BjFKf0yvapH8Y
	WsbwjBjSH3dzWll5MbMUwV+KQSyKZBvStxzA=
X-Gm-Gg: ASbGncsHQNGDdSKEXhpn+RUkXJJ4kZ96UvuTWaIBCs7lVmCOHKI9WeGR9Xv3WTH5WFU
	uOmpewzHN8pLnEL+HgPDzThOonfgq/dlGhxK2Iij4CJLJ53ii59pZqtUQzgQ=
X-Google-Smtp-Source: AGHT+IGzxvV2MNrUivFBx/J8bSOjLV4fqpUVkPr8lpmmoSsditkm8GP/1bOYQaAJ/pwTzXojZsE7W06LtYQWoI4JGmA=
X-Received: by 2002:a05:6512:32a8:b0:53d:f09e:99d3 with SMTP id
 2adb3069b0e04-53df09e9a97mr957908e87.0.1732710624364; Wed, 27 Nov 2024
 04:30:24 -0800 (PST)
MIME-Version: 1.0
References: <JHN1.1732688730575421161.q61g@lists.yoctoproject.org>
In-Reply-To: <JHN1.1732688730575421161.q61g@lists.yoctoproject.org>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Wed, 27 Nov 2024 12:30:12 +0000
Message-ID: <CAO5Uq5Qy5FsKhTf82_Tw-Zn2zQqVL2KVmLw1EYhD2Ox9WR8H4A@mail.gmail.com>
Subject: Re: [yocto] Disabling unused service to reduce boot time (Krikstone version)
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 12:30:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64365

Leave the recipes as they are and install a preset for your image
which disables those services in /usr/lib/systemd/system-preset/
(called something like 00-myimage.preset - files are read
alphabetically, first match takes effect), then list the things you
want to disable in there;

disable avahi.service
disable iptables6.service
etc.

See https://systemd.io/PRESET/

On Wed, Nov 27, 2024 at 6:25=E2=80=AFAM sateesh m via lists.yoctoproject.or=
g
<sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi Team,
>
> I want to improve my boot time so for that I want to disable few services=
 which is running during boot up. I want to disable below mentioned service=
s.
>
> avahi,iptables6,iptable, zeroconf,polkit,drm,
>
>  services
>
> 6.242s  user@0.service
> 2.01s ldconfig.service
> 2.359s iptables.service
> 2.293s ip6tables.service
> 1.434s systemd-userdbd.service
> 1.463s avahi-daemon.service
>  1.231s modprobe@drm.service
>  1.170s sys-kernel-debug.mount
>  1.163s sys-kernel-tracing.mount
>  1.161s modprobe@configfs.service
>  1.160s tmp.mount
>  1.157s kmod-static-nodes.servic
>
> I have followed below steps but not working this
>
> SYSTEMD_AUTO_ENABLE_avahi =3D "disable"
> SYSTEMD_SERVICE:avahi =3D "avahi-daemon.service"
> IMAGE_INSTALL:remove =3D "avahi"
> SYSTEMD_AUTO_ENABLE_tx-powermon =3D "disable"
> SYSTEMD_SERVICE:tx-powermon =3D "tx-powermon.service"
> SYSTEMD_AUTO_ENABLE_polkit =3D "disable"
> PACKAGECONFIG:remove =3D "polkit"
> SYSTEMD_AUTO_ENABLE_ip6tables =3D "disable"
> PACKAGECONFIG:remove =3D "ip6tables"
> SYSTEMD_SERVICE:ip6tables =3D "ip6tables.service"
> IMAGE_INSTALL:remove =3D "ip6tables drm"
> DISTRO_FEATURES:remove =3D "zeroconf"
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64353): https://lists.yoctoproject.org/g/yocto/messag=
e/64353
> Mute This Topic: https://lists.yoctoproject.org/mt/109803053/3618097
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kiernan@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Alex Kiernan

