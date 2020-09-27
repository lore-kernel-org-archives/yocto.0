Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web12.10168.1601200863803373587
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 03:01:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NeLh5Oak;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id v12so3648735wmh.3
        for <yocto@lists.yoctoproject.org>; Sun, 27 Sep 2020 03:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8JrHxjWmU7kXDAOMZa6zybbeyTcnIGK/OV7lbvonqd4=;
        b=NeLh5Oak8CyiKiQNQcdw3e6OQQwqm7EGKnSHR+FOVpfNikc+ualUdA/lY0cKMA65mU
         7Va19o/VjE1LoJewBaVgKO9+FV7dUNN1HVopWwk/uxoTQJHJCKfVTd+xZe+rtJHxYkvv
         fTpHi+ngfd+nQW0YxVJlBpDdg8Ic2WS8iG2P7LWS8uR0Kkhb5u4eWoVZ58isgsEcdh6D
         VD4EMpuX31ehkAai0NfcnDAxhzscXRLAhAP1zCn20V/GS3xWU28Y2eq3onshpAS2eD2b
         HS2kiAzOdP0s+aflrfziTHvQpoeTsJa71DVb7M7Vj9MzI3lOHvHLCqRhmRmhqSSmTOkb
         FGag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8JrHxjWmU7kXDAOMZa6zybbeyTcnIGK/OV7lbvonqd4=;
        b=V7FSYPPVB3MAhRNDLLCvZkJk+WjFbvYppzauGEpcU2ZwjnjuLQjhRTcmxMk9yEweK9
         Oe+NKK/Jis2y+rWn8y8A29D4yr2t+MwG1okIwdWdmmAouuI8LH8HOJmEV0qSDdAS/A0p
         UGh7WE+RouEPok0wfs1/H8Uto3OhE92HWfHxKge11GrWIdRtQ8uBT+BoVwBLrcAsQlDW
         KAA4oeMTdCR7sof6ZpRRvqBN7//Qv6w748XaVWiCJwnljx6fVCK3rmqsevN5zE7uoNaG
         jzQXf3DEQ1ZRfOSHILxDRgUCCSjL7IKRsItNULni2pfPUjS4l502D24pOFAMND3xR7LU
         Yg+w==
X-Gm-Message-State: AOAM532qjXbNiQ1S3Z16IINKUw81eKVmDSd7ZMAy45w2oGBVHmN9Mmph
	SbsWktoQV70GmrH9vQwaOEqVd1/qpDFcCiGAmxA=
X-Google-Smtp-Source: ABdhPJy/MA/Lv49ai2BGkFvFCqUn9GKqmY+ocGCAHEEwT/kdPnwsm01wIIUAmX2hJGSlcT1Xvh6dzP4KcYL7LXKsYsQ=
X-Received: by 2002:a1c:2d85:: with SMTP id t127mr6291867wmt.22.1601200861887;
 Sun, 27 Sep 2020 03:01:01 -0700 (PDT)
MIME-Version: 1.0
References: <Oz9Q.1600442962283102903.Grzg@lists.yoctoproject.org>
In-Reply-To: <Oz9Q.1600442962283102903.Grzg@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sun, 27 Sep 2020 12:00:50 +0200
Message-ID: <CAGAf8LxbtiW=PJdjekbs6hZkLM20UNf0NMxS_AK9d5_5aLyKyg@mail.gmail.com>
Subject: Re: [yocto] #yocto systemd not able to start sshd after a reboot
To: srijan.nandi@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000096415905b048a0d9"

--00000000000096415905b048a0d9
Content-Type: text/plain; charset="UTF-8"

Maybe this should be added to sshd.service [unit] part
(to have added dependency) to solve this problem:

> The sshd.service file is as follows:
> [Unit]
> Description=OpenSSH server daemon
> Documentation=man:sshd(8) man:sshd_config(5)
> After=sshdgenkeys.service
> Wants=sshdgenkeys.service
*Requires=**sshd.socket*

Zoran
_______
On Fri, Sep 18, 2020 at 5:29 PM <srijan.nandi@gmail.com> wrote:
>
> I am facing a peculiar problem with openssh. I have built openssh_8.0p1on
zeus.
>
> The sshd.service file is as follows:
> [Unit]
> Description=OpenSSH server daemon
> Documentation=man:sshd(8) man:sshd_config(5)
> After=sshdgenkeys.service
> Wants=sshdgenkeys.service
>
> [Service]
> Type=simple
> PIDFile=/var/run/sshd.pid
> EnvironmentFile=-/etc/default/sshd
> ExecStart=/usr/sbin/sshd -D $OPTIONS
> ExecReload=/bin/kill -HUP $MAINPID
> ExecStop=/bin/kill $MAINPID
> PermissionsStartOnly=true
> KillMode=process
> Restart=on-failure
> StandardError=syslog
>
> [Install]
> WantedBy=multi-user.target
>
> It starts without issues, if i do a systemctl start sshd.service. If I do
a test of the config file it does not come up with any errors:
>
> genericx86-64:~$ sudo /usr/sbin/sshd -t
> genericx86-64:~$
>
> Problem:
> If I reboot the server, sshd does not start. There is no error on syslog.
I have enabled debug logging, still no logs in syslog.
>
> # Logging
> SyslogFacility DAEMON
> LogLevel DEBUG3
>
> Even systemctl is-enabled sshd shows as enabled.
>
> After a reboot, if I do a systemctl status sshd it shows:
> Loaded: loaded  (/lib/systemd/system/sshd.service; enabled; vendor
preset: enabled)
> Active: inactive (dead)
>
> If I manually run systemctl start sshd.service, everything works
perfectly well without issues. sshd start on 0.0.0.0:2224 and I am able to
ssh in as well.
>
> It's just that systemctl is not able to start sshd after a reboot and
there is no error that i can find or debug. Absolutely run out of ideas to
resolve this. Any help will be greatly appreciated.
>
> Thanks and Regards,
> -=Srijan Nandi
>
> 
>

--00000000000096415905b048a0d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Maybe this should be added to sshd.service [unit] par=
t</div><div>(to have added dependency) to solve this problem:</div><br>&gt;=
 The sshd.service file is as follows:<br>&gt; [Unit]<br>&gt; Description=3D=
OpenSSH server daemon<br>&gt; Documentation=3Dman:sshd(8) man:sshd_config(5=
)<br>&gt; After=3Dsshdgenkeys.service<br>&gt; Wants=3Dsshdgenkeys.service<b=
r><div><span style=3D"color:rgb(255,0,0)"><i><b>Requires=3D</b></i><i><b>ss=
hd.socket</b></i></span></div><div><br></div><div>Zoran<br></div>_______<br=
>On Fri, Sep 18, 2020 at 5:29 PM &lt;<a href=3D"mailto:srijan.nandi@gmail.c=
om">srijan.nandi@gmail.com</a>&gt; wrote:<br>&gt;<br>&gt; I am facing a pec=
uliar problem with openssh. I have built openssh_8.0p1on zeus.<br>&gt;<br>&=
gt; The sshd.service file is as follows:<br>&gt; [Unit]<br>&gt; Description=
=
=3DOpenSSH server daemon<br>&gt; Documentation=3Dman:sshd(8) man:sshd_conf=
ig(5)<br>&gt; After=3Dsshdgenkeys.service<br>&gt; Wants=3Dsshdgenkeys.servi=
ce<br>&gt; =C2=A0<br>&gt; [Service]<br>&gt; Type=3Dsimple<br>&gt; PIDFile=
=3D/var/run/sshd.pid<br>&gt; EnvironmentFile=3D-/etc/default/sshd<br>&gt; =
ExecStart=3D/usr/sbin/sshd -D $OPTIONS<br>&gt; ExecReload=3D/bin/kill -HUP =
$MAINPID<br>&gt; ExecStop=3D/bin/kill $MAINPID<br>&gt; PermissionsStartOnly=
=
=3Dtrue<br>&gt; KillMode=3Dprocess<br>&gt; Restart=3Don-failure<br>&gt; St=
andardError=3Dsyslog<br>&gt; =C2=A0<br>&gt; [Install]<br>&gt; WantedBy=3Dmu=
lti-user.target<br>&gt;<br>&gt; It starts without issues, if i do a systemc=
tl start sshd.service. If I do a test of the config file it does not come u=
p with any errors:<br>&gt;<br>&gt; genericx86-64:~$ sudo /usr/sbin/sshd -t<=
br>&gt; genericx86-64:~$<br>&gt;<br>&gt; Problem:<br>&gt; If I reboot the s=
erver, sshd does not start. There is no error on syslog. I have enabled deb=
ug logging, still no logs in syslog.<br>&gt;<br>&gt; # Logging<br>&gt; Sysl=
ogFacility DAEMON<br>&gt; LogLevel DEBUG3<br>&gt;<br>&gt; Even systemctl is=
-enabled sshd shows as enabled.<br>&gt;<br>&gt; After a reboot, if I do a s=
ystemctl status sshd it shows:<br>&gt; Loaded: loaded =C2=A0(/lib/systemd/s=
ystem/sshd.service; enabled; vendor preset: enabled)<br>&gt; Active: inacti=
ve (dead)<br>&gt;<br>&gt; If I manually run systemctl start sshd.service, e=
verything works perfectly well without issues. sshd start on <a href=3D"htt=
p://0.0.0.0:2224">0.0.0.0:2224</a> and I am able to ssh in as well.<br>&gt;=
<br>&gt; It&#39;s just that systemctl is not able to start sshd after a reb=
oot and there is no error that i can find or debug. Absolutely run out of i=
deas to resolve this. Any help will be greatly appreciated.<br>&gt;<br>&gt;=
 Thanks and Regards,<br>&gt; -=3DSrijan Nandi<br>&gt;<br>&gt; <br>&gt;</div=
>

--00000000000096415905b048a0d9--
