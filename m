Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B614C021A1
	for <webhook@archiver.kernel.org>; Wed, 12 Feb 2025 12:33:16 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.14626.1739363590149828015
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2025 04:33:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ar9dAF1Q;
 spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: marek.belisko@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-38dd93ace00so2111249f8f.1
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 04:33:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739363588; x=1739968388; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bhz87qPeyKTqe3W7aEwEMgsc22csUXUkjbyj/ZdXSIg=;
        b=ar9dAF1QWoLVsgm0Zsn882BxVJ+LakB6i0SVTNeZ+TD8ZIf+d7hD/nBUrxIKcx6CsB
         8TlDz1x34vcXywlMjYKf8LXixqpn+jNpwbQ7KInEzsjYOFoV8fB+CUj3E3Cd9hwPT7M5
         S3DXlH4rpS/u1iVF95EJLxDQD9CDgbkCnQ1d+4LQZMCyhsMfj30fgt2xJK79z4CsTyr5
         gUj8HH2XnxZsZX5LGhxpBn6SdTBFnYzioR1HOpeiYWEap4L2QKLBd1SJR1v3dMeHiDz8
         2jCrl8C7kUwocVkLtVpPqLp/dLE76W0u9CL2xjWk6b9ExcOV6Ax9rgMP2m7qUImfTVAf
         890Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739363588; x=1739968388;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bhz87qPeyKTqe3W7aEwEMgsc22csUXUkjbyj/ZdXSIg=;
        b=R3402uShMHOjj5WFtl3ckLRDAClN6JttvfjfP3fiYyBl4EicOe7uQ8C2ucEptsV+JF
         79bKJrU/OLkIiOOE9BtA0XIB6g3kGwH20W1XLaeMUWeE+kDyITGIUfLQMQxqZGEPZmin
         gMu9PU6TXSlVtN2DAukkyaVTb+vtaZAo0hQbe2fF+2TXcCTMWaDl22HLjcEGl7WcJayT
         /EPB9aVJFbenxWzSRaoEudll09gWxCNCZhzuvsr/zi/XHaDarXYzVxBwwhkHen+pZvzX
         wQHmEByUK9jtrbA80dWqWVaKxefsPlT28yziGpgMet8OuklbZNmAaxXnC93nJmT7GKNM
         JjIg==
X-Gm-Message-State: AOJu0YyZ7/5o4mENo4mRwYKUE27eodWwKXW21VdtKu3qSdaAkc3frC58
	rU/wLe2aMO83Kyfla66uVvuoIFrkImx77wb9UkOSrQyQyBSLxoNcF7ogz+AdU7SPuil+uklXFHj
	Oibba9pabgcZddh181pb9NOQ4w0gtjpcgVtE=
X-Gm-Gg: ASbGncvrkNi7QSJBx+4Ud4Id7+8whvxBmRSl21s51XGNeJLT6hp2jq2bsvG2/MGCGMm
	1V4QX9pNhVkTazeMmPKU8udq+hGWuJif+wvHgsKSoLhPvcdUrzthwwVydigpjfiCL4Qc5On4z
X-Google-Smtp-Source: AGHT+IGq7ZTts3RUTlwW2GRhiKiJDt8IBALqB0C+VV8RJAhG034uGceKxB+q+eob2v/Mc7i/98RLmrO1rwaYS++zxr0=
X-Received: by 2002:a5d:5989:0:b0:38d:e15e:17e9 with SMTP id
 ffacd0b85a97d-38dea2d5fefmr2863345f8f.35.1739363587993; Wed, 12 Feb 2025
 04:33:07 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv37oMLcEqExL57bReJcF_h56=fv9_8RFrvNONVM=gX416A@mail.gmail.com>
 <05bd87e8-d7ac-4764-a252-b6efedeb0ae6@cherry.de> <181D9A3A290C6D2C.30382@lists.yoctoproject.org>
In-Reply-To: <181D9A3A290C6D2C.30382@lists.yoctoproject.org>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 12 Feb 2025 13:32:56 +0100
X-Gm-Features: AWEUYZkKtRFV8ntSUth2kFfSzY_XH09CrmfeVvruMXp4ZFEAoRcyRf0EA7_hE54
Message-ID: <CAAfyv34Y8KiXFKpJSKm4mkq3UsqVgCMk8dQr3UJ1fKQEj9ZXYg@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] rk3328 loader for emmc flashing
To: yocto@lists.yoctoproject.org, marek.belisko@gmail.com
Cc: Quentin Schulz <quentin.schulz@cherry.de>
Content-Type: multipart/alternative; boundary="000000000000cc3939062df124d7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 12:33:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64783

--000000000000cc3939062df124d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
On Fri, Jan 24, 2025 at 11:30=E2=80=AFAM Marek Belisko via lists.yoctoproje=
ct.org
<marek.belisko=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi Quentin,
>
> On Fri, Jan 24, 2025 at 11:15=E2=80=AFAM Quentin Schulz <quentin.schulz@c=
herry.de>
> wrote:
>
>> Hi Marek,
>>
>> On 1/24/25 11:04 AM, Marek Belisko via lists.yoctoproject.org wrote:
>> > Hello,
>> >
>> > I'm trying to add support for rk3328-evb. I've added a machine and
>> built a
>> > minimal image which I would like to flash to emmc. For flashing I'm
>> usually
>> > using rkdeveloptool which download some binary blok (loader) and then
>> can
>> > flash wic image (at least I'm doing that for radxa boards). Does anybo=
dy
>> > have an idea where I can find such loader pls? I've tried this :
>> > https://xdaforums.com/attachments/for-rk3328-devices-rar.5168743/ but
>> none
>> > of them works (it prints: Opening loader failed, exiting download
>> boot!).
>> > I've tried to use MiniLoaderAll.bin from the vendor but this one just
>> > prints some garbage to the serial port and I cannot download wic after
>> that.
>> >
>>
>> I do not have any RK3328 board available, but the instructions so far
>> are the same for RK3399, PX30 and RK3588 (the boards I do have access to=
).
>>
>> https://github.com/rockchip-linux/rkbin
>> tools/boot_merger RKBOOT/RK3328MINIALL.ini
>>
>> This will generate an rk3328_loader_v1.21.250.bin file at the root of
>> rkbin directory. Use that as argument for `rkdeveloptool db` command.
>>
> Thanks a lot for that.
>
I made build from meta-rockchip with added rk3328 machine (basically copy
of some other 3328) and was able to flash it but TPL hangs in following way=
:
 U-Boot TPL 2022.01 (Jan 10 2022 - 18:46:34)
data training error
col error
data training error
DDR3, 333MHz
BW=3D16 Col=3D12 Bk=3D8 CS0 Row=3D16 CS=3D1 Die BW=3D8 Size=3D4096MB

It's some vendor custom board and they don't provide support but from what
I understand it's just close of evk.
Do you have some idea what should be checked before I dig into the u-boot?
Thanks

>
>> If your board is using a different baudrate or console mux/controller,
>> you can modify its configuration for the DDR bin blob (first stage
>> bootloader contained in rk3328_loader_*.bin) by editing
>> tools/ddrbin_param.txt and then calling tools/ddrbin_tool.py rk3328 on
>> bin/rk33/rk3328_ddr_*.bin. Since there are two, you need to know which
>> one to edit. Reading RKBOOT/RK3328MINIALL.ini, the 333MHz one is used.
>>
>> FYI, you can also replace rkdeveloptool with rockusb from Collabora,
>> available here:
>> https://github.com/collabora/rockchiprs/tree/main/rockusb/examples What
>> I like about it is that it handles bmap files for flashing on the eMMC :=
)
>>
> Oh perfect. Didn't know about that one. Maybe we can put that info to
> meta-rockchip wiki/README.
>
>>
>> Cheers,
>> Quentin
>>
>
> Thanks and BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64624):
> https://lists.yoctoproject.org/g/yocto/message/64624
> Mute This Topic: https://lists.yoctoproject.org/mt/110787954/900721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> marek.belisko@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
> BR,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000cc3939062df124d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div dir=3D"ltr">On Fri, Jan 24, 2025 at 11:=
30=E2=80=AFAM Marek Belisko via <a href=3D"http://lists.yoctoproject.org">l=
ists.yoctoproject.org</a> &lt;marek.belisko=3D<a href=3D"mailto:gmail.com@l=
ists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:</div=
><div class=3D"gmail_quote gmail_quote_container"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Quentin,</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Jan 24, 2025 at 11:15=E2=80=AFAM Quentin Schulz &lt;<a href=3D"mailto:qu=
entin.schulz@cherry.de" target=3D"_blank">quentin.schulz@cherry.de</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Marek,=
<br>
<br>
On 1/24/25 11:04 AM, Marek Belisko via <a href=3D"http://lists.yoctoproject=
.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote=
:<br>
&gt; Hello,<br>
&gt; <br>
&gt; I&#39;m trying to add support for rk3328-evb. I&#39;ve added a machine=
 and built a<br>
&gt; minimal image which I would like to flash to emmc. For flashing I&#39;=
m usually<br>
&gt; using rkdeveloptool which download some binary blok (loader) and then =
can<br>
&gt; flash wic image (at least I&#39;m doing that for radxa boards). Does a=
nybody<br>
&gt; have an idea where I can find such loader pls? I&#39;ve tried this :<b=
r>
&gt; <a href=3D"https://xdaforums.com/attachments/for-rk3328-devices-rar.51=
68743/" rel=3D"noreferrer" target=3D"_blank">https://xdaforums.com/attachme=
nts/for-rk3328-devices-rar.5168743/</a> but none<br>
&gt; of them works (it prints: Opening loader failed, exiting download boot=
!).<br>
&gt; I&#39;ve tried to use MiniLoaderAll.bin from the vendor but this one j=
ust<br>
&gt; prints some garbage to the serial port and I cannot download wic after=
 that.<br>
&gt; <br>
<br>
I do not have any RK3328 board available, but the instructions so far <br>
are the same for RK3399, PX30 and RK3588 (the boards I do have access to).<=
br>
<br>
<a href=3D"https://github.com/rockchip-linux/rkbin" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/rockchip-linux/rkbin</a><br>
tools/boot_merger RKBOOT/RK3328MINIALL.ini<br>
<br>
This will generate an rk3328_loader_v1.21.250.bin file at the root of <br>
rkbin directory. Use that as argument for `rkdeveloptool db` command.<br></=
blockquote><div>Thanks a lot for that.</div></div></div></blockquote><div>I=
 made build from meta-rockchip with added rk3328 machine (basically copy of=
 some other 3328) and was able to flash it but TPL hangs in following way:<=
br>=C2=A0U-Boot TPL 2022.01 (Jan 10 2022 - 18:46:34)</div>data training err=
or<br>col error<br>data training error<br>DDR3, 333MHz<br>BW=3D16 Col=3D12 =
Bk=3D8 CS0 Row=3D16 CS=3D1 Die BW=3D8 Size=3D4096MB</div><div class=3D"gmai=
l_quote gmail_quote_container"><br></div><div class=3D"gmail_quote gmail_qu=
ote_container">It&#39;s some vendor custom board and they don&#39;t provide=
 support but from what I understand it&#39;s just close of evk.=C2=A0</div>=
<div class=3D"gmail_quote gmail_quote_container">Do you have some idea what=
 should be checked before=C2=A0I dig into the u-boot? Thanks<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
If your board is using a different baudrate or console mux/controller, <br>
you can modify its configuration for the DDR bin blob (first stage <br>
bootloader contained in rk3328_loader_*.bin) by editing <br>
tools/ddrbin_param.txt and then calling tools/ddrbin_tool.py rk3328 on <br>
bin/rk33/rk3328_ddr_*.bin. Since there are two, you need to know which <br>
one to edit. Reading RKBOOT/RK3328MINIALL.ini, the 333MHz one is used.<br>
<br>
FYI, you can also replace rkdeveloptool with rockusb from Collabora, <br>
available here: <br>
<a href=3D"https://github.com/collabora/rockchiprs/tree/main/rockusb/exampl=
es" rel=3D"noreferrer" target=3D"_blank">https://github.com/collabora/rockc=
hiprs/tree/main/rockusb/examples</a> What <br>
I like about it is that it handles bmap files for flashing on the eMMC :)<b=
r></blockquote><div>Oh perfect. Didn&#39;t know about that one. Maybe we ca=
n put that info to meta-rockchip wiki/README.</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
<br>
Cheers,<br>
Quentin<br>
</blockquote></div><div><br clear=3D"all"></div><div>Thanks and BR,</div><d=
iv><br></div><div>marek</div><div><br></div><span class=3D"gmail_signature_=
prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">as simple =
and primitive as possible<br>----------------------------------------------=
---<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova=
 Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skype:=
 marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://open-nandra.c=
om" target=3D"_blank">http://open-nandra.com</a></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64624): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64624" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64624</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/110787954/900=
721" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/110787954/900721</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek=
.belisko@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div>BR,</div><div><br></div><div>marek</div><div><br></=
div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" c=
lass=3D"gmail_signature">as simple and primitive as possible<br>-----------=
--------------------------------------<br>Marek Belisko - OPEN-NANDRA<br>Fr=
eelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republic=
<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #opennandra<br>w=
eb: <a href=3D"http://open-nandra.com" target=3D"_blank">http://open-nandra=
.com</a></div></div>

--000000000000cc3939062df124d7--

