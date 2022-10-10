Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65758C433FE
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 13:04:35 +0000 (UTC)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 by mx.groups.io with SMTP id smtpd.web10.6103.1665407071952578704
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 06:04:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hSAJJJRK;
 spf=pass (domain: gmail.com, ip: 209.85.166.47,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-io1-f47.google.com with SMTP id p186so8364922iof.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 06:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lxL/RzLV5mQvEyO+exgjkiume3h47hCNtz50pZYYnkc=;
        b=hSAJJJRKhp0Wf4Gm/s3UPi4Gfxcal09dFJGWPTk0FwXD3eLjCz+e1t8/QyJmY/4hKA
         N73+mioPl6rJ0+Z8wFVMI5IaRggkKy9M+RI7GAqQ8yIBKrLkYWNDwddM0nVDkkyQjKm+
         S/dbkZRoxA1XYLyz1hVfSVT+rvK+hHDgQNL8TsbwaEJ2yAuSnFbPv8dOKmQRm/0lK0d6
         oC8GkTGIhp9+fto7rqPAjBigk4n3W2Flad1SM+OljvEIzzrO66wGmxaOwXiUjMq98yhr
         rl6AuG9qp36sUJHZUdUIx+htlSVFJquinL5nbqWR15vUHl7SJ1LYiHt1fCjAo7sWNDtZ
         nORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lxL/RzLV5mQvEyO+exgjkiume3h47hCNtz50pZYYnkc=;
        b=oR3lICEtppja1bZtA5RTo4zYBsMcke0wrqzWu+cknJs7tYseBa5st5+iHuC2qGEI6z
         1kENpUC8RPX/SEx4izaKvkPlRj5w9vHJXH6mhpF2X6yC+bfMORxYIcSM/DiQ3dEbd4WT
         h0Ra8FAqqQDKfous+wCIF84Mre2C8LYxsQmFdjSLNoyTdUK2R2XREEADGZVHL7jxo6gx
         4PyFKmlLSfYCJxDC8+3G++ZNFbzjeOio3AJS3vRGdTqAU+UxGgdyY7/rhyzz5usLTrUE
         CFPvY2D0qztMGl6Q+2fcW+plobCHgSOnCTvMPHMhXVq794U7brmgUHAku4Bf2QWlK6Na
         DjRQ==
X-Gm-Message-State: ACrzQf35OuR7z1x5IoneFz7tt7evn115C4u+i+lkBVlZp9/I+lB1U4Gs
	ti23WxR4aTsDUXy/BXZqDy67AIXRStTRdzpRx6U=
X-Google-Smtp-Source: 
 AMsMyM6OxPlA7dLsjGtY051PL5lFJde1+YJhPuAHAKkZLGjr+WL/ggKaitUNgcTKv43zrCh/Uuzz9r2udCnqfSxzQac=
X-Received: by 2002:a05:6638:14c3:b0:363:b026:9989 with SMTP id
 l3-20020a05663814c300b00363b0269989mr3858710jak.254.1665407069762; Mon, 10
 Oct 2022 06:04:29 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB1835197966482CF4FCA15A0BC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_M_nrekrRRJ2oKbWFr7PhcTtwFNucrGd3=ZyVHfmP2MA@mail.gmail.com>
 <PH0PR84MB1835BB630C385390A43FDDC9C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ttajWfcN+EhgFUjxtK4rvPzkGpwyQoa=tRMP7Mo7hDA@mail.gmail.com>
 <PH0PR84MB183597EAA65D8009C257BFFBC7579@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8gA-1K8pGGHNcxAqn4KRXow-tdDh395n9GDskbkTs+OQ@mail.gmail.com>
 <PH0PR84MB183522C486078708425E2BF5C7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8e83mohBHrxKAnM==4O+P-FsW2=4CfzpaaC2zXD+boBQ@mail.gmail.com>
 <PH0PR84MB1835C850590FA49C7DD82C97C7569@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_QAkRLjj_3kJKihea1k9C41AaMYcVNWiXgUYy+HpZKgw@mail.gmail.com>
 <PH0PR84MB1835720987A0C6B0DDBCE7CDC7219@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_zJg5cihPu9tW9OS4e7pVqwWB+rnHXijLd2RH88UbK5w@mail.gmail.com>
 <PH0PR84MB1835BFEC6AF4CCE8E0EBE349C7209@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835BFEC6AF4CCE8E0EBE349C7209@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 10 Oct 2022 15:04:18 +0200
Message-ID: 
 <CANNYZj9nC456j1ALbZ4LmrOA+65Lg6cZ0tzxtKQcT6J46zjvFg@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: PHIL <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 13:04:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58304

You still have not introduced yourself.

I  have reproduced; the key difference is that you are building for
qemuarm64. This does seem like a bug somewhere, but you can work
around it if you build for qemux86-64 - you should do this anyway
because otherwise the performance of the software renderer and
everything else in qemu (without kvm) will be appalling.

Alex

On Mon, 10 Oct 2022 at 09:49, PHIL <heideggm@hotmail.com> wrote:
>
> Sorry for being strenuous! I just really want to get this going and I've =
ran out of ideas. All I can do at the moment is to express my gratitude dor=
 the time you've already invested.
>
> I've gathered some data that hopefully has everything you need. This incl=
udes:
>
> Poky Commit
> My local recipe diff
> Poky.conf
> Output from bitbake layers and recipe
> Output from bitbake core-image-weston
>
> I can provide more if you give me the command!
>
> Regards
>
> Am 10. Oktober 2022 05:55:35 MESZ schrieb Alexander Kanavin <alex.kanavin=
@gmail.com>:
>>
>> It works for me. If it does not work for you, you need to show the full =
content of your local modifications and full content of error messages, and=
 precise revisions of all of the layers and poky. And keep in mind it=E2=80=
=99s volunteer help and no one is obliged to carry you to a solution, espec=
ially when you have not introduced yourself and your goal properly. It=E2=
=80=99s far easier to just stop answering.
>>
>> Otherwise, commercial support is available. From my company (linutronix)=
 as well.
>>
>> Alex
>>
>> On Mon 10. Oct 2022 at 0.29, PHIL <heideggm@hotmail.com> wrote:
>>>
>>> Any more ideas?
>>>
>>>
>>> Am 30. September 2022 22:53:22 MESZ schrieb Alexander Kanavin <alex.kan=
avin@gmail.com>:
>>>>
>>>> That depends on what is your target. If you're running qemu on a x86
>>>> host, it's better to not do software emulation and build for
>>>> qemux86_64 as well, and then run qemu with kvm, so it executes
>>>> directly on the host CPU.
>>>>
>>>> Alex
>>>>
>>>> On Fri, 30 Sept 2022 at 22:50, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>  X86-64 is right or do you mean arm?
>>>>>
>>>>>  Am 30. September 2022 22:39:44 MESZ schrieb Alexander Kanavin <alex.=
kanavin@gmail.com>:
>>>>>>
>>>>>>
>>>>>>  You might want to try enabling gallium-llvm only for the target mes=
a:
>>>>>>
>>>>>>  PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-llvm'
>>>>>>
>>>>>>  Alex
>>>>>>
>>>>>>  On Fri, 30 Sept 2022 at 22:24, Edgar Mobile <heideggm@hotmail.com> =
wrote:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>   I deleted the whole build directory, recreated it, only added the=
 arm switch in local conf and your changes for mesa.inc.
>>>>>>>   After a few hours of building core-image-weston it again complain=
s that it tries to copy llcm-config14.0.6 over itself. I don't know what to=
 do anymore.
>>>>>>> ________________________________
>>>>>>>   From: Alexander Kanavin <alex.kanavin@gmail.com>
>>>>>>>   Sent: Thursday, September 29, 2022 10:46 AM
>>>>>>>   To: PHIL <heideggm@hotmail.com>
>>>>>>>   Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
>>>>>>>   Subject: Re: [yocto] Changing git url of qemu
>>>>>>>
>>>>>>>   You need to build mesa, not mesa-native. And please show exact ch=
anges you made.
>>>>>>>
>>>>>>>   Alex
>>>>>>>
>>>>>>>   On Thu 29. Sep 2022 at 12.28, PHIL <heideggm@hotmail.com> wrote:
>>>>>>>
>>>>>>>   Tried in a sifferent machine with wednesday poky master
>>>>>>>
>>>>>>>   Building mesa-native gives the error
>>>>>>>
>>>>>>>   cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_6=
4-linux/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14=
.0.6' and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-li=
nux/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6=
' are the same file
>>>>>>>
>>>>>>>
>>>>>>>   Am 28. September 2022 13:37:05 MESZ schrieb Alexander Kanavin <al=
ex.kanavin@gmail.com>:
>>>>>>>
>>>>>>>   Try latest poky master?
>>>>>>>
>>>>>>>   Alex
>>>>>>>
>>>>>>>   On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail.com> wrote:
>>>>>>>
>>>>>>>
>>>>>>>    Mesa build fails. It complains that it copies llvm-config14.0.6 =
to the same file.
>>>>>>>
>>>>>>>    Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin <a=
lex.kanavin@gmail.com>:
>>>>>>>
>>>>>>>
>>>>>>>    The following works for me. I get
>>>>>>>
>>>>>>>    tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mes=
a-vulkan-drivers/usr/lib/libvulkan_intel.so
>>>>>>>    tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mes=
a-vulkan-drivers/usr/lib/libvulkan_lvp.so
>>>>>>>
>>>>>>>    --- a/meta/recipes-graphics/mesa/mesa.inc
>>>>>>>    +++ b/meta/recipes-graphics/mesa/mesa.inc
>>>>>>>    @@ -88,6 +88,7 @@ def strip_comma(s):
>>>>>>>
>>>>>>>     PACKAGECONFIG =3D " \
>>>>>>>            gallium \
>>>>>>>    +        gallium-llvm \
>>>>>>>            ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan waylan=
d', d)} \
>>>>>>>            ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'openg=
l egl
>>>>>>>    gles gbm virgl', '', d)} \
>>>>>>>            ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'd=
ri3', '', d)} \
>>>>>>>    @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>>>>>>>    -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>>>>>>
>>>>>>>     # Vulkan drivers need dri3 enabled
>>>>>>>     # amd could be enabled as well but requires gallium-llvm with l=
lvm >=3D 3.9
>>>>>>>    -VULKAN_DRIVERS =3D ""
>>>>>>>    +VULKAN_DRIVERS =3D "swrast"
>>>>>>>     VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>>>>>>     VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>>>>>>     VULKAN_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFIG',
>>>>>>>    'freedreno', ',freedreno', '', d)}"
>>>>>>>
>>>>>>>    Alex
>>>>>>>
>>>>>>>    On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail.com> wrote=
:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>     Also vulkan-drivers is empty in meson generated by bitbake. If =
I add it manually it will complain that llvm is disabled. How would I enabl=
e it?
>>>>>>>
>>>>>>>     Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin <=
alex.kanavin@gmail.com>:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>     I think for software vulkan you need to pass in
>>>>>>>     -Dvulkan-drivers=3Dswrast when building mesa for the target.
>>>>>>>
>>>>>>>     Alex
>>>>>>>
>>>>>>>     On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail.com> wrot=
e:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>      I asked the author so I assume he would have told me. Apparent=
ly the virglrenderer branch is obsolete.
>>>>>>>
>>>>>>>      Currently my only changes from poky master are adding vulkan o=
pengl x11 to distro features and vulkan-samples vulkan-loader vulkan-tools =
virglrenderer to core image extra install in local.conf.
>>>>>>>
>>>>>>>      I also added virtio-experimental flag to mesa and virglrendere=
r meson recipes.
>>>>>>>
>>>>>>>      I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.
>>>>>>>
>>>>>>>      What am I missing for Software Mode?
>>>>>>>
>>>>>>>      Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin =
<alex.kanavin@gmail.com>:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>      I would first check whether any of that work in the branch has=
 meanwhile landed upstream. The post is from 2021.
>>>>>>>
>>>>>>>      Have you tried the software Vulkan in the guest?
>>>>>>>
>>>>>>>      Alex
>>>>>>>
>>>>>>>      On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com> wrot=
e:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>      I try to enable vulkan according to this tutorial
>>>>>>>
>>>>>>>      https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-=
on-qemu-enabling-new-virtual-vulkan-driver/
>>>>>>>
>>>>>>>      According to the author the modified qemu branch is still nece=
ssary so I want to enable that.
>>>>>>>
>>>>>>>
>>>>>>>      Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin =
<alex.kanavin@gmail.com>:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>      You need to clarify what you want to do exactly. Why can=E2=80=
=99t you use the existing recipe?
>>>>>>>
>>>>>>>      Alex
>>>>>>>
>>>>>>>      On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.co=
m> wrote:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>      Greetings,
>>>>>>>
>>>>>>>      I want to change the git repo url in order to test the Venus d=
river. Can someone tell me which variable in which recipe I'd have to set?
>>>>>>>
>>>>>>>      Regards
>>>>>>>      --
>>>>>>>      Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Ma=
il gesendet.
>>>>>>> ________________________________
>>>>>>>      Links: You receive all messages sent to this group.
>>>>>>>      View/Reply Online (#58196): https://lists.yoctoproject.org/g/y=
octo/message/58196
>>>>>>>      Mute This Topic: https://lists.yoctoproject.org/mt/93968127/16=
86489
>>>>>>>      Group Owner: yocto+owner@lists.yoctoproject.org
>>>>>>>      Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ale=
x.kanavin@gmail.com]
>>>>>>> ________________________________
>>>>>>>     --
>>>>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet.
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>      --
>>>>>>>      Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Ma=
il gesendet.
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>     --
>>>>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet.
>>>>>>>
>>>>>>>
>>>>>>>    --
>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail=
 gesendet.
>>>>>>>
>>>>>>>   --
>>>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail =
gesendet.
>>>>>
>>>>>
>>>>>  --
>>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ges=
endet.
>>>
>>> --
>>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesend=
et.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

