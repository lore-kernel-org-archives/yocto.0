Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC5C19776
	for <webhook@archiver.kernel.org>; Thu, 27 Feb 2025 01:05:05 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web10.770.1740618305203572047
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2025 17:05:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TUg4nmvp;
 spf=pass (domain: gmail.com, ip: 209.85.161.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5fe9c1c14baso255191eaf.0
        for <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2025 17:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740618304; x=1741223104; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gQLx2DMXPcsEekaL6spmUdE9ii88VSa8Vl7TXymAhWo=;
        b=TUg4nmvpzI/WGqM2M85zzpNehoA432YO6AzTLlonmX//znyphYw36AxpvLnvvRsUnZ
         PpLrfBjVt6MWPeN1wsXRccH0IpCHDcYAKxTfuslWkDN0IGHGGOvtYdt12l6UBwD7cbF4
         kZUR/wmBUOfzgFobbGSbIMFjxumGCttu0lo+KzCy4vKsz5HTL2iizVVcvBYP+Dxx9/+N
         SxQTwBNYfZW0m6pwHJ5IAj29jXmD9jGSzmu3Vap0k7QZMxCLWFTrz50O9ael6InLlB5V
         N1SJrm3Q7gj0ruIWwxENfGrMYSMkIFEiZU1AKrYHO1oU5X92GzGgGZ+B9t9mrPGGebVH
         MLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740618304; x=1741223104;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gQLx2DMXPcsEekaL6spmUdE9ii88VSa8Vl7TXymAhWo=;
        b=FfvvqLdWfXy12orcajloyskkKQ79Vshn24J/8oxBUgMmEhif8jf8eePMf2GSlH7nRg
         yebgV1T4tGzDsj0ISMRCKnwicMwF4wdhZSEWZqNyCGezFqP9jsfI5gODXjszBqGXBz7G
         UOcQGY21LnSISyuIpDbqOah/pPgGotPlu0x/Dg54u0GQNOvUjWtz4SoT9f6TMLO0aowY
         0ibb2Va65BaJZIjiKG4VqQnvs7hUwQkucjXUqFZTHVRENNC/0ZyzRpyn1V6B1ecPDLtb
         0QFMPT15RhH31skFze4ii7kmwTiF0MfmnhsqKTacSWCAw1UjGN69b7PN1D/tP9/zK3Qy
         SJUQ==
X-Gm-Message-State: AOJu0Yz+kPdR0S7ccmake6ee7A/g6J/W9Aa4rO4p3TPwTiFwUL4oGWfS
	Z5UBKnZhuxsBoHuxqwv+kv6pNuIMJXFjCL+SoGpWEsS/Q7LfQEq5mb+fN7GgrFrrqqmU7vNw/42
	/uECIm7LKu/Dmqp5zaEtNF2W6Ii2NbaAB
X-Gm-Gg: ASbGnctoDpwKZClilffDsc6ALgdJzBj1VVDxtTViP1MU2GcD9MW0mYtJxAa6MWQtPbU
	MAYsWZrTQ0GygnD1UsOxG/k9oFaDqd5tixQ7PW4S2SvxHahCi7XobvqQ9cAhMq2X+NMG1ynXiy5
	icQnxLV5KhDPGkJuuAP6sPzw==
X-Google-Smtp-Source: AGHT+IE1Phc77cCkvDCGL8B1TcbYjkaKFOE6OAPad8hc3xtr3R+8GlcLUrcuAe13dthIKiPcAedwz6R6ZZKvMIR4t1Y=
X-Received: by 2002:a05:6808:2e4f:b0:3f3:d6e2:a2e2 with SMTP id
 5614622812f47-3f547f4ec0fmr3195798b6e.33.1740618304177; Wed, 26 Feb 2025
 17:05:04 -0800 (PST)
MIME-Version: 1.0
References: <fuBw.1740616554278597343.e7gV@lists.yoctoproject.org>
In-Reply-To: <fuBw.1740616554278597343.e7gV@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 26 Feb 2025 17:04:38 -0800
X-Gm-Features: AQ5f1JpxTRp9A-YSZPsSOoCauMa58mVRfLqcRMYwaTeegsZ_kA3uBWpLWdHBN3M
Message-ID: <CAMKF1sobBoLwboKv+bwgSDzTWt5DVusDiBfs242-XXTXiz7_ow@mail.gmail.com>
Subject: Re: [yocto] Help needed with combining host and guest VM images in
 Yocto #qemu #qemux86-64
To: yocto@lists.yoctoproject.org, ryan.a.lovelett@saic.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2025 01:05:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64881

On Wed, Feb 26, 2025 at 4:35=E2=80=AFPM Ryan Lovelett via
lists.yoctoproject.org
<ryan.a.lovelett=3Dsaic.com@lists.yoctoproject.org> wrote:
>
> I am trying to create a Yocto build that produces a host image containing=
 QEMU and also embeds a guest image that Yocto builds. The idea is to have =
a host root filesystem that includes QEMU along with a separate "disk" hold=
ing the guest image. At boot, a systemd unit in the host would launch QEMU =
using the embedded guest image as its disk.
>
> I would like to know if this conceptual approach would work and, if so, w=
hat the best practices are. In particular, I am looking for guidance on:
>
> The recommended method to build the guest image with the host image.
> The recommended method to include the guest image in the host image.
>
> Any pointers or recommendations would be appreciated.

Look into meta-virtualization layer. There are reference images to
build e.g. kvm-minimal-image
which could be your final image. Then build another image for guest
maybe core-image-minimal or something
write a new image which inherits from kvm-minimal-image and adds
core-image-minimal to install
also adds a systemd unit file which is perhaps another package added
to IMAGE_INSTALL of your-image

>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64880): https://lists.yoctoproject.org/g/yocto/messag=
e/64880
> Mute This Topic: https://lists.yoctoproject.org/mt/111407542/1997914
> Mute #qemu:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemu
> Mute #qemux86-64:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemux=
86-64
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

