Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB213C433F5
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 20:53:37 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web11.282.1664571214614486282
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 13:53:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lA5sRGZR;
 spf=pass (domain: gmail.com, ip: 209.85.166.49,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id z191so4195330iof.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 13:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=i1unaJLplxJTyZBYOqdakrg6fASKkyWLGMoNQWLRn30=;
        b=lA5sRGZRTWchuNwkRZbey7MbaQhoyoLFD6QqYKlM8RAwHvw4scrup1H4QSShs/QiBq
         JdpESzFSyqOna/o9AQrklxqKGf5B8wCRWiUMxGqSZvk95oYkAEeC8Ly6GlExm3nP/Ug5
         x55niAfi/di7rpkSPLPot9Uy6mHosaw4ByMn5scMV+ruzr6JRYgrZ1USt3o8E7/d27X9
         o/3uYbBx/D14+xFE0DxrGn6grsRnO3/9pE/NUyvlfSHju7MWfeI+E565IP7X58Udu8q9
         rag7U1edOiUxqU30WWQijgqL8CboJBPL15Ypfactk+lS/WX6cSFdTx3Q5OuFUrpRuwUo
         CXJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=i1unaJLplxJTyZBYOqdakrg6fASKkyWLGMoNQWLRn30=;
        b=r5qAsboQoJB/6JcsoLKJXbOorf45q5XVmZFwElPibkWOkV5ZjuxWFOPhNFkhM4OR5Q
         a1eZ5ulUQ4SE8etar98fn+nG75vibWdCVk834EddXsVKMGWdlpqd5rT+65APnGU5Lvsz
         68TfVcw1MVTSvo2dKZuh3N5lOeq0up2b9WNa3r8V9blR50jL3g1hwUYuzxj9CxWGuMbJ
         u4quwJl8iV93tTSLJNt01mugg3BUM91gR/XafW5spiawSKT32MeLjAmBJLf0sxyrI4PR
         rZljwWLfPsRNGP/S67g9khmCbLqMOueHtGUhKWhscDdC96OIa1ElrqA2/XOJXWJFiR0v
         SOpw==
X-Gm-Message-State: ACrzQf3tbq9axxs6R6uT09UW6PeUMxxht5UWfp9MyLjnmL4VfVF6Pvcl
	h5nB2/fkuYVBQ+LG9shUzl0BDjertogWoZsoZGuRciuH
X-Google-Smtp-Source: 
 AMsMyM45xscloS6tiQsR59kjfEwYcQNH9n88olwZtbW/W5hViH8TfpieEICbHxSfVl1EMk0wrNO8mImlxaJpNBQy7zs=
X-Received: by 2002:a05:6602:2d89:b0:6a3:8489:fef4 with SMTP id
 k9-20020a0566022d8900b006a38489fef4mr4959846iow.105.1664571213928; Fri, 30
 Sep 2022 13:53:33 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
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
 <CANNYZj8e83mohBHrxKAnM==4O+P-FsW2=4CfzpaaC2zXD+boBQ@mail.gmail.com>
 <PH0PR84MB1835C850590FA49C7DD82C97C7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835C850590FA49C7DD82C97C7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 30 Sep 2022 22:53:22 +0200
Message-ID: 
 <CANNYZj_QAkRLjj_3kJKihea1k9C41AaMYcVNWiXgUYy+HpZKgw@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: PHIL <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 20:53:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58241

That depends on what is your target. If you're running qemu on a x86
host, it's better to not do software emulation and build for
qemux86_64 as well, and then run qemu with kvm, so it executes
directly on the host CPU.

Alex

On Fri, 30 Sept 2022 at 22:50, PHIL <heideggm@hotmail.com> wrote:
>
> X86-64 is right or do you mean arm?
>
> Am 30. September 2022 22:39:44 MESZ schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>:
>>
>> You might want to try enabling gallium-llvm only for the target mesa:
>>
>> PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-llvm'
>>
>> Alex
>>
>> On Fri, 30 Sept 2022 at 22:24, Edgar Mobile <heideggm@hotmail.com> wrote=
:
>>>
>>>
>>>  I deleted the whole build directory, recreated it, only added the arm =
switch in local conf and your changes for mesa.inc.
>>>  After a few hours of building core-image-weston it again complains tha=
t it tries to copy llcm-config14.0.6 over itself. I don't know what to do a=
nymore.
>>> ________________________________
>>>  From: Alexander Kanavin <alex.kanavin@gmail.com>
>>>  Sent: Thursday, September 29, 2022 10:46 AM
>>>  To: PHIL <heideggm@hotmail.com>
>>>  Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
>>>  Subject: Re: [yocto] Changing git url of qemu
>>>
>>>  You need to build mesa, not mesa-native. And please show exact changes=
 you made.
>>>
>>>  Alex
>>>
>>>  On Thu 29. Sep 2022 at 12.28, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>  Tried in a sifferent machine with wednesday poky master
>>>
>>>  Building mesa-native gives the error
>>>
>>>  cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-lin=
ux/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6'=
 and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/m=
esa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6' are=
 the same file
>>>
>>>
>>>  Am 28. September 2022 13:37:05 MESZ schrieb Alexander Kanavin <alex.ka=
navin@gmail.com>:
>>>
>>>  Try latest poky master?
>>>
>>>  Alex
>>>
>>>  On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>
>>>   Mesa build fails. It complains that it copies llvm-config14.0.6 to th=
e same file.
>>>
>>>   Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin <alex.k=
anavin@gmail.com>:
>>>
>>>
>>>   The following works for me. I get
>>>
>>>   tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vul=
kan-drivers/usr/lib/libvulkan_intel.so
>>>   tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vul=
kan-drivers/usr/lib/libvulkan_lvp.so
>>>
>>>   --- a/meta/recipes-graphics/mesa/mesa.inc
>>>   +++ b/meta/recipes-graphics/mesa/mesa.inc
>>>   @@ -88,6 +88,7 @@ def strip_comma(s):
>>>
>>>    PACKAGECONFIG =3D " \
>>>           gallium \
>>>   +        gallium-llvm \
>>>           ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan wayland', d=
)} \
>>>           ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'opengl egl
>>>   gles gbm virgl', '', d)} \
>>>           ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'dri3',=
 '', d)} \
>>>   @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>>>   -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>>
>>>    # Vulkan drivers need dri3 enabled
>>>    # amd could be enabled as well but requires gallium-llvm with llvm >=
=3D 3.9
>>>   -VULKAN_DRIVERS =3D ""
>>>   +VULKAN_DRIVERS =3D "swrast"
>>>    VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>>    VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>>    VULKAN_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFIG',
>>>   'freedreno', ',freedreno', '', d)}"
>>>
>>>   Alex
>>>
>>>   On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>
>>>
>>>    Also vulkan-drivers is empty in meson generated by bitbake. If I add=
 it manually it will complain that llvm is disabled. How would I enable it?
>>>
>>>    Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin <alex.=
kanavin@gmail.com>:
>>>
>>>
>>>
>>>    I think for software vulkan you need to pass in
>>>    -Dvulkan-drivers=3Dswrast when building mesa for the target.
>>>
>>>    Alex
>>>
>>>    On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>
>>>
>>>
>>>     I asked the author so I assume he would have told me. Apparently th=
e virglrenderer branch is obsolete.
>>>
>>>     Currently my only changes from poky master are adding vulkan opengl=
 x11 to distro features and vulkan-samples vulkan-loader vulkan-tools virgl=
renderer to core image extra install in local.conf.
>>>
>>>     I also added virtio-experimental flag to mesa and virglrenderer mes=
on recipes.
>>>
>>>     I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.
>>>
>>>     What am I missing for Software Mode?
>>>
>>>     Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin <alex=
.kanavin@gmail.com>:
>>>
>>>
>>>
>>>
>>>     I would first check whether any of that work in the branch has mean=
while landed upstream. The post is from 2021.
>>>
>>>     Have you tried the software Vulkan in the guest?
>>>
>>>     Alex
>>>
>>>     On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>
>>>
>>>
>>>     I try to enable vulkan according to this tutorial
>>>
>>>     https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qe=
mu-enabling-new-virtual-vulkan-driver/
>>>
>>>     According to the author the modified qemu branch is still necessary=
 so I want to enable that.
>>>
>>>
>>>     Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin <alex=
.kanavin@gmail.com>:
>>>
>>>
>>>
>>>
>>>     You need to clarify what you want to do exactly. Why can=E2=80=99t =
you use the existing recipe?
>>>
>>>     Alex
>>>
>>>     On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.com> wr=
ote:
>>>
>>>
>>>
>>>
>>>     Greetings,
>>>
>>>     I want to change the git repo url in order to test the Venus driver=
. Can someone tell me which variable in which recipe I'd have to set?
>>>
>>>     Regards
>>>     --
>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet.
>>> ________________________________
>>>     Links: You receive all messages sent to this group.
>>>     View/Reply Online (#58196): https://lists.yoctoproject.org/g/yocto/=
message/58196
>>>     Mute This Topic: https://lists.yoctoproject.org/mt/93968127/1686489
>>>     Group Owner: yocto+owner@lists.yoctoproject.org
>>>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kan=
avin@gmail.com]
>>> ________________________________
>>>    --
>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ges=
endet.
>>>
>>>
>>>
>>>
>>>     --
>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet.
>>>
>>>
>>>
>>>    --
>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ges=
endet.
>>>
>>>
>>>   --
>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gese=
ndet.
>>>
>>>  --
>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

