Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B966C3601E
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 09:17:52 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web11.6787.1743758262582129254
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Apr 2025 02:17:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ChX3Hb+l;
 spf=pass (domain: gmail.com, ip: 209.85.161.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-6040465b9e2so988596eaf.0
        for <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 02:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743758261; x=1744363061; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VqQHg+7ONUyVNC45BBgriJTAttC7w5pAa/qsT3sR3oc=;
        b=ChX3Hb+lthMELaCaOsiUQAUQ+OLNWNLmh7ogu1pBKHjPmBpTwUFBFAf+OJ4RCI6bEy
         bS00d8cTgt8q+gT/0r5eqHx/XvPyc+YJeF3mRhxPlHZR1Bg+77PHX83G9gLoUoKG3r4U
         9FPJZmdgsET3P9SRXKHCy3LIBYjfnZe9tIE/ZN2eEZL82waFSj6eX6zwOaW+PYdaKz5O
         V68v5bDGByBCwtzAsVMEK49xb2AMVAmM+BkNgXGjEtz+qoe/1RQ5MhxjTFgkNxpMtjCs
         fviCf3d0gbFnjFiYsCkkyGtVpEDHrhsjRAjI37aiBM1qy90JUIhoQ8njEwVdc+Uu06Om
         r6yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743758261; x=1744363061;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VqQHg+7ONUyVNC45BBgriJTAttC7w5pAa/qsT3sR3oc=;
        b=D2f++AJ8rOZYrAn8ZxfqHCn8gYXjOkvAOypS+BAGgyZNQdLvPKPlKR1Nxcntc0ZVLh
         pjrecy3fBacVpu6rzIFRmPE5oCe4I3YzJ330Kd0m+Iru1yh8JSbhYIcQqIC+AOLS4XiR
         BCmZCRD7XznKQvyYmuNheTQJ7UR1Wjj6VQb++qmT9taRTm/roLBzhSzFfO/pLj90vwlT
         bg3oDeppdqAdqDrynVmUpw2oEUEJ7XV9yIgy+YrtPgkXFUj/gLNOu+WnMurHNOuUSrf5
         whLMvsZgI1AQkP0yRgE38UBorzb4gzcGHeOGEZ9ac6wp2t6Ji9QFff7zlQtR+pwJE7Mx
         4szw==
X-Gm-Message-State: AOJu0Yyz+FekKitkWZ/kQx1qfYVETm2w9u1z+bEcAqdWe8Rshy5o0J6g
	3GY6XgOuY+jl01bY/wP8qXD3w2bvwy3dZbrgNfV6tAZOoDrDzSNH/XEUA1jkewO8lQ0Jj+YDiwD
	7hmFVxKCAHWNn8ZjAtnvG+yVIPCVSoSyQ6qw=
X-Gm-Gg: ASbGncsnBv8AcgHJZk3KxXesTSQRUnTw2MYGfHQJkwN6g+ozimvPmiJvzbNrNAYiSRT
	Vftbmljei+DexqU0lhzwFzRiMzCbfo01ZRsWEzo8B0uX5CVrOsvOdJinVNCzsCO7ngFG2xE+Tgb
	nkbzMrmWSXTeQXwBG0reqqoAy1Wg==
X-Google-Smtp-Source: AGHT+IHV+kKfz1DHPBi2J4xwqR77HHG/SCEEkiiczjGnCwZDTgkdiYVYuGIGTlhqzCcgI4ijIue4v1R+ZCCQUaRiQ2k=
X-Received: by 2002:a05:6820:1898:b0:600:1dca:de9b with SMTP id
 006d021491bc7-604166984b6mr968945eaf.4.1743758261477; Fri, 04 Apr 2025
 02:17:41 -0700 (PDT)
MIME-Version: 1.0
References: <r40e.1743754517240171829.1oOU@lists.yoctoproject.org>
In-Reply-To: <r40e.1743754517240171829.1oOU@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 Apr 2025 02:17:15 -0700
X-Gm-Features: AQ5f1JpJctCijlkf5Lj8yauoXAKGcs9et1j_guJjkSl5QTk3VVxCbacjpCazMYw
Message-ID: <CAMKF1spQG3rx134HBik6B7LbgeRWsm7KO-bFp805CvaX=X-3-g@mail.gmail.com>
Subject: Re: [yocto] Yocto on AMD Zen target ?
To: yocto@lists.yoctoproject.org, jguittet.opensource@witekio.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 09:17:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65101

On Fri, Apr 4, 2025 at 1:15=E2=80=AFAM Joel GUITTET via lists.yoctoproject.=
org
<jguittet.opensource=3Dwitekio.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> A customer ask us if it is possible to build a Yocto distro for an AMD EP=
YC 7502P CPU.
> Seems to be a Ryzen Zen architecture according to Wikipedia.
>
> Has Yocto any support for this kind of targets ? I don't find any relevan=
t information.
> Is it just supposed to work with the "genericx86-64.conf" machine provide=
d in poky ?

Generally yes, if you want specific machine maybe use meta-amd see
https://web.git.yoctoproject.org/meta-amd/tree/meta-amd-bsp/conf/machine
I think milan is the one that you will use for this machine.

>
> Thanks
> Joel
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65097): https://lists.yoctoproject.org/g/yocto/messag=
e/65097
> Mute This Topic: https://lists.yoctoproject.org/mt/112080706/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

