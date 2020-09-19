Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web10.11672.1600523388802362247
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Sep 2020 06:49:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IanW8CYm;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id w186so9875230qkd.1
        for <yocto@lists.yoctoproject.org>; Sat, 19 Sep 2020 06:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iNSEZ1mYVWiOq4bBpNUjbq1dXT9dV8b1QJ78im3/8CA=;
        b=IanW8CYm8bGMHUnPAkuwmjVcdoPOrDRIY1pFL/PKtQCugIjHOKF2n/Ouo08fCV6HLp
         rmeYsvHUaWIV1Bo9Jb/HqNjVWviLqhB1v6jFa72EsakDFk45orYTV59nTC6jkK/uq06S
         RvTyn56PR7Bqo55dvBzllphhQLiPrNQM8cwcpX9OmQxcPl7d69AZlVygn3KLCW08v7ni
         iVZTlL0Bi0Y+/fdA7eEsen1nz7InO+kf7YTuJvDDVAWG8FIH2p2vcbyjQ+1wYDCh8/sZ
         PUeC+RNIlv6KmBF0G30m4PrTDm8grMKcOsFfwg7WWqU/xA35KahVlZvmQOvjALg8r6NM
         1rZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iNSEZ1mYVWiOq4bBpNUjbq1dXT9dV8b1QJ78im3/8CA=;
        b=ik//HmRjgwXQQB1Qh5X8ANnpqcQdkfgIm/ESyAdOSOyyQJ/gqDt+dCZpT72FI+F8G/
         7+VVgUd2/Pc9es/511I7/aPemVD0ig2ZUsV4Me2S38RO0qvZ4uPcN1LDrL2qnlzTNi+D
         OcDBXZDXHpVeylS1bIPSNf0kFEWk1XJEA1bzCCPyD7ZEGWlFISUdrZHgRKsPVRiGmE+n
         JXYuo9RUy0A2Je/0QJaGh4Nt21Bz/at2eWFmCSwbv5rwn94nh+sppVghVmIKIZ8AZNmF
         Ov/GZuPFFmIl9oiEFA9SgzcqMzDVOokKnxOhsuD6EcwIsc2u/9dzjd9K4CK0W2kN/cm/
         6OJQ==
X-Gm-Message-State: AOAM5321XRhj1g4v8Ol6lmeRJvbbfCUXwmPgJv0RXxVBkro/0J7hUJI/
	5Y9zZyVfTATmh4kqk7cvU1/uPzt96ltbHrXpaUo=
X-Google-Smtp-Source: ABdhPJywrINBJGnqyjNR0Y4UuiuPuMes4MIvcDDAiU9sSb1/mmxL6n2cmIYyp6m9h6J/bc3ntWHNSOmcTDUQCzcIoGw=
X-Received: by 2002:a37:a607:: with SMTP id p7mr37711908qke.118.1600523387651;
 Sat, 19 Sep 2020 06:49:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Ly1TKgL5JLo41Bi7MKp-TosaRCFr1NMa3DaL5HBMkX=Bg@mail.gmail.com>
 <31646.1600521150609834192@lists.yoctoproject.org>
In-Reply-To: <31646.1600521150609834192@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sat, 19 Sep 2020 15:49:36 +0200
Message-ID: <CAGAf8LyoLx45em3it8yAaB7WqDJWZLuBBXvLFLvWRLD-4cFeaw@mail.gmail.com>
Subject: Re: [yocto] #yocto systemd not able to start sshd after a reboot
To: srijan.nandi@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f9ccbb05afaae314"

--000000000000f9ccbb05afaae314
Content-Type: text/plain; charset="UTF-8"

Interesting... Here is what I have on Fedora32:

[root@fedora32-ssd system]# pwd
/lib/systemd/system
[root@fedora32-ssd system]# cat /lib/systemd/system/sshd.service
[Unit]
Description=OpenSSH server daemon
Documentation=man:sshd(8) man:sshd_config(5)
*After=network.target sshd-keygen.target*
Wants=sshd-keygen.target

[Service]
Type=notify
EnvironmentFile=-/etc/sysconfig/sshd-permitrootlogin
EnvironmentFile=-/etc/sysconfig/sshd
ExecStart=/usr/sbin/sshd -D $OPTIONS $PERMITROOTLOGIN
ExecReload=/bin/kill -HUP $MAINPID
KillMode=process
Restart=on-failure
RestartSec=42s

[Install]
WantedBy=multi-user.target

*Seems that some leftovers from System V still reside in YOCTO...
Correct???*

Best Regards,
Zoran
_______


On Sat, Sep 19, 2020 at 3:37 PM <srijan.nandi@gmail.com> wrote:

> Hello All,
>
> I finally got it to work!!!
>
> There was a sshd.socket file in /lib/systemd/system which had the
> following line in it.
>
> Conflicts=sshd.service
>
> I remove it and added the following two lines:
>
> After=network.target
> Before=sshd.service
>
> And that did the trick. Now sshd service starts on every boot.
>
> Thanks,
> -=Srijan Nandi
> 
>
>

--000000000000f9ccbb05afaae314
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Interesting... Here is what I have on Fedora32:<br><br>[ro=
ot@fedora32-ssd system]# pwd<br>/lib/systemd/system<br>[root@fedora32-ssd s=
ystem]# cat /lib/systemd/system/sshd.service<br>[Unit]<br>Description=3DOpe=
nSSH server daemon<br>Documentation=3Dman:sshd(8) man:sshd_config(5)<br><sp=
an style=3D"color:rgb(255,0,0)"><i><b>After=3Dnetwork.target sshd-keygen.ta=
rget</b></i></span><br>Wants=3Dsshd-keygen.target<br><br>[Service]<br>Type=
=3Dnotify<br>EnvironmentFile=3D-/etc/sysconfig/sshd-permitrootlogin<br>Env=
ironmentFile=3D-/etc/sysconfig/sshd<br>ExecStart=3D/usr/sbin/sshd -D $OPTIO=
NS $PERMITROOTLOGIN<br>ExecReload=3D/bin/kill -HUP $MAINPID<br>KillMode=3Dp=
rocess<br>Restart=3Don-failure<br>RestartSec=3D42s<br><br>[Install]<br>Want=
edBy=3Dmulti-user.target<br><div><br></div><div><i><b>Seems that some lefto=
vers from System V still reside in YOCTO... Correct???</b></i></div><div><b=
r></div><div>Best Regards,</div><div>Zoran</div><div>_______<br></div></div=
><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Sat, Sep 19, 2020 at 3:37 PM &lt;<a href=3D"mailto:srijan.nandi@gmail.com=
">srijan.nandi@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hello All,<br><br>I finally got it to work!!!<br><b=
r>There was a sshd.socket file in /lib/systemd/system which had the followi=
ng line in it.<br><br>Conflicts=3Dsshd.service<br><br>I remove it and added=
 the following two lines:<br><br>After=3Dnetwork.target<br>Before=3Dsshd.se=
rvice<br><br>And that did the trick. Now sshd service starts on every boot.=
<br><br>Thanks,<br>-=3DSrijan Nandi
<br>
<br>
<br>
</blockquote></div>

--000000000000f9ccbb05afaae314--
