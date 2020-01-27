Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web09.14707.1580157062134062683
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 12:31:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=b1t9AMxd;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id d9so8445457qte.12
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2020 12:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=q9IBoCzVeav5ikhz7kGExCw+5i3Tr7Cf0u8jBeML8U8=;
        b=b1t9AMxd3dqWJWDGZIvkTF/6dKdmOeewM9t6m6upcJZ62WPh0jHiC/d9p3crccgWeV
         AaQEJ3SNXFr1prensxKEq8QWoht0r9LVW4xEaeQS7qXLzXnfr+0vJcsda5ffkzayXBit
         +uBPoym2rONB9le6qFKAQKWG++wOQucgeUHP6+UHzvJNs1PHxwRNWca9CEqeS3C+FLMO
         4xsY5xHai2jq+J/ZMvZkTzUBexEYF61N860lafErdxuQWefECeodnl9ePAQzXvn4Zl62
         ncQnXBn3kEhOXBWOgY7sjS+nBingpfdyX/6HvN4BI3x0Kv8GNACdsfGJimPgqbKnPERh
         cRug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=q9IBoCzVeav5ikhz7kGExCw+5i3Tr7Cf0u8jBeML8U8=;
        b=a2qF3dWS55tAYmFx+vcPyZxEa5LOSUCTyvdoPI/+kakeNQ1KwVx3IpLR7x4xeo1rot
         awkTiFqNcgZA732qsJXKJvbiv+JJoJqSMhtD/beVge2fqOPClcDKPpD60Dw1hAoADnSC
         9uFcVN2LG74BIkpN0zbWGnz6VOTK/rbRf2dwe7nQvMQ0tIbTVOO+e4l0/GUJ4xIS29D5
         BXHu6c4o1gl4AXCKaPuboUNXb+MCMpNzRhoU8HkDUpUvQvUzZrZS3n5S8vhvXr6FNqdZ
         HRwYTH2TY7Q6hoU9aoI5hx1xoQ2SHzv5WCuUcZkUcjWBpY4prmTTiUUCcS6FM1343OMr
         1HPg==
X-Gm-Message-State: APjAAAX+bG1WNJCiqMII2ulipkdFOzhxP3ykF9anZiw4v/6/D04ocAbA
	zVAjCtlnDaj10iahpYy1DxN2T7l/v7q9S+wc+ODMxtGfjJM=
X-Google-Smtp-Source: APXvYqzXyrpI7KwS2OjNPMDCKkV7GBPmHdjRxIh+t53YOql7Nzjym6yk5lhvMhw23S2JymZj7hE3sR1Zi2toUw6+Obw=
X-Received: by 2002:ac8:405a:: with SMTP id j26mr8022941qtl.88.1580157060828;
 Mon, 27 Jan 2020 12:31:00 -0800 (PST)
MIME-Version: 1.0
References: <xRXV.1580156183893357588.xV3g@lists.yoctoproject.org>
In-Reply-To: <xRXV.1580156183893357588.xV3g@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 27 Jan 2020 12:30:34 -0800
Message-ID: <CAMKF1so1Nk969OecOQ1AVRAWAJv1TNdxJtgqonO9mMuN6PwUZQ@mail.gmail.com>
Subject: Re: [yocto] ttyS0 timeout but not using ttyS0 #yocto #systemd
To: William Durocher <wdurocher@it-link.ca>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 27, 2020 at 12:16 PM William Durocher <wdurocher@it-link.ca> wr=
ote:
>
> We have a build using warrior it boots up well but has a very long boot =
time of around 95 sec. Using systemd-analyze I notice that we the boot take=
s a long time before getting to multi-user.target. As can be seen for the c=
ritical chain analysis below, there is a 60s gap after we get our console o=
n ttyO0.
>
> multi-user.target @1min 33.351s
> =E2=94=94=E2=94=80getty.target @1min 33.298s
>   =E2=94=94=E2=94=80serial-getty@ttyO0.service @34.432s
>     =E2=94=94=E2=94=80basic.target @31.841s
>       =E2=94=94=E2=94=80sockets.target @31.804s
>         =E2=94=94=E2=94=80sshd.socket @31.532s +238ms
>           =E2=94=94=E2=94=80sysinit.target @31.183s
>             =E2=94=94=E2=94=80sys-kernel-config.mount @59.350s +962ms
>               =E2=94=94=E2=94=80systemd-journald.socket @2.553s
>                 =E2=94=94=E2=94=80system.slice @2.027s
>                   =E2=94=94=E2=94=80-.slice @2.028s
>
>
> Looking at the logs I can see that the cause is most likely that ttyS0 i=
s trying to come up.
>
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.=
device/start
>  timed out.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: Timed out waiting for device /de=
v/ttyS0.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: Dependency failed for Serial Get=
ty on ttyS0.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: serial-getty@ttyS0.service: Job =
serial-getty
> @ttyS0.service/start failed with result 'dependency'.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.=
device/start
>  failed with result 'timeout'.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.=
device/start
>  timed out.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: Timed out waiting for device /de=
v/ttyS0.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: Dependency failed for Serial Get=
ty on ttyS0.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: serial-getty@ttyS0.service: Job =
serial-getty
> @ttyS0.service/start failed with result 'dependency'.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.=
device/start
>  failed with result 'timeout'.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.=
device/start
>  timed out.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: Timed out waiting for device /de=
v/ttyS0.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: Dependency failed for Serial Get=
ty on ttyS0.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: serial-getty@ttyS0.service: Job =
serial-getty
> @ttyS0.service/start failed with result 'dependency'.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.=
device/start
>  failed with result 'timeout'.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.=
device/start
>  timed out.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: Timed out waiting for device /de=
v/ttyS0.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: Dependency failed for Serial Get=
ty on ttyS0.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: serial-getty@ttyS0.service: Job =
serial-getty
> @ttyS0.service/start failed with result 'dependency'.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]:
>

what is SERIAL_CONSOLES variable set to ? this should be machine setting.

>
> We are not using ttyS0 for the console or anything. In our distro config=
 and layer we refer instead to ttyO0.
>
> Looking through the environment of the build with "bitbake -e our-image"=
 I see that we had
>
> # $KERNEL_CONSOLE
> #   set? /home/wdurocher/work/gammaip/warrior/sources/meta/meta/conf/dis=
tro/include/default-distrovars.inc:4
> #     "ttyS0"
> KERNEL_CONSOLE=3D"ttyS0"
>
>  I modifed our distro configuration setting KERNEL_MODULE to ttyO0
>
> KERNEL_CONSOLE=3D"ttyO0"
>
> and now bitbake -e gives me:
>
> # $KERNEL_CONSOLE [2 operations]
> #   set /home/wdurocher/work/gammaip/warrior/sources/meta-gammaip/conf/d=
istro/gammaip.conf:18
> #     "ttyO0"
> #   set? /home/wdurocher/work/gammaip/warrior/sources/meta/meta/conf/dis=
tro/include/default-distrovars.inc:4
> #     "ttyS0"
> # pre-expansion value:
> #   "ttyO0"
> KERNEL_CONSOLE=3D"ttyO0"
>
> But loading this image, the logs still shows the timeout waiting for tty=
S0. What else could be making Linux try to configure ttyS0 ?
>
> Note that I saw in my search that kernel CONFIG_FHANDLE should be set an=
d it was already so.
>
> Thanking you for any help on this,
>
> William Durocher
>=20
