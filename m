Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB9FC7618A
	for <webhook@archiver.kernel.org>; Sun, 19 Mar 2023 02:20:38 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web11.10199.1679192434465742527
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 19:20:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Qz6RjsaH;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-544f7c176easo21387007b3.9
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 19:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679192433;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=208odeOSteX3VzmOE7zC6YCbAIPCeWVoq7jFtmX9PXY=;
        b=Qz6RjsaHHQ2IdPWEQ7sNl0RnPqXjRkucNpeQVtxPAvIB3eklefQWSQZm+Sm20u4A6a
         6UC6FXC1e7o2z3H75FNA+EzCvSuBYDsdp4WjNHWjIUo+jgC03JQA/pwDN8YpNJfPGJzY
         Ix0SeYLY+w8HNh1rSD4hwAvavZJoCNaLgv/zSLq/V1EUBO5ap+TVjHMVjBxXYFbPZZp5
         svNjLiFRkvPs3zjhjO1Ch0fmWCwSpdsDR9XD6AXnAbe2/Bec+P1K2AXwY+VEsp1XIdmV
         EC3A5LPGp3m4PVDqSFPWrI7d+5AzpkIiGjqNF6saBkxNK7kUnpi6uF7KRudkEd4Z9B26
         SPOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679192433;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=208odeOSteX3VzmOE7zC6YCbAIPCeWVoq7jFtmX9PXY=;
        b=bfCyxHDx2FFfs8AmXulXBHzzFmyiMzLilWarFwIxseKlpzanO+QY/sVLLNCoX0BYBD
         lL7m69QAd2EwmhyUfOxJo6Ii29+iTkIZWpvCo2aRkTRI92mMVNWpN1MspGXpwYr2nbwR
         DKpRzAL0r9It0FEBgCWzQKZtg8fpTKwZdxawaGodsU2wbUOwZUbvcWeXoVWT1tf+j23u
         rFTJBHNlXwaxUjKdgXZH6u3vQg5+HiEteOEZ/BTlrF4OoRFO7oYSKXgJ9NIasQq6dLal
         zRvP6qnG5OSfHCdW0/ybr5sr2ONIdpp6nv2qvLVkmHeuN0A5zRk2M+ER4ZgCn4NY/PYb
         kUDg==
X-Gm-Message-State: AO0yUKVe5BA1bW6IsWWDlLUEDuxpDjBwO0AFSdqUzzwHyzUbe0hvnKbp
	DAwAcrg+gKD+gE+6h0F42pXE1cCh8Z3I8igeXtI=
X-Google-Smtp-Source: AK7set9YrD2+fjiADDVKSRIB7dzHy+tB/CQ2RaKiFPQVvL0VfnuvzR/LjuSAeQtqNX4hQAk+cilo9CpJ12BnhXDwZSM=
X-Received: by 2002:a81:c749:0:b0:541:753d:32f9 with SMTP id
 i9-20020a81c749000000b00541753d32f9mr7874348ywl.9.1679192433089; Sat, 18 Mar
 2023 19:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <zWH9.1679170327378061263.UEdY@lists.yoctoproject.org>
In-Reply-To: <zWH9.1679170327378061263.UEdY@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Sat, 18 Mar 2023 19:20:21 -0700
Message-ID: <CANx9H-BRmsPKE3cBAJprukuLr3QZRxfmjABXTz9nR1uV+dwOKg@mail.gmail.com>
Subject: Re: [yocto] Failed to load regulatory.db file and error whitlist
 initialise SD CARD #yocto #linux #bitbake #imx8 #imx6 #kirkstone
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007be2ac05f73774e4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Mar 2023 02:20:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59467

--0000000000007be2ac05f73774e4
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 18, 2023 at 1:12 PM Nikita Gupta <nikitagupta2509@gmail.com>
wrote:

> Hello all,
>
> I have made linux image for IMX8MPLUS with the help of Yocto and flash the
> image on a custom board which is using IMX8MPLUS processor (Image made for
> IMX8MPLUS will be required for that board) when i flash that image on
> IMX8MPLUS-evk Board then it works fine but when i flash that image on that
> custom board it does'nt boot properly and showing below  errors .  It is
> not reaching till user prompt as in evk board appears and showing failed to
> load regualtory.db file.
>
> I am putting logs here only of errors and complete file of log i am
> attaching in attachment.
>
> [*]-Video Link 0adv7535_mipi2hdmi adv7535@3d: Can't find cec device
> id=0x3c
> fail to probe panel device adv7535@3d
> fail to get display timings
> probe video device failed, ret -19
>
> [0] lcd-controller@32e80000, video
> [1] mipi_dsi@32e60000, video_bridge
> [2] adv7535@3d, panel
> adv7535_mipi2hdmi adv7535@3d: Can't find cec device id=0x3c
> fail to probe panel device adv7535@3d
> fail to get display timings
> probe video device failed, ret -19
> In:    serial
> Out:   serial
> Err:   serial
> SEC0:  RNG instantiated
>
>  BuildInfo:
>   - ATF 3c1583b
>
> MMC: no card present
> flash target is MMC:1
> MMC: no card present
> MMC card init failed!
> MMC: no card present
> ** Block device MMC 1 not supported
> Net:
> Warning: ethernet@30bf0000 (eth1) using random MAC address -
> 2a:99:bd:59:06:d1
>
> Warning: ethernet@30be0000 (eth0) using random MAC address -
> 62:30:24:eb:30:15
> eth0: ethernet@30be0000, eth1: ethernet@30bf0000 [PRIME]
> Fastboot: Normal
> Normal Boot
>
> [    0.204629] imx-sdma 30bd0000.dma-controller: Direct firmware load for
> imx/sdma/sdma-imx7d.bin failed with error -2
> [    0.204651] imx-sdma 30bd0000.dma-controller: Falling back to sysfs
> fallback for: imx/sdma/sdma-imx7d.bin
> [    0.206434] mxs-dma 33000000.dma-apbh: initialized
> [    0.208257] SoC: i.MX8MP revision 1.1
> [    0.208875] Bus freq driver module loaded
>
> [    2.995746] imx-drm display-subsystem: bound 32c00000.bus:ldb@32ec005c
> (ops imx8mp_ldb_ops)
> [    3.004136] imx-drm display-subsystem: bound 32fd8000.hdmi (ops
> dw_hdmi_imx_ops)
> [    3.012410] [drm] Initialized imx-drm 1.0.0 20120507 for
> display-subsystem on minor 1
> [    3.091503] mmc1: error -123 whilst initialising SD card
> [    3.211495] mmc1: error -123 whilst initialising SD card
> [    3.345894] mmc1: error -123 whilst initialising SD card
> [    3.355608] Console: switching to colour frame buffer device 100x37
> [    3.383493] imx-drm display-subsystem: [drm] fb0: imx-drmdrmfb frame
> buffer device
> [    3.397807] isi-m2m 32e00000.isi:m2m_device: Register m2m success for
> ISI.0
> [    3.404971] cfg80211: Loading compiled-in X.509 certificates for
> regulatory database
> [    3.415122] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
> [    3.421745] platform regulatory.0: Direct firmware load for
> regulatory.db failed with error -2
>

This is provided by wireless-regdb
https://git.yoctoproject.org/poky/tree/meta/recipes-kernel/wireless-regdb/wireless-regdb_2023.02.13.bb

[    3.430369] platform regulatory.0: Falling back to sysfs fallback for:
> regulatory.db
> [    3.445673] ALSA device list:
> [    3.448665]   No soundcards found.
> [    3.685990] imx6q-pcie 33800000.pcie: Phy link never came up
> [    3.691704] imx6q-pcie: probe of 33800000.pcie failed with error -110
> [    3.699563] Waiting for root device /dev/mmcblk1p2...
> [   60.412469] imx-sdma 30e10000.dma-controller: Direct firmware load for
> imx/sdma/sdma-imx7d.bin failed with error -2
>

This is provided by linux-firmware-imx-sdma-imx7
https://git.yoctoproject.org/poky/tree/meta/recipes-kernel/linux-firmware/linux-firmware_20230210.bb


FILES:${PN}-imx-sdma-imx7d =
"${nonarch_base_libdir}/firmware/imx/sdma/sdma-imx7d.bin"


[   60.422936] imx-sdma 30e10000.dma-controller: Falling back to sysfs
> fallback for: imx/sdma/sdma-imx7d.bin
> [   64.480489] cfg80211: failed to load regulatory.db
> [   78.272425] random: crng init done
> [  121.824795] imx-sdma 30e10000.dma-controller: external firmware not
> found, using ROM firmware
> [  121.825045] imx-sdma 30bd0000.dma-controller: external firmware not
> found, using ROM firmware
>
> What i tried to resolve this . I enablea DMA Support and SDMA Driver in
> kernel configuration by "bitbake linux-imx -c menuconfig". But getting same
> error. Please help me into this.
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59462):
> https://lists.yoctoproject.org/g/yocto/message/59462
> Mute This Topic: https://lists.yoctoproject.org/mt/97700065/924729
> Mute #imx6:https://lists.yoctoproject.org/g/yocto/mutehashtag/imx6
> Mute #kirkstone:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #imx8:https://lists.yoctoproject.org/g/yocto/mutehashtag/imx8
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000007be2ac05f73774e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Mar 18, 2023 at 1:12 PM Nikita Gupta &lt;<a href=3D=
"mailto:nikitagupta2509@gmail.com">nikitagupta2509@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-le=
ft-color:rgb(204,204,204)"><div>Hello all,=C2=A0</div>
<div>=C2=A0</div>
<div>I have made linux image for IMX8MPLUS with the help of Yocto and flash=
 the image on a custom board which is using IMX8MPLUS processor (Image made=
 for IMX8MPLUS will be required for that board) when i flash that image on =
IMX8MPLUS-evk Board then it works fine but when i flash that image on that =
custom board it does&#39;nt boot properly and showing below=C2=A0 errors .=
=C2=A0 It is not reaching till user prompt as in evk board appears and show=
ing failed to load regualtory.db file.=C2=A0<br><br>I am putting logs here =
only of errors and complete file of log i am attaching in attachment.=C2=A0=
<br><br>
<div>[*]-Video Link 0adv7535_mipi2hdmi adv7535@3d: Can&#39;t find cec devic=
e id=3D0x3c</div>
<div>fail to probe panel device adv7535@3d</div>
<div>fail to get display timings</div>
<div>probe video device failed, ret -19</div>
<div>=C2=A0</div>
<div><span style=3D"white-space:pre-wrap"> </span>[0] lcd-controller@32e800=
00, video</div>
<div><span style=3D"white-space:pre-wrap"> </span>[1] mipi_dsi@32e60000, vi=
deo_bridge</div>
<div><span style=3D"white-space:pre-wrap"> </span>[2] adv7535@3d, panel</di=
v>
<div>adv7535_mipi2hdmi adv7535@3d: Can&#39;t find cec device id=3D0x3c</div=
>
<div>fail to probe panel device adv7535@3d</div>
<div>fail to get display timings</div>
<div>probe video device failed, ret -19</div>
<div>In:=C2=A0 =C2=A0 serial</div>
<div>Out:=C2=A0 =C2=A0serial</div>
<div>Err:=C2=A0 =C2=A0serial</div>
<div>SEC0:=C2=A0 RNG instantiated</div>
<div>=C2=A0</div>
<div>=C2=A0BuildInfo:</div>
<div>=C2=A0 - ATF 3c1583b</div>
<div>=C2=A0</div>
<div>MMC: no card present</div>
<div>flash target is MMC:1</div>
<div>MMC: no card present</div>
<div>MMC card init failed!</div>
<div>MMC: no card present</div>
<div>** Block device MMC 1 not supported</div>
<div>Net:=C2=A0 =C2=A0</div>
<div>Warning: ethernet@30bf0000 (eth1) using random MAC address - 2a:99:bd:=
59:06:d1</div>
<div>=C2=A0</div>
<div>Warning: ethernet@30be0000 (eth0) using random MAC address - 62:30:24:=
eb:30:15</div>
<div>eth0: ethernet@30be0000, eth1: ethernet@30bf0000 [PRIME]</div>
<div>Fastboot: Normal</div>
<div>Normal Boot<br><br>
<div>[=C2=A0 =C2=A0 0.204629] imx-sdma 30bd0000.dma-controller: Direct firm=
ware load for imx/sdma/sdma-imx7d.bin failed with error -2</div>
<div>[=C2=A0 =C2=A0 0.204651] imx-sdma 30bd0000.dma-controller: Falling bac=
k to sysfs fallback for: imx/sdma/sdma-imx7d.bin</div>
<div>[=C2=A0 =C2=A0 0.206434] mxs-dma 33000000.dma-apbh: initialized</div>
<div>[=C2=A0 =C2=A0 0.208257] SoC: i.MX8MP revision 1.1</div>
<div>[=C2=A0 =C2=A0 0.208875] Bus freq driver module loaded<br><br>
<div>[=C2=A0 =C2=A0 2.995746] imx-drm display-subsystem: bound 32c00000.bus=
:ldb@32ec005c (ops imx8mp_ldb_ops)</div>
<div>[=C2=A0 =C2=A0 3.004136] imx-drm display-subsystem: bound 32fd8000.hdm=
i (ops dw_hdmi_imx_ops)</div>
<div>[=C2=A0 =C2=A0 3.012410] [drm] Initialized imx-drm 1.0.0 20120507 for =
display-subsystem on minor 1</div>
<div>[=C2=A0 =C2=A0 3.091503] mmc1: error -123 whilst initialising SD card<=
/div>
<div>[=C2=A0 =C2=A0 3.211495] mmc1: error -123 whilst initialising SD card<=
/div>
<div>[=C2=A0 =C2=A0 3.345894] mmc1: error -123 whilst initialising SD card<=
/div>
<div>[=C2=A0 =C2=A0 3.355608] Console: switching to colour frame buffer dev=
ice 100x37</div>
<div>[=C2=A0 =C2=A0 3.383493] imx-drm display-subsystem: [drm] fb0: imx-drm=
drmfb frame buffer device</div>
<div>[=C2=A0 =C2=A0 3.397807] isi-m2m 32e00000.isi:m2m_device: Register m2m=
 success for ISI.0</div>
<div>[=C2=A0 =C2=A0 3.404971] cfg80211: Loading compiled-in X.509 certifica=
tes for regulatory database</div>
<div>[=C2=A0 =C2=A0 3.415122] cfg80211: Loaded X.509 cert &#39;sforshee: 00=
b28ddf47aef9cea7&#39;</div>
<div>[=C2=A0 =C2=A0 3.421745] platform regulatory.0: Direct firmware load f=
or regulatory.db failed with error -2</div></div></div></div></blockquote><=
div dir=3D"auto"><br></div><div dir=3D"auto">This is provided by wireless-r=
egdb=C2=A0</div><div dir=3D"auto"><div><a href=3D"https://git.yoctoproject.=
org/poky/tree/meta/recipes-kernel/wireless-regdb/wireless-regdb_2023.02.13.=
bb">https://git.yoctoproject.org/poky/tree/meta/recipes-kernel/wireless-reg=
db/wireless-regdb_2023.02.13.bb</a></div><br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-le=
ft-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div><d=
iv><div><div dir=3D"auto"></div>
<div>[=C2=A0 =C2=A0 3.430369] platform regulatory.0: Falling back to sysfs =
fallback for: regulatory.db</div>
<div>[=C2=A0 =C2=A0 3.445673] ALSA device list:</div>
<div>[=C2=A0 =C2=A0 3.448665]=C2=A0 =C2=A0No soundcards found.</div>
<div>[=C2=A0 =C2=A0 3.685990] imx6q-pcie 33800000.pcie: Phy link never came=
 up</div>
<div>[=C2=A0 =C2=A0 3.691704] imx6q-pcie: probe of 33800000.pcie failed wit=
h error -110</div>
<div>[=C2=A0 =C2=A0 3.699563] Waiting for root device /dev/mmcblk1p2...</di=
v>
<div>[=C2=A0 =C2=A060.412469] imx-sdma 30e10000.dma-controller: Direct firm=
ware load for imx/sdma/sdma-imx7d.bin failed with error -2</div></div></div=
></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">This is p=
rovided by linux-firmware-imx-sdma-imx7</div><div dir=3D"auto"><div><a href=
=3D"https://git.yoctoproject.org/poky/tree/meta/recipes-kernel/linux-firmwa=
re/linux-firmware_20230210.bb">https://git.yoctoproject.org/poky/tree/meta/=
recipes-kernel/linux-firmware/linux-firmware_20230210.bb</a></div><br></div=
><div dir=3D"auto"><pre style=3D"padding:0px;margin-top:0px;margin-bottom:0=
px;font-size:13.333333px;font-family:monospace"><span class=3D"nv" style=3D=
"font-family:monospace;color:rgb(51,102,153)"><br></span></pre><pre style=
=3D"padding:0px;margin-top:0px;margin-bottom:0px;font-size:13.333333px;font=
-family:monospace"><span class=3D"nv" style=3D"font-family:monospace;color:=
rgb(51,102,153)">FILES</span><span class=3D"p" style=3D"font-family:monospa=
ce">:</span><span class=3D"err" style=3D"font-family:monospace;background-c=
olor:rgb(227,210,210);color:rgb(166,23,23)">${</span><span class=3D"nv" sty=
le=3D"font-family:monospace;color:rgb(51,102,153)">PN</span><span class=3D"=
err" style=3D"font-family:monospace;background-color:rgb(227,210,210);color=
:rgb(166,23,23)">}</span><span class=3D"o" style=3D"font-family:monospace">=
-</span><span class=3D"nv" style=3D"font-family:monospace;color:rgb(51,102,=
153)">imx</span><span class=3D"o" style=3D"font-family:monospace">-</span><=
span class=3D"nv" style=3D"font-family:monospace;color:rgb(51,102,153)">sdm=
a</span><span class=3D"o" style=3D"font-family:monospace">-</span><span cla=
ss=3D"nv" style=3D"font-family:monospace;color:rgb(51,102,153)">imx7d</span=
> <span class=3D"o" style=3D"font-family:monospace">=3D</span> <span class=
=3D"s2" style=3D"font-family:monospace;background-color:rgb(255,240,240);co=
lor:rgb(221,34,0)">&quot;${nonarch_base_libdir}/firmware/imx/sdma/sdma-imx7=
d.bin&quot;</span></pre><pre style=3D"padding:0px;margin-top:0px;margin-bot=
tom:0px;font-size:13.333333px;font-family:monospace"><span class=3D"s2" sty=
le=3D"font-family:monospace;background-color:rgb(255,240,240);color:rgb(221=
,34,0)"><br></span></pre></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;paddi=
ng-left:1ex;border-left-color:rgb(204,204,204)"><div><div><div><div dir=3D"=
auto"></div>
<div>[=C2=A0 =C2=A060.422936] imx-sdma 30e10000.dma-controller: Falling bac=
k to sysfs fallback for: imx/sdma/sdma-imx7d.bin</div>
<div>[=C2=A0 =C2=A064.480489] cfg80211: failed to load regulatory.db</div>
<div>[=C2=A0 =C2=A078.272425] random: crng init done</div>
<div>[=C2=A0 121.824795] imx-sdma 30e10000.dma-controller: external firmwar=
e not found, using ROM firmware</div>
<div>[=C2=A0 121.825045] imx-sdma 30bd0000.dma-controller: external firmwar=
e not found, using ROM firmware</div>
</div>
</div>
</div>
<div><br>
<div>What i tried to resolve this . I enablea DMA Support and SDMA Driver i=
n kernel configuration by &quot;bitbake linux-imx -c menuconfig&quot;. But =
getting same error. Please help me into this.</div>
<div>=C2=A0</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59462): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59462" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59462</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/97700065/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
97700065/924729</a><br>
Mute #imx6:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/im=
x6" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/mutehashtag/imx6</a><br>
Mute #kirkstone:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/kirkstone" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/kirkstone</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Mute #linux:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/l=
inux" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/linux</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Mute #imx8:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/im=
x8" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/mutehashtag/imx8</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000007be2ac05f73774e4--

