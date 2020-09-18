Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.938.1600447047149448346
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2020 09:37:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UW8hjIud;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id g72so6792112qke.8
        for <yocto@lists.yoctoproject.org>; Fri, 18 Sep 2020 09:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jFS2RpSk/MD7ohCYPGPrhSmwTvMvkGkhZNbo7sqshRU=;
        b=UW8hjIudJr6bftyWlQKtix4fl+vCbz+cfXefjZJrcVXULNzZzG7NkFvL17eXhPX5NC
         DV96AmdVJ3uig7xVGgPozz/5Bwu/P+7I1huEWnzoNyOuRSGj9q4V24QiM13lYA2bgm4/
         nrV83Pr5nOnUcapjZjKud8xXxtBmkwAoUs3tq55IwnXGLelR24wSivzTHHA7p0OapvQl
         Uk9B3pIU4bLWf20LzTNymLMAGNNn4X9w66CmwzILkdEMHRMGdkYfj8M5YzeAUvQyz7Tk
         YJ0bFrtRDCxpEgWP9aFeiCHVTDQf32zwer7xiEs+/GusI5YyE/YfpipNOPN6uCPZmcLe
         H7vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jFS2RpSk/MD7ohCYPGPrhSmwTvMvkGkhZNbo7sqshRU=;
        b=t6hVqOOktK+1U2l10e2UDi0nTqpe1SgkBUX2sf5sF5He8c6BWUadr+m/DeDy6WepjD
         qdqdQFT09wp8O/Mr8+Qg3UTfyG4umq4T0foNPI3wMspoaJyIngNrLC80Yon7Ed0m1r2i
         UVuGi2x7PTjgQS9QeF6a3KJ+xxXVuGwwUVEDhf4Xu1Z2bEPFfEXR4yjp2gW5iljtRdeN
         oRv5dzHsCU5vUtkLPA+pq2hjE5FXpgjkSseQfOATDW41lO9go2qhSOtdnELWvvREchjC
         aGMV/AbGnAlCgJvcGCqKIG/g/87nidpepK8okJ0oQ/TNLG4k8Zu6djDPdiooc4oXatxN
         cnJA==
X-Gm-Message-State: AOAM531lcs3bdO83HNvX54aRxt//+F6SXlovVO75jGYYqFHY3N0tpAdb
	Wa8LCdywj71YKL0xgh8vau3LhL/hZKWthLnCro0=
X-Google-Smtp-Source: ABdhPJztERgsNiQ1KnlZTbu7ZAVtZIlpMGV9SDKz40zX82jUf7K/Poy1Y9S9OW+5ToiWRQWLDqqM4Ew5aEmX6Hu5vvI=
X-Received: by 2002:a37:9046:: with SMTP id s67mr34007739qkd.212.1600447046109;
 Fri, 18 Sep 2020 09:37:26 -0700 (PDT)
MIME-Version: 1.0
References: <Oz9Q.1600442962283102903.Grzg@lists.yoctoproject.org>
In-Reply-To: <Oz9Q.1600442962283102903.Grzg@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 18 Sep 2020 09:37:00 -0700
Message-ID: <CAMKF1soA8avt3X2CUY7M29aEo5dJZ2enUnEyOYK1Yq1eK9Deew@mail.gmail.com>
Subject: Re: [yocto] #yocto systemd not able to start sshd after a reboot
To: srijan.nandi@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

does something like this work?

[Unit]
Description=OpenSSH Daemon
Wants=sshdgenkeys.service
After=sshdgenkeys.service
After=network.target

[Service]
ExecStart=/usr/bin/sshd -D
ExecReload=/bin/kill -HUP $MAINPID
KillMode=process
Restart=always

[Install]
WantedBy=multi-user.target

On Fri, Sep 18, 2020 at 8:29 AM <srijan.nandi@gmail.com> wrote:
>
> I am facing a peculiar problem with openssh. I have built openssh_8.0p1on zeus.
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
> It starts without issues, if i do a systemctl start sshd.service. If I do a test of the config file it does not come up with any errors:
>
> genericx86-64:~$ sudo /usr/sbin/sshd -t
> genericx86-64:~$
>
> Problem:
> If I reboot the server, sshd does not start. There is no error on syslog. I have enabled debug logging, still no logs in syslog.
>
> # Logging
> SyslogFacility DAEMON
> LogLevel DEBUG3
>
> Even systemctl is-enabled sshd shows as enabled.
>
> After a reboot, if I do a systemctl status sshd it shows:
> Loaded: loaded  (/lib/systemd/system/sshd.service; enabled; vendor preset: enabled)
> Active: inactive (dead)
>
> If I manually run systemctl start sshd.service, everything works perfectly well without issues. sshd start on 0.0.0.0:2224 and I am able to ssh in as well.
>
> It's just that systemctl is not able to start sshd after a reboot and there is no error that i can find or debug. Absolutely run out of ideas to resolve this. Any help will be greatly appreciated.
>
> Thanks and Regards,
> -=Srijan Nandi
>
> 
>
