Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57660C77B75
	for <webhook@archiver.kernel.org>; Fri,  5 May 2023 09:15:13 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.22904.1683278109958155925
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 May 2023 02:15:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=VGQJwwXm;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-4f11d267d8bso1686341e87.2
        for <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 02:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683278108; x=1685870108;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9HSQFnQTgDsLO2FpQ42KcvuY3yICRro7uOErTtozWjk=;
        b=VGQJwwXmIdHSNhBbCdrLIlRUZyzo4RtdcQZMMo/dmSQGpkInSPVf6rn0G4PLy5Hg9N
         dR/ZHr5LyFLZbQz9gysPIIY9pzQ5y+JQ/GK6W9xxj2yzrKSpED7ESMyooWjFlDW49jjM
         9k0qyhZCdqLZlVXxnAI0B9lMRSgdvtiqyckB53AGH7j2jZB7h2+fokxuNWW/vMMNJEI8
         RMJwG1I/9e1zpB6K+GlBmnZJpBBCn23xUKlL1nOb/FELEuV1a+cLR3uYPBfSTiI9QVO8
         Nq9uedUBZNsIknQ+d+c0LIQhzxz0gq8rEemzmbO8YKeqTZxAgEMF4vnDJvI2vfE+lLSu
         SYGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683278108; x=1685870108;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9HSQFnQTgDsLO2FpQ42KcvuY3yICRro7uOErTtozWjk=;
        b=fnqAWXT7qWDjCp1uy5YFS08xAk66VBxLInyAtSwg40xz1upEMnf7XjFKWGHAKeFrMq
         /5aEYzfhqgZhhYJe7HeTo7kt0OcT7LmvqR8hALujNrtZCL5wBiTZ6b0Inl6EDVYnOMgq
         nlPW+32VOV/meOesRqOT3po9rGm9FImoRVQsZki6qdAE+16KG5YJTGuH9X5HokL3WOKx
         c9jFy7qtoOP2GcBLr2jTnPZ5/LrF2scNjUonoccYmtuWp6VvfNk60jT5rJhxJzKLgIm7
         OnnVuGys2D/EWlAT1sQedOOx3q+6XQyEnPk3sXEZVomp0k8hJ5ga/cZ/mw/oql1QLEHu
         Tzfg==
X-Gm-Message-State: AC+VfDwcqwNWOqo6SRdEPS6KHzkciee5ZkdC/ag78HUNGN6W4yH6v2g4
	Mat38mPX/jjKtcJ0fKGA0+GVOr/2F4jD6FfRZGE=
X-Google-Smtp-Source: ACHHUZ63sZydgHYSGkZ9/M8H+p/oeGLfe+dWLVtwVU3eYBplA3Rvsy1vEX4liSI7s46yphvV4mHaVhxsIONrPZHimrs=
X-Received: by 2002:ac2:4c90:0:b0:4f1:37db:667 with SMTP id
 d16-20020ac24c90000000b004f137db0667mr335102lfl.52.1683278107734; Fri, 05 May
 2023 02:15:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37E7d_maOHLbgnN0D14B8qwZ803r8BQHESm2eQk8HMyAQ@mail.gmail.com>
 <CAMKF1sodMNASiQ7AFhpntahxgXxaty5KNxNa=tZfg1xcG0xXaA@mail.gmail.com>
In-Reply-To: <CAMKF1sodMNASiQ7AFhpntahxgXxaty5KNxNa=tZfg1xcG0xXaA@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 5 May 2023 11:14:56 +0200
Message-ID: <CAAfyv37DCQKp0qvMm=LTGM9tq_4o2TRoxGNj6TMWurpQnqmUPg@mail.gmail.com>
Subject: Re: [yocto] make journal logs persistent
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 May 2023 09:15:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59884

On Thu, May 4, 2023 at 7:33=E2=80=AFAM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Wed, May 3, 2023 at 10:29=E2=80=AFPM Marek Belisko <marek.belisko@gmai=
l.com> wrote:
> >
> > Hi,
> >
> > I'm building an image using a kirkstone release for a banana pi m2
> > board. I've created wic file with 2 partitions one for rootfs and
> > second for storage. Storage partition if mounted to /opt/storage and
> > resized to then end of the SD card.
> > wks snippet:
> > part /opt/storage --source rootfs
> > --rootfs-dir=3D${IMAGE_ROOTFS}/opt/storage --ondisk mmcblk0
> > --fstype=3Dext4 --fsoptions=3D"defaults,x-systemd.growfs" --align 2048
> > --fixed-size=3D10M
> >
> > This works fine. I've also added custom systemd-conf file for
> > journal.conf which set logs to persistent like:
> > [Journal]
> > Storage=3Dpersistent
> > ForwardToSyslog=3Dyes
> > RuntimeMaxUse=3D100M
> >
> > In local.conf I've added: VOLATILE_LOG_DIR =3D "no" which makes /var/lo=
g
> > non volatile.
> >
> > When image is build I've added following:
> >
> > persist_logs() {
> >         mkdir -p ${IMAGE_ROOTFS}/opt/storage/journal
> >         mv ${IMAGE_ROOTFS}/var/log ${IMAGE_ROOTFS}/opt/storage/journal
> >         ln -sf /opt//storage/journal ${IMAGE_ROOTFS}/var/log
> > }
> >
> > # Create persistent logs
> > ROOTFS_POSTPROCESS_COMMAND +=3D "persist_logs; "
> >
> > But even after all those changes, the journal is saved in /run/var ...
> >
> > Any ideas what I'm doing wrong?
> >
>
> Perhaps its not mounted yet when systemd journal needs it. So it falls
> back to /run to store it.
> usually I have always done mounting in a pre-init step via something
> like initramfs before passing
> control to systemd. That worked reliably well.
I've tried to mount my partition before systemd is started but I'm still se=
eing:
journalctl -b -u systemd-journald
Apr 28 17:42:27 bananapi-m2-zero systemd-journald[133]: Journal started
Apr 28 17:42:27 bananapi-m2-zero systemd-journald[133]: Runtime
Journal (/run/log/journal/d41d8cd98f00b204e9800998ecf8.
Apr 28 17:42:27 bananapi-m2-zero systemd-journald[133]: Runtime
Journal (/run/log/journal/d41d8cd98f00b204e9800998ecf8.
Apr 28 17:42:27 bananapi-m2-zero systemd-journald[133]: Received
client request to flush runtime journal.
Apr 28 17:51:03 bananapi-m2-zero systemd-journald[133]: Forwarding to
syslog missed 1 messages.
Apr 28 17:51:33 bananapi-m2-zero systemd-journald[133]: Forwarding to
syslog missed 49 messages.

and :
ls -la /var/log
lrwxrwxrwx    1 root     root            26 Mar  9  2018 /var/log ->
/opt/storage/log

Seems OK to me. Any other ideas pls? Thanks.

>
> > Thanks and BR,
> >
> > marek
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#59863): https://lists.yoctoproject.org/g/yocto/mess=
age/59863
> > Mute This Topic: https://lists.yoctoproject.org/mt/98678435/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >



--
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

