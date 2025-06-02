Return-Path: <kanakshilledar111@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BD40C5AD49
	for <webhook@archiver.kernel.org>; Mon,  2 Jun 2025 11:48:26 +0000 (UTC)
Received: from mail-24424.protonmail.ch (mail-24424.protonmail.ch [109.224.244.24])
 by mx.groups.io with SMTP id smtpd.web11.47690.1748864902485071254
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Jun 2025 04:48:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=mBQEKKQU;
 spf=pass (domain: protonmail.com, ip: 109.224.244.24, mailfrom: kanakshilledar111@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1748864900; x=1749124100;
	bh=F/N/Cle168fxLs1+EfRezSEL5ABsVPOGbgs0JJ+sr+I=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector:
	 List-Unsubscribe:List-Unsubscribe-Post;
	b=mBQEKKQUt7LRn8cqXmnrh4QHrwh716EEwFP3/2rpe5ijuBwFVP5t8x/kPizds3cu2
	 /CYBzbQqzG6vx8kot+fVgiC/5xxU8EmhN4MHWQ5Ab6XAvD/qVLGT5Rr6OOZ1yJAE9B
	 4DriERoWocw6Sfd86h5/FMt25QJgT9ljRz7FtUro+n/jAqoSURy+Yh7HMbjNUqnF0C
	 PsWdBqJet7lTTPvqApZU53SxYFJ1pH8GSYtwC3ZtOyrcNwnufSa1C9tDw3BblaWTS2
	 Exq7Ost4MVGQP606zwOTs7Elb12nR5ikjZYg0oPwSwaUAdZEJlcCrultlH0EdpfA4D
	 HkVmdMvCH259A==
Date: Mon, 02 Jun 2025 11:48:17 +0000
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Kanak Shilledar <kanakshilledar111@protonmail.com>
Subject: [poky][master] opensbi recipe failed at do_patch
Message-ID: <lwHV9MLGir2nUyJPc-xQKFx_rhE2ABEfOSLNR5WCWuoPSo4WMQRsKi7YhzMsyTHrAcQkwzyPca57qC3tF0abomOAJ673W2_dgiA04oo1m_s=@protonmail.com>
Feedback-ID: 26271244:user:proton
X-Pm-Message-ID: c2a087ed48dbe9775657817bd653935a3fdbee8f
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Jun 2025 11:48:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65444

Hi,
I was trying to build core-image-minimal for BeagleV Ahead, I have added th=
e meta-riscv layer in my build directory. But I am getting stuck at this op=
ensbi error.

```
$ bitbake core-image-minimal
Loading cache: 100% |######################################################=
###########################################################################=
##########################| Time: 0:00:01
Loaded 1947 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "2.12.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "riscv64-poky-linux"
MACHINE              =3D "beaglev-ahead"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "5.2"
TUNE_FEATURES        =3D "riscv64"
meta
meta-poky
meta-yocto-bsp       =3D "master:1e811f9e707d2edfb1bc554179caeb422af86036"
meta-riscv           =3D "master:243e0dbb8b1b77837da1efb60f86eb2c86fcb050"

Sstate summary: Wanted 1687 Local 0 Mirrors 0 Missed 1687 Current 125 (0% m=
atch, 6% complete)#########################################################=
##########                | ETA:  0:00:00
Removing 4 stale sstate objects for arch allarch: 100% |###################=
###########################################################################=
##########################| Time: 0:00:00
Removing 116 stale sstate objects for arch riscv64: 100% |#################=
###########################################################################=
##########################| Time: 0:00:00
Removing 8 stale sstate objects for arch beaglev_ahead: 100% |#############=
###########################################################################=
##########################| Time: 0:00:00
Removing 219 stale sstate objects for arch x86_64: 100% |##################=
###########################################################################=
##########################| Time: 0:00:00
NOTE: Executing Tasks
ERROR: opensbi-1.6-r0 do_patch: QA Issue: Fuzz detected:

Applying patch 0001-Makefile-Add-flag-for-reprodubility-compiler-flags.patc=
h
patching file Makefile
Hunk #1 succeeded at 165 (offset -9 lines).
Hunk #2 succeeded at 358 with fuzz 2 (offset -9 lines).
Hunk #3 succeeded at 381 (offset -12 lines).


The context lines in the patches can be updated with devtool:

    devtool modify opensbi
    devtool finish --force-patch-refresh opensbi <layer_path>

Don't forget to review changes done by devtool!

Patch log indicates that patches do not apply cleanly. [patch-fuzz]
ERROR: opensbi-1.6-r0 do_patch: Fatal QA errors were found, failing task.
ERROR: Logfile of failure stored in: /home/kanak/yocto/build-beagle/tmp/wor=
k/riscv64-poky-linux/opensbi/1.6/temp/log.do_patch.657677
ERROR: Task (/home/kanak/yocto/sources/poky/meta/recipes-bsp/opensbi/opensb=
i_1.6.bb:do_patch) failed with exit code '1'
```

I tells to modify the patch and proceed with the build, However after doing=
 so, it changes the SRC_URI for the OpenSBI recipe.

```
 SRCREV =3D "bd613dd92113f683052acfb23d9dc8ba60029e0a"
-SRC_URI =3D "git://github.com/riscv/opensbi.git;branch=3Dmaster;protocol=
=3Dhttps \
+SRC_URI =3D "git://github.com/starfive-tech/opensbi;branch=3DJH7110_Vision=
Five2_devel;protocol=3Dhttps \
+           file://visionfive2-uboot-fit-image.its \
            file://0001-Makefile-Add-flag-for-reprodubility-compiler-flags.=
patch \
-"
+           "
```

How can I fix these issue?

Thanks and Regards,
Kanak Shilledar

