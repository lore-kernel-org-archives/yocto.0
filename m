Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33CE5C77B7C
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 07:20:35 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.43871.1683184825948345460
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 May 2023 00:20:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=kGXz1jA7;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-4ec8eca56cfso148493e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 00:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683184824; x=1685776824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lc2PetSh7+RhbAnNEVK5sga1GW5fdSbCXeX+fV1Zyho=;
        b=kGXz1jA7XVeDQhcNlv+IuuycSKl8JhU72n9VFa9XfOLvRdLj/wIa0I0iiIEqtj04G1
         X3N5qs6tej6EpMlHwYfMAibEuuSqprdpUP2r2x1Bse5kyhdlsb65i0lUyUtb7TRWAzj2
         7P8TkDybhw2Xh96h7lQclxssE7ztxzlB6Snlji4EXN4g4ISf4+1nJ48/Jfz21I6dXq3+
         yH7RD2VR0lJb/W+timOhjNRg+VWU2lz7DVUMZyCT321qcfzIthbzQ3sVu/JSRgG8J54r
         0iYpq7XYffiTtUNAZN65bjBkblD+V7gd0p0hZZnt/xI5ZvjfN+Lx39Nf9NoHt5OFbSek
         KNlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683184824; x=1685776824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lc2PetSh7+RhbAnNEVK5sga1GW5fdSbCXeX+fV1Zyho=;
        b=WjbkzkGW/wt79xaVxJYSN6z660CyIV9OqglSKwVfXAZb9Rm7z8e/G44foHcw9XFlH7
         QIC9hyxE5DtzWOJP712zFYQfwrvpcLGowYz664sS+O7jVSQJjKs4raTrPTa2PCW9pFiv
         9BK3aDm/nusLT8Yk/XvekGVtW+Yn7oPcKKMVtBGgBVSzX0aFSHohY1RbxxENXbp3sA56
         ohZ2AYpXP0euLfNG022BImgP5CQhIxOT4cn+kmh6xB/fJb+t+HI3Dx8eaLibLvrKPObs
         vXJOUQaH8D8n5tlE9ytaC1B64ngueoJ2QOWrgRV0GGY4BHACL8PT9QUxnSgCbmzHjn4G
         oMYA==
X-Gm-Message-State: AC+VfDzQTXo31rNCePSYepkvene2Nm0IUw0nYa0sMh2xTo6dnVhegxvn
	N2JNgut355EI2Javs7Ny6YcTWHkEiS/YLm7kWwk=
X-Google-Smtp-Source: ACHHUZ4xCv0QHBqiOKjB3c3y94MnOwF8XYbZrLvT5noKOwoCOqIuLncRSwdkYGHgBaUaCnrBGPsqREU4Hzftw9+RIas=
X-Received: by 2002:ac2:54a4:0:b0:4ed:cc6d:1da1 with SMTP id
 w4-20020ac254a4000000b004edcc6d1da1mr1440238lfk.36.1683184823865; Thu, 04 May
 2023 00:20:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37E7d_maOHLbgnN0D14B8qwZ803r8BQHESm2eQk8HMyAQ@mail.gmail.com>
 <CAMKF1sodMNASiQ7AFhpntahxgXxaty5KNxNa=tZfg1xcG0xXaA@mail.gmail.com>
In-Reply-To: <CAMKF1sodMNASiQ7AFhpntahxgXxaty5KNxNa=tZfg1xcG0xXaA@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 4 May 2023 09:20:12 +0200
Message-ID: <CAAfyv37h=UFUAa-RiDgyk8v10VW72T7dw2Rz7ygHiOMDMKwQuw@mail.gmail.com>
Subject: Re: [yocto] make journal logs persistent
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 07:20:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59865

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
Ok thanks I'll give a try.
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

