Return-Path: <abhisit.sangjan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8704EC47258
	for <webhook@archiver.kernel.org>; Sun, 21 Jan 2024 02:51:00 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web11.39934.1705805451578988089
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 18:50:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ih/RyOQV;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: abhisit.sangjan@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-783195e57c7so140415085a.2
        for <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 18:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705805450; x=1706410250; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:sender:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ajra1NtSpLV3S2UYJYLrjw7/HLpbskfQyowqj2EZ0hQ=;
        b=ih/RyOQVc2Ay2J4ZOR613Y7HrALQvFrrBXAya9WPrsedBsE9FGLHGn340vEg06P23/
         hDKphpjXQ548IeuB2ueKZPLY2VH3r+k/AaPX6VcebW3Jxz5yRA1960pfd32CFNKNWLd9
         uhTQx0dhsUiWVbo8pZbqL+cBTS4RMWg1esB1ieg1yakUTIyWqfOrKHgtaolfoFUPFzf2
         ZR2ViJhmwqQq5iAuJQ+n1ieOirUR5tCHzyYTdj+4z+ApMwqKf8qm8+AI7l98Onz8aUF+
         hU/ANqpbncUh6sgKLmcwOZQ7NFiYctZEBy8aw7hnAbdbnVpPfvkXcLrh+5fdrLHxCXM0
         Qeyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705805450; x=1706410250;
        h=cc:to:subject:message-id:date:from:sender:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ajra1NtSpLV3S2UYJYLrjw7/HLpbskfQyowqj2EZ0hQ=;
        b=mgSZAI+nvL/Tm2q9Hyy7CQ9HvZK0KoJtiHVIzZso3R04amoeopPN4p5MoUIdjoLIi0
         aC2B5nENBKw8A1/aVb9wSkOBSyL7CH3RorYb1/iiZcnp6ckEYtlc/Pu3PHJuEM9K2ml+
         o0nE36CyYh8eBYZcPjAvNjIrHBNiQzR4MDJXX5x1wimv0cv/eMdFMOhaPZ/kApW8YqK4
         YdisV6bwIfSpiO9rlNR3uVA0WbNgf7RatO+i8GbYpuYRWyIFq1kOL68P9Ga/OmyukDwP
         nCRry6Nbs3Qgk5d6OR8nEGiwZkEa2M1kZQXSxV/jjVYFrrqZEh5lfmESvpwS7Hx/JKIG
         XhTA==
X-Gm-Message-State: AOJu0Yx3Qm4y7gh1tMst/imh/oCNP5M/JBPw24+DCMk9Qmi/7SKPtNdg
	6Xai4d3hHFrnuoP9uTVtuOMBf1/R01cxDJBI5SQFZnkqM9t0z7qGxWXeG4sVGm2zgEPD3R9Lnct
	7lmLLDu9npXJXnl0fEB7Ulox083GnY7x/za8=
X-Google-Smtp-Source: AGHT+IE/yAx2Qg7s5u1P4VgEo9t19EXJTTur+7jBPaN5YPRw8I5sYwpG7TkWEHuKwxkhLZWUSMPFZ/CrRh3paZ3pIM4=
X-Received: by 2002:a05:620a:22ce:b0:783:9310:c71 with SMTP id
 o14-20020a05620a22ce00b0078393100c71mr1594809qki.31.1705805450648; Sat, 20
 Jan 2024 18:50:50 -0800 (PST)
MIME-Version: 1.0
References: <20231221044048.1959-1-abhisit.dev@gmail.com> <20240121024220.GB17457@localhost>
In-Reply-To: <20240121024220.GB17457@localhost>
Sender: s.abhisit@gmail.com
X-Google-Sender-Delegation: s.abhisit@gmail.com
From: Abhisit Sangjan <abhisit.sangjan@gmail.com>
Date: Sun, 21 Jan 2024 09:50:40 +0700
X-Google-Sender-Auth: zMgyn5YOSvr4DzjcZSvvtIwTmCw
Message-ID: <CAFRgqKGEpSMy-twsJ+OfS0hQSS3w-vasUWg74WVcJBTrO9Nf2Q@mail.gmail.com>
Subject: Re: [meta-rockchip] [PATCH v3 1/1] orangepi-5-plus: Support Orange Pi
 5 Plus single-board computer
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f1202c060f6bc704"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jan 2024 02:51:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62210

--000000000000f1202c060f6bc704
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your time to support me!
I will support you to contribute this kind of the single board computer.

Thanks!

On Sun, 21 Jan 2024 at 09:42, Trevor Woerner <twoerner@gmail.com> wrote:

> On Thu 2023-12-21 @ 11:40:48 AM, Abhisit Sangjan wrote:
> > From: Abhisit Sangjan <abhisit.sangjan@gmail.com>
> >
> > Being merged when the u-boot version is 2024.01-rc5 or newer and the
> Linux Kernel version is 6.7 or newer
> >
> > Orange Pi 5 Plus is RK3588 based SBC featuring:
> > - 2x 2.5G ethernet ports =E2=80=93 onboard NIC hooked to PCIe 2.0 inter=
face
> > - 2x USB 2.0 host ports
> > - 2x USB 3.0 host ports (exposed over USB 3.0 hub)
> > - Type-C port featuring USB 2.0/3.0 and Alt-DP mode
> > - PCIe 2.0/USB 2.0/I2S/I2C/UART on E.KEY socket
> > - RTC
> > - ES8388 on-board sound codec =E2=80=93 jack in/out, onboard mic, speak=
er
> amplifier
> > - SPI NOR flash
> > - RGB LED (R is always on)
> > - IR receiver
> > - PCIe 3.0 on the bottom for NVMe, etc.
> > - 40pin GPIO header (with gpio, I2C, SPI, PWM, UART)
> > - Power, recovery and Mask ROM buttons
> > - 2x HDMI out, 1x HDMI in
> > - Slots/connectors for eMMC, uSD card, fan, MIPI CSI/DSI
> > - 4 GB, 8 GB, 16 GB and 32 GB of RAM
> >
> > Signed-off-by: Abhisit Sangjan <abhisit.sangjan@gmail.com>
> > ---
> >  README                                        |  1 +
> >  conf/machine/orangepi-5-plus.conf             | 12 ++++++++++++
> >  recipes-bsp/rkbin/rockchip-rkbin_git.bb       |  2 +-
> >  recipes-kernel/linux/linux-yocto-dev.bbappend |  3 +++
> >  4 files changed, 17 insertions(+), 1 deletion(-)
> >  create mode 100644 conf/machine/orangepi-5-plus.conf
>
> Tweaked and applied to meta-rockchip, master branch.
> Thanks!
>

--000000000000f1202c060f6bc704
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thank you for your time to support me!<br=
>I will support you to contribute this kind of the single board computer.<b=
r><br>Thanks!</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Sun, 21 Jan 2024 at 09:42, Trevor Woerner &lt;<a href=3D"ma=
ilto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">On Thu 2023-12-21 @ 11:40:48 AM,=
 Abhisit Sangjan wrote:<br>
&gt; From: Abhisit Sangjan &lt;<a href=3D"mailto:abhisit.sangjan@gmail.com"=
 target=3D"_blank">abhisit.sangjan@gmail.com</a>&gt;<br>
&gt; <br>
&gt; Being merged when the u-boot version is 2024.01-rc5 or newer and the L=
inux Kernel version is 6.7 or newer<br>
&gt; <br>
&gt; Orange Pi 5 Plus is RK3588 based SBC featuring:<br>
&gt; - 2x 2.5G ethernet ports =E2=80=93 onboard NIC hooked to PCIe 2.0 inte=
rface<br>
&gt; - 2x USB 2.0 host ports<br>
&gt; - 2x USB 3.0 host ports (exposed over USB 3.0 hub)<br>
&gt; - Type-C port featuring USB 2.0/3.0 and Alt-DP mode<br>
&gt; - PCIe 2.0/USB 2.0/I2S/I2C/UART on E.KEY socket<br>
&gt; - RTC<br>
&gt; - ES8388 on-board sound codec =E2=80=93 jack in/out, onboard mic, spea=
ker amplifier<br>
&gt; - SPI NOR flash<br>
&gt; - RGB LED (R is always on)<br>
&gt; - IR receiver<br>
&gt; - PCIe 3.0 on the bottom for NVMe, etc.<br>
&gt; - 40pin GPIO header (with gpio, I2C, SPI, PWM, UART)<br>
&gt; - Power, recovery and Mask ROM buttons<br>
&gt; - 2x HDMI out, 1x HDMI in<br>
&gt; - Slots/connectors for eMMC, uSD card, fan, MIPI CSI/DSI<br>
&gt; - 4 GB, 8 GB, 16 GB and 32 GB of RAM<br>
&gt; <br>
&gt; Signed-off-by: Abhisit Sangjan &lt;<a href=3D"mailto:abhisit.sangjan@g=
mail.com" target=3D"_blank">abhisit.sangjan@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 1 +<br>
&gt;=C2=A0 conf/machine/orangepi-5-plus.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 12 ++++++++++++<br>
&gt;=C2=A0 recipes-bsp/rkbin/<a href=3D"http://rockchip-rkbin_git.bb" rel=
=3D"noreferrer" target=3D"_blank">rockchip-rkbin_git.bb</a>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 2 +-<br>
&gt;=C2=A0 recipes-kernel/linux/linux-yocto-dev.bbappend |=C2=A0 3 +++<br>
&gt;=C2=A0 4 files changed, 17 insertions(+), 1 deletion(-)<br>
&gt;=C2=A0 create mode 100644 conf/machine/orangepi-5-plus.conf<br>
<br>
Tweaked and applied to meta-rockchip, master branch.<br>
Thanks!<br>
</blockquote></div></div>

--000000000000f1202c060f6bc704--

