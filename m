Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B045D5E364
	for <webhook@archiver.kernel.org>; Sat,  9 Nov 2024 09:51:15 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web10.13963.1731145874327923683
 for <yocto@lists.yoctoproject.org>;
 Sat, 09 Nov 2024 01:51:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z8v1hXOp;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-27d0e994ae3so1439761fac.3
        for <yocto@lists.yoctoproject.org>; Sat, 09 Nov 2024 01:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731145873; x=1731750673; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2GN6fPofsj+JFhpJFhfIUXyWaxZ1/UbEFBS8dxlXZD0=;
        b=Z8v1hXOpcKVKTxE7XPatKZwNMiWkNFv1Ndb8wnl8uhqosZWTSLumuLyr3w9MFaRZRa
         O5uF0vJysFCO0UEX+TnLoGgJGNOmYLwjRDKCsVVxYoRCfDWUtE7mKHsws3w2RuTU/s+n
         DxBJ61QDjMq2jZipJp5hLpnwNa5471Q/pItStLtO5/tn4Z4Br21/P4PSjsCzNljE+zMu
         gn/e/u9iFHXZM+fo4xKzLcGdiXF8WE0iVkRGMMpN7QnEUwlGmmnYMiSR96lX8iEm34W1
         Kf0Sh33lj9SYo7EWquBtUr4E5MJX6/ETmeCpTx+jU/zV/jmPknGLlaJxv6jH70hmquoR
         UsQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731145873; x=1731750673;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2GN6fPofsj+JFhpJFhfIUXyWaxZ1/UbEFBS8dxlXZD0=;
        b=oD436gFWGPn/Nw1dYI/E4yRKFOE9Y7OqBNYiJJQPRQjieTktz5u2Kl1vmL5oqnvBa3
         zstqNG3jwt/G36DZr00HVy2X3Mg4xslLsqClYD0bzjEDD5GciqU3UCutW01AvHdSDxPr
         Q05bFPYb+eJgGxPqaJEQWZDDmth2p17XFNpRSrNkNfonBJaCs4otXxASO4pGlAM/xpH4
         ORUAG4piYw3fxToaDYSrPdHB29x2g0vvitIplvYRZf51OYlPBb6VRDFZndIPIpdNWJ4J
         nvVFS34Ik7st50IJtRUrVc3KkpjUJ1jJWOHUw4kYJOp8rhVltUr8YgnQIHOYttJY1TXl
         cSjg==
X-Gm-Message-State: AOJu0YwTvoV1aNnTdqs/LjxZM7db9PH7bogoq8gmuhRb7egKV/f9F87b
	KezxUgU1PPyovJeBs66wTe0XfGHE+ZYgKg8Uhh6zxEO/JNL6GHUoGQLTG8f+5iq8EY0HtdMnRmg
	wse91FtlmC12qRHwGVsjP6dhChayD0A==
X-Google-Smtp-Source: AGHT+IHcIa/WIAQGw0iikegxXPITanbT8ghWpSEWheRhiC+IU1YqZzqM/BchwksgsWJzn7VKEO0Kb8PndYwQ53hzODs=
X-Received: by 2002:a05:6870:f6a6:b0:286:f2cc:7a4a with SMTP id
 586e51a60fabf-295602ae685mr5050277fac.34.1731145873229; Sat, 09 Nov 2024
 01:51:13 -0800 (PST)
MIME-Version: 1.0
References: <3sut.1731143541593760546.dJgP@lists.yoctoproject.org>
In-Reply-To: <3sut.1731143541593760546.dJgP@lists.yoctoproject.org>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Sat, 9 Nov 2024 10:51:02 +0100
Message-ID: <CAB3asfg=oT24cb79jUTqZQ1k+8dkMh=GjFQ1g7swupsTS5iHSQ@mail.gmail.com>
Subject: Re: [yocto] swupdate applications, bootloader, how to update
 #swupdate #yocto #poky #stefanobabic
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, barath.seeni09_ee@mepcoeng.ac.in
Content-Type: multipart/alternative; boundary="000000000000d40e6c062677ce74"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Nov 2024 09:51:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64240

--000000000000d40e6c062677ce74
Content-Type: text/plain; charset="UTF-8"

Hi

Here are some examples https://github.com/sbabic/meta-swupdate-boards which
update all parts of the firmware.

Regards
Adrian

barath.seeni09_ee via lists.yoctoproject.org <barath.seeni09_ee=
mepcoeng.ac.in@lists.yoctoproject.org> schrieb am Sa., 9. Nov. 2024, 10:12:

> Hi,
>
> I can able to update rootfs partition of my device (microprocessor)
> through stefano babic's swupdate.
> I want to how to update applications, kernel , bootloader and other
> partitions through swupdate
>
> Usually, i will get rootfs.ext4.gz on deploy directory of yocto build, i
> will use that image to update my device. i want to update applications,
> kernel, bootloader also.
>
> Please help me where to find the image in Yocto build directory for the
> preparing .swu image for application, bootloader etc.,
>
> Please help me with some guidance,
>
> Thanks in advance
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64239):
> https://lists.yoctoproject.org/g/yocto/message/64239
> Mute This Topic: https://lists.yoctoproject.org/mt/109479109/4454582
> Mute #swupdate:https://lists.yoctoproject.org/g/yocto/mutehashtag/swupdate
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #poky:https://lists.yoctoproject.org/g/yocto/mutehashtag/poky
> Mute #stefanobabic:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/stefanobabic
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000d40e6c062677ce74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Here are some examples=C2=A0<a href=3D"https://github.com/sbabic/meta-swu=
pdate-boards">https://github.com/sbabic/meta-swupdate-boards</a> which upda=
te all parts of the firmware.</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Regards</div><div dir=3D"auto">Adrian<br><br><div class=3D"gmail_quot=
e" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">barath.seeni09_ee via=
 <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;b=
arath.seeni09_ee=3D<a href=3D"mailto:mepcoeng.ac.in@lists.yoctoproject.org"=
>mepcoeng.ac.in@lists.yoctoproject.org</a>&gt; schrieb am Sa., 9. Nov. 2024=
, 10:12:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Hi,<br><br>I can able=
 to update rootfs partition of my device (microprocessor) through stefano b=
abic&#39;s swupdate.=C2=A0<br>I want to how to update applications, kernel =
, bootloader and other partitions through swupdate</div>
<div>=C2=A0</div>
<div>Usually, i will get rootfs.ext4.gz on deploy directory of yocto build,=
 i will use that image to update my device. i want to update applications, =
kernel, bootloader also.</div>
<div><br>Please help me where to find the image in Yocto build directory fo=
r the preparing .swu image for application, bootloader etc.,<br><br>Please =
help me with some guidance,=C2=A0<br><br>Thanks in advance</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64239): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64239" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/64239</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109479109/445=
4582" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/109479109/4454582</a><br>
Mute #swupdate:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashta=
g/swupdate" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/mutehashtag/swupdate</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/yocto/mutehashtag/yocto</a><br>
Mute #poky:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/po=
ky" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/g/yocto/mutehashtag/poky</a><br>
Mute #stefanobabic:<a href=3D"https://lists.yoctoproject.org/g/yocto/muteha=
shtag/stefanobabic" rel=3D"noreferrer noreferrer" target=3D"_blank">https:/=
/lists.yoctoproject.org/g/yocto/mutehashtag/stefanobabic</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D=
"_blank" rel=3D"noreferrer">adrian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--000000000000d40e6c062677ce74--

