Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10C02C4332F
	for <webhook@archiver.kernel.org>; Tue, 22 Nov 2022 09:04:59 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.14552.1669107897842699878
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Nov 2022 01:04:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=p7LZ6L01;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id bp15so22590016lfb.13
        for <yocto@lists.yoctoproject.org>; Tue, 22 Nov 2022 01:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c4wj0e1/7uHVVh09/jRYIXvuB3s5XKc5uyq6KqCRhLQ=;
        b=p7LZ6L01iDDln2UYuQPZR3pf0Ts7gDsezx5OG8yroyqmzCYN35CGKXjq2wrxVvOKcG
         BnSUckLTAEVKT6bgykZDL1zdQq95GWQlHa3rzcAMRQtM/thJR3BI9hy1vwgpyuCS3PuI
         mxOBC+H97P3Ov3phW5saW9CmI/lZm5rJJiyxXDPHnkQpyCDHwQdjL8f4sE0gJNa6nZX8
         r4t2F8VBFDpmjiplOa2DJ7LWghZc8cAzWNahrQLeP7sQ2CMg3yaoqfD+ctacpInCd5OS
         a69LkD+QLzEw1tAryt9Qw2F5x1u7lmsKg9YehZEXif4NBKVxj4tTJHmJiMCorlIZiTVG
         zbnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c4wj0e1/7uHVVh09/jRYIXvuB3s5XKc5uyq6KqCRhLQ=;
        b=icnelL1PRydir94DjVmNRmYAIHlaqRwaR4Z8DXSZ4kdgLNg7YYrXRzBVYLT4KGsHm4
         pBqYFa0laj8CHStTBYWhSS/5th4hqdlZVxVTKbxMEfU2b+eHkGWWwuLrg/9hl6lcef8g
         038PEk7hljOwvzJbuzEQ7YJXvqwIo+jRFiQO2peOVhwLQAEVM6SP9HzQTfBhq8tjsD0Q
         XeIgpS3Nwj/KSS9xQVecXAW6okJ8Y4vGZ1dgfT+mJn6M+7Ghz41hBrLCNwBM70VPCQjF
         wFA6kU5sLZ76xVcMA+HiPUitQHSYasqglk6iU+XlzVjyUCx5854r0DyUQzIemFGlmfjk
         cSyg==
X-Gm-Message-State: ANoB5pnAWqa0JHkn5RlXED0YpATS23V41u89bvGyj93DSzNgOO4cXG7y
	ytj5tCGqaGvN+cl43XS+OfqM4zzZ1QH3RhATrf8=
X-Google-Smtp-Source: AA0mqf4LxwXtuZBzMnPsNnI5W7rGnGmMfr4aTIywJpJW9Hw8jSTdgthC8NGvW06vwuZN7Ws7rtyYz4d82uv40kaYrYo=
X-Received: by 2002:ac2:4c47:0:b0:4a2:4d53:8294 with SMTP id
 o7-20020ac24c47000000b004a24d538294mr6829565lfk.263.1669107895693; Tue, 22
 Nov 2022 01:04:55 -0800 (PST)
MIME-Version: 1.0
References: <QnK9.1669103946507593246.CLOb@lists.yoctoproject.org>
In-Reply-To: <QnK9.1669103946507593246.CLOb@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 22 Nov 2022 10:04:43 +0100
Message-ID: <CANNYZj-n4EomS+YgaeZ77b+p_REmXfsaU8uDtkbjMsUps_76Bg@mail.gmail.com>
Subject: Re: [yocto] how to specify the package version via RDEPENDS in
 package group #bitbake
To: Martin <linmartin.tw@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Nov 2022 09:04:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58617

You need to look up PREFERRED_VERSION rather.

Alex

On Tue, 22 Nov 2022 at 09:51, Martin <linmartin.tw@gmail.com> wrote:
>
> I have multiple version for opencv, but bibake installed the version 3.4.=
3 default.
>
> =3D=3D=3D Matching recipes: =3D=3D=3D
> opencv:
>   meta-rcar-gen3-adas  3.4.3+gitAUTOINC+b38c50b3d0_1f6d6f0626_bdb7bb85f3_=
34e4206aef_fccf7cd6a4
>   meta-oe              4.1.0
>   meta-rcar-gen3-adas  2.4.11+gitAUTOINC+707d10f115
>   meta-rcar-gen3-adas  3.2+gitAUTOINC+70bbf17b13
>
>
> the yocto offical documents mentioned the variable RDEPENDS supports oper=
ator for specify versions.
>
> then i specified the version to 4.1.0 for opencv in package group.
>
> SUMMARY =3D "Requirement packages"
> PR =3D "r1"
>
> inherit packagegroup
>
> RDEPENDS:${PN} =3D " \
>         opencv (>=3D 4.1.0)\
>         libopencv-core-dev \
>         libopencv-highgui-dev \
>         libopencv-imgproc-dev \
>         libopencv-objdetect-dev \
>         libopencv-ml-dev \
>         opencv-apps \
>         opencv-dev \
>         protobuf \
>         gdb \
>         libsdl2 \
>         libgpiod \
>         libgpiod-tools \
> "
>
>
> Appeared the failure message, why??
>
> The version list has v4.1.0, but the error message show nothing provides =
v4.1.0 for opencv.
>
> nothing provides opencv >=3D 4.1.0 needed by packagegroup-user-requiremen=
ts-1.0-r1.noarch
>
> ERROR: core-image-weston-1.0-r0 do_rootfs: Could not invoke dnf. Command =
'/home/dell/workspace/yocto-v5.1.0-h3ulcb-kf/h3ulcb/build/tmp/work/h3ulcb-p=
oky-linux/core-image-weston/1.0-r0/recipe-sysroot-native/usr/bin/dnf -v --r=
pmverbosity=3Dinfo -y -c /home/dell/workspace/yocto-v5.1.0-h3ulcb-kf/h3ulcb=
/build/tmp/work/h3ulcb-poky-linux/core-image-weston/1.0-r0/rootfs/etc/dnf/d=
nf.conf --setopt=3Dreposdir=3D/home/dell/workspace/yocto-v5.1.0-h3ulcb-kf/h=
3ulcb/build/tmp/work/h3ulcb-poky-linux/core-image-weston/1.0-r0/rootfs/etc/=
yum.repos.d --installroot=3D/home/dell/workspace/yocto-v5.1.0-h3ulcb-kf/h3u=
lcb/build/tmp/work/h3ulcb-poky-linux/core-image-weston/1.0-r0/rootfs --seto=
pt=3Dlogdir=3D/home/dell/workspace/yocto-v5.1.0-h3ulcb-kf/h3ulcb/build/tmp/=
work/h3ulcb-poky-linux/core-image-weston/1.0-r0/temp --repofrompath=3Doe-re=
po,/home/dell/workspace/yocto-v5.1.0-h3ulcb-kf/h3ulcb/build/tmp/work/h3ulcb=
-poky-linux/core-image-weston/1.0-r0/oe-rootfs-repo --nogpgcheck install ba=
sh coreutils dnf git htop i2c-tools inx-cluster kernel-module-qos matchbox-=
terminal omx-user-module optee-client packagegroup-base-extended packagegro=
up-bsp packagegroup-core-boot packagegroup-core-eclipse-debug packagegroup-=
core-sdk packagegroup-core-ssh-openssh packagegroup-core-standalone-sdk-tar=
get packagegroup-core-tools-debug packagegroup-core-tools-profile packagegr=
oup-graphics-renesas-proprietary packagegroup-graphics-renesas-wayland pack=
agegroup-gstreamer1.0-plugins packagegroup-user-requirements packagegroup-m=
m packagegroup-multimedia-kernel-modules packagegroup-multimedia-libs packa=
gegroup-radio packagegroup-wayland-community psplash qosif-tp-user-module q=
osif-user-module rpm run-postinsts u-boot v4l-utils vim vspmif-tp-user-modu=
le weston weston-examples weston-init weston-xwayland locale-base-en-us loc=
ale-base-en-gb' returned 1:
> DNF version: 4.2.2
> cachedir: /home/dell/workspace/yocto-v5.1.0-h3ulcb-kf/h3ulcb/build/tmp/wo=
rk/h3ulcb-poky-linux/core-image-weston/1.0-r0/rootfs/var/cache/dnf
> Added oe-repo repo from /home/dell/workspace/yocto-v5.1.0-h3ulcb-kf/h3ulc=
b/build/tmp/work/h3ulcb-poky-linux/core-image-weston/1.0-r0/oe-rootfs-repo
> repo: using cache for: oe-repo
> not found other for:
> not found modules for:
> not found deltainfo for:
> not found updateinfo for:
> oe-repo: using metadata from Tue 22 Nov 2022 03:02:16 AM UTC.
> Last metadata expiration check: 0:00:01 ago on Tue 22 Nov 2022 03:02:16 A=
M UTC.
> No module defaults found
> --> Starting dependency resolution
> --> Finished dependency resolution
> Error:
>  Problem: conflicting requests
>   - nothing provides opencv >=3D 4.1.0 needed by packagegroup-user-requir=
ements-1.0-r1.noarch
> (try to add '--skip-broken' to skip uninstallable packages or '--nobest' =
to use not only best candidate packages)
>
> ERROR: Logfile of failure stored in: /home/dell/workspace/yocto-v5.1.0-h3=
ulcb-kf/h3ulcb/build/tmp/work/h3ulcb-poky-linux/core-image-weston/1.0-r0/te=
mp/log.do_rootfs.855803
> ERROR: Task (/home/dell/workspace/yocto-v5.1.0-h3ulcb-kf/h3ulcb/build/../=
poky/meta/recipes-graphics/images/core-image-weston.bb:do_rootfs) failed wi=
th exit code '1'
> NOTE: Tasks Summary: Attempted 9003 tasks of which 9002 didn't need to be=
 rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/dell/workspace/yocto-v5.1.0-h3ulcb-kf/h3ulcb/build/../poky/meta/r=
ecipes-graphics/images/core-image-weston.bb:do_rootfs
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> Successfully built the image after I try to set the version conditions as=
 > 2.0, but the version still is v3.4.3 for opencv.
>
> SUMMARY =3D "Requirement packages"
> PR =3D "r1"
>
> inherit packagegroup
>
> RDEPENDS:${PN} =3D " \
>         opencv (>=3D 2.0)\
>         libopencv-core-dev \
>         libopencv-highgui-dev \
>         libopencv-imgproc-dev \
>         libopencv-objdetect-dev \
>         libopencv-ml-dev \
>         opencv-apps \
>         opencv-dev \
>         protobuf \
>         gdb \
>         libsdl2 \
>         libgpiod \
>         libgpiod-tools \
> "
>
>
> How to specify the package version via RDEPENDS in package group? thanks
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58616): https://lists.yoctoproject.org/g/yocto/messag=
e/58616
> Mute This Topic: https://lists.yoctoproject.org/mt/95192012/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

