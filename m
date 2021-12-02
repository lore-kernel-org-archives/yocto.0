Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1362AC433EF
	for <webhook@archiver.kernel.org>; Thu,  2 Dec 2021 16:43:26 +0000 (UTC)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
 [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web09.10814.1638463404996956335
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Dec 2021 08:43:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cZ45RNR0;
 spf=pass (domain: gmail.com, ip: 209.85.222.43,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id w23so207171uao.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 02 Dec 2021 08:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OPcnyfzrtzYdq9R4oofjJeXrQuZrwH55aOoJyQH8N3g=;
        b=cZ45RNR0r6ukn+/5Xsa37NxS4VU/nOddz1p7+vMVqfjSFOlSkIMJS6Fu4CU4YQ5zVr
         Bi9uxAbTa5guKov9N1KVnH621B2unVAilQxa5ncfzrr9fXmb45CQVMms3gH1RstY0zKp
         M19y7e12UReRSNeINLC1w9u9R9UYELWNzT1jUkOJV0Iu1CkkElsMUBEZhPbQWA+A7x4Q
         4LmUI/PMCjyTIKwF/ws9n58tF0sXnDs3ewUsUiWHSirCFJM0hl8gVn321TgDO4ngr9lu
         TilxN7ie82ETlLPLvrLq3EUltl6y27Cz95YOR5wqBJ6QUj+Wc4aujh80NF0hOlmKnTOc
         6Aeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OPcnyfzrtzYdq9R4oofjJeXrQuZrwH55aOoJyQH8N3g=;
        b=V8kdZxoTpGPUhC8khMw3aGWUaLuwquteQ8y8LcZidok0iaK+y6ucWQRnEHP5chJuH1
         I2yu4FkRXNGn2JIHeZQGKVIWpYB5/mVDAA/4oQ70x4Ag3T+BBefGoA4nTVW9T5U4Wb5q
         6LdAGxqyoWBQ8Yu28+6/fPncWFKXzrhG6jfp7wrL2uUBoSqCdT2arK8Cg+GEtkIBF/8e
         o7I3JQFCQ2JCrvB1B607QfJNtNdg8SAfLPbdekDF4Z9hU5as7e8bL9UHw7rmtm6Zgig3
         I/oqVkepNLXQpNg1aH3Upocv4LZZoy7xHF+CMGPHDRYLEJjHbf7swlTm8tKm/uCXTipr
         71XQ==
X-Gm-Message-State: AOAM533q0Q8YN0O7hM07YG0LZ/WFvV4LRlm3tbE0mnQdsAD9o1Wv4ip/
	ePEVO/zaEJFqkpKQ6ZMYxdvGOsTl58JK0Bqgn28=
X-Google-Smtp-Source: 
 ABdhPJzoalOb/+h6ZD63yOhn3LBtMgYl1REpGZX5cLWRyQqf1Q+f1IFG3tXwb3ZReTx/DHSwcVrHLU9sxhqKUiYh0vM=
X-Received: by 2002:a05:6102:c4e:: with SMTP id
 y14mr16996545vss.61.1638463403960;
 Thu, 02 Dec 2021 08:43:23 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAEj=YVLNh5Msw-LOn+zW_dW5cSRbQSu6j+iQW5vrXMpCMoXdww@mail.gmail.com>
In-Reply-To: 
 <CAEj=YVLNh5Msw-LOn+zW_dW5cSRbQSu6j+iQW5vrXMpCMoXdww@mail.gmail.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Thu, 2 Dec 2021 08:43:13 -0800
Message-ID: 
 <CABKMkP+CTogev7z=XV2u76hGsqMhzRVDEwcniiQauTu4-dSKYg@mail.gmail.com>
Subject: Re: [yocto] raspberrypi0-2w
To: safouane maaloul <maaloulsafouane@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002bac9705d22c7dc5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Dec 2021 16:43:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55468

--0000000000002bac9705d22c7dc5
Content-Type: text/plain; charset="UTF-8"

https://github.com/agherzan/meta-raspberrypi/blob/master/conf/machine/raspberrypi0-2w-64.conf

On Thu, Dec 2, 2021 at 7:08 AM safouane maaloul <maaloulsafouane@gmail.com>
wrote:

> Hello, I  writed a conf file  to get the raspberrypi0-2 to work in 32 mode
> to have the camera packages raspivid. It works just fine. But the problem I
> don't have wlan0 interface. I tried everything but I didn't succeed in
> getting to work. Here is my conf file:
>
> #@TYPE: Machine
> #@NAME: RaspberryPi0 2 Wifi Development Board
> #@DESCRIPTION: Machine configuration for the RaspberryPi0 2 Wifi in 32
> bits mode
>
> include conf/machine/raspberrypi3.conf
>
> MACHINEOVERRIDES := "${@'${MACHINEOVERRIDES}'
> .replace(':${MACHINE}',':raspberrypi3:${MACHINE}')}"
>
> MACHINE_EXTRA_RRECOMMENDS += "\
>     linux-firmware-rpidistro-bcm43436 \
>     linux-firmware-rpidistro-bcm43436s \
>     bluez-firmware-rpidistro-bcm43430b0-hcd \
>     linux-firmware-rpidistro-bcm43430 \
> "
>
>
>
>
> Best regards,
>
> --
> *SAFOUANE MAALOUL*
>
> *maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55465):
> https://lists.yoctoproject.org/g/yocto/message/55465
> Mute This Topic: https://lists.yoctoproject.org/mt/87454331/2167248
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> joel.winarske@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000002bac9705d22c7dc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://github.com/agherzan/meta-raspberrypi/bl=
ob/master/conf/machine/raspberrypi0-2w-64.conf">https://github.com/agherzan=
/meta-raspberrypi/blob/master/conf/machine/raspberrypi0-2w-64.conf</a></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, Dec 2, 2021 at 7:08 AM safouane maaloul &lt;<a href=3D"mailto:maaloulsaf=
ouane@gmail.com">maaloulsafouane@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-l=
eft:1ex"><div dir=3D"ltr">Hello, I=C2=A0 writed a conf file=C2=A0 to get th=
e raspberrypi0-2=C2=A0to work in 32 mode to have the camera packages raspiv=
id. It works just fine. But the problem I don&#39;t have wlan0 interface. I=
 tried everything but I didn&#39;t succeed in getting to work. Here is my c=
onf file:<div><br><div><div style=3D"color:rgb(212,212,212);background-colo=
r:rgb(30,30,30);font-family:Consolas,&quot;Courier New&quot;,monospace;font=
-size:14px;line-height:19px;white-space:pre-wrap"><div><span style=3D"color=
:rgb(106,153,85)">#@TYPE: Machine</span></div><div><span style=3D"color:rgb=
(106,153,85)">#@NAME: RaspberryPi0 2 Wifi Development Board</span></div><di=
v><span style=3D"color:rgb(106,153,85)">#@DESCRIPTION: Machine configuratio=
n for the RaspberryPi0 2 Wifi in 32 bits mode</span></div><br><div><span st=
yle=3D"color:rgb(197,134,192)">include</span> conf/machine/raspberrypi3.con=
f</div><br><div><span style=3D"color:rgb(156,220,254)">MACHINEOVERRIDES</sp=
an> :=3D <span style=3D"color:rgb(206,145,120)">&quot;${@&#39;</span><span =
style=3D"color:rgb(86,156,214)">${MACHINEOVERRIDES}</span><span style=3D"co=
lor:rgb(206,145,120)">&#39;</span></div><div><span style=3D"color:rgb(206,1=
45,120)">.replace(&#39;:</span><span style=3D"color:rgb(86,156,214)">${MACH=
INE}</span><span style=3D"color:rgb(206,145,120)">&#39;,&#39;:raspberrypi3:=
</span><span style=3D"color:rgb(86,156,214)">${MACHINE}</span><span style=
=3D"color:rgb(206,145,120)">&#39;)}&quot;</span></div><br><div><span style=
=3D"color:rgb(156,220,254)">MACHINE_EXTRA_RRECOMMENDS</span> +=3D <span sty=
le=3D"color:rgb(206,145,120)">&quot;\</span></div><div><span style=3D"color=
:rgb(206,145,120)">=C2=A0 =C2=A0 linux-firmware-rpidistro-bcm43436 \</span>=
</div><div><span style=3D"color:rgb(206,145,120)">=C2=A0 =C2=A0 linux-firmw=
are-rpidistro-bcm43436s \</span></div><div><span style=3D"color:rgb(206,145=
,120)">=C2=A0 =C2=A0 bluez-firmware-rpidistro-bcm43430b0-hcd \</span></div>=
<div><span style=3D"color:rgb(206,145,120)">=C2=A0 =C2=A0 linux-firmware-rp=
idistro-bcm43430 \</span></div><div><span style=3D"color:rgb(206,145,120)">=
&quot;</span></div><br><br></div><div><br></div><div><br></div><div>Best re=
gards,</div><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><font c=
olor=3D"#000000"><span><b>SAFOUANE MAALOUL</b></span></font><div><span><b><=
u style=3D"background-color:rgb(255,255,255)"><font color=3D"#0b5394"><a hr=
ef=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maaloulsafouane@g=
mail.com</a></font></u><span style=3D"color:rgb(0,0,0);background-color:rgb=
(255,255,255)"><br></span></b></span><div><span style=3D"background-color:r=
gb(255,255,255)"><font color=3D"#000000"><b><br></b></font></span></div></d=
iv></div></div></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55465): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55465" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55465</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87454331/2167=
248" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87454331/2167248</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_blank">joel.=
winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000002bac9705d22c7dc5--

