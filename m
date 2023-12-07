Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44854C4167B
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 11:50:16 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web11.81710.1701949810179971428
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 03:50:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=QYxMEJ5Z;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.44, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-54cfb03f1a8so1082667a12.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 03:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1701949808; x=1702554608; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4haqXj+COq0w0Pd4RFB8yHQVC+hTuYE6FROoLGITs94=;
        b=QYxMEJ5Z5I7bwkeAHFkO4OPkxV8WrHSRryM+zruIFwOrAWHrl7LqtdZoOd5qVJcKfh
         Et8PoaxWk/IN8TtDGFSAYZUsMgog6mY0KX5iY6x4DCU3bWibpoMLLX8JZOrgKq9wxEC/
         5jIaLMKnx3PSRrtyi8RcC3F0oar5wD2XRAA9Ik614VEXGWkS3YVXsHDAC9fGPpfhAQu+
         TYw1VPBByNQr3tGYbBqi8w3Qu8t+aUvanYoI7ZYQ0Y8NtsuXNpdh0ueZEn4D32ZnOFUQ
         VlNV2x1rMWje9mT7uP/XG5KvNWnAAdG1ZchDgvi5b7LTuFi7dh+6gqRkdeQU4l7H4UOs
         icPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701949808; x=1702554608;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4haqXj+COq0w0Pd4RFB8yHQVC+hTuYE6FROoLGITs94=;
        b=YM8BHHgjLVYMaDIqRpySzidOBzrn/e7dxgQ+A8hzrW9RHPhlk9LB9MzJExFm5TBvpY
         J3xzTusxwUKnWwEM12emTT+wVNPGRyMC9okQJoD7aNu6TQfsZztLbOtx81t2VDK7qFgR
         OJ6seYxZ1Npe7WFEsy/9EAMQrUZX2mtoMz8VZf1K2mO3b6QXEpNsvv5K1MUJylq3bJhn
         EBb+dyzWBVKaotQLEKf7xMlPAsKWMIpmZRjM4+NauUJKGyKi5uoXZIRWMczuttyzvWK6
         gkJCDBT+iphmGf8yCJvQkQxCmgEGhP3WMCwgr/tRzhHZUDcLSQgm/Id3QxI8VVA0x/gE
         5snQ==
X-Gm-Message-State: AOJu0YxaAN1utSpRodAmwUVSQ2r+50FxpmThkigm2stjQr78PHHT7D/3
	QLLoXtceFVhC4wRBTo/mSOWtyDh4EP69xaiYMtSC/A==
X-Google-Smtp-Source: AGHT+IFTQXeXlSzFAhBE2Drduy71xBRaGVM8ILXTHX60IjHrbwEh10PC9vTwdyd1OVeo7hbExv4givKp1PZh8+1BvHk=
X-Received: by 2002:a17:907:30d0:b0:a19:562d:5a20 with SMTP id
 vl16-20020a17090730d000b00a19562d5a20mr1311959ejb.28.1701949808086; Thu, 07
 Dec 2023 03:50:08 -0800 (PST)
MIME-Version: 1.0
References: <25Sg.1701899393685537223.7B9d@lists.yoctoproject.org>
In-Reply-To: <25Sg.1701899393685537223.7B9d@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 7 Dec 2023 12:49:42 +0100
Message-ID: <CAEt6NwrSzKxACap-sXnj=Bp8x6fWUBN7zikd_3jfYAUXkv+OzQ@mail.gmail.com>
Subject: Re: [yocto] How to handle user network configuration on a OTA environment
To: Renato Mendes <renato.mendes.pes@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bca0eb060bea11e1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 11:50:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61826

--000000000000bca0eb060bea11e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Renato,

I would suggest to start with the tutorial we have exactly for this usecase
here:
https://hub.mender.io/t/how-to-configure-networking-using-systemd-in-yocto-=
project/1097.
Once you have it replicated and working, add and modify the bits and pieces
that are specific to your requirements.

Greetz,
Josef

On Wed, Dec 6, 2023 at 10:49=E2=80=AFPM Renato Mendes <renato.mendes.pes@gm=
ail.com>
wrote:

> Using a Raspberry Pi Zero W, I have build an image with the following
> layers:
>
> # POKY_BBLAYERS_CONF_VERSION is increased each time
> build/conf/bblayers.conf
> # changes incompatibly
> POKY_BBLAYERS_CONF_VERSION =3D "2"
>
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>
> BBLAYERS ?=3D " \
> /home/release_1/src/poky/meta \
> /home/release_1/src/poky/meta-poky \
> /home/release_1/src/poky/meta-yocto-bsp \
> /home/release_1/src/meta-openembedded/meta-oe \
> /home/release_1/src/meta-openembedded/meta-python \
> /home/release_1/src/meta-openembedded/meta-multimedia \
> /home/release_1/src/meta-openembedded/meta-networking \
> /home/release_1/src/meta-raspberrypi \
> /home/release_1/src/meta-mender/meta-mender-core \
> /home/release_1/src/meta-mender/meta-mender-raspberrypi \
> "
>
> I'm using Mender for OTA.
>
> The image is fine and runs Yocto Distro at my Raspi.
>
> As this is my first project using OTA, I'm now about to setup networking.
> I've build a custom captive portal using Nodejs what will allow user to
> choose the WiFi network.
>
> Here is the logic I need:
> a) If there is network configuration stored (in a file, ie), device goes
> to Access Point mode with fixed IP (ex: 192.168.0.1). Then the user will
> connect, choose WiFi network and save it to a file
>
> b) If there is WiFi configuration, will connect automatically
>
> c) If user reset the device (a physical push button), the WiFi
> configuration is erased and device goes back to (a) mode
>
> My questions are how to exactly handle the desired scenario. My doubts:
>
> a) How will the device knows on boot if there is a network configuration
> file to load
>
> b) How can the device choose between AP ou WiFi mode based on the
> existance of the given file
>
> c) How will this file behave on a OTA update (Mender.io says, must be
> stored at /media/ directory to be preserved on updates)
>
> Thanks for helping... I've read several different articles for some days
> and I'm very confused on where to start from...
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61819):
> https://lists.yoctoproject.org/g/yocto/message/61819
> Mute This Topic: https://lists.yoctoproject.org/mt/103022968/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000bca0eb060bea11e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Renato,<div><br></div><div>I would suggest to start wit=
h the tutorial we have exactly for this usecase here:=C2=A0<a href=3D"https=
://hub.mender.io/t/how-to-configure-networking-using-systemd-in-yocto-proje=
ct/1097">https://hub.mender.io/t/how-to-configure-networking-using-systemd-=
in-yocto-project/1097</a>. Once you have it replicated and working, add and=
 modify the bits and pieces that are specific to your requirements.</div><d=
iv><br></div><div>Greetz,</div><div>Josef</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 6, 2023 at 10:49=
=E2=80=AFPM Renato Mendes &lt;<a href=3D"mailto:renato.mendes.pes@gmail.com=
">renato.mendes.pes@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Using a Raspberry Pi Zero W, I have build an i=
mage with the following layers:<br><br>
<div style=3D"color:rgb(204,204,204);background-color:rgb(31,31,31);font-fa=
mily:Menlo,Monaco,&quot;Courier New&quot;,monospace;font-size:12px;line-hei=
ght:18px;white-space:pre-wrap">
<div><span style=3D"color:rgb(106,153,85)"># POKY_BBLAYERS_CONF_VERSION is =
increased each time build/conf/bblayers.conf</span></div>
<div><span style=3D"color:rgb(106,153,85)"># changes incompatibly</span></d=
iv>
<div>POKY_BBLAYERS_CONF_VERSION =3D <span style=3D"color:rgb(206,145,120)">=
&quot;2&quot;</span></div>
<br>
<div>BBPATH =3D <span style=3D"color:rgb(206,145,120)">&quot;${TOPDIR}&quot=
;</span></div>
<div>BBFILES ?=3D <span style=3D"color:rgb(206,145,120)">&quot;&quot;</span=
></div>
<br>
<div>BBLAYERS ?=3D <span style=3D"color:rgb(206,145,120)">&quot; \</span></=
div>
<div><span style=3D"color:rgb(206,145,120)"> /home/release_1/src/poky/meta =
\</span></div>
<div><span style=3D"color:rgb(206,145,120)"> /home/release_1/src/poky/meta-=
poky \</span></div>
<div><span style=3D"color:rgb(206,145,120)"> /home/release_1/src/poky/meta-=
yocto-bsp \</span></div>
<div><span style=3D"color:rgb(206,145,120)"> /home/release_1/src/meta-opene=
mbedded/meta-oe \</span></div>
<div><span style=3D"color:rgb(206,145,120)"> /home/release_1/src/meta-opene=
mbedded/meta-python \</span></div>
<div><span style=3D"color:rgb(206,145,120)"> /home/release_1/src/meta-opene=
mbedded/meta-multimedia \</span></div>
<div><span style=3D"color:rgb(206,145,120)"> /home/release_1/src/meta-opene=
mbedded/meta-networking \</span></div>
<div><span style=3D"color:rgb(206,145,120)"> /home/release_1/src/meta-raspb=
errypi \</span></div>
<div><span style=3D"color:rgb(206,145,120)"> /home/release_1/src/meta-mende=
r/meta-mender-core \</span></div>
<div><span style=3D"color:rgb(206,145,120)"> /home/release_1/src/meta-mende=
r/meta-mender-raspberrypi \</span></div>
<div><span style=3D"color:rgb(206,145,120)"> &quot;</span></div>
</div>
<br>I&#39;m using Mender for OTA.<br><br>The image is fine and runs Yocto D=
istro at my Raspi.<br><br>As this is my first project using OTA, I&#39;m no=
w about to setup networking. I&#39;ve build a custom captive portal using N=
odejs what will allow user to choose the WiFi network.<br><br>Here is the l=
ogic I need:<br>a) If there is network configuration stored (in a file, ie)=
, device goes to Access Point mode with fixed IP (ex: 192.168.0.1). Then th=
e user will connect, choose WiFi network and save it to a file<br><br>b) If=
 there is WiFi configuration, will connect automatically<br><br>c) If user =
reset the device (a physical push button), the WiFi configuration is erased=
 and device goes back to (a) mode<br><br>My questions are how to exactly ha=
ndle the desired scenario. My doubts:<br><br>a) How will the device knows o=
n boot if there is a network configuration file to load<br><br>b) How can t=
he device choose between AP ou WiFi mode based on the existance of the give=
n file=C2=A0<br><br>c) How will this file behave on a OTA update (Mender.io=
 says, must be stored at /media/ directory to be preserved on updates)<br><=
br>Thanks for helping... I&#39;ve read several different articles for some =
days and I&#39;m very confused on where to start from...<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#61819): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61819" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61819</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103022968/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103022968/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000bca0eb060bea11e1--

