Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F4A8ECAAD4
	for <webhook@archiver.kernel.org>; Wed, 31 Aug 2022 12:12:41 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.24925.1661947956589668638
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 05:12:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SBj6JKAH;
 spf=pass (domain: gmail.com, ip: 209.85.208.182,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id bx38so14377900ljb.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 05:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=3J/9MHDlAkYkln2rwLFrAq/c5gvO4PWlbefX/2VtvSg=;
        b=SBj6JKAH0vIyaCnMP6krvJatPcZ1EzyEwz9U4fFGnv6o4/vdnnY81bSJkqzpVnAfnj
         bnFIEc7pD0q1CfSPEqROr/LFBiFhU5RzQ2N6lYNfeothJAju4oKacP16unFgzkfEYezY
         26mBBoe3dBFz84CkUW6P/GP3rnJ38L1qlS2RHGv99++yIhB99cAjqqltX/Ah7Bxh3po0
         Go1hJfSMcf4kdKO+/tN44g8TUp1uaOXL4fHaauPC6hiQfcnN4e4mXg/lVNGYWD1xhTy3
         TvwZBb4ODSZhr7KH9+OHVM48o3myii2hQ8lKw7W1lopbxMY1VxsrLmzVEzcEEH0iSYjA
         linA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=3J/9MHDlAkYkln2rwLFrAq/c5gvO4PWlbefX/2VtvSg=;
        b=GfivKRtDj+4x2PMz9JopjA6jKQW+87zKXvzsNv3zVErACyCN3QxsrcnZWLfiirVN/y
         EQQ6UuzQ4vZKgTHY2FEwb0TQVU4fb4f/oUKN0xZE5LJiAEBCCCpdASoIST1TeHjguUPy
         +E9vmzkbrScXkwocx3s4UVr41jMlrKXly6F3l2lHOqe8eDpXSorFzkMhZpm4f307QbRk
         rV9UqqkFdtTuL2TJfv9G74dleOo3TUBrbPIRnSD2RaHegWW38oZlmS65PqyRh/UHFiw3
         RDAkMnbB1xjTGqj9J+Sbgtwxuiic34XWF0/kTlOvQeigmbtCIwsnDNMh6deuM11LqSLb
         KWrA==
X-Gm-Message-State: ACgBeo3cEJ4hlJQiMz+S1FEz24s24Y/g9Bkb7xhvjy1fpuUYYYwdaimC
	wrhBFgEG1qVNYIPW6A5FjT1+AilqKD2sX+7BzU4=
X-Google-Smtp-Source: 
 AA6agR7heuwVdS+dwlqPtW3/7EskJ/AmNhFSK8olR75roCK/84Sa5w2kECRUyTZ6R2yLrw1lPeJXLj1T8qW+pMZ+XfM=
X-Received: by 2002:a2e:9295:0:b0:267:f8f7:2a0f with SMTP id
 d21-20020a2e9295000000b00267f8f72a0fmr1891292ljh.41.1661947954709; Wed, 31
 Aug 2022 05:12:34 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_ejn8jKb4RuHX+vxoANxmoW9EUQjuMtKnPC3C16agsYg@mail.gmail.com>
 <630f4f99.050a0220.a96b.13e4SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <630f4f99.050a0220.a96b.13e4SMTPIN_ADDED_MISSING@mx.google.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 31 Aug 2022 14:12:23 +0200
Message-ID: 
 <CANNYZj_qrOpvtfrZM4XwqKFS05YDcj+8zda6Rgq-HkeHN0ZTVA@mail.gmail.com>
Subject: Re: [yocto] #yocto #dunfell #qemux86-64
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Aug 2022 12:12:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57960

The issue is on your side, not on yocto's. By default qemu is
configured to show graphical output in a X11 window, so you need to
run it in a X11 session, with correctly set DISPLAY environment
variable.

Alex

On Wed, 31 Aug 2022 at 14:10, Monsees, Steven C (US)
<steven.monsees@baesystems.com> wrote:
>
>
> One final question, does this issue exist in kirkstone-4.0.2 ?
>
> Thanks,
> Steve
>
> -----Original Message-----
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Wednesday, August 31, 2022 7:42 AM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #dunfell #qemux86-64
>
> External Email Alert
>
> This email has been sent from an account outside of the BAE Systems netwo=
rk.
>
> Please treat the email with caution, especially if you are requested to c=
lick on a link, decrypt/open an attachment, or enable macros.  For further =
information on how to spot phishing, access =E2=80=9CCybersecurity OneSpace=
 Page=E2=80=9D and report phishing by clicking the button =E2=80=9CReport P=
hishing=E2=80=9D on the Outlook toolbar.
>
>
> I need to see the errors to give a useful answer. If you want wayland, us=
e core-image-weston as the image.
>
> Alex
>
> On Wed, 31 Aug 2022 at 13:37, Monsees, Steven C (US) via lists.yoctoproje=
ct.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
> >
> >
> > Thank you for the quick replay...
> >
> > The no graphic option does work but the kernel comes up with errors...
> >
> > Will full wayland support be added to the dunfell release ?
> >
> > Steve
> >
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Alexander Kanavin
> > Sent: Wednesday, August 31, 2022 7:23 AM
> > To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> > Cc: yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] #yocto #dunfell #qemux86-64
> >
> > External Email Alert
> >
> > This email has been sent from an account outside of the BAE Systems net=
work.
> >
> > Please treat the email with caution, especially if you are requested to=
 click on a link, decrypt/open an attachment, or enable macros.  For furthe=
r information on how to spot phishing, access =E2=80=9CCybersecurity OneSpa=
ce Page=E2=80=9D and report phishing by clicking the button =E2=80=9CReport=
 Phishing=E2=80=9D on the Outlook toolbar.
> >
> >
> > You need to run this in a X11 session, or use 'nographic' parameter.
> >
> > Alex
> >
> > On Wed, 31 Aug 2022 at 13:17, Monsees, Steven C (US) via lists.yoctopro=
ject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
> > >
> > >
> > >
> > > Hello:
> > >
> > >
> > >
> > > I am attempting to evaluate dunfell -23.0.17, on a cetos7 linux box.
> > >
> > >
> > >
> > > When building the default : core-image-minimal or core-image-sato,
> > > clean with no errors/warnings, on execution
> > >
> > > I get the following error for both (see below)=E2=80=A6
> > >
> > >
> > >
> > > (1)    Is this an issue with the release ?,  and is there another rel=
ease I should be using ?
> > >
> > > (2)    Is there something I need to pre-configure for these builds to=
 run properly ?
> > >
> > > (3)    How might I resolve this issue ?
> > >
> > >
> > >
> > > 06:57 smonsees@yix490016
> > > /disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/dun
> > > fe
> > > ll_Min>runqemu qemux86-64
> > >
> > > runqemu - INFO - Running MACHINE=3Dqemux86-64 bitbake -e ...
> > >
> > > runqemu - INFO - Continuing with the following parameters:
> > >
> > > KERNEL:
> > > [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/du
> > > nf
> > > ell_Min/tmp/deploy/images/qemux86-64/bzImage--5.4.192+gitAUTOINC+3fe
> > > cb 08507_85f0668fea-r0-qemux86-64-20220830151817.bin]
> > >
> > > MACHINE: [qemux86-64]
> > >
> > > FSTYPE: [ext4]
> > >
> > > ROOTFS:
> > > [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/du
> > > nf
> > > ell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-2
> > > 02
> > > 20830151817.rootfs.ext4]
> > >
> > > CONFFILE:
> > > [/disk0/scratch/smonsees/yocto/yocto-dunfell/poky-dunfell-23.0.17/du
> > > nf
> > > ell_Min/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-2
> > > 02
> > > 20830151817.qemuboot.conf]
> > >
> > >
> > >
> > > runqemu - INFO - Setting up tap interface under sudo
> > >
> > > [sudo] password for smonsees:
> > >
> > > runqemu - INFO - Network configuration:
> > > ip=3D192.168.7.2::192.168.7.1:255.255.255.0
> > >
> > > runqemu - INFO - Running /disk0/scratch/smonsees/yocto/yocto-dunfell/=
poky-dunfell-23.0.17/dunfell_Min/tmp/work/x86_64-linux/qemu-helper-native/1=
.0-r1/recipe-sysroot-native/usr/bin/qemu-system-x86_64 -device virtio-net-p=
ci,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap=
0,script=3Dno,downscript=3Dno -drive file=3D/disk0/scratch/smonsees/yocto/y=
octo-dunfell/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/=
core-image-minimal-qemux86-64-20220830151817.rootfs.ext4,if=3Dvirtio,format=
=3Draw -show-cursor -usb -device usb-tablet -object rng-random,filename=3D/=
dev/urandom,id=3Drng0 -device virtio-rng-pci,rng=3Drng0   -cpu core2duo -m =
256 -serial mon:vc -serial null -kernel /disk0/scratch/smonsees/yocto/yocto=
-dunfell/poky-dunfell-23.0.17/dunfell_Min/tmp/deploy/images/qemux86-64/bzIm=
age--5.4.192+gitAUTOINC+3fecb08507_85f0668fea-r0-qemux86-64-20220830151817.=
bin -append 'root=3D/dev/vda rw  mem=3D256M ip=3D192.168.7.2::192.168.7.1:2=
55.255.255.0 oprofile.timer=3D1 '
> > >
> > >
> > >
> > > runqemu - ERROR - Failed to run qemu: Could not initialize SDL(x11
> > > not
> > > available) - exiting
> > >
> > >
> > >
> > > runqemu - INFO - Cleaning up
> > >
> > > Set 'tap0' nonpersistent
> > >
> > >
> > >
> > > Thank you for your help,
> > >
> > > Steve
> > >
> > >
> > >
> > >
> > >
> > >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#57957):
> > https://lists.yoctoproject.org/g/yocto/message/57957
> > Mute This Topic: https://lists.yoctoproject.org/mt/93368526/1686489
> > Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> > Mute
> > #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> > Mute
> > #qemux86-64:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemux86
> > -64 Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> > [alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

