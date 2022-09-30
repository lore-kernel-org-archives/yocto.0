Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C8BC4332F
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 20:39:57 +0000 (UTC)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 by mx.groups.io with SMTP id smtpd.web09.127.1664570397187733841
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 13:39:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=R/XPHep4;
 spf=pass (domain: gmail.com, ip: 209.85.166.47,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-io1-f47.google.com with SMTP id 138so4171330iou.9
        for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 13:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=b4iu1vjwO7D8EMCCHj9w0+Z4GHQWsFxDrqRLlV9gGXg=;
        b=R/XPHep4S0P7lo8IMRyMda4KoYx9DBJijQ1dAUmSDWF/6zbY3Azqn3rfKFFXvmbhY4
         mhpgBGL7+zSA2W+F6hvVB+9/FCFJJ/Hn/Sofk5rY1w/Pnb3oS+oLY78aHpI7LX9gyKAr
         rPLGZh99X3mFMchNFZfXQYu+EXGSor9EichIibzsPufqwW/UwfnaMhqelG1f5dkITK5L
         nxNkAyAiw5a24qnu2wziw9/MQ507oXjMvqJCZCFUG/vFfxfCl/kvHuZG3T3K0tgH0buE
         KoGbzYhXthdJxkP5G0SkGLjX78kiCXkgFaBGxlNU1g5OT4ar7pNU5+q3MNKPJlpK9yz2
         soxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=b4iu1vjwO7D8EMCCHj9w0+Z4GHQWsFxDrqRLlV9gGXg=;
        b=YCFsP90wSQf+Mgg1EV9QUuPb6uS1XrmRzTdqLE7DCDWV2kPsvx+S5KnYd1YLE2gtEV
         dutDK2RwAsXIyRbhWqRSmGff1bPdSs26nL8F0ZJ2qcWO6hpjJ7kdlOXlVItLN0UUlVMk
         3mmzW5I69Shb1o2HGU1aybyzn/LodQyrARiXxWhA18/hj5OiG+2Ki0akiGAq6GgIvq0f
         JORJNYk6tbT2PaThc64eLtfS2xYATqMgHirf3VpuuGBbGrrQ7d4hQWkC0kusZLdxjqEg
         V5VNlJYTIrnq3t5jfOT4ZBy5IthnInE2WVncUFdKHO2aUTGbjL1MvIP9GjAiaGY+DynX
         ts0g==
X-Gm-Message-State: ACrzQf2+CxUiS1I60leAm3EenkJ4LyhfLXIaOR2HXXVF8wcjM7U2psYC
	TZwfLc7wsat1jtE8bbYH4CQCxog5VrDMc6+MLGc=
X-Google-Smtp-Source: 
 AMsMyM7Mv+FpWty1B0cb4kA/nUNkXLvn/X4GJFqJX6lCF+0zXFsmiqnG7utF0KZj+UffWUdHWxw2XlevjDZqF4cB0Jk=
X-Received: by 2002:a05:6602:1402:b0:68a:9d38:8248 with SMTP id
 t2-20020a056602140200b0068a9d388248mr4651139iov.68.1664570396598; Fri, 30 Sep
 2022 13:39:56 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_sdovPpw5+uhPaa65LDBgZUctApsJDv-6KReSi-Zk1PQ@mail.gmail.com>
 <PH0PR84MB1835A9768FB8246072F05484C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8hmMe9Qc-pb5KxFW-kraCJCZ=kttZmzkospx4VPp0rDw@mail.gmail.com>
 <PH0PR84MB1835197966482CF4FCA15A0BC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_M_nrekrRRJ2oKbWFr7PhcTtwFNucrGd3=ZyVHfmP2MA@mail.gmail.com>
 <PH0PR84MB1835BB630C385390A43FDDC9C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ttajWfcN+EhgFUjxtK4rvPzkGpwyQoa=tRMP7Mo7hDA@mail.gmail.com>
 <PH0PR84MB183597EAA65D8009C257BFFBC7579@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8gA-1K8pGGHNcxAqn4KRXow-tdDh395n9GDskbkTs+OQ@mail.gmail.com>
 <PH0PR84MB183522C486078708425E2BF5C7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB183522C486078708425E2BF5C7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 30 Sep 2022 22:39:44 +0200
Message-ID: 
 <CANNYZj8e83mohBHrxKAnM==4O+P-FsW2=4CfzpaaC2zXD+boBQ@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 20:39:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58239

You might want to try enabling gallium-llvm only for the target mesa:

PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-llvm'

Alex

On Fri, 30 Sept 2022 at 22:24, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> I deleted the whole build directory, recreated it, only added the arm swi=
tch in local conf and your changes for mesa.inc.
> After a few hours of building core-image-weston it again complains that i=
t tries to copy llcm-config14.0.6 over itself. I don't know what to do anym=
ore.
>
> ________________________________
> From: Alexander Kanavin <alex.kanavin@gmail.com>
> Sent: Thursday, September 29, 2022 10:46 AM
> To: PHIL <heideggm@hotmail.com>
> Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] Changing git url of qemu
>
> You need to build mesa, not mesa-native. And please show exact changes yo=
u made.
>
> Alex
>
> On Thu 29. Sep 2022 at 12.28, PHIL <heideggm@hotmail.com> wrote:
>
> Tried in a sifferent machine with wednesday poky master
>
> Building mesa-native gives the error
>
> cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/=
mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6' an=
d '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa=
-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6' are th=
e same file
>
>
> Am 28. September 2022 13:37:05 MESZ schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>:
>
> Try latest poky master?
>
> Alex
>
> On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail.com> wrote:
>
>
>  Mesa build fails. It complains that it copies llvm-config14.0.6 to the s=
ame file.
>
>  Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin <alex.kana=
vin@gmail.com>:
>
>
>  The following works for me. I get
>
>  tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan=
-drivers/usr/lib/libvulkan_intel.so
>  tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan=
-drivers/usr/lib/libvulkan_lvp.so
>
>  --- a/meta/recipes-graphics/mesa/mesa.inc
>  +++ b/meta/recipes-graphics/mesa/mesa.inc
>  @@ -88,6 +88,7 @@ def strip_comma(s):
>
>   PACKAGECONFIG =3D " \
>          gallium \
>  +        gallium-llvm \
>          ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan wayland', d)} =
\
>          ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'opengl egl
>  gles gbm virgl', '', d)} \
>          ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'dri3', ''=
, d)} \
>  @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>  -Ddri3=3Ddisabled, xorgproto libxshmfence"
>
>   # Vulkan drivers need dri3 enabled
>   # amd could be enabled as well but requires gallium-llvm with llvm >=3D=
 3.9
>  -VULKAN_DRIVERS =3D ""
>  +VULKAN_DRIVERS =3D "swrast"
>   VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>   VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>   VULKAN_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFIG',
>  'freedreno', ',freedreno', '', d)}"
>
>  Alex
>
>  On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail.com> wrote:
>
>
>
>   Also vulkan-drivers is empty in meson generated by bitbake. If I add it=
 manually it will complain that llvm is disabled. How would I enable it?
>
>   Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin <alex.kan=
avin@gmail.com>:
>
>
>
>   I think for software vulkan you need to pass in
>   -Dvulkan-drivers=3Dswrast when building mesa for the target.
>
>   Alex
>
>   On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail.com> wrote:
>
>
>
>
>    I asked the author so I assume he would have told me. Apparently the v=
irglrenderer branch is obsolete.
>
>    Currently my only changes from poky master are adding vulkan opengl x1=
1 to distro features and vulkan-samples vulkan-loader vulkan-tools virglren=
derer to core image extra install in local.conf.
>
>    I also added virtio-experimental flag to mesa and virglrenderer meson =
recipes.
>
>    I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.
>
>    What am I missing for Software Mode?
>
>    Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin <alex.ka=
navin@gmail.com>:
>
>
>
>
>    I would first check whether any of that work in the branch has meanwhi=
le landed upstream. The post is from 2021.
>
>    Have you tried the software Vulkan in the guest?
>
>    Alex
>
>    On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com> wrote:
>
>
>
>
>    I try to enable vulkan according to this tutorial
>
>    https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-=
enabling-new-virtual-vulkan-driver/
>
>    According to the author the modified qemu branch is still necessary so=
 I want to enable that.
>
>
>    Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin <alex.ka=
navin@gmail.com>:
>
>
>
>
>    You need to clarify what you want to do exactly. Why can=E2=80=99t you=
 use the existing recipe?
>
>    Alex
>
>    On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.com> wrote=
:
>
>
>
>
>    Greetings,
>
>    I want to change the git repo url in order to test the Venus driver. C=
an someone tell me which variable in which recipe I'd have to set?
>
>    Regards
>    --
>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.
> ________________________________
>    Links: You receive all messages sent to this group.
>    View/Reply Online (#58196): https://lists.yoctoproject.org/g/yocto/mes=
sage/58196
>    Mute This Topic: https://lists.yoctoproject.org/mt/93968127/1686489
>    Group Owner: yocto+owner@lists.yoctoproject.org
>    Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavi=
n@gmail.com]
> ________________________________
>
>
>
>   --
>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et.
>
>
>
>
>    --
>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.
>
>
>
>   --
>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et.
>
>
>  --
>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesende=
t.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

