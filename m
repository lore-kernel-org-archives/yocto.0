Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A348BC433F5
	for <webhook@archiver.kernel.org>; Sun, 13 Feb 2022 19:59:34 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web11.25233.1644782373228012118
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 11:59:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=afNWB+wg;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.218.45, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f45.google.com with SMTP id qk11so13063308ejb.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 11:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=vRHHbhvxZRifTR+KWKE42ZngEwWFhRkC38A+ClxgD6c=;
        b=afNWB+wgSTGQl7ta+sDzmXmjLrEVd72+MMIGyJ4RL8KoWjgmTy5CTDr3//04scAC+W
         WjRfVhcgCAQMn0/SgO0trJz24IXegLqXgKsPcPRksYLtqj5AsF8Pz+Wb2ZxNkguVo9Rd
         NLVxxe1WdtfHL+Z0oI7/k3N+PLrV1vVu7vxAZm5yLOIjDR8wpMoLG1izkNUDDuVGz/Mk
         5petmp4LiLJTVw13on/Y1OxAiL6D72hIGKd1T2SIrgQw3pbmr7xWl/weU1C4lkYfnkrf
         cabrf9oEfUJGkjnY5GhfnZkuWP1vGhjg3SfUSWLboM8L0DGfG8ut88KRl/KF+ZhQ6xWd
         Ma3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=vRHHbhvxZRifTR+KWKE42ZngEwWFhRkC38A+ClxgD6c=;
        b=MSYGgSqGrJxAHdtsdWDw4YRs/C0w28gNZ0qknc5HO/bMohjFdTHhf6es8F2toyVvS6
         Kv7Rfr93EY+13Z3G6yXgGJsnA073LR49P0uU6KNkMoNSfT+MmtfqOhoVkFQ96yynK/fv
         CVb2JyjDSCxkSwYgPAe769IsdjvTXUzGZZmyoE4+Q6uv2bBdUIT2y7UmJt1YpZ1dhHMB
         9grD+Ehj8czB9bOzyqaF5djCHnBvmHWqqJ3/kdVEai7UtBWmu+aZofS7LLj1arzSVn8B
         4axsZWCg9EQIlkJYqDgYHzPUd5GRL/bP5yGrFt2tPZvHnFxwDzXxsee7T7tU9OUWoFTP
         Mofg==
X-Gm-Message-State: AOAM533X1O+BpoaGthe9WG3TwbGm0H2Gh0CaF+kq+nSiL5CROE7RlkWm
	7JwCUk4cj+cazw/GzyPTg0snzQ==
X-Google-Smtp-Source: 
 ABdhPJzUZX/bGeAVA602nmHtp0n9vWq6ipdpIv99VYNPSrgdoUD0U2eC2ar3KczyN3tJkXE4Vksylw==
X-Received: by 2002:a17:906:99c3:: with SMTP id
 s3mr9118781ejn.696.1644782371436;
        Sun, 13 Feb 2022 11:59:31 -0800 (PST)
Received: from smtpclient.apple (ipb21b4375.dynamic.kabel-deutschland.de.
 [178.27.67.117])
        by smtp.gmail.com with ESMTPSA id
 u4sm9068633ejn.216.2022.02.13.11.59.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Feb 2022 11:59:31 -0800 (PST)
From: Josef Holzmayr <jester@theyoctojester.info>
Message-Id: <226A0FE8-3FD9-43A2-A2FF-642DB4074FD8@theyoctojester.info>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D92CA60A-235A-4260-B513-25BFA0092B05"
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: [yocto] Building Yocto on M1 Mac
Date: Sun, 13 Feb 2022 20:59:28 +0100
In-Reply-To: 
 <CANNYZj-E_tfYX9L49+M1V20qARaOCeJtht_prbAq6W_MiyoAEQ@mail.gmail.com>
Cc: Abhijeet Tripathi <abhijeettripathi3003@gmail.com>,
 Anders Montonen <Anders.Montonen@iki.fi>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
 <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
 <CANNYZj-E_tfYX9L49+M1V20qARaOCeJtht_prbAq6W_MiyoAEQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Feb 2022 19:59:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56175


--Apple-Mail=_D92CA60A-235A-4260-B513-25BFA0092B05
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Howdy!

> On 13. Feb 2022, at 19:04, Alexander Kanavin <alex.kanavin@gmail.com> =
wrote:
>=20
> Even if you do manage to start a build, performance won't be great.
> Yocto, by design, builds the entire stack from source, so a lot of CPU
> cores is essential. Don't spend your time waiting, get an
> appropriately specced Linux workstation, or an account on a Linux
> server that your organization might have for the purpose.

While that is perfectly true from the pure technical facts, I have to =
add that building in Parallels on a M1 is ok-ish. You have to crank up =
the VM way beyond the defaults, to something like 6-8core, 16+X GB RAM, =
but then it=E2=80=99s bearable for the occasional user. When you can=E2=80=
=99t get your hands on a proper environment, its certainly an option.

Greetz

>=20
> Alex
>=20
> On Sun, 13 Feb 2022 at 15:56, Abhijeet Tripathi
> <abhijeettripathi3003@gmail.com =
<mailto:abhijeettripathi3003@gmail.com>> wrote:
>>=20
>>=20
>> On Sun, Feb 13, 2022 at 7:09 PM Anders Montonen =
<Anders.Montonen@iki.fi> wrote:
>>>=20
>>> Hi,
>>>=20
>>> On 13 Feb 2022, at 14:24, Abhijeet Tripathi =
<abhijeettripathi3003@gmail.com> wrote:
>>>=20
>>> Hello yocto-devs,
>>>=20
>>> I'm new to the yocto project and trying to set up a build =
environment on my M1 Mac which is arm64 architecture.
>>>=20
>>> I'm following the steps as mentioned in below link:
>>> https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions
>>>=20
>>> But it is always pulling up containers based on amd64 architecture. =
Are there any updated steps/link to set up a build environment specific =
to M1 Mac(arm64)?
>>>=20
>>>=20
>>> Looking at Docker Hub, none of the published Crops containers are =
built for ARM64. You can try building the containers yourself, making =
sure to pick base distros that are available for ARM64.
>>>=20
>>> Note that there are plenty of reports of Docker performing poorly on =
Macs, probably because of the file system implementation. You may be =
better off using a full VM via e.g. UTM.
>>=20
>>=20
>> I initially started with UTM but the problem with virtual machines is =
that we can only use half the resources of the machine.
>> This makes the builds slower, so I was looking at the container way.
>>=20
>> Can you point me to any documentation which I can use to build =
customized containers for yocto builds?
>>=20
>> Thanks,
>> Abhijeet
>>=20
>>>=20
>>>=20
>>> -a
>>>=20
>>>=20
>>>=20
>>=20
>>=20
>>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56174): =
https://lists.yoctoproject.org/g/yocto/message/56174 =
<https://lists.yoctoproject.org/g/yocto/message/56174>
> Mute This Topic: https://lists.yoctoproject.org/mt/89112092/4689568 =
<https://lists.yoctoproject.org/mt/89112092/4689568>
> Group Owner: yocto+owner@lists.yoctoproject.org =
<mailto:yocto+owner@lists.yoctoproject.org>
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
<https://lists.yoctoproject.org/g/yocto/unsub> =
[jester@theyoctojester.info <mailto:jester@theyoctojester.info>]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--Apple-Mail=_D92CA60A-235A-4260-B513-25BFA0092B05
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Howdy!<br class=3D""><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On 13. Feb 2022, at 19:04, =
Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
class=3D"">alex.kanavin@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
charset=3D"UTF-8" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Even if you do manage to start a build, performance won't be =
great.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Yocto, by =
design, builds the entire stack from source, so a lot of CPU</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">cores is essential. Don't spend =
your time waiting, get an</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">appropriately specced Linux workstation, or an account on a =
Linux</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">server that =
your organization might have for the purpose.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""></div></blockquote><div><br class=3D""></div><div>While that =
is perfectly true from the pure technical facts, I have to add that =
building in Parallels on a M1 is ok-ish. You have to crank up the VM way =
beyond the defaults, to something like 6-8core, 16+X GB RAM, but then =
it=E2=80=99s bearable for the occasional user. When you can=E2=80=99t =
get your hands on a proper environment, its certainly an =
option.</div><div><br class=3D""></div><div>Greetz</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Alex</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">On Sun, 13 Feb 2022 at 15:56, =
Abhijeet Tripathi</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">&lt;</span><a href=3D"mailto:abhijeettripathi3003@gmail.com" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">abhijeettripathi3003@gmail.com</a><span style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">&gt; wrote:</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br class=3D""><br class=3D"">On Sun, =
Feb 13, 2022 at 7:09 PM Anders Montonen &lt;<a =
href=3D"mailto:Anders.Montonen@iki.fi" =
class=3D"">Anders.Montonen@iki.fi</a>&gt; wrote:<br class=3D""><blockquote=
 type=3D"cite" class=3D""><br class=3D"">Hi,<br class=3D""><br =
class=3D"">On 13 Feb 2022, at 14:24, Abhijeet Tripathi &lt;<a =
href=3D"mailto:abhijeettripathi3003@gmail.com" =
class=3D"">abhijeettripathi3003@gmail.com</a>&gt; wrote:<br class=3D""><br=
 class=3D"">Hello yocto-devs,<br class=3D""><br class=3D"">I'm new to =
the yocto project and trying to set up a build environment on my M1 Mac =
which is arm64 architecture.<br class=3D""><br class=3D"">I'm following =
the steps as mentioned in below link:<br class=3D""><a =
href=3D"https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions=
" =
class=3D"">https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructi=
ons</a><br class=3D""><br class=3D"">But it is always pulling up =
containers based on amd64 architecture. Are there any updated steps/link =
to set up a build environment specific to M1 Mac(arm64)?<br class=3D""><br=
 class=3D""><br class=3D"">Looking at Docker Hub, none of the published =
Crops containers are built for ARM64. You can try building the =
containers yourself, making sure to pick base distros that are available =
for ARM64.<br class=3D""><br class=3D"">Note that there are plenty of =
reports of Docker performing poorly on Macs, probably because of the =
file system implementation. You may be better off using a full VM via =
e.g. UTM.<br class=3D""></blockquote><br class=3D""><br class=3D"">I =
initially started with UTM but the problem with virtual machines is that =
we can only use half the resources of the machine.<br class=3D"">This =
makes the builds slower, so I was looking at the container way.<br =
class=3D""><br class=3D"">Can you point me to any documentation which I =
can use to build customized containers for yocto builds?<br class=3D""><br=
 class=3D"">Thanks,<br class=3D"">Abhijeet<br class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D""><br =
class=3D"">-a<br class=3D""><br class=3D""><br class=3D""><br =
class=3D""></blockquote><br class=3D""><br class=3D""><br =
class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Links: You receive all messages =
sent to this group.</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">You automatically follow any topics you start or reply =
to.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">View/Reply =
Online (#56174):<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://lists.yoctoproject.org/g/yocto/message/56174" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/g/yocto/message/56174</a><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Mute This Topic:<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://lists.yoctoproject.org/mt/89112092/4689568" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/mt/89112092/4689568</a><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Group Owner:<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"mailto:yocto+owner@lists.yoctoproject.org" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">yocto+owner@lists.yoctoproject.org</a><br style=3D"caret-color:=
 rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Unsubscribe:<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/g/yocto/unsub</a><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>[</span><a =
href=3D"mailto:jester@theyoctojester.info" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">jester@theyoctojester.info</a><span style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">]</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" =
class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-</span></div></blo=
ckquote></div><br class=3D""></body></html>=

--Apple-Mail=_D92CA60A-235A-4260-B513-25BFA0092B05--

