Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 179AFC25B74
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 02:51:59 +0000 (UTC)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
 by mx.groups.io with SMTP id smtpd.web11.6293.1715655110779252215
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 May 2024 19:51:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=Icbhohqd;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.221.180, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-4df400d6875so1583445e0c.0
        for <yocto@lists.yoctoproject.org>; Mon, 13 May 2024 19:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1715655110; x=1716259910; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JiZO1YHEpwjVxFY3VthYt9rg1lbebRGZqYlob3Ov6b0=;
        b=IcbhohqdamxqohVHHttjyFg3t95cg71yg3mNwCNoUZCRU+jrhUlaOvULREJNFEVqv0
         5RLYt+99uRWLEmq4cTozXefByOagjBHnkX0XwAsGCsF3hP+s/aGqWyGf8tYmY+wGv0x4
         8FHjNf/JgCRemKpoKnJ8U57wlmdIJnxbJrgfg17749X/jK6kYS9sndo+xWY2X5KwwkfC
         5laYMC7jD+t0pcHyNRUV3n8eeOAU6av2CLDRvj6rE0JeZlSQWoELgtm9IMXi/5EjgX+u
         iOhYxN7hiC7+gH+vAxYxbr9+fTjs9LBC+hvGVbEAqSTj01SHAvv1N6gtSO0OLiCI3sf/
         bZ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715655110; x=1716259910;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JiZO1YHEpwjVxFY3VthYt9rg1lbebRGZqYlob3Ov6b0=;
        b=dT1Z3P+iqMHfg09wMR8U6gsN2q7RWeFG9bHgKEWiiVkiqLDaIdWrC6ws3JfiOh+2a1
         d1DIME3Is5E9lB0hGKmmXYiCLG8VtmytLps1p86dWnWD0Z+QmDFSHQNb/PLfSs7DD8+s
         OMjzUc72XMCyCAl8pf4KkXDSaEMZ02/PrrQ9c2siyZnWIxOhgVfUO8cdwYSN1+4rYxO4
         ZTa0klD6F5MTwQWNiyDsCfQ8fzZBeQlm0PQm6VKNQZBeNgBIQSkyab4b7tZJsKREcf3w
         uHGEacY9gdhaRFPM3Ajwl9H6IrmXZaX5sdi9rs6dxiuRst77zqSS8Ez4c44SMIgaoR/a
         6cEg==
X-Gm-Message-State: AOJu0Yxy/V2F5ehQIOCwL5L0GYCJdKzMbFuIETnQun2bxcM/hruCQJkU
	dYyJ1enhuaN+BU3+vSPNJMApo5ekcwPkevmQjOsjss87/Vj69YKLZgpSfaHGHFrufXB/KYkZGFi
	i9Gob5CUTEAnD+ZUPIjyhijhHpwKUgxcAdhDBsw==
X-Google-Smtp-Source: AGHT+IH9D9LffyO+ldS+C9DnDWKYqrcuD+b58MxrL3PwuVzj4rKYeghnmNktY0EVI0HklO2ZkYgkK/faxwUrYhvX2ZI=
X-Received: by 2002:a05:6102:3709:b0:47f:1f90:c769 with SMTP id
 ada2fe7eead31-48077e5dcacmr8528049137.24.1715655109781; Mon, 13 May 2024
 19:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHvmSZ1xuEuSW=aUy3ig93ckw7o+Zb6Wd_4hDm=_tscnQ@mail.gmail.com>
 <CANNYZj8zTegW8tnHoKrkDDKKaQPmvY36FVQpGxzsbvjCJisKeQ@mail.gmail.com>
In-Reply-To: <CANNYZj8zTegW8tnHoKrkDDKKaQPmvY36FVQpGxzsbvjCJisKeQ@mail.gmail.com>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Tue, 14 May 2024 14:51:38 +1200
Message-ID: <CANuMBWFqo2P7yY=RKaAUXwCbGFifS4+vGMjK+pgt5njFHVgXUw@mail.gmail.com>
Subject: Re: [yocto] Opkg cannot find anything to satisfy 'kernel-module-iwlmvm'
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006053570618611585"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 02:51:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63082

--0000000000006053570618611585
Content-Type: text/plain; charset="UTF-8"

On Mon, 13 May 2024 at 19:14, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> You need to look into build logs and build directory for the kernel
> recipe to see what modules are being built and packaged.
>

Rightio.  (I found that the failure is logged in the "do_rootfs" recipe,
but concentrating on the kernel recipe):

I found a problem, straight away:  The kernel recipe includes in its
SRC_URI a file that (looks like) it sets kernel configuration to load the
iwlwifi modules.
However when I build it and boot it and examine /proc/config.gz none of the
configuration from the kernel recipe are there

Grepping around for the configuration options I found this file in my build
section:
build/tmp/work-shared/apalis-imx8/kernel-source/.kernel-meta/cfg/merge_config_build.log
It is not updated on each build, but has been updated today, so I am unsure
on when and how it was created.

It says (in part)

----------------------------
#
# configuration written to .config
#
make[1]: Leaving directory
'/home/yocto/build/tmp/work/apalis_imx8-tdx-linux/linux-toradex/5.15.77+gitAUTOINC+458ba358fc-r0/build'
Value requested for CONFIG_CFG80211 not in final .config
Requested value:  CONFIG_CFG80211=y
Actual value:     CONFIG_CFG80211=m

Value requested for CONFIG_MAC80211 not in final .config
Requested value:  CONFIG_MAC80211=y
Actual value:     CONFIG_MAC80211=m

Value requested for CONFIG_IWLWIFI not in final .config
Requested value:  CONFIG_IWLWIFI=m
Actual value:

Value requested for CONFIG_IWLWIFI_LEDS not in final .config
Requested value:  CONFIG_IWLWIFI_LEDS=y
Actual value:

Value requested for CONFIG_IWLMVM not in final .config
Requested value:  CONFIG_IWLMVM=m
Actual value:
----------------------------


The kernel recipe from:
meta-tirotech/recipes-kernel/linux/linux-toradex_%.bbappend
----------------------------
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "\
        file://tirotech.dts \
        file://intel-wireless.cfg \
        file://0001-Add-missing-M40-UART-clock-to-resource-table.patch \
        "
KERNEL_DEVICETREE += "freescale/tirotech.dtb"

do_patch:append () {
    cp -f ${WORKDIR}/tirotech.dts
${S}/arch/arm64/boot/dts/freescale/tirotech.dts
    echo 'dtb-$(CONFIG_ARCH_MXC) += tirotech.dtb' >> \
        ${S}/arch/arm64/boot/dts/freescale/Makefile
}
----------------------------

The file  intel-wireless.cfg:

----------------------------
CONFIG_CFG80211=y
CONFIG_MAC80211=y
CONFIG_IWLWIFI=m
CONFIG_IWLWIFI_LEDS=y
CONFIG_IWLMVM=m
----------------------------

--0000000000006053570618611585
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, 13 May 2024 at 19:14, Alexand=
er Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">=
alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">You need to look into build logs and build directory =
for the kernel<br>
recipe to see what modules are being built and packaged.<br></blockquote><d=
iv><br></div><div>Rightio.=C2=A0 (I found that the failure is logged in the=
 &quot;do_rootfs&quot; recipe, but concentrating on the kernel recipe):</di=
v><div><br></div><div>I found a problem, straight away:=C2=A0 The kernel re=
cipe includes in its SRC_URI a file that (looks like) it sets kernel config=
uration to load the iwlwifi modules. <br></div><div>However when I build it=
 and boot it and examine /proc/config.gz none of the configuration from the=
 kernel recipe are there</div><div><br></div><div>Grepping around for the c=
onfiguration options I found this file in my build section: build/tmp/work-=
shared/apalis-imx8/kernel-source/.kernel-meta/cfg/merge_config_build.log</d=
iv><div>It is not updated on each build, but has been updated today, so I a=
m unsure on when and how it was created.</div><div><br></div><div>It says (=
in part)</div><div><br></div><div>----------------------------</div><div>#<=
br># configuration written to .config<br>#<br>make[1]: Leaving directory &#=
39;/home/yocto/build/tmp/work/apalis_imx8-tdx-linux/linux-toradex/5.15.77+g=
itAUTOINC+458ba358fc-r0/build&#39;<br>Value requested for CONFIG_CFG80211 n=
ot in final .config<br>Requested value: =C2=A0CONFIG_CFG80211=3Dy<br>Actual=
 value: =C2=A0 =C2=A0 CONFIG_CFG80211=3Dm<br><br>Value requested for CONFIG=
_MAC80211 not in final .config<br>Requested value: =C2=A0CONFIG_MAC80211=3D=
y<br>Actual value: =C2=A0 =C2=A0 CONFIG_MAC80211=3Dm<br><br>Value requested=
 for CONFIG_IWLWIFI not in final .config<br>Requested value: =C2=A0CONFIG_I=
WLWIFI=3Dm<br>Actual value: =C2=A0 =C2=A0 <br><br>Value requested for CONFI=
G_IWLWIFI_LEDS not in final .config<br>Requested value: =C2=A0CONFIG_IWLWIF=
I_LEDS=3Dy<br>Actual value: =C2=A0 =C2=A0 <br><br>Value requested for CONFI=
G_IWLMVM not in final .config<br>Requested value: =C2=A0CONFIG_IWLMVM=3Dm<b=
r>Actual value: =C2=A0 =C2=A0 <br></div><div>----------------------------<b=
r></div><div><br></div><div><br></div><div>The kernel recipe from: meta-tir=
otech/recipes-kernel/linux/linux-toradex_%.bbappend</div>------------------=
----------</div><div class=3D"gmail_quote">FILESEXTRAPATHS:prepend :=3D &qu=
ot;${THISDIR}/files:&quot;<br><br>SRC_URI +=3D &quot;\<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 file://tirotech.dts \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://inte=
l-wireless.cfg \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-Add-missing-M40=
-UART-clock-to-resource-table.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
<br>KERNEL_DEVICETREE +=3D &quot;freescale/tirotech.dtb&quot;<br><br>do_pat=
ch:append () {<br>=C2=A0 =C2=A0 cp -f ${WORKDIR}/tirotech.dts ${S}/arch/arm=
64/boot/dts/freescale/tirotech.dts<br>=C2=A0 =C2=A0 echo &#39;dtb-$(CONFIG_=
ARCH_MXC) +=3D tirotech.dtb&#39; &gt;&gt; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
${S}/arch/arm64/boot/dts/freescale/Makefile<br>}</div><div class=3D"gmail_q=
uote">----------------------------</div><div class=3D"gmail_quote"><br></di=
v><div class=3D"gmail_quote">The file=C2=A0 intel-wireless.cfg:</div><div c=
lass=3D"gmail_quote"><br></div><div class=3D"gmail_quote">-----------------=
-----------</div><div class=3D"gmail_quote">CONFIG_CFG80211=3Dy<br>CONFIG_M=
AC80211=3Dy<br>CONFIG_IWLWIFI=3Dm<br>CONFIG_IWLWIFI_LEDS=3Dy<br>CONFIG_IWLM=
VM=3Dm</div><div class=3D"gmail_quote">----------------------------</div><d=
iv class=3D"gmail_quote"><br></div><br></div>

--0000000000006053570618611585--

