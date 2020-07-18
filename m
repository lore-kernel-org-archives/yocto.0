Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web11.13074.1595086939451485652
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jul 2020 08:42:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=N41llcsC;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id 80so11480668qko.7
        for <yocto@lists.yoctoproject.org>; Sat, 18 Jul 2020 08:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=TO+0SUbwuNye7UEK7yX4rdtFdHWbE9DfRb04mp9motY=;
        b=N41llcsCecLO/0DhweAg7NNtdY6zetj16jH1PBUsGfGVbMB3Wsgk1qx+SNTypqOKSP
         os6QIzrXGYJjtIDZlswkjl+Zo7UwhcT+MrX/ITrRwa6cmP74uXVm7hDsPwqtUispvr8T
         dkNYQ5G014OiCNwM+8gdkd2ob7AuoIdLPjPexzeAhisSq+aZKQblCVeCVRin7RfglSgw
         XR8XNBqa8Fv/aPa6uOUzbLcS3dyAm/tWCBY4P/iRILI6OKro1RtkTPfaXQNU0BhmCJsf
         tvgDaEqAN+H5cHdVvPEf5r+4K78Ns330V/4nie3+Wzg4QKrJyL8bpyH+Vsy48l9av5sd
         9vnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=TO+0SUbwuNye7UEK7yX4rdtFdHWbE9DfRb04mp9motY=;
        b=K97ABOHhIvI5Z5RDnXzWeH6cJmNHubMK8PCps/UqfA8uKvVrNYD5Of4D4bwKWv1OUI
         nmLsjjZM2PE824o3NrpmTDIJ3nGvWSSqPUcRS6/bUsEaV5GN6XB7Wnij8uuWxO4jOhop
         mo8GD/tE/o5egFjEf5sFmtN/7rLx42Yf0YytPwoxKSbZiHBTlhhAuk2kcUJ8vlMNrJZ/
         RLDM4Em6J6pjhvhjM+Z0k2/kNugQaF3Ugvh6xRoz+ZeLdES5BlfsRo1xiZE95V/0UMsH
         4bIg6tjxAMm4Vlv2rTEJGCCCseBbx47PK7xUXIsdbZ0Xl6vX+bt9574Y6eycKAEF3qjk
         YBEA==
X-Gm-Message-State: AOAM530XHmIsZddAascQKyYhmGTMivcxDtLsWs9wxU9orBaqXES6478J
	kyK4liqmZmf8jOPTjiGfymyMBm7aXyFaZO8zZZI=
X-Google-Smtp-Source: ABdhPJzNSOHCeiR5t+Lr7FNondWA4wJJ0KEQhrAlg3LiP1FmihGRU5QuAorf4+EqCBYrHfJvQzYbJUvvXeMJvzdp4SA=
X-Received: by 2002:a05:620a:2492:: with SMTP id i18mr14079016qkn.414.1595086938446;
 Sat, 18 Jul 2020 08:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LyWDtm7d0WSMQzmmObAU+COahVmC5j7Dn-8LcEuhMo4EQ@mail.gmail.com>
 <27359.1595085542367063284@lists.yoctoproject.org> <1622E2E419693155.8854@lists.yoctoproject.org>
In-Reply-To: <1622E2E419693155.8854@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sat, 18 Jul 2020 17:42:07 +0200
Message-ID: <CAGAf8Lwq9V8-iHk5B-Wtqvy6vuPxLP=4s3s12FXmaZBuNCa8zg@mail.gmail.com>
Subject: Re: [yocto] openssh_8.0p1 on zeus - sshd.service not starting [RESOLVED] #yocto
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: srijan.nandi@gmail.com, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Although, I must admit, I have there OpenSSH_7.9p1.

Zoran
_______

On Sat, Jul 18, 2020 at 5:38 PM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> This is what I have with my BBB on SDcard with Debian Buster:
>
> root@arm:/etc/systemd/system# cat sshd.service
> [Unit]
> Description=3DOpenBSD Secure Shell server
> Documentation=3Dman:sshd(8) man:sshd_config(5)
> After=3Dnetwork.target auditd.service
> ConditionPathExists=3D!/etc/ssh/sshd_not_to_be_run
>
> [Service]
> EnvironmentFile=3D-/etc/default/ssh
> ExecStartPre=3D/usr/sbin/sshd -t
> ExecStart=3D/usr/sbin/sshd -D $SSHD_OPTS
> ExecReload=3D/usr/sbin/sshd -t
> ExecReload=3D/bin/kill -HUP $MAINPID
> KillMode=3Dprocess
> Restart=3Don-failure
> RestartPreventExitStatus=3D255
> Type=3Dnotify
> RuntimeDirectory=3Dsshd
> RuntimeDirectoryMode=3D0755
>
> [Install]
> WantedBy=3Dmulti-user.target
> Alias=3Dsshd.service
>
> root@arm:/etc/systemd/system# systemctl status sshd
> =E2=97=8F ssh.service - OpenBSD Secure Shell server
>    Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor pres=
et: enab
>    Active: active (running) since Fri 2020-07-17 17:22:23 UTC; 22h ago
>      Docs: man:sshd(8)
>            man:sshd_config(5)
>   Process: 650 ExecStartPre=3D/usr/sbin/sshd -t (code=3Dexited, status=
=3D0/SUCCESS)
>  Main PID: 691 (sshd)
>     Tasks: 1 (limit: 1059)
>    Memory: 2.2M
>    CGroup: /system.slice/ssh.service
>            =E2=94=94=E2=94=80691 /usr/sbin/sshd -D
>
> Jul 17 17:22:22 arm systemd[1]: Starting OpenBSD Secure Shell server...
> Jul 17 17:22:23 arm sshd[691]: Server listening on 0.0.0.0 port 22.
> Jul 17 17:22:23 arm sshd[691]: Server listening on :: port 22.
> Jul 17 17:22:23 arm systemd[1]: Started OpenBSD Secure Shell server.
> root@arm:/etc/systemd/system#
>
> Works seamlessly. Just for comparison.
>
> Best Regards,
> Zoran
> _______
>
> On Sat, Jul 18, 2020 at 5:19 PM <srijan.nandi@gmail.com> wrote:
> >
> > Helo Zoran,
> >
> > Type=3Dnotify didn't work, either.
> >
> > The only thing that worked was Type=3Dsimple.
> >
> > Thanks,
> > -=3DSrijan Nandi
>=20
