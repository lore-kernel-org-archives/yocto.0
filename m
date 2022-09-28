Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4734C04A95
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 11:37:28 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.6722.1664365039634477821
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 04:37:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lEkm0vK9;
 spf=pass (domain: gmail.com, ip: 209.85.167.50,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id j16so19951561lfg.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 04:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=uc5ByhJ7lGYv3/l+rGTs+we9ZnAGtprddOvlottPN7Q=;
        b=lEkm0vK9F9/Mpo67CHFy995M/hym580UGztKKVv/iuBZue3sTvCbYu2eDCLg/tjzWl
         CqkZZtLiECFKiko+yWXCSLgoll+ihJ9uBEayPpGxcE33bxlB9xIFnhkL3dZ/zwpl80n5
         6QqNJ47qrHoRxZfayZmrk/j+Ye4tSR/XdQhmekeAHEDwkzpbopsE4neU4O9Up15OyIXC
         bdL87smktlzgKjH+jcK4J86H371GN3As8C5GVaVT+EoyxbXVnZDc2FjKTV9eR6yzDtX3
         r4RnAZFPuhNLIGEHk45lFh7AojRBd4mClE5SlAf11QHC9p5xONNP+b5yGlBTwLtfuE83
         xRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=uc5ByhJ7lGYv3/l+rGTs+we9ZnAGtprddOvlottPN7Q=;
        b=dmxJdF29UXIttl8btOxNpfUTpmI4DzjPLFrr46TIHuQSuBAiP2dA0cWSBZ1qcYxtOx
         wO5UZyrdu803DGo3wTr/IoT4jKszaLqw8YqG39C2/tQF//F7kzjmV06umSHMXQd21Dyi
         ELcOcbVU1lm4OM9XbFbH6kc8CCkcLrfdfD/cI2c424GVy7rhT6WqWsJ7tXjf7234UjVD
         oYlJBAC1lnOAba76QPOD5wf2NGie2pLgE2+LwRVNt7p376eJt+7r2MTp9fkbP8ORbIWW
         UwDtLwgy6ucOQlWfmuYXJVrZVxaQHPEL5CAMfIn8ucPfD2ibf8Bui9SMU+/HORFaMHT/
         I32A==
X-Gm-Message-State: ACrzQf16PaJIg+QCTRVV/2EJhYUizLXDUIUCaHlk2yzhDsXCniuYQumx
	bGNYX+r0BflFdZWlQ6EqfW49HyWup4d/SZW/U2Q=
X-Google-Smtp-Source: 
 AMsMyM6MIsz1m/Erd1Y9L7EOTYyUEhFhFvZrl0+EeqXlZJH9zY084liocV+x6CBXkbuqFehXEM+x3HQUCC4mdBXOGXo=
X-Received: by 2002:a05:6512:3612:b0:499:aea7:8bed with SMTP id
 f18-20020a056512361200b00499aea78bedmr12460914lfs.26.1664365037397; Wed, 28
 Sep 2022 04:37:17 -0700 (PDT)
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
In-Reply-To: 
 <PH0PR84MB1835BB630C385390A43FDDC9C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Sep 2022 13:37:05 +0200
Message-ID: 
 <CANNYZj-ttajWfcN+EhgFUjxtK4rvPzkGpwyQoa=tRMP7Mo7hDA@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: PHIL <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 11:37:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58207

Try latest poky master?

Alex

On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail.com> wrote:
>
> Mesa build fails. It complains that it copies llvm-config14.0.6 to the sa=
me file.
>
> Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>:
>>
>> The following works for me. I get
>>
>> tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan=
-drivers/usr/lib/libvulkan_intel.so
>> tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan=
-drivers/usr/lib/libvulkan_lvp.so
>>
>> --- a/meta/recipes-graphics/mesa/mesa.inc
>> +++ b/meta/recipes-graphics/mesa/mesa.inc
>> @@ -88,6 +88,7 @@ def strip_comma(s):
>>
>>  PACKAGECONFIG =3D " \
>>         gallium \
>> +        gallium-llvm \
>>         ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan wayland', d)} =
\
>>         ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'opengl egl
>> gles gbm virgl', '', d)} \
>>         ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'dri3', ''=
, d)} \
>> @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>> -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>
>>  # Vulkan drivers need dri3 enabled
>>  # amd could be enabled as well but requires gallium-llvm with llvm >=3D=
 3.9
>> -VULKAN_DRIVERS =3D ""
>> +VULKAN_DRIVERS =3D "swrast"
>>  VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>  VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>  VULKAN_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFIG',
>> 'freedreno', ',freedreno', '', d)}"
>>
>> Alex
>>
>> On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>
>>>  Also vulkan-drivers is empty in meson generated by bitbake. If I add i=
t manually it will complain that llvm is disabled. How would I enable it?
>>>
>>>  Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin <alex.ka=
navin@gmail.com>:
>>>>
>>>>
>>>>  I think for software vulkan you need to pass in
>>>>  -Dvulkan-drivers=3Dswrast when building mesa for the target.
>>>>
>>>>  Alex
>>>>
>>>>  On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>
>>>>>   I asked the author so I assume he would have told me. Apparently th=
e virglrenderer branch is obsolete.
>>>>>
>>>>>   Currently my only changes from poky master are adding vulkan opengl=
 x11 to distro features and vulkan-samples vulkan-loader vulkan-tools virgl=
renderer to core image extra install in local.conf.
>>>>>
>>>>>   I also added virtio-experimental flag to mesa and virglrenderer mes=
on recipes.
>>>>>
>>>>>   I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.
>>>>>
>>>>>   What am I missing for Software Mode?
>>>>>
>>>>>   Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin <alex=
.kanavin@gmail.com>:
>>>>>>
>>>>>>
>>>>>>
>>>>>>   I would first check whether any of that work in the branch has mea=
nwhile landed upstream. The post is from 2021.
>>>>>>
>>>>>>   Have you tried the software Vulkan in the guest?
>>>>>>
>>>>>>   Alex
>>>>>>
>>>>>>   On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com> wrote:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>   I try to enable vulkan according to this tutorial
>>>>>>>
>>>>>>>   https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-=
qemu-enabling-new-virtual-vulkan-driver/
>>>>>>>
>>>>>>>   According to the author the modified qemu branch is still necessa=
ry so I want to enable that.
>>>>>>>
>>>>>>>
>>>>>>>   Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin <al=
ex.kanavin@gmail.com>:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>   You need to clarify what you want to do exactly. Why can=E2=80=
=99t you use the existing recipe?
>>>>>>>>
>>>>>>>>   Alex
>>>>>>>>
>>>>>>>>   On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.com>=
 wrote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>   Greetings,
>>>>>>>>>
>>>>>>>>>   I want to change the git repo url in order to test the Venus dr=
iver. Can someone tell me which variable in which recipe I'd have to set?
>>>>>>>>>
>>>>>>>>>   Regards
>>>>>>>>>   --
>>>>>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet.
>>>>>>>>> ________________________________
>>>>>>>>>   Links: You receive all messages sent to this group.
>>>>>>>>>   View/Reply Online (#58196): https://lists.yoctoproject.org/g/yo=
cto/message/58196
>>>>>>>>>   Mute This Topic: https://lists.yoctoproject.org/mt/93968127/168=
6489
>>>>>>>>>   Group Owner: yocto+owner@lists.yoctoproject.org
>>>>>>>>>   Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex=
.kanavin@gmail.com]
>>>>>>>>> ________________________________
>>>>>>>
>>>>>>>
>>>>>>>  --
>>>>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail g=
esendet.
>>>>>
>>>>>
>>>>>
>>>>>   --
>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet.
>>>
>>>
>>>  --
>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

