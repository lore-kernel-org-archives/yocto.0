Return-Path: <bill@plunkware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE90C28CF5
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 17:33:33 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
 [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web09.15898.1643218412151835143
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 09:33:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@plunkware-com.20210112.gappssmtp.com header.s=20210112
 header.b=oRxR8+b4;
 spf=pass (domain: plunkware.com, ip: 209.85.219.181,
 mailfrom: bill@plunkware.com)
Received: by mail-yb1-f181.google.com with SMTP id l68so1132487ybl.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 09:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=plunkware-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Pp+kbjFHhbI3qKohFTPX/WScGk8Thirt4w6yeDLkxiU=;
        b=oRxR8+b4ftZSXzOVLlENTLirfomQC11+4jYuGnyKe5GQBvkKoJ2X8a8Ea2HxEr+94A
         xsrgHrC1Wq3LgbkgNZcrrRdKBX0LUdWUtX/fhXD05iYrlDuaBmZYN9gMrNygpY5YDNiA
         QIiObtZN3zy+2g2Vm7HMiQuIpWFdHi+QeDLSt2qwGRF5nYX6PwRYZmXp29iwifvKyuI3
         3zRTIY+J19Kyn9AFXCoWNDjlsNBqGb9oqTVWxWjAsFzsZ0iknN0I6ku1TXRoW6mJrSv7
         0Rzif4kxldATKdMv/mHrMv1u4SY7z1GxrAD2TnXm2h5kmRx8K764g/RGQOoa21Cyz3KX
         l5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Pp+kbjFHhbI3qKohFTPX/WScGk8Thirt4w6yeDLkxiU=;
        b=piEDv1cUhr+oat3Q/ZvflNh2Z5idG4xTiXWGSB1PqpFTecf1npvdNQEWyjna95c5xd
         oBjmQmcV1uQR4fIOtX5KIa5xraH81rKwuxFCcm8+jWDldeJ4Sb4FlwgHn7EIubJBXAqO
         fxafUnto3dCeHmp7YkHH31RMh/HDpNPkJ052cey5MCKyaOJ7k8eiDWkfb8J0NRHixnTs
         bIuSm8H9ou9qWJ42GYJCw73NF2MIY7TDsOjfp0ycxvJZ7LF0JNnOT6FvqGCBVJDVe+P1
         Y6DJ61nnQ8vkt2AYC32PbzYVrMwvIlR3HaI2pK5kp4AY061Y5y/vt9nxcUFcXcBK20W3
         1bVQ==
X-Gm-Message-State: AOAM5301+h+UHXp7LK9BUbFDtq3O81PquGSGVDgxe7E0mDeYYJv6khr1
	/RlalKyEg7uh5tVzErDwAtA91DgYhb5X76t6L72TJw==
X-Google-Smtp-Source: 
 ABdhPJwaNRoot2ultDxza9v70KCWaALmKgHMmVi6ftffG/ov48heYTmHFS9lylnY5/56ATLc7+HtxubEMUCgQHqLdtM=
X-Received: by 2002:a25:580b:: with SMTP id
 m11mr33482883ybb.599.1643218411134;
 Wed, 26 Jan 2022 09:33:31 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAD_Sx13pi-4HoXvwJSbL851xC_W-Zoyh65qmz4u8+qTwBsSoSQ@mail.gmail.com>
 <CANNYZj-c3Xq9vLsQRrJqjNPJ0Z899a494PmgsN+fx5=cgruE0g@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-c3Xq9vLsQRrJqjNPJ0Z899a494PmgsN+fx5=cgruE0g@mail.gmail.com>
From: Bill Plunkett <bill@plunkware.com>
Date: Wed, 26 Jan 2022 10:33:18 -0700
Message-ID: 
 <CALLsHzjBEaqQNYMA8ebebew88o6yaGCG+SmbLh7m=U479X6B3Q@mail.gmail.com>
Subject: Re: [yocto] build yocto 2.6 on Ubuntu 20.04
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Jacob Avraham <jacob.avraham@auto-talks.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000af33b605d67f99eb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 17:33:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55984

--000000000000af33b605d67f99eb
Content-Type: text/plain; charset="UTF-8"

It's been a while, but I was able to build yocto sumo (2.5) using
https://github.com/crops/poky-container

On Wed, Jan 26, 2022 at 9:51 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> I think the best way out for you is to set up a container with a supported
> older distribution. Usually you need an older gcc version from the host
> machine, so the container will have that.
>
> Alex
>
> On Wed, 26 Jan 2022 at 17:43, Jacob Avraham <jacob.avraham@auto-talks.com>
> wrote:
>
>> Hi,
>> Has anyone tried to build yocto 2.6 on Ubuntu 20.04?
>> I know it's not supported, but it's a major task for me to upgrade to
>> yocto 3.x.
>> I tried it myself and it fails on building qemu-native.
>> I wonder if anyone worked around this.
>>
>> Thanks,
>> Jacob
>>
>>
>>
>>
>>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55981):
> https://lists.yoctoproject.org/g/yocto/message/55981
> Mute This Topic: https://lists.yoctoproject.org/mt/88700838/5407716
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bill@plunkware.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000af33b605d67f99eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s been a while, but I was able to build yocto sumo =
(2.5) using=C2=A0<a href=3D"https://github.com/crops/poky-container">https:=
//github.com/crops/poky-container</a></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 26, 2022 at 9:51 AM Alexan=
der Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>I think the best way out for you is to set up a =
container with a supported older distribution. Usually you need an older gc=
c version from the host machine, so the container will have that.</div><div=
><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, 26 Jan 2022 at 17:43, Jacob Avraham &=
lt;<a href=3D"mailto:jacob.avraham@auto-talks.com" target=3D"_blank">jacob.=
avraham@auto-talks.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Hi,<div>Has anyone tried to build yo=
cto 2.6 on Ubuntu 20.04?</div><div>I know it&#39;s not supported, but it&#3=
9;s a major task for me to upgrade=C2=A0to yocto 3.x.</div><div>I tried=C2=
=A0it myself and it fails on building qemu-native.</div><div>I wonder if an=
yone worked around this.</div><div><br></div><div>Thanks,</div><div>Jacob<b=
r clear=3D"all"><div><br></div><div dir=3D"ltr"><div dir=3D"ltr"><p style=
=3D"font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:12.=
8px"><span style=3D"color:rgb(17,85,204);font-size:10pt"></span></p></div><=
/div></div></div>
<br>
<br>
<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55981): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55981" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55981</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88700838/5407=
716" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88700838/5407716</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bill@plunkware.com" target=3D"_blank">bill@plunk=
ware.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000af33b605d67f99eb--

