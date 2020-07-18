Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web10.12982.1595086686982260085
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jul 2020 08:38:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DRudGdjJ;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id l6so11449991qkc.6
        for <yocto@lists.yoctoproject.org>; Sat, 18 Jul 2020 08:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=SlPN4CmiP5CxZHznjG6W0ozn0uapLymF+EQXqDkRmQY=;
        b=DRudGdjJylyCbK0CDkrM1wyZZ2EPPyCQRDetSr0RwqFVcQnKGXstPy+Qs9FHeJUih9
         A3ianu+eIZswIzvbWzwUGAl/Ymc3Z4DQeG2MgyNRGulNPgNFm8zuqBj3V5kdPiNGKfGm
         PgA982AwOUwhuVJPddk+rvLov7X/CAr4SN+ZOlkhZEGOcrcVt171EtMoqbujxLvzM3zR
         Ma1WC2BajkIK3NutKguAaiotXNX0p+iIFoggvgt/uuLTqo9c6XDeEvPsdo90gaqlXQVJ
         0JVPYu4fe9zpT4gTr5lufchemEwLN5pNrYj4C4ktFo/b9BFgz3Iv/aMj6uGoleHqDamf
         X1XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=SlPN4CmiP5CxZHznjG6W0ozn0uapLymF+EQXqDkRmQY=;
        b=jWk1ksS2XlVgo9iu5zGyqyEo9kkBLn52od74/Ct0/zwYZ92ZWldrEhS5pE0dK6a1ym
         /TfvD6cePPyJ3qR/zUOmlPOES0vRmRZn7KYds+aIMzpvhbb0daBgBsgz/7EzXoUeX5ql
         iCaeeplJxQ0s9pIpbsC5HgKL7HzXE0c8foELdP096lqL3CxKh3LwRBMJO00zmLN4aQ7M
         KKi0UiduuW4TpqtjEmAMEEeOM1FIF0fUOpRsgv5BKMgCPhQW9eSFyTf/RvuEmFtAIRj0
         JgtynHOuxjqSofRD25BIB0dkyhvg11NjIp5x8t6mrouI92qRtXeSBH1Ik1DS3TeExBBZ
         O85Q==
X-Gm-Message-State: AOAM5309T44S9F2fmHnMFn0phIzj25Pdd9rdJsqB7m4PFGZQmy+nQ9RY
	QT+3ctXZa89M3VBY1QPH19CeO54CvzxkNT/XYl0=
X-Google-Smtp-Source: ABdhPJwxkyt8tP2QDLt4OsJwZVv35up1H1nCVgcpNLtJbBXZWHyiP0l01oq4QHnv/k086Sh1GrEqpynRuJ9xrPjy+ac=
X-Received: by 2002:a37:46d5:: with SMTP id t204mr3322735qka.479.1595086685884;
 Sat, 18 Jul 2020 08:38:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LyWDtm7d0WSMQzmmObAU+COahVmC5j7Dn-8LcEuhMo4EQ@mail.gmail.com>
 <27359.1595085542367063284@lists.yoctoproject.org>
In-Reply-To: <27359.1595085542367063284@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sat, 18 Jul 2020 17:37:54 +0200
Message-ID: <CAGAf8LyO6ZA-FXQ+n5cKRn5XfEnr_UVmur9ncZvT=paCgTpE3Q@mail.gmail.com>
Subject: Re: [yocto] openssh_8.0p1 on zeus - sshd.service not starting [RESOLVED] #yocto
To: srijan.nandi@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is what I have with my BBB on SDcard with Debian Buster:

root@arm:/etc/systemd/system# cat sshd.service
[Unit]
Description=3DOpenBSD Secure Shell server
Documentation=3Dman:sshd(8) man:sshd_config(5)
After=3Dnetwork.target auditd.service
ConditionPathExists=3D!/etc/ssh/sshd_not_to_be_run

[Service]
EnvironmentFile=3D-/etc/default/ssh
ExecStartPre=3D/usr/sbin/sshd -t
ExecStart=3D/usr/sbin/sshd -D $SSHD_OPTS
ExecReload=3D/usr/sbin/sshd -t
ExecReload=3D/bin/kill -HUP $MAINPID
KillMode=3Dprocess
Restart=3Don-failure
RestartPreventExitStatus=3D255
Type=3Dnotify
RuntimeDirectory=3Dsshd
RuntimeDirectoryMode=3D0755

[Install]
WantedBy=3Dmulti-user.target
Alias=3Dsshd.service

root@arm:/etc/systemd/system# systemctl status sshd
=E2=97=8F ssh.service - OpenBSD Secure Shell server
   Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset=
: enab
   Active: active (running) since Fri 2020-07-17 17:22:23 UTC; 22h ago
     Docs: man:sshd(8)
           man:sshd_config(5)
  Process: 650 ExecStartPre=3D/usr/sbin/sshd -t (code=3Dexited, status=3D0=
/SUCCESS)
 Main PID: 691 (sshd)
    Tasks: 1 (limit: 1059)
   Memory: 2.2M
   CGroup: /system.slice/ssh.service
           =E2=94=94=E2=94=80691 /usr/sbin/sshd -D

Jul 17 17:22:22 arm systemd[1]: Starting OpenBSD Secure Shell server...
Jul 17 17:22:23 arm sshd[691]: Server listening on 0.0.0.0 port 22.
Jul 17 17:22:23 arm sshd[691]: Server listening on :: port 22.
Jul 17 17:22:23 arm systemd[1]: Started OpenBSD Secure Shell server.
root@arm:/etc/systemd/system#

Works seamlessly. Just for comparison.

Best Regards,
Zoran
_______

On Sat, Jul 18, 2020 at 5:19 PM <srijan.nandi@gmail.com> wrote:
>
> Helo Zoran,
>
> Type=3Dnotify didn't work, either.
>
> The only thing that worked was Type=3Dsimple.
>
> Thanks,
> -=3DSrijan Nandi=20
