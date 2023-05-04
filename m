Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68FEC77B78
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 05:33:44 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
 by mx.groups.io with SMTP id smtpd.web10.43179.1683178418517810853
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 22:33:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=pE0PFK19;
 spf=pass (domain: gmail.com, ip: 209.85.161.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-546db536a6bso48333eaf.1
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 22:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683178418; x=1685770418;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xODpZ7NdjmgBeGktMLsWBEimSPbZ5XjM3sPXLcI8+ww=;
        b=pE0PFK19SDfD/KAeqYEwSp9ybv+h+M1RC8nOXfxv8stNzwS4yl95YRvIkDamiQMaDP
         qavPPra2xww25aOP6rL10JK3bZe1eK2jFmbSW3d8/zexB0M1Gie9tIOEKMpTWPm5KRwB
         b+UgMpdtULVLGUT//QxK4vusVuca9xaNio9ERYZhOznccle+v3QmIYrSBp6Ji57VC7Qm
         YCPAtXaL3fpbNYhoOJIPNAj5MIazrXOS0QG0gDXvaHK55Nbqqsbg0sgOCbeI0xRZ3wR0
         WL5W8whHxliLYb07REqGocwfGOS4TYfWL9RmmNRNklNMg8c4P1HE0Y2uBwykooMm+hM/
         bMwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683178418; x=1685770418;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xODpZ7NdjmgBeGktMLsWBEimSPbZ5XjM3sPXLcI8+ww=;
        b=QOBYQKk9hLDodIskMfYBZgvNINRys/GtsYvwnmwTZRmIP9H83yy8lPCrvX/mhdvcpB
         IbuXl5X0lTK9ohulWmgH4qpe65HaNEFU5lileX6FwokSzUnaFmCqraF/fDr77yFE3o3M
         Bnu1a6BrTUWRI67VHTcLxynZog1hydeMwZv/9SrnZ1urAOZMUVA3G3g62skYnQaIVSZj
         fOLuFuh3Ubyc2gGnzODrsJClCNuHb3lFRKtzyS3J3TpIvWpqswKydro+JzWPSRoAoBmJ
         UC8kCeb9m6Qf/V1vd/54TCIrk4KyDhSW+MKr23ng19mKPsWsBFXu1CYo91K7V5AHJQgr
         y5sA==
X-Gm-Message-State: AC+VfDymDYLzSF7MGXOSRSYYEhl8ZeFgKt1ZJNYSZvLIzT1gsHgSTdmM
	RirOzjSsLenevIuCr15gsqrb5dyrNFA7KJURM3hfAJN7
X-Google-Smtp-Source: ACHHUZ4evTK4X1uJSYrTvWLE2DZj0GM5U+QMt5vbHnjIUrE3aguaOdtPIxMjybd/QBghQuHJXSPRMgpBtUfhhOEFaSQ=
X-Received: by 2002:a05:6808:14ce:b0:38e:2804:4bfb with SMTP id
 f14-20020a05680814ce00b0038e28044bfbmr1327870oiw.5.1683178417633; Wed, 03 May
 2023 22:33:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37E7d_maOHLbgnN0D14B8qwZ803r8BQHESm2eQk8HMyAQ@mail.gmail.com>
In-Reply-To: <CAAfyv37E7d_maOHLbgnN0D14B8qwZ803r8BQHESm2eQk8HMyAQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 May 2023 22:33:11 -0700
Message-ID: <CAMKF1sodMNASiQ7AFhpntahxgXxaty5KNxNa=tZfg1xcG0xXaA@mail.gmail.com>
Subject: Re: [yocto] make journal logs persistent
To: Marek Belisko <marek.belisko@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 05:33:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59864

On Wed, May 3, 2023 at 10:29=E2=80=AFPM Marek Belisko <marek.belisko@gmail.=
com> wrote:
>
> Hi,
>
> I'm building an image using a kirkstone release for a banana pi m2
> board. I've created wic file with 2 partitions one for rootfs and
> second for storage. Storage partition if mounted to /opt/storage and
> resized to then end of the SD card.
> wks snippet:
> part /opt/storage --source rootfs
> --rootfs-dir=3D${IMAGE_ROOTFS}/opt/storage --ondisk mmcblk0
> --fstype=3Dext4 --fsoptions=3D"defaults,x-systemd.growfs" --align 2048
> --fixed-size=3D10M
>
> This works fine. I've also added custom systemd-conf file for
> journal.conf which set logs to persistent like:
> [Journal]
> Storage=3Dpersistent
> ForwardToSyslog=3Dyes
> RuntimeMaxUse=3D100M
>
> In local.conf I've added: VOLATILE_LOG_DIR =3D "no" which makes /var/log
> non volatile.
>
> When image is build I've added following:
>
> persist_logs() {
>         mkdir -p ${IMAGE_ROOTFS}/opt/storage/journal
>         mv ${IMAGE_ROOTFS}/var/log ${IMAGE_ROOTFS}/opt/storage/journal
>         ln -sf /opt//storage/journal ${IMAGE_ROOTFS}/var/log
> }
>
> # Create persistent logs
> ROOTFS_POSTPROCESS_COMMAND +=3D "persist_logs; "
>
> But even after all those changes, the journal is saved in /run/var ...
>
> Any ideas what I'm doing wrong?
>

Perhaps its not mounted yet when systemd journal needs it. So it falls
back to /run to store it.
usually I have always done mounting in a pre-init step via something
like initramfs before passing
control to systemd. That worked reliably well.

> Thanks and BR,
>
> marek
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
> View/Reply Online (#59863): https://lists.yoctoproject.org/g/yocto/messag=
e/59863
> Mute This Topic: https://lists.yoctoproject.org/mt/98678435/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

