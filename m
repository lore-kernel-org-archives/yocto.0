Return-Path: <crawford.benjamin15@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56EF4D2A52E
	for <webhook@archiver.kernel.org>; Wed, 16 Oct 2024 15:58:58 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web11.26996.1729094332791737291
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Oct 2024 08:58:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TOZWPt7n;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: crawford.benjamin15@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6e305c2987bso567457b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 16 Oct 2024 08:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729094332; x=1729699132; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rk+8+/iOMbXuKZbQjWsIsxlrFKJviRzugyUjDW7rXPU=;
        b=TOZWPt7nmNdy15Y2XzLNPAu3JYgpttKiTAuMQlcfrD5KVPR/qTauq96CnjKQ3eXJ8c
         8x6RH4q6Oyc8iKHoWbAJzyUjqDMog/QBTFy2yoqYbJwhTICJbudvHqVBibLjK5YiseIi
         HqWmSk/IU17AF3CE0tWuoLgbKh4X8t6m3D2rZqnPS5TAGY9JJ/9DLBIHl6vyXPweUhJq
         5cmQHLk7pnovDwxD2Ywebv65gaRsC9iKseJqi+VrxZe3ELxsE6cWbKfsaJNGaettuQY9
         5RnKbnDGn9W+PCecyR/bV8zt/MYOgbeOsf6662LUvkY4w/vK5stDU4rs4cVbTw7hOTKT
         gioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729094332; x=1729699132;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rk+8+/iOMbXuKZbQjWsIsxlrFKJviRzugyUjDW7rXPU=;
        b=E+KPrgjcODq6SujB+73ZxBQ6VWXjIVxC+/zgvcve1NWDKPN+nXgCPApIHp+Xp2LeIU
         LuDJKfe95zfsRGsGd4d3oygg84B5vLLFqAcHCXWWrDPy/1VBdNrJ0t/qPoI6h95DgF4U
         OzdRIi1JxKoHfKkHOlMMsE9iFliKcJadGPtaBaJhEGnPbC9tKjSFnnmqJVP/P6MpI49V
         OLRdcQv21zHmampXjjqOK+mHvEfBoi0r4jmDqn6Vp3c/w+yY0J3/AH9l1zZuCdL77hCR
         fmgbtL0rrttN1KCfLRiG5quEZEZnMbehr6EVjoZ4C3Q74YTIddy4yZ5HYY/tiHglQh0+
         wxsg==
X-Gm-Message-State: AOJu0Yw7DInKZ2yMSsU46gAJgyBmV/hrmwtShUAA6J8/FUKoY2Sq1vsJ
	Ke5C/LebpU8RKxjKW2Iv6amatDTkLcT5iAU90er6pohYWjhT6ftIeG13rc6np5Tsp7Cs/AO+WpX
	bm5D0fhK43sp+HnnEybut/x6QExjevA==
X-Google-Smtp-Source: AGHT+IE7QUPrR/st7YS/OIHr6VbGmYAV54LIEhsFJ7U1nBBlmVNdAiYNVRSx/viC9URpwyZdMlk/dLUD6E26en/2840=
X-Received: by 2002:a05:690c:313:b0:6e3:d5ac:7d59 with SMTP id
 00721157ae682-6e3d5ac8185mr38279717b3.45.1729094331709; Wed, 16 Oct 2024
 08:58:51 -0700 (PDT)
MIME-Version: 1.0
References: <WIeL.1729093594096600716.n9TJ@lists.yoctoproject.org>
In-Reply-To: <WIeL.1729093594096600716.n9TJ@lists.yoctoproject.org>
From: Benjamin Mordaunt <crawford.benjamin15@gmail.com>
Date: Wed, 16 Oct 2024 16:58:40 +0100
Message-ID: <CANtEDzRwtz89XvO1ibW88Kw7SYPk=iCF6S2yB=6z_v9si2sMWw@mail.gmail.com>
Subject: Re: [yocto] wlan.ko kernel object not being built by Yocto #kernelmodule
To: yocto@lists.yoctoproject.org, Jesus.JimenezSanchez@verifone.com
Content-Type: multipart/alternative; boundary="0000000000006cc36006249a2595"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Oct 2024 15:58:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64029

--0000000000006cc36006249a2595
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

DISTRO_FEATURES:append =3D =E2=80=9C wifi=E2=80=9D
?

On Wed, 16 Oct 2024 at 16:46, Jesus Jimenez Sanchez via
lists.yoctoproject.org <Jesus.JimenezSanchez=3D
verifone.com@lists.yoctoproject.org> wrote:

> Hello,
>
> I am trying to build the wlan.ko kernel object to enable wifi in an
> embedded device but I haven't been able to do it so far.
>
> I have tried having the code for Linux in a remote repository and in a
> repository in my local computer. For the config file, I have a defconfig
> file in the Yocto folder that has this:
> ```
> CONFIG_MODULES=3Dy
> ...
> CONFIG_WLAN=3Dy
> # CONFIG_WIRELESS_WDS is not set
> # CONFIG_WLAN_VENDOR_ADMTEK is not set
> CONFIG_WLAN_VENDOR_ATH=3Dy
> CONFIG_ATH_DEBUG=3Dy
> CONFIG_ATH_TRACEPOINTS=3Dy
> CONFIG_ATH5K_PCI=3Dy
> CONFIG_ATH6KL=3Dy
> CONFIG_ATH6KL_SDIO=3Dy
> CONFIG_ATH6KL_USB=3Dy
> CONFIG_ATH6KL_DEBUG=3Dy
> CONFIG_ATH6KL_TRACING=3Dy
> ```
>
> That file is added in the linux-msm.inc recipe with this line:
> ```
> SRC_URI   +=3D " file://neo2_defconfig \"
> ```
>
> With that, I have tried having the local repository with another defconfi=
g
> which also has the `CONFIG_WLAN=3Dy` line but it didn't work. A .config i=
n
> the local repository just returns an error during the configuration phase=
.
>
> After building when there is no configuration file in the local
> repository, there are two files I've found in the build directory that
> could be the config file:
> ```
> ./tmp-glibc/work/qrbx210_rbx-linux/linux-msm/5.4.191-r0/build/.config
> ./tmp-glibc/work/qrbx210_rbx-linux/linux-msm/5.4.191-r0/my_defconfig
> ```
> Both of those files have different contents, but both have the
> `CONFIG_WLAN=3Dy` line.
>
> Every time I manage to build Linux, the wlan.ko file is missing. For
> trying to find it I have been using `find . -name wlan.ko` and `find .
> -name "*wlan*"` but I never find anything.
>
> Do I need to do anything else to generate this file? Do I maybe need to
> configure something else or get some extra sources?
>
> I am using Linux 5.4.191-r0 and I couldn't get the Yocto version, but the
> Bitbake version is 2.0.0.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64028):
> https://lists.yoctoproject.org/g/yocto/message/64028
> Mute This Topic: https://lists.yoctoproject.org/mt/109046157/6483088
> Mute #kernelmodule:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/kernelmodule
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> crawford.benjamin15@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000006cc36006249a2595
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">DISTRO_FEATURES:append =3D =E2=80=9C wifi=E2=80=9D</div><=
div dir=3D"auto">?</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, 16 Oct 2024 at 16:46, Jesus Jimenez Sanchez =
via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &l=
t;Jesus.JimenezSanchez=3D<a href=3D"mailto:verifone.com@lists.yoctoproject.=
org">verifone.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204=
,204)"><div>
<div>Hello,</div>
<div>=C2=A0</div>
<div>I am trying to build the wlan.ko kernel object to enable wifi in an em=
bedded device but I haven&#39;t been able to do it so far.</div>
<div>=C2=A0</div>
<div>I have tried having the code for Linux in a remote repository and in a=
 repository in my local computer. For the config file, I have a defconfig f=
ile in the Yocto folder that has this:<br>```<br>CONFIG_MODULES=3Dy<br>...<=
br>CONFIG_WLAN=3Dy<br># CONFIG_WIRELESS_WDS is not set<br># CONFIG_WLAN_VEN=
DOR_ADMTEK is not set<br>CONFIG_WLAN_VENDOR_ATH=3Dy<br>CONFIG_ATH_DEBUG=3Dy=
<br>CONFIG_ATH_TRACEPOINTS=3Dy<br>CONFIG_ATH5K_PCI=3Dy<br>CONFIG_ATH6KL=3Dy=
<br>CONFIG_ATH6KL_SDIO=3Dy<br>CONFIG_ATH6KL_USB=3Dy<br>CONFIG_ATH6KL_DEBUG=
=3Dy<br>CONFIG_ATH6KL_TRACING=3Dy<br>```</div>
<div>=C2=A0</div>
<div>That file is added in the linux-msm.inc recipe with this line:<br>```<=
br>SRC_URI =C2=A0 +=3D &quot; file://neo2_defconfig \&quot;<br>```</div>
<div>=C2=A0</div>
<div>
<div>With that, I have tried having the local repository with another defco=
nfig which also has the `CONFIG_WLAN=3Dy` line but it didn&#39;t work. A .c=
onfig in the local repository just returns an error during the configuratio=
n phase.</div>
<div>=C2=A0</div>
<div>After building when there is no configuration file in the local reposi=
tory, there are two files I&#39;ve found in the build directory that could =
be the config file:<br>```<br>./tmp-glibc/work/qrbx210_rbx-linux/linux-msm/=
5.4.191-r0/build/.config<br>./tmp-glibc/work/qrbx210_rbx-linux/linux-msm/5.=
4.191-r0/my_defconfig<br>```<br>Both of those files have different contents=
, but both have the `CONFIG_WLAN=3Dy` line.</div>
</div>
<div>=C2=A0</div>
<div>Every time I manage to build Linux, the wlan.ko file is missing. For t=
rying to find it I have been using `find . -name wlan.ko` and `find . -name=
 &quot;*wlan*&quot;` but I never find anything.=C2=A0</div>
<div>=C2=A0</div>
<div>Do I need to do anything else to generate this file? Do I maybe need t=
o configure something else or get some extra sources?</div>
<div>=C2=A0</div>
<div>I am using Linux 5.4.191-r0 and I couldn&#39;t get the Yocto version, =
but the Bitbake version is 2.0.0.</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64028): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64028" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64028</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109046157/648=
3088" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109046157/6483088</a><br>
Mute #kernelmodule:<a href=3D"https://lists.yoctoproject.org/g/yocto/muteha=
shtag/kernelmodule" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/g/yocto/mutehashtag/kernelmodule</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:crawford.benjamin15@gmail.com" target=3D"_blank"=
>crawford.benjamin15@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000006cc36006249a2595--

