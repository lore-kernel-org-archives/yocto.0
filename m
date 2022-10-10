Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DC06C433FE
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 03:55:52 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
 [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web12.2622.1665374146584174269
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Oct 2022 20:55:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SyKYDOMm;
 spf=pass (domain: gmail.com, ip: 209.85.166.53,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id p16so1897254iod.6
        for <yocto@lists.yoctoproject.org>;
 Sun, 09 Oct 2022 20:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UtwKsnfAcFZ7ZaE+P4az1uLvM7vTl7RGNvrb3JKCLcU=;
        b=SyKYDOMmiT10jNQVA/keIuGVQ6SNKjrrae8XA3LD4deWoLM99d+Eq/0XDVmMktqs8G
         cGKNY9BXOGgfS7eK/0MV+4NkHCq2gRKAk3sIuO6RV3//lr6ZGo82Aaqbq9wQnNEY2SgA
         S6M6ERFOmKWr7YuxDYIcD159XfX2xkrOM56gpS0kHf6iTQGpbyc904VR5cr+utfOwmKn
         6jKVf6HtbweNGJxJw83l2nz4DTkKQiBZXrdZapkz8hfvUyMABB2NndWzAzE0ZAS65SIK
         B8aGP2y0s9+iKv7BVyHVGbr6NWsW728v/BU8jdPxzEUpQ0pAbJOepGVAoH74Z+EWnOI3
         8IXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UtwKsnfAcFZ7ZaE+P4az1uLvM7vTl7RGNvrb3JKCLcU=;
        b=vsKOvaOQjvrLm+bT/D3tRprAZYnN/lDh2VnX6yPZ2/OC2x6zVotO++7uORuffeIbs8
         v7bb2dUEfsJVk7MzUyQmMG58kpYwg5Lkvx7M8rn+PV40gzKRbIN/BolaVZWFM5VRQhIt
         qztBAqADG9mMxjsucCU/f5RHoRKvoTEqXwH+6l323miPxVaFU/R8Vyrzl5QqptiFI9gp
         1J2tUoSGXxAhbWTH+S9CWxkZgT69bF3FZtqmbdZqE36SnySdgzt1+ar0eWJp2G1GQvLt
         tqOvLvKcqW0t4RBt6HIoPstJV7kxVtaaX1uN07Ycx1okq+7EnDtVHXT2qKZjeYq3bIzC
         DuQQ==
X-Gm-Message-State: ACrzQf0R9WUmIR1mYGE8o/V6KaaI6mQsjb+c2gH5gz2wDj14dijOaXAm
	QKrB3mZhvjm8D8t9BHAkShBeSgd3rnFaWNMGKWY=
X-Google-Smtp-Source: 
 AMsMyM5xYXgoXPjdWUR/ATTiA+SD/N6z+NVdzr2ohe9/v5/QgsnXMe85TqihcFn/1vdxHnq1nPUVse/wMAiq1HyPdoM=
X-Received: by 2002:a6b:ba55:0:b0:6b4:de08:ee55 with SMTP id
 k82-20020a6bba55000000b006b4de08ee55mr7599998iof.148.1665374145896; Sun, 09
 Oct 2022 20:55:45 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB183515506D92EF8DE17EDEDDC7549@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
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
 <CANNYZj_QAkRLjj_3kJKihea1k9C41AaMYcVNWiXgUYy+HpZKgw@mail.gmail.com>
 <PH0PR84MB1835720987A0C6B0DDBCE7CDC7219@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835720987A0C6B0DDBCE7CDC7219@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 10 Oct 2022 05:55:35 +0200
Message-ID: 
 <CANNYZj_zJg5cihPu9tW9OS4e7pVqwWB+rnHXijLd2RH88UbK5w@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: PHIL <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000062675805eaa62244"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 03:55:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58300

--00000000000062675805eaa62244
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It works for me. If it does not work for you, you need to show the full
content of your local modifications and full content of error messages, and
precise revisions of all of the layers and poky. And keep in mind it=E2=80=
=99s
volunteer help and no one is obliged to carry you to a solution, especially
when you have not introduced yourself and your goal properly. It=E2=80=99s =
far
easier to just stop answering.

Otherwise, commercial support is available. From my company (linutronix) as
well.

Alex

On Mon 10. Oct 2022 at 0.29, PHIL <heideggm@hotmail.com> wrote:

> Any more ideas?
>
>
> Am 30. September 2022 22:53:22 MESZ schrieb Alexander Kanavin <
> alex.kanavin@gmail.com>:
>>
>> That depends on what is your target. If you're running qemu on a x86
>> host, it's better to not do software emulation and build for
>> qemux86_64 as well, and then run qemu with kvm, so it executes
>> directly on the host CPU.
>>
>> Alex
>>
>> On Fri, 30 Sept 2022 at 22:50, PHIL <heideggm@hotmail.com> wrote:
>>
>>>
>>>  X86-64 is right or do you mean arm?
>>>
>>>  Am 30. September 2022 22:39:44 MESZ schrieb Alexander Kanavin <alex.ka=
navin@gmail.com>:
>>>
>>>>
>>>>  You might want to try enabling gallium-llvm only for the target mesa:
>>>>
>>>>  PACKAGECONFIG:append:x86-64:pn-mesa =3D ' gallium-llvm'
>>>>
>>>>  Alex
>>>>
>>>>  On Fri, 30 Sept 2022 at 22:24, Edgar Mobile <heideggm@hotmail.com> wr=
ote:
>>>>
>>>>>
>>>>>
>>>>>   I deleted the whole build directory, recreated it, only added the a=
rm switch in local conf and your changes for mesa.inc.
>>>>>   After a few hours of building core-image-weston it again complains =
that it tries to copy llcm-config14.0.6 over itself. I don't know what to d=
o anymore.
>>>>> ------------------------------
>>>>>   From: Alexander Kanavin <alex.kanavin@gmail.com>
>>>>>   Sent: Thursday, September 29, 2022 10:46 AM
>>>>>   To: PHIL <heideggm@hotmail.com>
>>>>>   Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
>>>>>   Subject: Re: [yocto] Changing git url of qemu
>>>>>
>>>>>   You need to build mesa, not mesa-native. And please show exact chan=
ges you made.
>>>>>
>>>>>   Alex
>>>>>
>>>>>   On Thu 29. Sep 2022 at 12.28, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>   Tried in a sifferent machine with wednesday poky master
>>>>>
>>>>>   Building mesa-native gives the error
>>>>>
>>>>>   cp: '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-=
linux/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0=
.6' and '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linu=
x/mesa-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6' =
are the same file
>>>>>
>>>>>
>>>>>   Am 28. September 2022 13:37:05 MESZ schrieb Alexander Kanavin <alex=
.kanavin@gmail.com>:
>>>>>
>>>>>   Try latest poky master?
>>>>>
>>>>>   Alex
>>>>>
>>>>>   On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>    Mesa build fails. It complains that it copies llvm-config14.0.6 to=
 the same file.
>>>>>
>>>>>    Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin <ale=
x.kanavin@gmail.com>:
>>>>>
>>>>>
>>>>>    The following works for me. I get
>>>>>
>>>>>    tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-=
vulkan-drivers/usr/lib/libvulkan_intel.so
>>>>>    tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-=
vulkan-drivers/usr/lib/libvulkan_lvp.so
>>>>>
>>>>>    --- a/meta/recipes-graphics/mesa/mesa.inc
>>>>>    +++ b/meta/recipes-graphics/mesa/mesa.inc
>>>>>    @@ -88,6 +88,7 @@ def strip_comma(s):
>>>>>
>>>>>     PACKAGECONFIG =3D " \
>>>>>            gallium \
>>>>>    +        gallium-llvm \
>>>>>            ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan wayland'=
, d)} \
>>>>>            ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'opengl =
egl
>>>>>    gles gbm virgl', '', d)} \
>>>>>            ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'dri=
3', '', d)} \
>>>>>    @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>>>>>    -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>>>>
>>>>>     # Vulkan drivers need dri3 enabled
>>>>>     # amd could be enabled as well but requires gallium-llvm with llv=
m >=3D 3.9
>>>>>    -VULKAN_DRIVERS =3D ""
>>>>>    +VULKAN_DRIVERS =3D "swrast"
>>>>>     VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>>>>     VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>>>>     VULKAN_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFIG',
>>>>>    'freedreno', ',freedreno', '', d)}"
>>>>>
>>>>>    Alex
>>>>>
>>>>>    On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>
>>>>>     Also vulkan-drivers is empty in meson generated by bitbake. If I =
add it manually it will complain that llvm is disabled. How would I enable =
it?
>>>>>
>>>>>     Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin <al=
ex.kanavin@gmail.com>:
>>>>>
>>>>>
>>>>>
>>>>>     I think for software vulkan you need to pass in
>>>>>     -Dvulkan-drivers=3Dswrast when building mesa for the target.
>>>>>
>>>>>     Alex
>>>>>
>>>>>     On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>      I asked the author so I assume he would have told me. Apparently=
 the virglrenderer branch is obsolete.
>>>>>
>>>>>      Currently my only changes from poky master are adding vulkan ope=
ngl x11 to distro features and vulkan-samples vulkan-loader vulkan-tools vi=
rglrenderer to core image extra install in local.conf.
>>>>>
>>>>>      I also added virtio-experimental flag to mesa and virglrenderer =
meson recipes.
>>>>>
>>>>>      I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.
>>>>>
>>>>>      What am I missing for Software Mode?
>>>>>
>>>>>      Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin <a=
lex.kanavin@gmail.com>:
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>      I would first check whether any of that work in the branch has m=
eanwhile landed upstream. The post is from 2021.
>>>>>
>>>>>      Have you tried the software Vulkan in the guest?
>>>>>
>>>>>      Alex
>>>>>
>>>>>      On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>      I try to enable vulkan according to this tutorial
>>>>>
>>>>>      https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on=
-qemu-enabling-new-virtual-vulkan-driver/
>>>>>
>>>>>      According to the author the modified qemu branch is still necess=
ary so I want to enable that.
>>>>>
>>>>>
>>>>>      Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin <a=
lex.kanavin@gmail.com>:
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>      You need to clarify what you want to do exactly. Why can=E2=80=
=99t you use the existing recipe?
>>>>>
>>>>>      Alex
>>>>>
>>>>>      On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.com>=
 wrote:
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>      Greetings,
>>>>>
>>>>>      I want to change the git repo url in order to test the Venus dri=
ver. Can someone tell me which variable in which recipe I'd have to set?
>>>>>
>>>>>      Regards
>>>>>      --
>>>>>      Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail=
 gesendet.
>>>>> ------------------------------
>>>>>      Links: You receive all messages sent to this group.
>>>>>      View/Reply Online (#58196): https://lists.yoctoproject.org/g/yoc=
to/message/58196
>>>>>      Mute This Topic: https://lists.yoctoproject.org/mt/93968127/1686=
489
>>>>>      Group Owner: yocto+owner@lists.yoctoproject.org
>>>>>      Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.=
kanavin@gmail.com]
>>>>> ------------------------------
>>>>>     --
>>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail =
gesendet.
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>      --
>>>>>      Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail=
 gesendet.
>>>>>
>>>>>
>>>>>
>>>>>     --
>>>>>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail =
gesendet.
>>>>>
>>>>>
>>>>>    --
>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail g=
esendet.
>>>>>
>>>>>   --
>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet.
>>>>>
>>>>
>>>  --
>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.
>>>
>> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.
>

--00000000000062675805eaa62244
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It works for me. If it does not work for you, you need to=
 show the full content of your local modifications and full content of erro=
r messages, and precise revisions of all of the layers and poky. And keep i=
n mind it=E2=80=99s volunteer help and no one is obliged to carry you to a =
solution, especially when you have not introduced yourself and your goal pr=
operly. It=E2=80=99s far easier to just stop answering.</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Otherwise, commercial support is available.=
 From my company (linutronix) as well.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon 10. Oct 2022 at 0.29, PHIL &lt;<a href=3D"ma=
ilto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(=
204,204,204)">
<div>Any more ideas?</div><div><br><br><div class=3D"gmail_quote">Am 30. Se=
ptember 2022 22:53:22 MESZ schrieb Alexander Kanavin &lt;<a href=3D"mailto:=
alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;:<b=
lockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-le=
ft-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb=
(204,204,204)">
<pre dir=3D"auto" style=3D"font-family:monospace">That depends on what is y=
our target. If you&#39;re running qemu on a x86<br>host, it&#39;s better to=
 not do software emulation and build for<br>qemux86_64 as well, and then ru=
n qemu with kvm, so it executes<br>directly on the host CPU.<br><br>Alex<br=
><br>On Fri, 30 Sept 2022 at 22:50, PHIL &lt;<a href=3D"mailto:heideggm@hot=
mail.com" target=3D"_blank" style=3D"font-family:monospace">heideggm@hotmai=
l.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
pt 0pt 1ex 0.8ex;border-left-width:1px;border-left-style:solid;padding-left=
:1ex;font-family:monospace;border-left-color:rgb(114,159,207)"><br> X86-64 =
is right or do you mean arm?<br><br> Am 30. September 2022 22:39:44 MESZ sc=
hrieb Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" targe=
t=3D"_blank" style=3D"font-family:monospace">alex.kanavin@gmail.com</a>&gt;=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 1ex 0.8ex;bo=
rder-left-width:1px;border-left-style:solid;padding-left:1ex;font-family:mo=
nospace;border-left-color:rgb(173,127,168)"><br> You might want to try enab=
ling gallium-llvm only for the target mesa:<br><br> PACKAGECONFIG:append:x8=
6-64:pn-mesa =3D &#39; gallium-llvm&#39;<br><br> Alex<br><br> On Fri, 30 Se=
pt 2022 at 22:24, Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" =
target=3D"_blank" style=3D"font-family:monospace">heideggm@hotmail.com</a>&=
gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 1ex=
 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;font-=
family:monospace;border-left-color:rgb(138,226,52)"><br><br>  I deleted the=
 whole build directory, recreated it, only added the arm switch in local co=
nf and your changes for mesa.inc.<br>  After a few hours of building core-i=
mage-weston it again complains that it tries to copy llcm-config14.0.6 over=
 itself. I don&#39;t know what to do anymore.<hr style=3D"font-family:monos=
pace">  From: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.co=
m" target=3D"_blank" style=3D"font-family:monospace">alex.kanavin@gmail.com=
</a>&gt;<br>  Sent: Thursday, September 29, 2022 10:46 AM<br>  To: PHIL &lt=
;<a href=3D"mailto:heideggm@hotmail.com" target=3D"_blank" style=3D"font-fa=
mily:monospace">heideggm@hotmail.com</a>&gt;<br>  Cc: Yocto-mailing-list &l=
t;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank" style=
=3D"font-family:monospace">yocto@lists.yoctoproject.org</a>&gt;<br>  Subjec=
t: Re: [yocto] Changing git url of qemu<br><br>  You need to build mesa, no=
t mesa-native. And please show exact changes you made.<br><br>  Alex<br><br=
>  On Thu 29. Sep 2022 at 12.28, PHIL &lt;<a href=3D"mailto:heideggm@hotmai=
l.com" target=3D"_blank" style=3D"font-family:monospace">heideggm@hotmail.c=
om</a>&gt; wrote:<br><br>  Tried in a sifferent machine with wednesday poky=
 master<br><br>  Building mesa-native gives the error<br><br>  cp: &#39;/me=
dia/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa-nativ=
e/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6&#39; and &#39=
;/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa-n=
ative/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6&#39; are =
the same file<br><br><br>  Am 28. September 2022 13:37:05 MESZ schrieb Alex=
ander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blan=
k" style=3D"font-family:monospace">alex.kanavin@gmail.com</a>&gt;:<br><br> =
 Try latest poky master?<br><br>  Alex<br><br>  On Wed, 28 Sept 2022 at 13:=
23, PHIL &lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D"_blank" styl=
e=3D"font-family:monospace">heideggm@hotmail.com</a>&gt; wrote:<br><br><br>=
   Mesa build fails. It complains that it copies llvm-config14.0.6 to the s=
ame file.<br><br>   Am 28. September 2022 12:48:04 MESZ schrieb Alexander K=
anavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" styl=
e=3D"font-family:monospace">alex.kanavin@gmail.com</a>&gt;:<br><br><br>   T=
he following works for me. I get<br><br>   tmp/work/core2-64-poky-linux/mes=
a/2_22.2.0-r0/packages-split/mesa-vulkan-drivers/usr/lib/libvulkan_intel.so=
<br>   tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vu=
lkan-drivers/usr/lib/libvulkan_lvp.so<br><br>   --- a/meta/recipes-graphics=
/mesa/mesa.inc<br>   +++ b/meta/recipes-graphics/mesa/mesa.inc<br>   @@ -88=
,6 +88,7 @@ def strip_comma(s):<br><br>    PACKAGECONFIG =3D &quot; \<br>  =
         gallium \<br>   +        gallium-llvm \<br>           ${@bb.utils.=
filter(&#39;DISTRO_FEATURES&#39;, &#39;x11 vulkan wayland&#39;, d)} \<br>  =
         ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;opengl&#39;, =
&#39;opengl egl<br>   gles gbm virgl&#39;, &#39;&#39;, d)} \<br>           =
${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;x11 opengl&#39;, &#39;=
dri3&#39;, &#39;&#39;, d)} \<br>   @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =
=3D &quot;-Ddri3=3Denabled,<br>   -Ddri3=3Ddisabled, xorgproto libxshmfence=
&quot;<br><br>    # Vulkan drivers need dri3 enabled<br>    # amd could be =
enabled as well but requires gallium-llvm with llvm &gt;=3D 3.9<br>   -VULK=
AN_DRIVERS =3D &quot;&quot;<br>   +VULKAN_DRIVERS =3D &quot;swrast&quot;<br=
>    VULKAN_DRIVERS:append:x86:class-target =3D &quot;,intel&quot;<br>    V=
ULKAN_DRIVERS:append:x86-64:class-target =3D &quot;,intel&quot;<br>    VULK=
AN_DRIVERS:append =3D&quot;${@bb.utils.contains(&#39;PACKAGECONFIG&#39;,<br=
>   &#39;freedreno&#39;, &#39;,freedreno&#39;, &#39;&#39;, d)}&quot;<br><br=
>   Alex<br><br>   On Wed, 28 Sept 2022 at 11:49, PHIL &lt;<a href=3D"mailt=
o:heideggm@hotmail.com" target=3D"_blank" style=3D"font-family:monospace">h=
eideggm@hotmail.com</a>&gt; wrote:<br><br><br><br>    Also vulkan-drivers i=
s empty in meson generated by bitbake. If I add it manually it will complai=
n that llvm is disabled. How would I enable it?<br><br>    Am 28. September=
 2022 10:51:26 MESZ schrieb Alexander Kanavin &lt;<a href=3D"mailto:alex.ka=
navin@gmail.com" target=3D"_blank" style=3D"font-family:monospace">alex.kan=
avin@gmail.com</a>&gt;:<br><br><br><br>    I think for software vulkan you =
need to pass in<br>    -Dvulkan-drivers=3Dswrast when building mesa for the=
 target.<br><br>    Alex<br><br>    On Wed, 28 Sept 2022 at 10:44, PHIL &lt=
;<a href=3D"mailto:heideggm@hotmail.com" target=3D"_blank" style=3D"font-fa=
mily:monospace">heideggm@hotmail.com</a>&gt; wrote:<br><br><br><br><br>    =
 I asked the author so I assume he would have told me. Apparently the virgl=
renderer branch is obsolete.<br><br>     Currently my only changes from pok=
y master are adding vulkan opengl x11 to distro features and vulkan-samples=
 vulkan-loader vulkan-tools virglrenderer to core image extra install in lo=
cal.conf.<br><br>     I also added virtio-experimental flag to mesa and vir=
glrenderer meson recipes.<br><br>     I still get ERROR_INCOMPATIBLE_DRIVER=
 when running vulkaninfo.<br><br>     What am I missing for Software Mode?<=
br><br>     Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin &=
lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" style=3D"fon=
t-family:monospace">alex.kanavin@gmail.com</a>&gt;:<br><br><br><br><br>    =
 I would first check whether any of that work in the branch has meanwhile l=
anded upstream. The post is from 2021.<br><br>     Have you tried the softw=
are Vulkan in the guest?<br><br>     Alex<br><br>     On Wed 28. Sep 2022 a=
t 10.21, PHIL &lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D"_blank"=
 style=3D"font-family:monospace">heideggm@hotmail.com</a>&gt; wrote:<br><br=
><br><br><br>     I try to enable vulkan according to this tutorial<br><br>=
     <a href=3D"https://www.collabora.com/news-and-blog/blog/2021/11/26/ven=
us-on-qemu-enabling-new-virtual-vulkan-driver/" target=3D"_blank" style=3D"=
font-family:monospace">https://www.collabora.com/news-and-blog/blog/2021/11=
/26/venus-on-qemu-enabling-new-virtual-vulkan-driver/</a><br><br>     Accor=
ding to the author the modified qemu branch is still necessary so I want to=
 enable that.<br><br><br>     Am 28. September 2022 10:14:24 MESZ schrieb A=
lexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_b=
lank" style=3D"font-family:monospace">alex.kanavin@gmail.com</a>&gt;:<br><b=
r><br><br><br>     You need to clarify what you want to do exactly. Why can=
=E2=80=99t you use the existing recipe?<br><br>     Alex<br><br>     On Wed=
 28. Sep 2022 at 9.58, Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.=
com" target=3D"_blank" style=3D"font-family:monospace">heideggm@hotmail.com=
</a>&gt; wrote:<br><br><br><br><br>     Greetings,<br><br>     I want to ch=
ange the git repo url in order to test the Venus driver. Can someone tell m=
e which variable in which recipe I&#39;d have to set?<br><br>     Regards<b=
r>     --<br>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K=
-9 Mail gesendet.<hr style=3D"font-family:monospace">     Links: You receiv=
e all messages sent to this group.<br>     View/Reply Online (#58196): <a h=
ref=3D"https://lists.yoctoproject.org/g/yocto/message/58196" target=3D"_bla=
nk" style=3D"font-family:monospace">https://lists.yoctoproject.org/g/yocto/=
message/58196</a><br>     Mute This Topic: <a href=3D"https://lists.yoctopr=
oject.org/mt/93968127/1686489" target=3D"_blank" style=3D"font-family:monos=
pace">https://lists.yoctoproject.org/mt/93968127/1686489</a><br>     Group =
Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=3D"_b=
lank" style=3D"font-family:monospace">yocto+owner@lists.yoctoproject.org</a=
><br>     Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" target=3D"_blank" style=3D"font-family:monospace">https://lists.yoctop=
roject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" tar=
get=3D"_blank" style=3D"font-family:monospace">alex.kanavin@gmail.com</a>]<=
hr style=3D"font-family:monospace">    --<br>    Diese Nachricht wurde von =
meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br><br><br><br><br>     --=
<br>     Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail g=
esendet.<br><br><br><br>    --<br>    Diese Nachricht wurde von meinem Andr=
oid-Ger=C3=A4t mit K-9 Mail gesendet.<br><br><br>   --<br>   Diese Nachrich=
t wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br><br>  --<br=
>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesende=
t.<br></blockquote></blockquote><br> --<br> Diese Nachricht wurde von meine=
m Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></pre></blockqu=
ote></div><div style=3D"white-space:pre-wrap"><div>-- <br>Diese Nachricht w=
urde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.</div></div></div>=
</blockquote></div></div>

--00000000000062675805eaa62244--

