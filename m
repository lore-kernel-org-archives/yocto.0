Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69543C32771
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 10:48:28 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web09.6416.1664362098066181981
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 03:48:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HeGAs1BB;
 spf=pass (domain: gmail.com, ip: 209.85.208.178,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id q17so13852707lji.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 28 Sep 2022 03:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=7LJI/piElp/lIPha+u9KaOUQv2idynrTomuSGsgiCQA=;
        b=HeGAs1BBorsgni4sXjDHquSyF+BjonhfJV+1T95GG0/WO8uxznrg4M4+RoyxvL6QKT
         V7at0p4Yq8srvFUBTXfW1Nus66NJCFkk490RQ4NyZkpoERLiUJqEJM6S/AbDBjjEvO9J
         xtLu+5NP5yWliZ31VMwbl+D17qQ9n/FGCfaKs1iOsZ0PvKe8I4KQOL5sNR9LQb2svkRy
         VYDEkfjo8DdqGLMV501l22BOWWywQAUJeMCmSO8RYgi/GA0EYA4rfr2XSbqYUokVU9VR
         qH0NdmW76PSEj/dIvhLwrhoz+2AGI+2+3NohZgFqmUZwtF8RtW5mqrRvssF2L1BEJPfV
         UbDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=7LJI/piElp/lIPha+u9KaOUQv2idynrTomuSGsgiCQA=;
        b=Em3+7XIe2yNIxq8IuX7CNL32gw2Ve6xESoaT0CLsSvu/EKmM/0ZS/Frl20345D5oDz
         9W382hJB7qOQYzdgvgfR1sOwLZ3RIR/uPluRsIl1raGQsMxz3wtYBzO6//Wowya44cG6
         GIbr2dYbW6Gfki/PrxXuqDiMId8iWaVXd5WadbA2/dBlGnpFa79FrU3w/jv7hu7AxcLF
         QZxpH6AmEQ26xfe1raFx5sYPfFL4f6iu8Il8onseqSu73Ehkd/1nnCpEgMvcBDm2RJDd
         waOWDVPdVC+6/a4LsPiGAgESWumM8n0W1hF4T44U52YX6WKoouukjGJvK3L5o2zsP7y9
         vJjw==
X-Gm-Message-State: ACrzQf3K8ACebfsTLHiqMLi80KwSeF8dHRXViyIdSFQTCb+5GsI8JoCh
	etxQuB3ykSwe2UAbGDWMkGdps/1hGe/Fda0rYdo=
X-Google-Smtp-Source: 
 AMsMyM4sqqoywqd4rylz3F39NbOO8u10NVd3d+TUzN5apoRqUtofYNHlDg4YPt/Kyfci1dyC+b6cbqAgRFzgdJQRMJ4=
X-Received: by 2002:a2e:b611:0:b0:26d:36a:696b with SMTP id
 r17-20020a2eb611000000b0026d036a696bmr7808954ljn.257.1664362095995; Wed, 28
 Sep 2022 03:48:15 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-ybq6AhgDM3UKpMf9xsBqpzNW5vXYQQ-8Vr8U4R8U-tA@mail.gmail.com>
 <PH0PR84MB1835BF84B82124FF0DB10565C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_sdovPpw5+uhPaa65LDBgZUctApsJDv-6KReSi-Zk1PQ@mail.gmail.com>
 <PH0PR84MB1835A9768FB8246072F05484C7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8hmMe9Qc-pb5KxFW-kraCJCZ=kttZmzkospx4VPp0rDw@mail.gmail.com>
 <PH0PR84MB1835197966482CF4FCA15A0BC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835197966482CF4FCA15A0BC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Sep 2022 12:48:04 +0200
Message-ID: 
 <CANNYZj_M_nrekrRRJ2oKbWFr7PhcTtwFNucrGd3=ZyVHfmP2MA@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: PHIL <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 10:48:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58205

The following works for me. I get

tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan-dr=
ivers/usr/lib/libvulkan_intel.so
tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan-dr=
ivers/usr/lib/libvulkan_lvp.so

--- a/meta/recipes-graphics/mesa/mesa.inc
+++ b/meta/recipes-graphics/mesa/mesa.inc
@@ -88,6 +88,7 @@ def strip_comma(s):

 PACKAGECONFIG =3D " \
        gallium \
+        gallium-llvm \
        ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan wayland', d)} \
        ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'opengl egl
gles gbm virgl', '', d)} \
        ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'dri3', '', d=
)} \
@@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
-Ddri3=3Ddisabled, xorgproto libxshmfence"

 # Vulkan drivers need dri3 enabled
 # amd could be enabled as well but requires gallium-llvm with llvm >=3D 3.=
9
-VULKAN_DRIVERS =3D ""
+VULKAN_DRIVERS =3D "swrast"
 VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
 VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
 VULKAN_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFIG',
'freedreno', ',freedreno', '', d)}"

Alex

On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail.com> wrote:
>
> Also vulkan-drivers is empty in meson generated by bitbake. If I add it m=
anually it will complain that llvm is disabled. How would I enable it?
>
> Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>:
>>
>> I think for software vulkan you need to pass in
>> -Dvulkan-drivers=3Dswrast when building mesa for the target.
>>
>> Alex
>>
>> On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>
>>>  I asked the author so I assume he would have told me. Apparently the v=
irglrenderer branch is obsolete.
>>>
>>>  Currently my only changes from poky master are adding vulkan opengl x1=
1 to distro features and vulkan-samples vulkan-loader vulkan-tools virglren=
derer to core image extra install in local.conf.
>>>
>>>  I also added virtio-experimental flag to mesa and virglrenderer meson =
recipes.
>>>
>>>  I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.
>>>
>>>  What am I missing for Software Mode?
>>>
>>>  Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin <alex.ka=
navin@gmail.com>:
>>>>
>>>>
>>>>  I would first check whether any of that work in the branch has meanwh=
ile landed upstream. The post is from 2021.
>>>>
>>>>  Have you tried the software Vulkan in the guest?
>>>>
>>>>  Alex
>>>>
>>>>  On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>  I try to enable vulkan according to this tutorial
>>>>>
>>>>>  https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qem=
u-enabling-new-virtual-vulkan-driver/
>>>>>
>>>>>  According to the author the modified qemu branch is still necessary =
so I want to enable that.
>>>>>
>>>>>
>>>>>  Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin <alex.=
kanavin@gmail.com>:
>>>>>>
>>>>>>
>>>>>>  You need to clarify what you want to do exactly. Why can=E2=80=99t =
you use the existing recipe?
>>>>>>
>>>>>>  Alex
>>>>>>
>>>>>>  On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.com> wr=
ote:
>>>>>>>
>>>>>>>
>>>>>>>  Greetings,
>>>>>>>
>>>>>>>  I want to change the git repo url in order to test the Venus drive=
r. Can someone tell me which variable in which recipe I'd have to set?
>>>>>>>
>>>>>>>  Regards
>>>>>>>  --
>>>>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail g=
esendet.
>>>>>>> ________________________________
>>>>>>>  Links: You receive all messages sent to this group.
>>>>>>>  View/Reply Online (#58196): https://lists.yoctoproject.org/g/yocto=
/message/58196
>>>>>>>  Mute This Topic: https://lists.yoctoproject.org/mt/93968127/168648=
9
>>>>>>>  Group Owner: yocto+owner@lists.yoctoproject.org
>>>>>>>  Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.ka=
navin@gmail.com]
>>>>>>> ________________________________
>>>>>
>>>>> --
>>>>> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gese=
ndet.
>>>
>>>
>>>  --
>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

