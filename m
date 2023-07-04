Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27FC6EB64DA
	for <webhook@archiver.kernel.org>; Tue,  4 Jul 2023 22:06:52 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web10.4866.1688508407089804632
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jul 2023 15:06:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=bd7m1S41;
 spf=pass (domain: gmail.com, ip: 209.85.167.174, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3909756b8b1so3176879b6e.1
        for <yocto@lists.yoctoproject.org>; Tue, 04 Jul 2023 15:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688508406; x=1691100406;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pb19Gnebp2t06qRBeAJvg/KQ2bCmIZkvuJf/j00v30w=;
        b=bd7m1S41hfSdGbwRdh9hjADME52nt379eL+Z1zFqMXbKx55CWM86ghB1td62BSfpn/
         lAlKRNURh2IyV/vGjYFA4z068qrDN0kaWO0CEH78z2+TWkijiG0HbUgw8vIswne1MZBZ
         z/c1DdU44dynus1t2/lPCzfAe1bMdUIYd4U6dars8XxX8wkIjh4WYBZayZKMVWuYt91D
         iAfEyPWXE5WaUMAMrbTeoqDa+PTnFRL8eMz9MTW/lNlXSOH3OLEbwBqyMy6RSj997rCF
         yMzjSZibkk0b/PTFdEn8k18YgN/TTEHaiPWKpyo37O/gHJWPrOOaZa3NDFugWqATOABv
         ruGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688508406; x=1691100406;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pb19Gnebp2t06qRBeAJvg/KQ2bCmIZkvuJf/j00v30w=;
        b=CzYxjNMdfe5d6u/OtH795DerNOdDS2zKYlq9WVZ/ML28GQAgVOT37guBoIIGjJZIRb
         T1bG41CFASNavfACe/Dk0Z/1gMKapeiIQG1tRKC4GvGnbD+uYTAU5avjAZPraA/fPjF0
         7TwpJOrt7gX2So4Rj3Qxo1Yr+eoMBqetaGJRDnuL9rwz2j30HEJyAxt1IYcqa0wkZ5u/
         bTxbPJj7zfFW9gTvyAuq1HsjUHpJAeipN+3bkiYIeLxUr6gdNYmtu1IPQMxz8jwkS5Na
         DpLdkSzV1eVToFNYQR/B0WhE+tEfRW7ZIfm08X6ZwARl/2IjKjdUDAr+yX3ELiN917Mb
         7Nrw==
X-Gm-Message-State: AC+VfDy8LvH6bHwEMbVdHbwXs/sIQFUuG2wpy8TlNzze/1DgnarGnZCV
	h83DPqzJrpbOwhELoOUuUEWw6Tgmhe9zrbg7kKQ=
X-Google-Smtp-Source: ACHHUZ5vSo3SyK1koabCXOvnsEgce7H5FEzuga75SYisqzrzLQQibvHgkUXiQqq4UQyEW6VFy/xBRsgWPgnhNTeLv98=
X-Received: by 2002:a05:6808:1147:b0:3a0:38c2:2654 with SMTP id
 u7-20020a056808114700b003a038c22654mr13656636oiu.58.1688508406172; Tue, 04
 Jul 2023 15:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv372m-GwXnyJU+Gw_qg7pwdBfM49coXYrfEJNZ6L7eh2-A@mail.gmail.com>
In-Reply-To: <CAAfyv372m-GwXnyJU+Gw_qg7pwdBfM49coXYrfEJNZ6L7eh2-A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 4 Jul 2023 15:06:20 -0700
Message-ID: <CAMKF1so+j1q6-qAXPtuD7ZRuihuC5uvGL8uLGV1zyr22+uQY0w@mail.gmail.com>
Subject: Re: [yocto] poky master weston failed to start
To: Marek Belisko <marek.belisko@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jul 2023 22:06:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60515

On Tue, Jul 4, 2023 at 2:47=E2=80=AFPM Marek Belisko <marek.belisko@gmail.c=
om> wrote:
>
> Hi,
>
> I'm using tip of poky master and build weston image for bananapi-m64 boar=
d. Board boots fine but weston is not started and in log I see:
>
>  Jul 04 21:42:28 bananapi-m64 systemd[1]: Starting Weston, a Wayland comp=
ositor, as a system service...
> [  306.464755] audit: type=3D1006 audit(1688506948.933:18): pid=3D377 uid=
=3D0 old-auid=3D4294967295 auid=3D1000 tty=3D(none) old-ses=3D4294967295 se=
s=3D10 res=3D1
> [  306.477778] audit: type=3D1300 audit(1688506948.933:18): arch=3Dc00000=
b7 syscall=3D64 success=3Dyes exit=3D4 a0=3D8 a1=3Dfffffcdd7050 a2=3D4 a3=
=3D1 items=3D0 ppid=3D1 pid=3D377 auid=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=
=3D0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3D(none) ses=3D10
>  comm=3D"(systemd)" exe=3D"/lib/systemd/systemd" key=3D(null)
> [  306.504195] audit: type=3D1327 audit(1688506948.933:18): proctitle=3D"=
(systemd)"
> [  306.942909] audit: type=3D1006 audit(1688506949.409:19): pid=3D375 uid=
=3D0 old-auid=3D4294967295 auid=3D1000 tty=3Dtty7 old-ses=3D4294967295 ses=
=3D11 res=3D1
> [  306.955818] audit: type=3D1300 audit(1688506949.409:19): arch=3Dc00000=
b7 syscall=3D64 success=3Dyes exit=3D4 a0=3D8 a1=3Dfffffcdd7050 a2=3D4 a3=
=3D1 items=3D0 ppid=3D1 pid=3D375 auid=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=
=3D0 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3Dtty7 ses=3D11 c
> omm=3D"(weston)" exe=3D"/lib/systemd/systemd" key=3D(null)
> [  306.981861] audit: type=3D1327 audit(1688506949.409:19): proctitle=3D"=
(weston)"
> root@bananapi-m64:~# [  307.474004] audit: type=3D1701 audit(1688506949.9=
41:20): auid=3D1000 uid=3D1000 gid=3D1000 ses=3D11 pid=3D375 comm=3D"weston=
" exe=3D"/usr/bin/weston" sig=3D11 res=3D1
> Jul 04 21:42:29 bananapi-m64 systemd[1]: Started Weston, a Wayland compos=
itor, as a system service.
> Jul 04 21:42:29 bananapi-m64 systemd[1]: weston.service: Main process exi=
ted, code=3Dkilled, status=3D11/SEGV

It seems weston is segfaulting. So you want to find out why ?

> Jul 04 21:42:29 bananapi-m64 systemd[1]: weston.service: Failed with resu=
lt 'signal'.
>
>
> When try to run command manually I'm getting:
> root@bananapi-m64:~# /usr/bin/weston --debug --modules=3Dsystemd-notify.s=
o
> Date: 2023-07-04 UTC
> [21:43:49.208] weston 12.0.1
>                https://wayland.freedesktop.org
>                Bug reports to: https://gitlab.freedesktop.org/wayland/wes=
ton/issues/
>                Build: 12.0.1
> [21:43:49.208] Command line: /usr/bin/weston --debug --modules=3Dsystemd-=
notify.so
> [21:43:49.208] OS: Linux, 6.1.9, #1 SMP PREEMPT Wed Feb  1 07:38:58 UTC 2=
023, aarch64
> [21:43:49.208] Flight recorder: enabled
> [21:43:49.208] Using config file '/etc/xdg/weston/weston.ini'
> WARNING: debug protocol has been enabled. This is a potential denial-of-s=
ervice attack vector and information leak.
> [21:43:49.209] Output repaint window is 7 ms maximum.
> [21:43:49.209] Loading module '/usr/lib/libweston-12/wayland-backend.so'
> [21:43:49.255] Error: Failed to connect to parent Wayland compositor: No =
such file or directory
>                display option: (none), WAYLAND_DISPLAY=3D/run/wayland-0
> [21:43:49.255] fatal: failed to create compositor backend
>
> Any idea what I'm missing to make it working? On mickledore weston works =
just fine.
>
> Thanks and BR,
>
> marek
>
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60514): https://lists.yoctoproject.org/g/yocto/messag=
e/60514
> Mute This Topic: https://lists.yoctoproject.org/mt/99955023/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

