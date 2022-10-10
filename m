Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 724F9C433FE
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 13:34:15 +0000 (UTC)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
 [209.85.166.178])
 by mx.groups.io with SMTP id smtpd.web11.6142.1665408848919630342
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 06:34:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=R/u7lzeo;
 spf=pass (domain: gmail.com, ip: 209.85.166.178,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-il1-f178.google.com with SMTP id y17so5637850ilq.8
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 06:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gTtONJkrzVQbHAFEKAzu8wHeMsSkDUd/2NAIiW1R1Jg=;
        b=R/u7lzeotzFzfVbAUBY5MlYKuNI8ZF7TfYwtMKtQEYwUIJfa6al3Sg+Ok9munIe7B5
         sl1n+pp4+7TQQDxgSDKzTU02KeWfwz8yADkVKy8jlDzrhxTGYLE2y9XBMOF769sT98mD
         Nbqxi3KFc6Aqg9+sD9xtFxenigMSTfsoyx8k9qPri5nmYPr2/2WuEx+wVlAxuXzqrk24
         y7khbqjlbPO46A/t68Ul/Eo9Fc35o3Ioo6vJg7vnW5Mdb72GVwFTqX2WM+LYRb/mYB5F
         0oOFTQzYuGWvZ8XwWHq99sSqVesTB239qBoXyr5nN6Q9JKLdvMnZ3LGwwDaQ6FGjplik
         +puA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gTtONJkrzVQbHAFEKAzu8wHeMsSkDUd/2NAIiW1R1Jg=;
        b=1B3LepOOGz61ARCIu0HGWbMh+MIPy5FiJLArOoO1oStJ4++vehDR0oNLYvvvJoT6Z+
         iclHivCYnCfpenSpqdVpOLa71YbF8fl4MC/h6VevvSynXod+Z+SfYouZCosA1t65ea6u
         ACAXlNsHvzOcdrjTLCmQMBXunY5lIq8d83kP7LkLVkCOnUkmWKg/9uNQLn/34mAlhvOT
         458U1FDYKr4/aGqzS0ZSYX2jC8xquo/Mx3kodZRkKQqRD0hAUaVV/kWPWpSy3qOXtqPu
         j+LdDX8HO5K1Z9PjWKPy3WeoHC9MqMHFSe6SEaiJaAcg845egvPmu2Crt0GYa2NIIoOK
         c8/Q==
X-Gm-Message-State: ACrzQf1WYNHNTIHW/EndZglEfmGA+M0j4tWkXh7ycgUdaAGStGwmz6D6
	HQFCVMpYm7YOwT8OSAWfOpdD+H+Cl1kvSzov77g=
X-Google-Smtp-Source: 
 AMsMyM4v+ldETDoedzba08AmNR4pgywPuSclYoT70z9apItgnqpaPuMy5VD88LvBu0I4H7tw5Yld3SquqWlHBvKr2vQ=
X-Received: by 2002:a05:6e02:17cb:b0:2f9:1fb4:ba3b with SMTP id
 z11-20020a056e0217cb00b002f91fb4ba3bmr8788516ilu.257.1665408848246; Mon, 10
 Oct 2022 06:34:08 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
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
 <CANNYZj9nC456j1ALbZ4LmrOA+65Lg6cZ0tzxtKQcT6J46zjvFg@mail.gmail.com>
 <PH0PR84MB1835400DDC50E08B55B935F4C7209@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835400DDC50E08B55B935F4C7209@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 10 Oct 2022 15:33:55 +0200
Message-ID: 
 <CANNYZj_54huXTnxKO9SAJXFV2oHwvF6gNn6Z+b1CQXOsGa8RFA@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: PHIL <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 13:34:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58306

Not really: I wanted to see your real name, the name of your company,
or your customer, and some kind of description or link to the product.

Since you are porting the app to vulkan, you have the source code, and
so do not have to build it for aarch64, at least initially. Keep in
mind the performance too.

Alex

On Mon, 10 Oct 2022 at 15:23, PHIL <heideggm@hotmail.com> wrote:
>
> I have an OpenGLES 3.1 based app for Weston that runs on Aarch64 Linux. I=
 can start it sucessfully in emulated Poky. Now I port this app to Vulkan s=
o I need an Aarch64-Vulkan-Weston test suite.
>
> If that is the info you wanted.
>
> Am 10. Oktober 2022 15:04:18 MESZ schrieb Alexander Kanavin <alex.kanavin=
@gmail.com>:
>>
>> You still have not introduced yourself.
>>
>> I  have reproduced; the key difference is that you are building for
>> qemuarm64. This does seem like a bug somewhere, but you can work
>> around it if you build for qemux86-64 - you should do this anyway
>> because otherwise the performance of the software renderer and
>> everything else in qemu (without kvm) will be appalling.
>>
>> Alex
>>
>> On Mon, 10 Oct 2022 at 09:49, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>
>>>  Sorry for being strenuous! I just really want to get this going and I'=
ve ran out of ideas. All I can do at the moment is to express my gratitude =
dor the time you've already invested.
>>>
>>>  I've gathered some data that hopefully has everything you need. This i=
ncludes:
>>>
>>>  Poky Commit
>>>  My local recipe diff
>>>  Poky.conf
>>>  Output from bitbake layers and recipe
>>>  Output from bitbake core-image-weston
>>>
>>>  I can provide more if you give me the command!
>>>
>>>  Regards
>>>
>>>  Am 10. Oktober 2022 05:55:35 MESZ schrieb Alexander Kanavin <alex.kana=
vin@gmail.com>:
>>>>
>>>>
>>>>  It works for me. If it does not work for you, you need to show the fu=
ll content of your local modifications and full content of error messages, =
and precise revisions of all of the layers and poky. And keep in mind it=E2=
=80=99s volunteer help and no one is obliged to carry you to a solution, es=
pecially when you have not introduced yourself and your goal properly. It=
=E2=80=99s far easier to just stop answering.
>>>>
>>>>  Otherwise, commercial support is available. From my company (linutron=
ix) as well.
>>>>
>>>>  Alex
>>>>
>>>>  On Mon 10. Oct 2022 at 0.29, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>  Any more ideas?
>>>>>
>>>>>
>>>>>  Am 30. September 2022 22:53:22 MESZ schrieb Alexander Kanavin <alex.=
kanavin@gmail.com>:
>>>>>>
>>>>>>
>>>>>>  That depends on what is your target. If you're running qemu on a x8=
6
>>>>>>  host, it's better to not do software emulation and build for
>>>>>>  qemux86_64 as well, and then run qemu with kvm, so it executes
>>>>>>  directly on the host CPU.
>>>>>>
>>>>>>  Alex
>>>>>>
>>>>>>  On Fri, 30 Sept 2022 at 22:50, PHIL <heideggm@hotmail.com> wrote:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>   X86-64 is right or do you mean arm?
>>>>>>>
>>>>>>>   Am 30. September 2022 22:39:44 MESZ schrieb Alexander Kanavin <al=
ex.kanavin@gmail.com>:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>   You might want to try enabling gallium-llvm only for the target =
mesa:
>>>>>>>>
>>>>>>>>   PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-llvm'
>>>>>>>>
>>>>>>>>   Alex
>>>>>>>>
>>>>>>>>   On Fri, 30 Sept 2022 at 22:24, Edgar Mobile <heideggm@hotmail.co=
m> wrote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    I deleted the whole build directory, recreated it, only added =
the arm switch in local conf and your changes for mesa.inc.
>>>>>>>>>    After a few hours of building core-image-weston it again compl=
ains that it tries to copy llcm-config14.0.6 over itself. I don't know what=
 to do anymore.
>>>>>>>>> ________________________________
>>>>>>>>>    From: Alexander Kanavin <alex.kanavin@gmail.com>
>>>>>>>>>    Sent: Thursday, September 29, 2022 10:46 AM
>>>>>>>>>    To: PHIL <heideggm@hotmail.com>
>>>>>>>>>    Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
>>>>>>>>>    Subject: Re: [yocto] Changing git url of qemu
>>>>>>>>>
>>>>>>>>>    You need to build mesa, not mesa-native. And please show exact=
 changes you made.
>>>>>>>>>
>>>>>>>>>    Alex
>>>>>>>>>
>>>>>>>>>    On Thu 29. Sep 2022 at 12.28, PHIL <heideggm@hotmail.com> wrot=
e:
>>>>>>>>>
>>>>>>>>>    Tried in a sifferent machine with wednesday poky master
>>>>>>>>>
>>>>>>>>>    Building mesa-native gives the error
>>>>>>>>>
>>>>>>>>>    cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x8=
6_64-linux/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-confi=
g14.0.6' and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64=
-linux/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.=
0.6' are the same file
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    Am 28. September 2022 13:37:05 MESZ schrieb Alexander Kanavin =
<alex.kanavin@gmail.com>:
>>>>>>>>>
>>>>>>>>>    Try latest poky master?
>>>>>>>>>
>>>>>>>>>    Alex
>>>>>>>>>
>>>>>>>>>    On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail.com> wro=
te:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>     Mesa build fails. It complains that it copies llvm-config14.0=
.6 to the same file.
>>>>>>>>>
>>>>>>>>>     Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin=
 <alex.kanavin@gmail.com>:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>     The following works for me. I get
>>>>>>>>>
>>>>>>>>>     tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/=
mesa-vulkan-drivers/usr/lib/libvulkan_intel.so
>>>>>>>>>     tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/=
mesa-vulkan-drivers/usr/lib/libvulkan_lvp.so
>>>>>>>>>
>>>>>>>>>     --- a/meta/recipes-graphics/mesa/mesa.inc
>>>>>>>>>     +++ b/meta/recipes-graphics/mesa/mesa.inc
>>>>>>>>>     @@ -88,6 +88,7 @@ def strip_comma(s):
>>>>>>>>>
>>>>>>>>>      PACKAGECONFIG =3D " \
>>>>>>>>>             gallium \
>>>>>>>>>     +        gallium-llvm \
>>>>>>>>>             ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan way=
land', d)} \
>>>>>>>>>             ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'op=
engl egl
>>>>>>>>>     gles gbm virgl', '', d)} \
>>>>>>>>>             ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl',=
 'dri3', '', d)} \
>>>>>>>>>     @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled=
,
>>>>>>>>>     -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>>>>>>>>
>>>>>>>>>      # Vulkan drivers need dri3 enabled
>>>>>>>>>      # amd could be enabled as well but requires gallium-llvm wit=
h llvm >=3D 3.9
>>>>>>>>>     -VULKAN_DRIVERS =3D ""
>>>>>>>>>     +VULKAN_DRIVERS =3D "swrast"
>>>>>>>>>      VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>>>>>>>>      VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>>>>>>>>      VULKAN_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFI=
G',
>>>>>>>>>     'freedreno', ',freedreno', '', d)}"
>>>>>>>>>
>>>>>>>>>     Alex
>>>>>>>>>
>>>>>>>>>     On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail.com> wr=
ote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>      Also vulkan-drivers is empty in meson generated by bitbake. =
If I add it manually it will complain that llvm is disabled. How would I en=
able it?
>>>>>>>>>
>>>>>>>>>      Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavi=
n <alex.kanavin@gmail.com>:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>      I think for software vulkan you need to pass in
>>>>>>>>>      -Dvulkan-drivers=3Dswrast when building mesa for the target.
>>>>>>>>>
>>>>>>>>>      Alex
>>>>>>>>>
>>>>>>>>>      On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail.com> w=
rote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>       I asked the author so I assume he would have told me. Appar=
ently the virglrenderer branch is obsolete.
>>>>>>>>>
>>>>>>>>>       Currently my only changes from poky master are adding vulka=
n opengl x11 to distro features and vulkan-samples vulkan-loader vulkan-too=
ls virglrenderer to core image extra install in local.conf.
>>>>>>>>>
>>>>>>>>>       I also added virtio-experimental flag to mesa and virglrend=
erer meson recipes.
>>>>>>>>>
>>>>>>>>>       I still get ERROR_INCOMPATIBLE_DRIVER when running vulkanin=
fo.
>>>>>>>>>
>>>>>>>>>       What am I missing for Software Mode?
>>>>>>>>>
>>>>>>>>>       Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanav=
in <alex.kanavin@gmail.com>:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>       I would first check whether any of that work in the branch =
has meanwhile landed upstream. The post is from 2021.
>>>>>>>>>
>>>>>>>>>       Have you tried the software Vulkan in the guest?
>>>>>>>>>
>>>>>>>>>       Alex
>>>>>>>>>
>>>>>>>>>       On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com> w=
rote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>       I try to enable vulkan according to this tutorial
>>>>>>>>>
>>>>>>>>>       https://www.collabora.com/news-and-blog/blog/2021/11/26/ven=
us-on-qemu-enabling-new-virtual-vulkan-driver/
>>>>>>>>>
>>>>>>>>>       According to the author the modified qemu branch is still n=
ecessary so I want to enable that.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>       Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanav=
in <alex.kanavin@gmail.com>:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>       You need to clarify what you want to do exactly. Why can=E2=
=80=99t you use the existing recipe?
>>>>>>>>>
>>>>>>>>>       Alex
>>>>>>>>>
>>>>>>>>>       On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail=
.com> wrote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>       Greetings,
>>>>>>>>>
>>>>>>>>>       I want to change the git repo url in order to test the Venu=
s driver. Can someone tell me which variable in which recipe I'd have to se=
t?
>>>>>>>>>
>>>>>>>>>       Regards
>>>>>>>>>       --
>>>>>>>>>       Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9=
 Mail gesendet.
>>>>>>>>> ________________________________
>>>>>>>>>       Links: You receive all messages sent to this group.
>>>>>>>>>       View/Reply Online (#58196): https://lists.yoctoproject.org/=
g/yocto/message/58196
>>>>>>>>>       Mute This Topic: https://lists.yoctoproject.org/mt/93968127=
/1686489
>>>>>>>>>       Group Owner: yocto+owner@lists.yoctoproject.org
>>>>>>>>>       Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [=
alex.kanavin@gmail.com]
>>>>>>>>> ________________________________
>>>>>>>>>      --
>>>>>>>>>      Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 =
Mail gesendet.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>       --
>>>>>>>>>       Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9=
 Mail gesendet.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>      --
>>>>>>>>>      Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 =
Mail gesendet.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>     --
>>>>>>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 M=
ail gesendet.
>>>>>>>>>
>>>>>>>>>    --
>>>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Ma=
il gesendet.
>>>>>>>
>>>>>>>
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
>>>
>>>  --
>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

