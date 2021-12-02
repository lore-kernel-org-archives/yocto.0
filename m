Return-Path: <maaloulsafouane@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3291C433EF
	for <webhook@archiver.kernel.org>; Thu,  2 Dec 2021 15:08:54 +0000 (UTC)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com
 [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web08.9184.1638457733394609425
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Dec 2021 07:08:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mnBDHRes;
 spf=pass (domain: gmail.com, ip: 209.85.166.175,
 mailfrom: maaloulsafouane@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id s11so22015768ilv.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 02 Dec 2021 07:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=9S9kH29FV4Xc7lpq5hvvmz7owq35EDHa4vqGT9H0usg=;
        b=mnBDHRes4dYYKzl/GrJihAVJmlHWYJSKQ4s7/qNOpid3GY/lVkf9JpreidrYP5pp6a
         UHN0EfrTC1b5/4cXfXFXyJ9B8QbUc3p+SjspLh9lvBYdzf/QeTOigZuJ2T2emXAWZMQG
         iM4WmYC6UArKQJs/rpO0+uGPXi5ki+aOBxEGShlxZkDL+FzFOSZtYs1vsFPdPD58nWo1
         0WSpDlPDdbvooG87haDXuxhif3HSKSsXvNPs1K6k9rnr0SV9md6K3EoC1OMJLS02RkcB
         m8FdQKokZHBWNOPA72vaBHv2LXlqJXMs8YDuk0xFrsAdH1aW8fUf4Tw/KzDmNjebbS72
         Ov4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9S9kH29FV4Xc7lpq5hvvmz7owq35EDHa4vqGT9H0usg=;
        b=2j+3SyVtyUgEL5uZwPn+ENyn8Sv0qlEjmedlUzNUK4AQImBG0YtmuDEhrdHa4QcE9F
         9E/uvLpLoWV2ijA7mxco2QDVm7z5Xjj84fJJnGCRVFEGu0QHXDMpDMsChEvstHQTXpkC
         XRa+LNx2uFyvrsT0D/VZ59RV2p78/SO6vFDIksqtbcz0a5hbxIIiHP2Vu3rYwGavupRd
         Iz2NVjdqRNXPdolxw+0lKRyDpN2hEy8WtXzvNuQCVU6neQrPzQkmKNVSZe/KkTayzfFb
         vzpRzRMTHPRFriuwYpagZ/bAT/7+02VowyLv3tly5qO8nV8OonXc3r4w7UzdLwA+GTCh
         8tCw==
X-Gm-Message-State: AOAM531SoZlVKaPS1uL43Ns4Z/+azYl2ZY6VlSUYLu6GVkI5c57TJNX0
	VTli45yAKNp4cAw5QO20tKVtRW6K3nGtX10qLATtKap4saE=
X-Google-Smtp-Source: 
 ABdhPJxiIjgVQLRsTvtyKGvtPm82vrtCvICjUhuWddJR2ikfeNky2GyKYEV/ub/CpH+5kyKBcEXsl0HgdAMW8TaAOP8=
X-Received: by 2002:a05:6e02:1090:: with SMTP id
 r16mr16031565ilj.208.1638457732235;
 Thu, 02 Dec 2021 07:08:52 -0800 (PST)
MIME-Version: 1.0
From: safouane maaloul <maaloulsafouane@gmail.com>
Date: Thu, 2 Dec 2021 16:08:39 +0100
Message-ID: 
 <CAEj=YVLNh5Msw-LOn+zW_dW5cSRbQSu6j+iQW5vrXMpCMoXdww@mail.gmail.com>
Subject: raspberrypi0-2w
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001c07aa05d22b2bba"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Dec 2021 15:08:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55465

--0000000000001c07aa05d22b2bba
Content-Type: text/plain; charset="UTF-8"

Hello, I  writed a conf file  to get the raspberrypi0-2 to work in 32 mode
to have the camera packages raspivid. It works just fine. But the problem I
don't have wlan0 interface. I tried everything but I didn't succeed in
getting to work. Here is my conf file:

#@TYPE: Machine
#@NAME: RaspberryPi0 2 Wifi Development Board
#@DESCRIPTION: Machine configuration for the RaspberryPi0 2 Wifi in 32 bits
mode

include conf/machine/raspberrypi3.conf

MACHINEOVERRIDES := "${@'${MACHINEOVERRIDES}'
.replace(':${MACHINE}',':raspberrypi3:${MACHINE}')}"

MACHINE_EXTRA_RRECOMMENDS += "\
    linux-firmware-rpidistro-bcm43436 \
    linux-firmware-rpidistro-bcm43436s \
    bluez-firmware-rpidistro-bcm43430b0-hcd \
    linux-firmware-rpidistro-bcm43430 \
"




Best regards,

-- 
*SAFOUANE MAALOUL*

*maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*

--0000000000001c07aa05d22b2bba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, I=C2=A0 writed a conf file=C2=A0 to get the raspber=
rypi0-2=C2=A0to work in 32 mode to have the camera packages raspivid. It wo=
rks just fine. But the problem I don&#39;t have wlan0 interface. I tried ev=
erything but I didn&#39;t succeed in getting to work. Here is my conf file:=
<div><br><div><div style=3D"color:rgb(212,212,212);background-color:rgb(30,=
30,30);font-family:Consolas,&quot;Courier New&quot;,monospace;font-size:14p=
x;line-height:19px;white-space:pre"><div><span style=3D"color:rgb(106,153,8=
5)">#@TYPE: Machine</span></div><div><span style=3D"color:rgb(106,153,85)">=
#@NAME: RaspberryPi0 2 Wifi Development Board</span></div><div><span style=
=3D"color:rgb(106,153,85)">#@DESCRIPTION: Machine configuration for the Ras=
pberryPi0 2 Wifi in 32 bits mode</span></div><br><div><span style=3D"color:=
rgb(197,134,192)">include</span> conf/machine/raspberrypi3.conf</div><br><d=
iv><span style=3D"color:rgb(156,220,254)">MACHINEOVERRIDES</span> :=3D <spa=
n style=3D"color:rgb(206,145,120)">&quot;${@&#39;</span><span style=3D"colo=
r:rgb(86,156,214)">${MACHINEOVERRIDES}</span><span style=3D"color:rgb(206,1=
45,120)">&#39;</span></div><div><span style=3D"color:rgb(206,145,120)">.rep=
lace(&#39;:</span><span style=3D"color:rgb(86,156,214)">${MACHINE}</span><s=
pan style=3D"color:rgb(206,145,120)">&#39;,&#39;:raspberrypi3:</span><span =
style=3D"color:rgb(86,156,214)">${MACHINE}</span><span style=3D"color:rgb(2=
06,145,120)">&#39;)}&quot;</span></div><br><div><span style=3D"color:rgb(15=
6,220,254)">MACHINE_EXTRA_RRECOMMENDS</span> +=3D <span style=3D"color:rgb(=
206,145,120)">&quot;\</span></div><div><span style=3D"color:rgb(206,145,120=
)">=C2=A0 =C2=A0 linux-firmware-rpidistro-bcm43436 \</span></div><div><span=
 style=3D"color:rgb(206,145,120)">=C2=A0 =C2=A0 linux-firmware-rpidistro-bc=
m43436s \</span></div><div><span style=3D"color:rgb(206,145,120)">=C2=A0 =
=C2=A0 bluez-firmware-rpidistro-bcm43430b0-hcd \</span></div><div><span sty=
le=3D"color:rgb(206,145,120)">=C2=A0 =C2=A0 linux-firmware-rpidistro-bcm434=
30 \</span></div><div><span style=3D"color:rgb(206,145,120)">&quot;</span><=
/div><br><br></div><div><br></div><div><br></div><div>Best regards,</div><d=
iv><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartma=
il=3D"gmail_signature"><div dir=3D"ltr"><font color=3D"#000000"><span><b>SA=
FOUANE MAALOUL</b></span></font><div><span><b><u style=3D"background-color:=
rgb(255,255,255)"><font color=3D"#0b5394"><a href=3D"mailto:maaloulsafouane=
@gmail.com" target=3D"_blank">maaloulsafouane@gmail.com</a></font></u><span=
 style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"><br></span></=
b></span><div><span style=3D"background-color:rgb(255,255,255)"><font color=
=3D"#000000"><b><br></b></font></span></div></div></div></div></div></div><=
/div>

--0000000000001c07aa05d22b2bba--

