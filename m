Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82065C4332F
	for <webhook@archiver.kernel.org>; Fri, 14 Oct 2022 06:04:46 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web12.4112.1665727482284671190
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Oct 2022 23:04:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: fede.evol@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id r14so5700693lfm.2
        for <yocto@lists.yoctoproject.org>; Thu, 13 Oct 2022 23:04:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gzGSwF30YllRkkwnUW7a4e5Nr8k+CFcpeocc3fQrv/s=;
        b=1Vnux0z/+Cv5y1E+CPr+jxHpn5c80TQZuJXZAS9E6pjG6Gt9OKUxV4CR7maM82GtTZ
         83hZ7nUrgXpnGCpca5KQQU3/9uHpDBPuMb0fTcHooCKSmekR9xXMu2lQp7IK9/pvuDtF
         7CfiZzIxALnMsGcWPXGsbsft9ezc1H45wG5Acr8dqxG8mgRawPxKrS6wrVPEbujdNwN2
         qE+MenWCEuN2jNVNtPWG50Hg1pT21TscYbQzCjZA4zJ5T7NkKFYKtqW+9eFZXAW//JQy
         qNoDZunEXV9OF9ROL2ebs3Yj1zG/jyo4IAMxUNkyPwzMz0vybnr7lrLKIuWTpgV+CG2K
         8jhQ==
X-Gm-Message-State: ACrzQf3w2LmUauF6iEO/HdwLqxmBCcyOrqgedSkJR87EuqoAhE7AxJCh
	QuBYLuWMjZ3YlC1ozdrR9sxI99quBL7KEmY6pPY=
X-Google-Smtp-Source: AMsMyM5xb3SrfNIusZQF9HHvweE/Cmfpk347s/MbWIEnyRRadjMks5LMAHWeGoqfBSmm9obNGMgUR26hcRfHCiMdTwU=
X-Received: by 2002:a05:6512:2621:b0:491:10ba:321a with SMTP id
 bt33-20020a056512262100b0049110ba321amr1068940lfb.187.1665727480202; Thu, 13
 Oct 2022 23:04:40 -0700 (PDT)
MIME-Version: 1.0
References: <Lzj7.1665726098781344800.W4EU@lists.yoctoproject.org>
In-Reply-To: <Lzj7.1665726098781344800.W4EU@lists.yoctoproject.org>
From: Federico Pellegrin <fede@evolware.org>
Date: Fri, 14 Oct 2022 08:04:28 +0200
Message-ID: <CAM6O0Ziwg3UgQdv4X3dK0NLs0nYP+Gboj1ED1AvFhboRwDrRpg@mail.gmail.com>
Subject: Re: [yocto] Apply Rt-Patch in raspberry yocto image #patch #rpi
 #yocto #bitbake #dunfell #kernel
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c007e505eaf866ea"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Oct 2022 06:04:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58336

--000000000000c007e505eaf866ea
Content-Type: text/plain; charset="UTF-8"

Hi,
After applying the patch to the source, I suppose you built the kernel (and
is just missing in your email) ? If not that is a quite important step
missing ;)

Besides that:
1) preempt-rt patch is often very kernel version specific, while I see your
two version don't exactly match: didn't it report any error? (would be
lucky, but possible)
2) You would need also to configure the kernel to enable then the
PREEMPT-RT and so on (this of course between applying the patch and
rebuilding the kernel)
3) And of course then install the new generated image instead of the old
one in a fashion of your choice

Cheers,
Federico

Il giorno ven 14 ott 2022 alle ore 07:41 Nikita Gupta <
nikitagupta2509@gmail.com> ha scritto:

> Hello All
>
> I want to apply similar kernel version rt-patch in my rpi-basic-image for
> my raspberrypi4-64 machine. So, I tried to apply rt-patch for a standard
> rasbian image (5.15.61-v8+) but not got success. i did the following things.
>
>       1. I downloaded required kernel sources from the kernel building
> instructions (Raspberry Pi Documentation - The Linux kernel)
> <https://www.raspberrypi.com/documentation/computers/linux_kernel.html#building>
>       2. I downloaded
> https://cdn.kernel.org/pub/linux/kernel/projects/rt/5.15/older/patch-5.15.65-rt49.patch.gz
> <https://cdn.kernel.org/pub/linux/kernel/projects/rt/5.15/older/patch-5.15.65-rt49.patch.xz>
>        cd linux
>       3. zcat patch-5.15.65-rt49.patch.gz | patch -p1
>        But after rebooting my pi i am not able to see the patched kernel.
> I was about to do the same process with my rpi-basic-image. Can anyone tell
> me what things I am doing wrong?
> Or please tell me the standard way of rt-patching the kernel through yocto
> .
>
> Any reply would be highly appreicated. Thanks in Advance.
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58335):
> https://lists.yoctoproject.org/g/yocto/message/58335
> Mute This Topic: https://lists.yoctoproject.org/mt/94321336/5117409
> Mute #patch:https://lists.yoctoproject.org/g/yocto/mutehashtag/patch
> Mute #rpi:https://lists.yoctoproject.org/g/yocto/mutehashtag/rpi
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #kernel:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> fede@evolware.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000c007e505eaf866ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi,</div><div>After applying the patch=
 to the source, I suppose you built the kernel (and is just missing in your=
 email) ? If not that is a quite important step missing ;)</div><div><br></=
div><div>Besides that:</div><div>1) preempt-rt patch is often very kernel v=
ersion specific, while I see your two version don&#39;t exactly match: didn=
&#39;t it report any error? (would be lucky, but possible)<br></div><div>2)=
 You would need also to configure the kernel to enable then the PREEMPT-RT =
and so on (this of course between applying the patch and rebuilding the ker=
nel)</div><div>3) And of course then install the new generated image instea=
d of the old one in a fashion of your choice<br></div><div><br></div><div>C=
heers,</div><div>Federico<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">Il giorno ven 14 ott 2022 alle ore 07:41=
 Nikita Gupta &lt;<a href=3D"mailto:nikitagupta2509@gmail.com">nikitagupta2=
509@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hello All<br><br>I want to apply similar kernel version r=
t-patch in my rpi-basic-image for my raspberrypi4-64 machine. So, I tried t=
o apply rt-patch for a standard rasbian image (5.15.61-v8+) but not got suc=
cess. i did the following things.<br><br>=C2=A0 =C2=A0 =C2=A0 1. I download=
ed required kernel sources from the kernel building instructions (<a href=
=3D"https://www.raspberrypi.com/documentation/computers/linux_kernel.html#b=
uilding" target=3D"_blank">Raspberry Pi Documentation - The Linux kernel)</=
a><br>=C2=A0 =C2=A0 =C2=A0 2. I downloaded=C2=A0<a href=3D"https://cdn.kern=
el.org/pub/linux/kernel/projects/rt/5.15/older/patch-5.15.65-rt49.patch.xz"=
 rel=3D"noopener" target=3D"_blank">https://cdn.kernel.org/pub/linux/kernel=
/projects/rt/5.15/older/patch-5.15.65-rt49.patch.gz</a><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0cd linux<br>=C2=A0 =C2=A0 =C2=A0 3.=C2=A0<span style=3D"font-f=
amily:Inconsolata,monospace;font-size:19px">zcat patch-5.15.65-rt49.patch.g=
z | patch -p1=C2=A0<br></span>=C2=A0 =C2=A0 =C2=A0 =C2=A0But after rebootin=
g my pi i am not able to see the patched kernel. I was about to do the same=
 process with my rpi-basic-image. Can anyone tell me what things I am doing=
 wrong?<br>Or please tell me the standard way of rt-patching the kernel thr=
ough yocto .<br><br>Any reply would be highly appreicated. Thanks in Advanc=
e.<br><br><br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58335): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58335" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58335</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94321336/5117=
409" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94321336/5117409</a><br>
Mute #patch:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/p=
atch" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/patch</a><br>
Mute #rpi:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/rpi=
" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yoc=
to/mutehashtag/rpi</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/dunfell</a><br>
Mute #kernel:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/=
kernel" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/mutehashtag/kernel</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:fede@evolware.org" target=3D"_blank">fede@evolwa=
re.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000c007e505eaf866ea--

