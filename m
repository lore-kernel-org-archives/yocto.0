Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web11.17420.1594911664122733435
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 08:01:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RI0rOc17;
 spf=pass (domain: gmail.com, ip: 209.85.160.171, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id 6so5123063qtt.0
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2020 08:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=wUc81sZfh4UlIbdK8JL8Kob5sU2Oj5mSRyr+6nd+kAc=;
        b=RI0rOc17UuCUrZ7LlfnpxXMWH3PT65zyljggZrxt6MMZykXnOWMiFUNrmnVs9g6BDz
         p1BUhaWoDv6oxQ2P9vrjlf39nHkxuPlR0cdiNwRZfyjy3W5O/h3ZchbRnAHJr2kMoZvT
         +5HyidN5/Fwjv0tV8oo6++c7uJ8tu87Llzzgl+d7qXESgaRERE7FW7I9RiddC08swZOZ
         ZEQP6/QYNSWlZ36A6AmtQ2Bs7F5aqV1yGSCzBTCz/c3BOcC1WWvSCPyfVRun9kqW4vc4
         p3+AeFJlTv5HHMja1L0FmYWc3Cle4TVmCX4bvkI+90FyM6nzKGqp4vSB7Yf3eJ6wxT3y
         WfPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wUc81sZfh4UlIbdK8JL8Kob5sU2Oj5mSRyr+6nd+kAc=;
        b=XH5WlJXg/ef1e2TtXhqEwIHbHHpAB5pR5k+AeWd7r1BybcPn2TBy+mghxGxbbK0wI4
         zdTVHniCIr6p1dhSL9ZWGDZQ7XLBrhN4UfA9UYDFLPiS9VNIs5JFGrEoCM2zP5ubSWHl
         IEnKV1mVQRLr0iFntE19dmoslcFYEXZXMjB5ZKhSgOkXI2TEBvqpjBUPuw+4IY7iCQAg
         8HYoAzqbZHbzROE6x1rU6vwB2cRU+0/vig++B4nksOAEcN+Fsc3YCpgpgXC4uwD96/Ua
         FSrsmqLB2AanoWCSXkD78BhqyvdKCHAYNYTuOtVaw5UguX+I/wuxqlcdHFAFoJrCg/rl
         tsQQ==
X-Gm-Message-State: AOAM5312WIeVhD1GEMxY6toZcPijDLbcugO3GTGiBsAa6GYYerZHO3fz
	kw44E1Fs7/l1UgHFIvf1oEf/NZKbnUmw7jfw157licFjcJM=
X-Google-Smtp-Source: ABdhPJw8Zqzu6Prl89ekMA/kj+SYEbKFNsisbW6VPMPO+9mvm06gNeVx5aA7NeF5EoMH6pAp8WShTfFdlPBpzRE2IFg=
X-Received: by 2002:ac8:18d4:: with SMTP id o20mr5514341qtk.141.1594911662950;
 Thu, 16 Jul 2020 08:01:02 -0700 (PDT)
MIME-Version: 1.0
References: <fAN8.1594908076170368387.Ot4r@lists.yoctoproject.org>
In-Reply-To: <fAN8.1594908076170368387.Ot4r@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 16 Jul 2020 17:00:51 +0200
Message-ID: <CAGAf8LwLB2zD8CHRTA3FxptWa94BDrN3AAO2XbGUQ+EOotZK1Q@mail.gmail.com>
Subject: Re: [yocto] openssh_8.0p1 on zeus - sshd.service not starting #yocto
To: srijan.nandi@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On my BBB board (as test vehicle), the following is true:

root@arm:~# uname -a
Linux arm 5.7.6 #1 SMP Tue Jun 30 16:46:05 CEST 2020 armv7l GNU/Linux
root@arm:~# lshw -short
H/W path  Device  Class      Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
                  system     TI AM335x BeagleBone Black
/0                bus        Motherboard
/0/0              processor  cpu
/0/1              processor  idle-states
/0/2              memory     491MiB System memory
/1        eth0    network    Ethernet interface
root@arm:~# which systemctl
/bin/systemctl
root@arm:~# systemctl status sshd
=E2=97=8F ssh.service - OpenBSD Secure Shell server
   Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset=
: enab
   Active: active (running) since Thu 2020-07-16 12:21:59 UTC; 2h 33min ag=
o
     Docs: man:sshd(8)
           man:sshd_config(5)
  Process: 435 ExecStartPre=3D/usr/sbin/sshd -t (code=3Dexited, status=3D0=
/SUCCESS)
 Main PID: 765 (sshd)
   Memory: 2.1M
   CGroup: /system.slice/ssh.service
           =E2=94=94=E2=94=80765 /usr/sbin/sshd -D

Jul 16 12:00:13 arm systemd[1]: Starting OpenBSD Secure Shell server...
Jul 16 12:21:59 arm sshd[765]: Server listening on 0.0.0.0 port 22.
Jul 16 12:21:59 arm sshd[765]: Server listening on :: port 22.
Jul 16 12:21:59 arm systemd[1]: Started OpenBSD Secure Shell server.
root@arm:~#

Although I am not running YOCTO there, you can see that I have systemd
present, and that my sshd server is running.

You should give us more info using: $ journalctl -u sshd.service -r -n 1

Zoran
_______

On Thu, Jul 16, 2020 at 4:01 PM <srijan.nandi@gmail.com> wrote:
>
> I am facing an issue with openssh_8.0p1 on zeus...systemd is not able to=
 start sshd.service. I am using the following sshd.service file.
>
> [Unit]
> Description=3DOpenSSH server daemon
> Documentation=3Dman:sshd(8) man:sshd_config(5)
> After=3Dnetwork.target sshdgenkeys.service
> Wants=3Dsshdgenkeys.service
>
> [Service]
> Type=3Dforking
> PIDFile=3D@localstatedir@/run/sshd.pid
> EnvironmentFile=3D-@SYSCONFDIR@/default/sshd
> ExecStart=3D@SBINDIR@/sshd -D $OPTIONS
> ExecReload=3D@BASE_BINDIR@/kill -HUP $MAINPID
> PermissionsStartOnly=3Dtrue
> ExecStartPre=3D-/bin/mkdir -p /var/run/sshd
> ExecStartPre=3D/bin/chmod -R 755 /var/run/sshd
> KillMode=3Dprocess
> Restart=3Don-failure
> RestartSec=3D42s
>
> [Install]
> WantedBy=3Dmulti-user.target
>
>
> Has anyone else faced a similar issue.
>=20
