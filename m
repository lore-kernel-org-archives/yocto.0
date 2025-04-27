Return-Path: <u.apeiron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63994C369D5
	for <webhook@archiver.kernel.org>; Sun, 27 Apr 2025 19:40:11 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web10.32452.1745782803310050196
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Apr 2025 12:40:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LHrr/oDI;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: u.apeiron@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5f6fb95f431so5039260a12.0
        for <yocto@lists.yoctoproject.org>; Sun, 27 Apr 2025 12:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745782801; x=1746387601; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NEovEkGk7HhdF6VgMYEb68aY13qHuOM/K6/AcsVi0Lc=;
        b=LHrr/oDIq4Slh2Q2xGyY/QwVxiJXlpyyyFx5DqcZWPKLtiEpYLdpzM0YRBsJCrPiQ+
         DILfmJ6jZVfQmNixQXcDTKGThBpDDY0MyjfOsyR0qPS7x89PyPvhQVt9ZbRhLxdGBhIW
         AIyTEIHrDugU1aWmEQV3YeULiXEUZ71VIHYrwvaHnVKOP8Afvnf4rp3EI22uudbr9jn9
         wWhhPw7TaHoCetVauhFbpaDSHm4xlA1GANgj1/nfOPeZTIm0lyTnPM5h4krf33x1XgBC
         SFXnuXEW12ztT8RthgPMQTSwNNAlMtTctnjFea9aL1YhJWp28XosaceaEypTvU3Dmns9
         Xx4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745782801; x=1746387601;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NEovEkGk7HhdF6VgMYEb68aY13qHuOM/K6/AcsVi0Lc=;
        b=kgyGnLIljj8N2LpO9NA7CGQk9uPWTvrpP4hWJ7Fc4Hyk6/dMQbWeU0O5LSJSXvT2mA
         LKMNTDUFGwCCHaQMpIXDSFdNquH2ADJNoSuub4/9BiX2JT2HhgOp8/OOyn7cmgBclUm3
         lMOuvMbMcQprju6whikQX5TdOgz/9qvWD1hVlrawtf33RPy2zzElmOl2KPxz3F+FpzeE
         WC/HhvG/jE9xMobpQAhVh9OGsnuqzOdRAvfIeFjt52Tj/xskTFfgLcDkouoMZK+lLEmG
         2VE1T3/r8hCNnDULLHLSR5DeacgL6QMFiMyghz8UCuwU2uDHmZQwsmwI7htpozVQpYej
         VCfg==
X-Gm-Message-State: AOJu0YwslzsnnC0sfmkIX4WpD59djBfpxYf4NYzy3No9u78yv18STQ4p
	b4kHTZkSLDQYRpNznNPnHnEkwEqF6J7g/uofaK2X9wEwjXifcaQg/WiA0VrqyP8YIN7fpFlM2Vv
	jsh9eh+17Fv2sDV1va/73Xi4mNdKcInN5
X-Gm-Gg: ASbGncskXkXPKpgDyDC1/vmrMC65ycp0Pj6f513e5VLlApAhW1ZcgeXoa91diM4gKM8
	yq1eR4pxOxIQc/+o3RK4hd5PuzCUS00nD0BJBBUuzhCAqB+c3UpvT29dFUdcV93hvJdBDo+g/XJ
	IeMJDs0scrih688wSrqMvrHgIvs6ZxLuPcuSNoq+voqz9pR3azZHbb
X-Google-Smtp-Source: AGHT+IFq+z/DkMlMjNzK+nq31u8nCn/5NhWiJiSidbDS6/AYGbwSlUNqsALpZdF01bDexmWDXT0TB4wuKxkxZW3KwQ0=
X-Received: by 2002:a17:907:7f93:b0:ac2:26a6:febf with SMTP id
 a640c23a62f3a-ace5a449351mr1063748466b.20.1745782800732; Sun, 27 Apr 2025
 12:40:00 -0700 (PDT)
MIME-Version: 1.0
From: "Ulises V." <u.apeiron@gmail.com>
Date: Sun, 27 Apr 2025 13:39:49 -0600
X-Gm-Features: ATxdqUFB590NJgqIoYdMNqNvDe1HH2IV1MIJqiIyMzALH0VskzGrRKDtLAWC2w8
Message-ID: <CAK+BxzQUexgV-5nznCWkpdCxu_xkuuf8Qry-8AyXs17Ew+i9TQ@mail.gmail.com>
Subject: How to generate an initrd.img in yocto recipe.
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b159020633c7bbe8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 27 Apr 2025 19:40:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65257

--000000000000b159020633c7bbe8
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I want to generate an initrd.img for booting a beaglebone-ai for the
automotive grade linux which works with both yocto scrathgap and kirkstone.

I added the below lines to my local.conf file:

#################
INITRAMFS_IMAGE = "core-image-tiny-initramfs"
INITRAMFS_IMAGE_BUNDLE = "1"
INITRAMFS_IMAGE_NAME ?= "${INITRAMFS_IMAGE}-${MACHINE}"
INITRAMFS_KERNEL_IMAGE="${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin"
VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
IMAGE_BOOT_FILES:append = " ${INITRAMFS_KERNEL_IMAGE};${KERNEL_IMAGETYPE}"

INIT_MANAGER ?= "systemd"

IMAGE_ROOTFS_MAXSIZE ?= "4294967296"
ROOTFS_PARTITION_SIZE ?= "4294967296"

SDCARD_ROOTFS ?= "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext4"

IMAGE_FSTYPES:append = " ext4 cpio.gz"
##################

This is what I found on the web about what I needed to add to generate that
image. Maybe my initrd.img is being generated but is being named
"core-image-tiny-initramfs" as the variable INITRAMFS_IMAGE indicates.

I would like to know if I'm writing the correct variables to generate the
initrd.img.

Thanks.

Ulises Vega

--000000000000b159020633c7bbe8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br></div><div>I want to ge=
nerate an initrd.img for booting a beaglebone-ai for the automotive grade l=
inux which works with both yocto scrathgap and kirkstone.</div><div><br></d=
iv><div>I added the below lines to my local.conf file:</div><div><br></div>=
<div>#################<br>INITRAMFS_IMAGE =3D &quot;core-image-tiny-initram=
fs&quot;<br>INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;<br>INITRAMFS_IMAGE_NAM=
E ?=3D &quot;${INITRAMFS_IMAGE}-${MACHINE}&quot;<br>INITRAMFS_KERNEL_IMAGE=
=3D&quot;${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin&quot;<br>VIRTUAL-RUNT=
IME_dev_manager =3D &quot;busybox-mdev&quot;<br>IMAGE_BOOT_FILES:append =3D=
 &quot; ${INITRAMFS_KERNEL_IMAGE};${KERNEL_IMAGETYPE}&quot;<br><br>INIT_MAN=
AGER ?=3D &quot;systemd&quot;<br><br>IMAGE_ROOTFS_MAXSIZE ?=3D &quot;429496=
7296&quot;<br>ROOTFS_PARTITION_SIZE ?=3D &quot;4294967296&quot;<br><br>SDCA=
RD_ROOTFS ?=3D &quot;${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext4&quot;<br=
><br>IMAGE_FSTYPES:append =3D &quot; ext4 cpio.gz&quot;<br>################=
##<br></div><div><br></div><div>This is what I found on the web about what =
I needed to add to generate that image. Maybe my initrd.img is being genera=
ted but is being named &quot;core-image-tiny-initramfs&quot; as the variabl=
e INITRAMFS_IMAGE indicates.</div><div><br></div><div>I would like to know =
if I&#39;m writing the correct variables to generate the initrd.img.</div><=
div><br></div><div>Thanks.</div><div><br></div><div>Ulises Vega</div></div>

--000000000000b159020633c7bbe8--

