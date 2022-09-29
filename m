Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B332C433FE
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 10:47:05 +0000 (UTC)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com
 [209.85.166.174])
 by mx.groups.io with SMTP id smtpd.web10.8636.1664448420855309917
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 03:47:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=T9qt6Ims;
 spf=pass (domain: gmail.com, ip: 209.85.166.174,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-il1-f174.google.com with SMTP id s18so498002ilj.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 03:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=3wRzBr7csQ4nRJ4BG2Gqydhk1rEW/GaRnW34Uouwlfk=;
        b=T9qt6ImsE5qpZBInXlk/AinK41CpkX/OSsYONyqLdqdu8FUSZOpSoi4rBxtjBa0cvM
         7u1tNGtMp1GiDOxWiNYFxBmkOZLb19VnZSeP6aoZapfQDWyPiaRlsCeUbhMwXosfRNxz
         Ner7pjzW5jJCiQ/If/V5ffF/iwvoIzLQtZB72tu5xNKn8LLQP7UNPMiFfkTveyD9YTz9
         AFLvcXSEMhL+6FqHniTdLLHixPJPcVQ+BrZqiVZRO+3tZ41de4YjTAiJjWUG0sJqWvEo
         1xbf7Yhj6dJxzdl6KwfBeC5tD2biE7jIfaz5wF+69MoZzd8CPSjMX1TUXP1wKb0jKUXp
         Pfzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=3wRzBr7csQ4nRJ4BG2Gqydhk1rEW/GaRnW34Uouwlfk=;
        b=AfuEpyYcnSPSi66P3B1JE0GvEfktcJ9VeXs32XnzpW5B1hoZmm2sG7DU+XOt/9L3Jg
         Xd/6hbZPKnQGg5nWR4i4Sfx8OO9WOTAZEPMKjtmPjndH9pnSoJml6vevJ4BNmJkBhytx
         +T58OICspg/9mDGVk0y2zrwt9jFQx1e4gWCYmfL//fnN0Vckesk0kog7EEc+OZQP1PCS
         90Dtg4Er+5uKaJyzeOY3b+hCBwOKp0Qsp653dI/5xRcAUdC5ICtUVmQbTag68xMxzOvY
         yXdf4zGVk3SK1dycPMWPS1NymvYYaVuTxVqj9zSUFCpnXLVQq8LM4ehavoqNqrGmCzxr
         fZ0Q==
X-Gm-Message-State: ACrzQf38k6fQIE7+lVdEFVVljAZVRSkSBPjDw+/+WOgtBLKo4up0gr4h
	VfdrPH9unz1SDnT/iE8zBK1Xc1F68BwC1DCHI1k=
X-Google-Smtp-Source: 
 AMsMyM694FU4dmQzzy5DjokjCeAt24mX9Uw8uDpxbMaLIrS0GxBmCMcJ3OzXkNbzpCQai2n7Sq73qGSUxQLPD/cF36g=
X-Received: by 2002:a05:6e02:17cb:b0:2f9:1fb4:ba3b with SMTP id
 z11-20020a056e0217cb00b002f91fb4ba3bmr1196839ilu.257.1664448420207; Thu, 29
 Sep 2022 03:47:00 -0700 (PDT)
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
In-Reply-To: 
 <PH0PR84MB183597EAA65D8009C257BFFBC7579@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 29 Sep 2022 12:46:49 +0200
Message-ID: 
 <CANNYZj8gA-1K8pGGHNcxAqn4KRXow-tdDh395n9GDskbkTs+OQ@mail.gmail.com>
Subject: Re: [yocto] Changing git url of qemu
To: PHIL <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d564df05e9ce9894"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 10:47:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58212

--000000000000d564df05e9ce9894
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You need to build mesa, not mesa-native. And please show exact changes you
made.

Alex

On Thu 29. Sep 2022 at 12.28, PHIL <heideggm@hotmail.com> wrote:

> Tried in a sifferent machine with wednesday poky master
>
> Building mesa-native gives the error
>
> cp:
> '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa=
-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6'
> and
> '/media/user/SSD1TB/yoctoqemu/poky/build-virgl/tmp/work/x86_64-linux/mesa=
-native/2_22.2.0-r0/recipe-sysroot-native/usr/bin/llvm-config14.0.6'
> are the same file
>
>
> Am 28. September 2022 13:37:05 MESZ schrieb Alexander Kanavin <
> alex.kanavin@gmail.com>:
>>
>> Try latest poky master?
>>
>> Alex
>>
>> On Wed, 28 Sept 2022 at 13:23, PHIL <heideggm@hotmail.com> wrote:
>>
>>>
>>>  Mesa build fails. It complains that it copies llvm-config14.0.6 to the=
 same file.
>>>
>>>  Am 28. September 2022 12:48:04 MESZ schrieb Alexander Kanavin <alex.ka=
navin@gmail.com>:
>>>
>>>>
>>>>  The following works for me. I get
>>>>
>>>>  tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vul=
kan-drivers/usr/lib/libvulkan_intel.so
>>>>  tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vul=
kan-drivers/usr/lib/libvulkan_lvp.so
>>>>
>>>>  --- a/meta/recipes-graphics/mesa/mesa.inc
>>>>  +++ b/meta/recipes-graphics/mesa/mesa.inc
>>>>  @@ -88,6 +88,7 @@ def strip_comma(s):
>>>>
>>>>   PACKAGECONFIG =3D " \
>>>>          gallium \
>>>>  +        gallium-llvm \
>>>>          ${@bb.utils.filter('DISTRO_FEATURES', 'x11 vulkan wayland', d=
)} \
>>>>          ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'opengl egl
>>>>  gles gbm virgl', '', d)} \
>>>>          ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'dri3',=
 '', d)} \
>>>>  @@ -108,7 +109,7 @@ PACKAGECONFIG[dri3] =3D "-Ddri3=3Denabled,
>>>>  -Ddri3=3Ddisabled, xorgproto libxshmfence"
>>>>
>>>>   # Vulkan drivers need dri3 enabled
>>>>   # amd could be enabled as well but requires gallium-llvm with llvm >=
=3D 3.9
>>>>  -VULKAN_DRIVERS =3D ""
>>>>  +VULKAN_DRIVERS =3D "swrast"
>>>>   VULKAN_DRIVERS:append:x86:class-target =3D ",intel"
>>>>   VULKAN_DRIVERS:append:x86-64:class-target =3D ",intel"
>>>>   VULKAN_DRIVERS:append =3D"${@bb.utils.contains('PACKAGECONFIG',
>>>>  'freedreno', ',freedreno', '', d)}"
>>>>
>>>>  Alex
>>>>
>>>>  On Wed, 28 Sept 2022 at 11:49, PHIL <heideggm@hotmail.com> wrote:
>>>>
>>>>>
>>>>>
>>>>>   Also vulkan-drivers is empty in meson generated by bitbake. If I ad=
d it manually it will complain that llvm is disabled. How would I enable it=
?
>>>>>
>>>>>   Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin <alex=
.kanavin@gmail.com>:
>>>>>
>>>>>>
>>>>>>
>>>>>>   I think for software vulkan you need to pass in
>>>>>>   -Dvulkan-drivers=3Dswrast when building mesa for the target.
>>>>>>
>>>>>>   Alex
>>>>>>
>>>>>>   On Wed, 28 Sept 2022 at 10:44, PHIL <heideggm@hotmail.com> wrote:
>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>    I asked the author so I assume he would have told me. Apparently=
 the virglrenderer branch is obsolete.
>>>>>>>
>>>>>>>    Currently my only changes from poky master are adding vulkan ope=
ngl x11 to distro features and vulkan-samples vulkan-loader vulkan-tools vi=
rglrenderer to core image extra install in local.conf.
>>>>>>>
>>>>>>>    I also added virtio-experimental flag to mesa and virglrenderer =
meson recipes.
>>>>>>>
>>>>>>>    I still get ERROR_INCOMPATIBLE_DRIVER when running vulkaninfo.
>>>>>>>
>>>>>>>    What am I missing for Software Mode?
>>>>>>>
>>>>>>>    Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin <a=
lex.kanavin@gmail.com>:
>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>    I would first check whether any of that work in the branch has =
meanwhile landed upstream. The post is from 2021.
>>>>>>>>
>>>>>>>>    Have you tried the software Vulkan in the guest?
>>>>>>>>
>>>>>>>>    Alex
>>>>>>>>
>>>>>>>>    On Wed 28. Sep 2022 at 10.21, PHIL <heideggm@hotmail.com> wrote=
:
>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    I try to enable vulkan according to this tutorial
>>>>>>>>>
>>>>>>>>>    https://www.collabora.com/news-and-blog/blog/2021/11/26/venus-=
on-qemu-enabling-new-virtual-vulkan-driver/
>>>>>>>>>
>>>>>>>>>    According to the author the modified qemu branch is still nece=
ssary so I want to enable that.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin =
<alex.kanavin@gmail.com>:
>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>    You need to clarify what you want to do exactly. Why can=E2=
=80=99t you use the existing recipe?
>>>>>>>>>>
>>>>>>>>>>    Alex
>>>>>>>>>>
>>>>>>>>>>    On Wed 28. Sep 2022 at 9.58, Edgar Mobile <heideggm@hotmail.c=
om> wrote:
>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>    Greetings,
>>>>>>>>>>>
>>>>>>>>>>>    I want to change the git repo url in order to test the Venus=
 driver. Can someone tell me which variable in which recipe I'd have to set=
?
>>>>>>>>>>>
>>>>>>>>>>>    Regards
>>>>>>>>>>>    --
>>>>>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 =
Mail gesendet.
>>>>>>>>>>> ------------------------------
>>>>>>>>>>>    Links: You receive all messages sent to this group.
>>>>>>>>>>>    View/Reply Online (#58196): https://lists.yoctoproject.org/g=
/yocto/message/58196
>>>>>>>>>>>    Mute This Topic: https://lists.yoctoproject.org/mt/93968127/=
1686489
>>>>>>>>>>>    Group Owner: yocto+owner@lists.yoctoproject.org
>>>>>>>>>>>    Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [a=
lex.kanavin@gmail.com]
>>>>>>>>>>> ------------------------------
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>>   --
>>>>>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet.
>>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>    --
>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail=
 gesendet.
>>>>>>>
>>>>>>
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

--000000000000d564df05e9ce9894
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You need to build mesa, not mesa-native. And please show =
exact changes you made.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu 29. Sep 2022 at 12.28, PHIL &lt;<a href=3D"mailto:heideggm@=
hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<div>Tried in a sifferent machine with wednesday poky master<br><br>Buildin=
g mesa-native gives the error<br><br>cp: &#39;/media/user/SSD1TB/yoctoqemu/=
poky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-sysro=
ot-native/usr/bin/llvm-config14.0.6&#39; and &#39;/media/user/SSD1TB/yoctoq=
emu/poky/build-virgl/tmp/work/x86_64-linux/mesa-native/2_22.2.0-r0/recipe-s=
ysroot-native/usr/bin/llvm-config14.0.6&#39; are the same file</div><div><b=
r><br><div class=3D"gmail_quote">Am 28. September 2022 13:37:05 MESZ schrie=
b Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D=
"_blank">alex.kanavin@gmail.com</a>&gt;:<blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0pt 0pt 0pt 0.8ex;border-left-width:1px;border-left-style:so=
lid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<pre dir=3D"auto" style=3D"font-family:monospace">Try latest poky master?<b=
r><br>Alex<br><br>On Wed, 28 Sept 2022 at 13:23, PHIL &lt;<a href=3D"mailto=
:heideggm@hotmail.com" target=3D"_blank" style=3D"font-family:monospace">he=
ideggm@hotmail.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0pt 0pt 1ex 0.8ex;border-left-width:1px;border-left-style:solid=
;padding-left:1ex;font-family:monospace;border-left-color:rgb(114,159,207)"=
><br> Mesa build fails. It complains that it copies llvm-config14.0.6 to th=
e same file.<br><br> Am 28. September 2022 12:48:04 MESZ schrieb Alexander =
Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" sty=
le=3D"font-family:monospace">alex.kanavin@gmail.com</a>&gt;:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0pt 0pt 1ex 0.8ex;border-left-width:=
1px;border-left-style:solid;padding-left:1ex;font-family:monospace;border-l=
eft-color:rgb(173,127,168)"><br> The following works for me. I get<br><br> =
tmp/work/core2-64-poky-linux/mesa/2_22.2.0-r0/packages-split/mesa-vulkan-dr=
ivers/usr/lib/libvulkan_intel.so<br> tmp/work/core2-64-poky-linux/mesa/2_22=
.2.0-r0/packages-split/mesa-vulkan-drivers/usr/lib/libvulkan_lvp.so<br><br>=
 --- a/meta/recipes-graphics/mesa/mesa.inc<br> +++ b/meta/recipes-graphics/=
mesa/mesa.inc<br> @@ -88,6 +88,7 @@ def strip_comma(s):<br><br>  PACKAGECON=
FIG =3D &quot; \<br>         gallium \<br> +        gallium-llvm \<br>     =
    ${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;x11 vulkan wayland&#=
39;, d)} \<br>         ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39=
;opengl&#39;, &#39;opengl egl<br> gles gbm virgl&#39;, &#39;&#39;, d)} \<br=
>         ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;x11 opengl&#=
39;, &#39;dri3&#39;, &#39;&#39;, d)} \<br> @@ -108,7 +109,7 @@ PACKAGECONFI=
G[dri3] =3D &quot;-Ddri3=3Denabled,<br> -Ddri3=3Ddisabled, xorgproto libxsh=
mfence&quot;<br><br>  # Vulkan drivers need dri3 enabled<br>  # amd could b=
e enabled as well but requires gallium-llvm with llvm &gt;=3D 3.9<br> -VULK=
AN_DRIVERS =3D &quot;&quot;<br> +VULKAN_DRIVERS =3D &quot;swrast&quot;<br> =
 VULKAN_DRIVERS:append:x86:class-target =3D &quot;,intel&quot;<br>  VULKAN_=
DRIVERS:append:x86-64:class-target =3D &quot;,intel&quot;<br>  VULKAN_DRIVE=
RS:append =3D&quot;${@bb.utils.contains(&#39;PACKAGECONFIG&#39;,<br> &#39;f=
reedreno&#39;, &#39;,freedreno&#39;, &#39;&#39;, d)}&quot;<br><br> Alex<br>=
<br> On Wed, 28 Sept 2022 at 11:49, PHIL &lt;<a href=3D"mailto:heideggm@hot=
mail.com" target=3D"_blank" style=3D"font-family:monospace">heideggm@hotmai=
l.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
pt 0pt 1ex 0.8ex;border-left-width:1px;border-left-style:solid;padding-left=
:1ex;font-family:monospace;border-left-color:rgb(138,226,52)"><br><br>  Als=
o vulkan-drivers is empty in meson generated by bitbake. If I add it manual=
ly it will complain that llvm is disabled. How would I enable it?<br><br>  =
Am 28. September 2022 10:51:26 MESZ schrieb Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" style=3D"font-family:m=
onospace">alex.kanavin@gmail.com</a>&gt;:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0pt 0pt 1ex 0.8ex;border-left-width:1px;border-left-sty=
le:solid;padding-left:1ex;font-family:monospace;border-left-color:rgb(252,1=
75,62)"><br><br>  I think for software vulkan you need to pass in<br>  -Dvu=
lkan-drivers=3Dswrast when building mesa for the target.<br><br>  Alex<br><=
br>  On Wed, 28 Sept 2022 at 10:44, PHIL &lt;<a href=3D"mailto:heideggm@hot=
mail.com" target=3D"_blank" style=3D"font-family:monospace">heideggm@hotmai=
l.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
pt 0pt 1ex 0.8ex;border-left-width:1px;border-left-style:solid;padding-left=
:1ex;font-family:monospace;border-left-color:rgb(233,185,110)"><br><br><br>=
   I asked the author so I assume he would have told me. Apparently the vir=
glrenderer branch is obsolete.<br><br>   Currently my only changes from pok=
y master are adding vulkan opengl x11 to distro features and vulkan-samples=
 vulkan-loader vulkan-tools virglrenderer to core image extra install in lo=
cal.conf.<br><br>   I also added virtio-experimental flag to mesa and virgl=
renderer meson recipes.<br><br>   I still get ERROR_INCOMPATIBLE_DRIVER whe=
n running vulkaninfo.<br><br>   What am I missing for Software Mode?<br><br=
>   Am 28. September 2022 10:29:28 MESZ schrieb Alexander Kanavin &lt;<a hr=
ef=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" style=3D"font-family=
:monospace">alex.kanavin@gmail.com</a>&gt;:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0pt 0pt 1ex 0.8ex;border-left-width:1px;border-left-s=
tyle:solid;padding-left:1ex;font-family:monospace;border-left-color:rgb(204=
,204,204)"><br><br><br>   I would first check whether any of that work in t=
he branch has meanwhile landed upstream. The post is from 2021.<br><br>   H=
ave you tried the software Vulkan in the guest?<br><br>   Alex<br><br>   On=
 Wed 28. Sep 2022 at 10.21, PHIL &lt;<a href=3D"mailto:heideggm@hotmail.com=
" target=3D"_blank" style=3D"font-family:monospace">heideggm@hotmail.com</a=
>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 1=
ex 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;fon=
t-family:monospace;border-left-color:rgb(204,204,204)"><br><br><br>   I try=
 to enable vulkan according to this tutorial<br><br>   <a href=3D"https://w=
ww.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enabling-new-v=
irtual-vulkan-driver/" target=3D"_blank" style=3D"font-family:monospace">ht=
tps://www.collabora.com/news-and-blog/blog/2021/11/26/venus-on-qemu-enablin=
g-new-virtual-vulkan-driver/</a><br><br>   According to the author the modi=
fied qemu branch is still necessary so I want to enable that.<br><br><br>  =
 Am 28. September 2022 10:14:24 MESZ schrieb Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" style=3D"font-family:m=
onospace">alex.kanavin@gmail.com</a>&gt;:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0pt 0pt 1ex 0.8ex;border-left-width:1px;border-left-sty=
le:solid;padding-left:1ex;font-family:monospace;border-left-color:rgb(204,2=
04,204)"><br><br><br>   You need to clarify what you want to do exactly. Wh=
y can=E2=80=99t you use the existing recipe?<br><br>   Alex<br><br>   On We=
d 28. Sep 2022 at 9.58, Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail=
.com" target=3D"_blank" style=3D"font-family:monospace">heideggm@hotmail.co=
m</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0=
pt 1ex 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex=
;font-family:monospace;border-left-color:rgb(204,204,204)"><br><br><br>   G=
reetings,<br><br>   I want to change the git repo url in order to test the =
Venus driver. Can someone tell me which variable in which recipe I&#39;d ha=
ve to set?<br><br>   Regards<br>   --<br>   Diese Nachricht wurde von meine=
m Android-Ger=C3=A4t mit K-9 Mail gesendet.<hr style=3D"font-family:monospa=
ce">   Links: You receive all messages sent to this group.<br>   View/Reply=
 Online (#58196): <a href=3D"https://lists.yoctoproject.org/g/yocto/message=
/58196" target=3D"_blank" style=3D"font-family:monospace">https://lists.yoc=
toproject.org/g/yocto/message/58196</a><br>   Mute This Topic: <a href=3D"h=
ttps://lists.yoctoproject.org/mt/93968127/1686489" target=3D"_blank" style=
=3D"font-family:monospace">https://lists.yoctoproject.org/mt/93968127/16864=
89</a><br>   Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoprojec=
t.org" target=3D"_blank" style=3D"font-family:monospace">yocto+owner@lists.=
yoctoproject.org</a><br>   Unsubscribe: <a href=3D"https://lists.yoctoproje=
ct.org/g/yocto/unsub" target=3D"_blank" style=3D"font-family:monospace">htt=
ps://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanav=
in@gmail.com" target=3D"_blank" style=3D"font-family:monospace">alex.kanavi=
n@gmail.com</a>]<hr style=3D"font-family:monospace"></blockquote></blockquo=
te><br><br>  --<br>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mi=
t K-9 Mail gesendet.<br></blockquote></blockquote><br><br><br>   --<br>   D=
iese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.<b=
r></blockquote></blockquote><br><br>  --<br>  Diese Nachricht wurde von mei=
nem Android-Ger=C3=A4t mit K-9 Mail gesendet.<br></blockquote></blockquote>=
<br> --<br> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mai=
l gesendet.<br></blockquote></pre></blockquote></div><div style=3D"white-sp=
ace:pre-wrap"><div>-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=
=A4t mit K-9 Mail gesendet.</div></div></div></blockquote></div></div>

--000000000000d564df05e9ce9894--

