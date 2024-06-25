Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DDA5C2BBCA
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 08:55:04 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web10.166450.1719303000475342358
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jun 2024 01:10:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JAysqTpc;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7178727da84so2409319a12.0;
        Tue, 25 Jun 2024 01:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719303000; x=1719907800; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NFponw0hZZN0sUAjXiGIzUBLlKmeGHap/5z1PB/N+cs=;
        b=JAysqTpca0FQncXXk0rHVs+p5saVjqiHXt/vA+0/xUWM1mg23gQ1h8MIf5KGWhS6OU
         gvnAWsZ5G+e3f2Xaqu1BFMFtEMPix13ckaUg6GV4hjbj+DXENI3F4wdQmSR8WGnw450p
         1tGdy6dJ/pNQ9zT/4F8KDHOxjVYPlBNpcOXvw4EHZiDaGplRwz51ZGIRSksKSyVwd6qF
         a1iw+leZEcsVD+PETFgsRAi/KZMvcums1O4qUx68V7V7Xl4KiPrFdlWxW3fL2rMo4x9p
         jekGQLPrtww63EzfRiUR0As0Y8CpTH+K2WSD0ZWdTabsjY2y1cbScP7jYNvqMW0bSNS9
         2X0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719303000; x=1719907800;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NFponw0hZZN0sUAjXiGIzUBLlKmeGHap/5z1PB/N+cs=;
        b=qdQilnaXAoGZF41aORkT0MKxWe/RA+qZXRGPcqqi5beDaMNlHnzH4yD/lBw1VB7VR6
         UOMSfVM0m9HlHIr+A7Q3S9gNNjejpNn9nr8uXwmtHSregBXAjWzi74so6v0q0Djy43dI
         TpCafxcVjZq5I2Rev9HtfPp42OnyHuoTgS29XfN16C/+BGHNH8IYoNJBm8MPDUmsjEat
         HtkIt0ru4qqoHND1+QyVgnYH51vMYaAJCmAUF0QKggkm/rG4qHD3OycZG7IPYAWwSsyj
         02rWHglJ9hNCwvebzlxdoSUUG3qklHi1t75D7Z6Mf0hIN6z/kj19eL8w/6dcHWtWUhCB
         lNhA==
X-Forwarded-Encrypted: i=1; AJvYcCU1l6hB37MjZIwHtFrOOTqgPTqeo7x0gyojpX8WzO8ebcLb0Y5C/WvHGG+7OwNBzzU3/Cku8lLD7+wMiXhZkb1k6eooRU06K/hE8iKiXsTQgbVFaA==
X-Gm-Message-State: AOJu0YwzCkHVteAYsaLMsOt4UUDxFZPDQaQNfsulqP53NRrOROamdsC7
	k0TjmVZHkiXGPvadVI9WOPeoMi7Ui0TOeoZSh8nbhUjehcvOq6EU6QPCMlGFPRUnurDN6KKskpl
	RbvT06lBAyEElnTGSzJL6ljhs6i0rpyNp
X-Google-Smtp-Source: AGHT+IEolBbbYgR6/SBknqzEzBYNUyXfhRoSiEbCx928s8AKYuOAeDuGBLw4VgCdod86jyN24JgCvwRC7zwYtqqnHTY=
X-Received: by 2002:a17:90b:1b46:b0:2c3:7d8f:5eb1 with SMTP id
 98e67ed59e1d1-2c8504f699cmr5841011a91.19.1719302999305; Tue, 25 Jun 2024
 01:09:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb-XZMRnfJuC66B=FoOhOXkvwfpsFDES2FH+Vcp61vR=_w@mail.gmail.com>
 <17DBE622025D9B67.28936@lists.yoctoproject.org>
In-Reply-To: <17DBE622025D9B67.28936@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 25 Jun 2024 10:09:47 +0200
Message-ID: <CAGAf8LxiZOtRBWye6i0KMkZ-jBv9T8RM3Mu024naen-M15rAPg@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Status 11 June 2024 (WW24)
To: yocto@lists.yoctoproject.org, zoran.stojsavljevic@gmail.com
Cc: sjolley.yp.pm@gmail.com, Ross Burton <Ross.Burton@arm.com>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000088f5c2061bb26c31"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jun 2024 08:55:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63388

--00000000000088f5c2061bb26c31
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Correct me if I am wrong?

Build Configuration:
BB_VERSION           =3D "2.8.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "fedora-40"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "beaglebone"
DISTRO               =3D "poky"
=3D=3D=3D=3D=3D=3D=3D>>> DISTRO_VERSION       =3D "5.0.2" <<<=3D=3D=3D=3D=
=3D=3D=3D
TUNE_FEATURES        =3D "arm vfp cortexa8 neon callconvention-hard"
TARGET_FPU           =3D "hard"

bitbake -s | grep gcc
gcc                                                :13.3.0-r0

gcc-cross-arm                                      :13.3.0-r0

gcc-cross-canadian-arm                             :13.3.0-r0

gcc-crosssdk-x86_64-pokysdk-linux                  :13.3.0-r0

gcc-runtime                                        :13.3.0-r0

gcc-sanitizers                                     :13.3.0-r0

gcc-source-13.3.0                                  :13.3.0-r0

libgcc                                             :13.3.0-r0

libgcc-initial                                     :13.3.0-r0

nativesdk-gcc                                      :13.3.0-r0

nativesdk-gcc-runtime                              :13.3.0-r0

nativesdk-gcc-sanitizers                           :13.3.0-r0

nativesdk-libgcc                                   :13.3.0-r0


13.3.0-rc0 in poky-5.0.2???

What about 14.1???

I am all scrambled and lost... Or?

Thank you,
Zee
_______


On Mon, Jun 24, 2024 at 11:18=E2=80=AFAM Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:

> Ahhh... Now I see what is really going on under the hood! ;-)))
>
> >>> Upcoming dot releases:
> *>>> YP 5.0.2 Build Date 2024-06-24*
>
> I see dead people! :-)))
>
> Why this date? Because Fedora 40 JUST upgraded GCC 13.2 to GCC 14.1*!!!*
>
>
> *The missing link!*
>
> I expect Poky 5.0.2 to kick in within a half of the day!
>
> Zee
> *_______*
>
>
>
> On Tue, Jun 11, 2024 at 4:53=E2=80=AFPM Stephen Jolley via lists.yoctopro=
ject.org
> <sjolley.yp.pm=3Dgmail.com@lists.yoctoproject.org> wrote:
>
>> Current Dev Position: YP 5.1 M2
>>
>> Next Deadline: YP 5.1 M2 Build 8 July 2024
>>
>> Next Team Meetings:
>>
>>    -
>>
>>    Bug Triage meeting Thursday June 13th at 7:30 am PST (
>>    https://zoom.us/j/454367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09)
>>    -
>>
>>    Weekly Project Engineering Sync Tuesday June 11th at 8 am PST (
>>    https://zoom.us/j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09)
>>    <https://zoom.us/j/990892712>
>>    -
>>
>>    Twitch -  See https://www.twitch.tv/theyoctojester
>>
>>
>> Key Status/Updates:
>>
>>    -
>>
>>    YP 4.0.19 has been through QA and is due for release
>>    -
>>
>>    YP 5.1 M1 rc2 is in QA
>>    -
>>
>>    RFC patches for the CVE tooling changes have been posted, help in
>>    review is appreciated
>>    -
>>
>>    There are SPDX 3.0 patches ready for review on the mailing list
>>    -
>>
>>    There are patches proposing that missing patch Upstream-Status
>>    entries be a fatal QA error, this is likely to merge soon as there ha=
ve
>>    been no objections to it.
>>    -
>>
>>    We have a fix for the final Fedora 40 issue, thanks Victor.
>>    -
>>
>>    We appreciate everyone fixing layers to work with master after recent
>>    changes, the autobuilder health is looking greener, thanks!
>>    -
>>
>>    The copy_unihashes function was dropped from bitbake after the locked
>>    signature file improvements which simplifies further tooling work
>>    -
>>
>>    There is discussion on openembedded-architecture about the details
>>    around  configuration fragment tooling potentially being integrated i=
nto
>>    bitbake
>>    -
>>
>>    There is an open letter the project has created related to the
>>    CVE/NVD situation, more information is available here:
>>    https://lists.openembedded.org/g/openembedded-architecture/message/19=
90
>>
>> Please consider signing this to show support for those changes.
>>
>> Signatures from small businesses/consultancies are as welcome as those
>> from larger organizations as we want to demonstrate the breadth of the n=
eed
>> for these changes.
>>
>>    -
>>
>>    We continue to have trouble tracking down the rust reproducibility
>>    problem in rustdoc.
>>    -
>>
>>    Through post release upgrading our patch count reduced again and is
>>    now the lowest level since July 2008!
>>
>>
>> Ways to contribute:
>>
>>    -
>>
>>    As people are likely aware, the project has a number of components
>>    which are either unmaintained, or have people with little to no time =
trying
>>    to keep them alive. These components include: devtool, toaster, wic, =
oeqa,
>>    autobuilder, CROPs containers, pseudo and more. Many have open bugs. =
Help
>>    is welcome in trying to better look after these components!
>>    -
>>
>>    There are bugs identified as possible for newcomers to the project:
>>    https://wiki.yoctoproject.org/wiki/Newcomers
>>    -
>>
>>    There are bugs that are currently unassigned for YP 5.1. See:
>>    https://wiki.yoctoproject.org/wiki/Bug_Triage#Medium+_5.1_Unassigned_=
Enhancements/Bugs
>>    -
>>
>>    We=E2=80=99d welcome new maintainers for recipes in OE-Core. Please s=
ee the
>>    list at:
>>    http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/conf/distro/inclu=
de/maintainers.inc
>>    and discuss with the existing maintainer, or ask on the OE-Core maili=
ng
>>    list. We will likely move a chunk of these to =E2=80=9CUnassigned=E2=
=80=9D soon to help
>>    facilitate this.
>>    -
>>
>>    Help is very much welcome in trying to resolve our autobuilder
>>    intermittent issues. You can see the list of failures we=E2=80=99re c=
ontinuing to
>>    see by searching for the =E2=80=9CAB-INT=E2=80=9D tag in bugzilla:
>>    https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=3DAB-INT.
>>    -
>>
>>    Help us resolve CVE issues: CVE metrics
>>    <https://autobuilder.yocto.io/pub/non-release/patchmetrics/>
>>    -
>>
>>    We have a growing number of bugs in bugzilla, any help with them is
>>    appreciated.
>>    -
>>
>>    Regarding bugs, even if you can=E2=80=99t fix a bug, submitting a fai=
ling
>>    test case that can reproduce the issue significantly improves the cha=
nces
>>    it might get fixed.
>>
>>
>> Tracking Metrics:
>>
>>    -
>>
>>    WDD 2774 (last week 2772) (
>>    https://wiki.yoctoproject.org/charts/combo.html)
>>    -
>>
>>    OE-Core/Poky Patch Metrics
>>    -
>>
>>       Total patches found: 1072 (last week 1098)
>>       -
>>
>>       Patches in the Pending State: 205 (19%) [last week 205 (19%)]
>>       -
>>
>>    https://autobuilder.yocto.io/pub/non-release/patchmetrics/
>>
>>
>> YP 5.1 Milestone Dates:
>>
>>    -
>>
>>    YP 5.1 M1 is in QA
>>    -
>>
>>    YP 5.1 M1 Release date 2024-05-31
>>    -
>>
>>    YP 5.1 M2 Build date  2024-07-08
>>    -
>>
>>    YP 5.1 M2 Release date 2024-07-19
>>    -
>>
>>    YP 5.1 M3 Build date  2024-08-26
>>    -
>>
>>    YP 5.1 M3 Release date 2024-09-06
>>    -
>>
>>    YP 5.1 M4 Build date  2024-09-30
>>    -
>>
>>    YP 5.1 M4 Release date 2024-10-25
>>
>>
>> Upcoming dot releases:
>>
>>    -
>>
>>    YP 4.0.19 is in QA.
>>    -
>>
>>    YP 5.0.2 Build Date 2024-06-24
>>    -
>>
>>    YP 5.0.2 Release Date 2024-07-05
>>    -
>>
>>    YP 4.0.20 Build Date 2024-07-15
>>    -
>>
>>    YP 4.0.20 Release Date 2024-07-26
>>    -
>>
>>    YP 5.0.3 Build Date 2024-08-12
>>    -
>>
>>    YP 5.0.3 Release Date 2024-08-23
>>    -
>>
>>    YP 4.0.21 Build Date 2024-09-09
>>    -
>>
>>    YP 4.0.21 Release Date 2024-09-20
>>    -
>>
>>    YP 5.0.4 Build Date 2024-09-23
>>    -
>>
>>    YP 5.0.4 Release Date 2024-10-04
>>    -
>>
>>    YP 4.0.22 Build Date 2024-10-14
>>    -
>>
>>    YP 4.0.22 Release Date 2024-10-25
>>    -
>>
>>    YP 5.0.5 Build Date 2024-11-11
>>    -
>>
>>    YP 5.0.5 Release Date 2024-11-22
>>    -
>>
>>    YP 4.0.23 Build Date 2024-11-18
>>    -
>>
>>    YP 4.0.23 Release Date 2024-11-29
>>
>>
>> The Yocto Project=E2=80=99s technical governance is through its Technica=
l
>> Steering Committee, more information is available at:
>>
>> https://wiki.yoctoproject.org/wiki/TSC
>>
>> The Status reports are now stored on the wiki at:
>> https://wiki.yoctoproject.org/wiki/Weekly_Status
>>
>> [If anyone has suggestions for other information you=E2=80=99d like to s=
ee on
>> this weekly status update, let us know!]
>>
>> Thanks,
>>
>>
>>
>> *Stephen K. Jolley*
>>
>> *Yocto Project Program Manager*
>>
>> (    *Cell*:                (208) 244-4460
>>
>> * *Email*:                 *s
>> <stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.c=
om>*
>>
>>
>>
>>
>=20
>
>

--00000000000088f5c2061bb26c31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Correct me if I am wrong?</div><div><br></div><div>Bu=
ild Configuration:<br>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &qu=
ot;2.8.0&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;x86_64-linux&quot;<br>NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;fed=
ora-40&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm=
-poky-linux-gnueabi&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;beaglebone&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>=3D=3D=3D=3D=3D=3D=3D&gt;&gt;&=
gt; DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D &quot;5.0.2&quot; &lt;&lt;&lt;=
=3D=3D=3D=3D=3D=3D=3D<br>TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;arm vfp cortexa8 neon callconvention-hard&quot;<br>TARGET_FPU =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;</div><div><br></div><div>bitb=
ake -s | grep gcc<br>gcc =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:13.3.0-r0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0<br>gcc-cross-arm =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0:13.3.0-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>gcc-c=
ross-canadian-arm =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :13.3.0-r0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0<br>gcc-crosssdk-x86_64-pokysdk-linux =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:13.3.0-r0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0<br>gcc-runtime =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0:13.3.0-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>gcc-sanit=
izers =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :13.3.0-r0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>gcc-source-13.3.0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0:13.3.0-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>libgc=
c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 :13.3.0-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>libgcc-initial =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :13.3.0-r0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>nativesdk-gcc =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0:13.3.0-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>na=
tivesdk-gcc-runtime =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:13.3.0-r0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>nativesdk-gcc-sanitizers =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :13.3.0-=
r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>nativesdk-libgcc =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :13.3.0-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=
=C2=A0</div><div><br></div><div>13.3.0-rc0 in poky-5.0.2???</div><div><br><=
/div><div>What about 14.1???</div><div><br></div><div>I am all scrambled an=
d lost... Or?<br></div><div><br></div><div>Thank you,</div><div>Zee</div><d=
iv>_______<br></div><div><br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 24, 2024 at 11:18=E2=80=AFAM=
 Zoran via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org=
</a> &lt;zoran.stojsavljevic=3D<a href=3D"mailto:gmail.com@lists.yoctoproje=
ct.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Ahhh... Now I see =
what is really going on under the hood! ;-)))<br><br>&gt;&gt;&gt; Upcoming =
dot releases:<br><div><b><span style=3D"color:rgb(255,0,0)">&gt;&gt;&gt; YP=
 5.0.2 Build Date 2024-06-24</span></b></div><br><div>I see dead people! :-=
)))</div><div><br></div><div>Why this date? Because Fedora 40 JUST upgraded=
 GCC 13.2 to GCC 14.1<b>!!!</b></div><div><b><br></b></div><div><b><i><u>Th=
e missing link!</u><br></i></b></div><div><b><br></b></div><div>I expect Po=
ky 5.0.2 to kick in within a half of the day!<b><br></b></div><div><b><br><=
/b></div><div>Zee<b><br></b></div><div><b>_______</b></div><div><b><br></b>=
</div></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Tue, Jun 11, 2024 at 4:53=E2=80=AFPM Stephen Jolley via <a hre=
f=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproject.or=
g</a> &lt;<a href=3D"http://sjolley.yp.pm" target=3D"_blank">sjolley.yp.pm<=
/a>=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_blank"=
>gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><span id=3D"m_-8710109747=
690472334m_2270391077743118021gmail-docs-internal-guid-dda5e0df-7fff-de9c-7=
70a-46f5fc7d3f05"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-seri=
f;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline">Current Dev Position: YP 5.1 M2</span></p><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tr=
ansparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-v=
ariant-alternates:normal;vertical-align:baseline">Next Deadline: YP 5.1 M2 =
Build 8 July 2024</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:A=
rial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-=
numeric:normal;font-variant-east-asian:normal;font-variant-alternates:norma=
l;vertical-align:baseline">Next Team Meetings:</span></p><ul style=3D"margi=
n-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:disc;=
font-size:9.5pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-co=
lor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;=
font-variant-alternates:normal;vertical-align:baseline;white-space:pre-wrap=
"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
" role=3D"presentation"><span style=3D"font-size:11pt;background-color:tran=
sparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-var=
iant-alternates:normal;vertical-align:baseline">Bug Triage meeting Thursday=
 June 13th at 7:30 am PST (</span><a href=3D"https://zoom.us/j/454367603?pw=
d=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09" style=3D"text-decoration-line:none" t=
arget=3D"_blank"><span style=3D"font-size:11pt;background-color:transparent=
;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-al=
ternates:normal;text-decoration-line:underline;vertical-align:baseline">htt=
ps://zoom.us/j/454367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09</span></a><=
span style=3D"font-size:11pt;background-color:transparent;font-variant-nume=
ric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ve=
rtical-align:baseline">)</span></p></li><li dir=3D"ltr" style=3D"list-style=
-type:disc;font-size:9.5pt;font-family:Arial,sans-serif;color:rgb(0,0,0);ba=
ckground-color:transparent;font-variant-numeric:normal;font-variant-east-as=
ian:normal;font-variant-alternates:normal;vertical-align:baseline;white-spa=
ce:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin=
-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background=
-color:transparent;font-variant-numeric:normal;font-variant-east-asian:norm=
al;font-variant-alternates:normal;vertical-align:baseline">Weekly Project E=
ngineering Sync Tuesday June 11th at 8 am PST (</span><a href=3D"https://zo=
om.us/j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09" style=3D"text-dec=
oration-line:none" target=3D"_blank"><span style=3D"font-size:11pt;backgrou=
nd-color:transparent;font-variant-numeric:normal;font-variant-east-asian:no=
rmal;font-variant-alternates:normal;text-decoration-line:underline;vertical=
-align:baseline">https://zoom.us/j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRr=
cmJsUT09</span></a><a href=3D"https://zoom.us/j/990892712" style=3D"text-de=
coration-line:none" target=3D"_blank"><span style=3D"font-size:11pt;backgro=
und-color:transparent;font-variant-numeric:normal;font-variant-east-asian:n=
ormal;font-variant-alternates:normal;text-decoration-line:underline;vertica=
l-align:baseline">)</span></a></p></li><li dir=3D"ltr" style=3D"list-style-=
type:disc;font-size:9.5pt;font-family:Arial,sans-serif;color:rgb(0,0,0);bac=
kground-color:transparent;font-variant-numeric:normal;font-variant-east-asi=
an:normal;font-variant-alternates:normal;vertical-align:baseline;white-spac=
e:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-=
color:transparent;font-variant-numeric:normal;font-variant-east-asian:norma=
l;font-variant-alternates:normal;vertical-align:baseline">Twitch -=C2=A0 Se=
e </span><a href=3D"https://www.twitch.tv/theyoctojester" style=3D"text-dec=
oration-line:none" target=3D"_blank"><span style=3D"font-size:11pt;backgrou=
nd-color:transparent;font-variant-numeric:normal;font-variant-east-asian:no=
rmal;font-variant-alternates:normal;text-decoration-line:underline;vertical=
-align:baseline">https://www.twitch.tv/theyoctojester</span></a><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline">=C2=A0</span></p></li></ul><br><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;f=
ont-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alte=
rnates:normal;vertical-align:baseline">Key Status/Updates:</span></p><ul st=
yle=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-styl=
e-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(46,52,54)=
;background-color:transparent;font-variant-numeric:normal;font-variant-east=
-asian:normal;font-variant-alternates:normal;vertical-align:baseline;white-=
space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;font-va=
riant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates=
:normal;vertical-align:baseline">YP 4.0.19 has been through QA and is due f=
or release</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(46,52,54);background-col=
or:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;f=
ont-variant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"=
><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"=
 role=3D"presentation"><span style=3D"font-size:11pt;font-variant-numeric:n=
ormal;font-variant-east-asian:normal;font-variant-alternates:normal;vertica=
l-align:baseline">YP 5.1 M1 rc2 is in QA</span></p></li><li dir=3D"ltr" sty=
le=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;colo=
r:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-variant-alternates:normal;vertical-align:bas=
eline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin=
-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:=
11pt;background-color:transparent;font-variant-numeric:normal;font-variant-=
east-asian:normal;font-variant-alternates:normal;vertical-align:baseline">R=
FC patches for the CVE tooling changes have been posted, help in review is =
appreciated</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;fo=
nt-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color=
:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fon=
t-variant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" r=
ole=3D"presentation"><span style=3D"font-size:11pt;background-color:transpa=
rent;font-variant-numeric:normal;font-variant-east-asian:normal;font-varian=
t-alternates:normal;vertical-align:baseline">There are SPDX 3.0 patches rea=
dy for review on the mailing list</span></p></li><li dir=3D"ltr" style=3D"l=
ist-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0=
,0,0);background-color:transparent;font-variant-numeric:normal;font-variant=
-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline;w=
hite-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;ba=
ckground-color:transparent;font-variant-numeric:normal;font-variant-east-as=
ian:normal;font-variant-alternates:normal;vertical-align:baseline">There ar=
e patches proposing that missing patch Upstream-Status entries be a fatal Q=
A error, this is likely to merge soon as there have been no objections to i=
t.</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:1=
1pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpar=
ent;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant=
-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"pr=
esentation"><span style=3D"font-size:11pt;background-color:transparent;font=
-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alterna=
tes:normal;vertical-align:baseline">We have a fix for the final Fedora 40 i=
ssue, thanks Victor.</span></p></li><li dir=3D"ltr" style=3D"list-style-typ=
e:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgro=
und-color:transparent;font-variant-numeric:normal;font-variant-east-asian:n=
ormal;font-variant-alternates:normal;vertical-align:baseline;white-space:pr=
e-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;vertical-align:baseline">We appreciate everyon=
e fixing layers to work with master after recent changes, the autobuilder h=
ealth is looking greener, thanks!</span></p></li><li dir=3D"ltr" style=3D"l=
ist-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0=
,0,0);background-color:transparent;font-variant-numeric:normal;font-variant=
-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline;w=
hite-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;ba=
ckground-color:transparent;font-variant-numeric:normal;font-variant-east-as=
ian:normal;font-variant-alternates:normal;vertical-align:baseline">The copy=
_unihashes function was dropped from bitbake after the locked signature fil=
e improvements which simplifies further tooling work</span></p></li><li dir=
=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,san=
s-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:=
normal;font-variant-east-asian:normal;font-variant-alternates:normal;vertic=
al-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline">There is discussion on openembedded-architecture about the det=
ails around=C2=A0 configuration fragment tooling potentially being integrat=
ed into bitbake</span></p></li><li dir=3D"ltr" style=3D"list-style-type:dis=
c;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-c=
olor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal=
;font-variant-alternates:normal;vertical-align:baseline;white-space:pre-wra=
p"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0p=
t" role=3D"presentation"><span style=3D"font-size:11pt;background-color:tra=
nsparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-va=
riant-alternates:normal;vertical-align:baseline">There is an open letter th=
e project has created related to the CVE/NVD situation, more information is=
 available here: </span><a href=3D"https://lists.openembedded.org/g/openemb=
edded-architecture/message/1990" style=3D"text-decoration-line:none" target=
=3D"_blank"><span style=3D"font-size:11pt;background-color:transparent;font=
-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alterna=
tes:normal;text-decoration-line:underline;vertical-align:baseline">https://=
lists.openembedded.org/g/openembedded-architecture/message/1990</span></a><=
/p></li></ul><p dir=3D"ltr" style=3D"line-height:1.38;margin-left:36pt;marg=
in-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Ari=
al,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-nu=
meric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;=
vertical-align:baseline">Please consider signing this to show support for t=
hose changes.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-lef=
t:36pt;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font=
-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font=
-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alterna=
tes:normal;vertical-align:baseline">Signatures from small businesses/consul=
tancies are as welcome as those from larger organizations as we want to dem=
onstrate the breadth of the need for these changes.</span></p><ul style=3D"=
margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:=
disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgroun=
d-color:transparent;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-variant-alternates:normal;vertical-align:baseline;white-space:pre-=
wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom=
:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-color:=
transparent;font-variant-numeric:normal;font-variant-east-asian:normal;font=
-variant-alternates:normal;vertical-align:baseline">We continue to have tro=
uble tracking down the rust reproducibility problem in rustdoc.</span></p><=
/li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-famil=
y:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-varia=
nt-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:no=
rmal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><s=
pan style=3D"font-size:11pt;background-color:transparent;font-variant-numer=
ic:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ver=
tical-align:baseline">Through post release upgrading our patch count reduce=
d again and is now the lowest level since July 2008!</span></p></li></ul><b=
r><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,=
0);background-color:transparent;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;font-variant-alternates:normal;vertical-align:baseline">Way=
s to contribute:</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><=
li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Ari=
al,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-nu=
meric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;=
vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span s=
tyle=3D"font-size:11pt;background-color:transparent;font-variant-numeric:no=
rmal;font-variant-east-asian:normal;font-variant-alternates:normal;vertical=
-align:baseline">As people are likely aware, the project has a number of co=
mponents which are either unmaintained, or have people with little to no ti=
me trying to keep them alive. These components include: devtool, toaster, w=
ic, oeqa, autobuilder, CROPs containers, pseudo and more. Many have open bu=
gs. Help is welcome in trying to better look after these components!</span>=
</p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-=
family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-=
variant-numeric:normal;font-variant-east-asian:normal;font-variant-alternat=
es:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" styl=
e=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentatio=
n"><span style=3D"font-size:11pt;background-color:transparent;font-variant-=
numeric:normal;font-variant-east-asian:normal;font-variant-alternates:norma=
l;vertical-align:baseline">There are bugs identified as possible for newcom=
ers to the project: </span><a href=3D"https://wiki.yoctoproject.org/wiki/Ne=
wcomers" style=3D"text-decoration-line:none" target=3D"_blank"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;text-decorat=
ion-line:underline;vertical-align:baseline">https://wiki.yoctoproject.org/w=
iki/Newcomers</span></a></p></li><li dir=3D"ltr" style=3D"list-style-type:d=
isc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background=
-color:transparent;font-variant-numeric:normal;font-variant-east-asian:norm=
al;font-variant-alternates:normal;vertical-align:baseline;white-space:pre-w=
rap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:=
0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-color:t=
ransparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-=
variant-alternates:normal;vertical-align:baseline">There are bugs that are =
currently unassigned for YP 5.1. See: </span><a href=3D"https://wiki.yoctop=
roject.org/wiki/Bug_Triage#Medium+_5.1_Unassigned_Enhancements/Bugs" style=
=3D"text-decoration-line:none" target=3D"_blank"><span style=3D"font-size:1=
1pt;background-color:transparent;font-variant-numeric:normal;font-variant-e=
ast-asian:normal;font-variant-alternates:normal;text-decoration-line:underl=
ine;vertical-align:baseline">https://wiki.yoctoproject.org/wiki/Bug_Triage#=
Medium+_5.1_Unassigned_Enhancements/Bugs</span></a></p></li><li dir=3D"ltr"=
 style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;=
color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;f=
ont-variant-east-asian:normal;font-variant-alternates:normal;vertical-align=
:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-s=
ize:11pt;background-color:transparent;font-variant-numeric:normal;font-vari=
ant-east-asian:normal;font-variant-alternates:normal;vertical-align:baselin=
e">We=E2=80=99d welcome new maintainers for recipes in OE-Core. Please see =
the list at: </span><a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/tr=
ee/meta/conf/distro/include/maintainers.inc" style=3D"text-decoration-line:=
none" target=3D"_blank"><span style=3D"font-size:11pt;background-color:tran=
sparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-var=
iant-alternates:normal;text-decoration-line:underline;vertical-align:baseli=
ne">http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/conf/distro/include=
/maintainers.inc</span></a><span style=3D"font-size:11pt;background-color:t=
ransparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-=
variant-alternates:normal;vertical-align:baseline"> and discuss with the ex=
isting maintainer, or ask on the OE-Core mailing list. We will likely move =
a chunk of these to =E2=80=9CUnassigned=E2=80=9D soon to help facilitate th=
is.</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:=
11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpa=
rent;font-variant-numeric:normal;font-variant-east-asian:normal;font-varian=
t-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"p=
resentation"><span style=3D"font-size:11pt;background-color:transparent;fon=
t-variant-numeric:normal;font-variant-east-asian:normal;font-variant-altern=
ates:normal;vertical-align:baseline">Help is very much welcome in trying to=
 resolve our autobuilder intermittent issues. You can see the list of failu=
res we=E2=80=99re continuing to see by searching for the =E2=80=9CAB-INT=E2=
=80=9D tag in bugzilla: </span><a href=3D"https://bugzilla.yoctoproject.org=
/buglist.cgi?quicksearch=3DAB-INT" style=3D"text-decoration-line:none" targ=
et=3D"_blank"><span style=3D"font-size:11pt;background-color:transparent;fo=
nt-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alter=
nates:normal;text-decoration-line:underline;vertical-align:baseline">https:=
//bugzilla.yoctoproject.org/buglist.cgi?quicksearch=3DAB-INT</span></a><spa=
n style=3D"font-size:11pt;background-color:transparent;font-variant-numeric=
:normal;font-variant-east-asian:normal;font-variant-alternates:normal;verti=
cal-align:baseline">.</span></p></li><li dir=3D"ltr" style=3D"list-style-ty=
pe:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgr=
ound-color:transparent;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-variant-alternates:normal;vertical-align:baseline;white-space:p=
re-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-col=
or:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;f=
ont-variant-alternates:normal;vertical-align:baseline">Help us resolve CVE =
issues: </span><a href=3D"https://autobuilder.yocto.io/pub/non-release/patc=
hmetrics/" style=3D"text-decoration-line:none" target=3D"_blank"><span styl=
e=3D"font-size:11pt;background-color:transparent;font-variant-numeric:norma=
l;font-variant-east-asian:normal;font-variant-alternates:normal;text-decora=
tion-line:underline;vertical-align:baseline">CVE metrics</span></a><span st=
yle=3D"font-size:11pt;background-color:transparent;font-variant-numeric:nor=
mal;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-=
align:baseline">=C2=A0</span></p></li><li dir=3D"ltr" style=3D"list-style-t=
ype:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backg=
round-color:transparent;font-variant-numeric:normal;font-variant-east-asian=
:normal;font-variant-alternates:normal;vertical-align:baseline;white-space:=
pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-co=
lor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;=
font-variant-alternates:normal;vertical-align:baseline">We have a growing n=
umber of bugs in bugzilla, any help with them is appreciated.</span></p></l=
i><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:=
Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant=
-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:norm=
al;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"li=
ne-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><spa=
n style=3D"font-size:11pt;background-color:transparent;font-variant-numeric=
:normal;font-variant-east-asian:normal;font-variant-alternates:normal;verti=
cal-align:baseline">Regarding bugs, even if you can=E2=80=99t fix a bug, su=
bmitting a failing test case that can reproduce the issue significantly imp=
roves the chances it might get fixed.</span></p></li></ul><br><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background=
-color:transparent;font-variant-numeric:normal;font-variant-east-asian:norm=
al;font-variant-alternates:normal;vertical-align:baseline">Tracking Metrics=
:</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" =
style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;c=
olor:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-variant-alternates:normal;vertical-align:=
baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;mar=
gin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-si=
ze:11pt;background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline=
">WDD 2774 (last week 2772) </span><span style=3D"font-size:11pt;font-famil=
y:Consolas,sans-serif;background-color:transparent;font-variant-numeric:nor=
mal;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-=
align:baseline">(</span><a href=3D"https://wiki.yoctoproject.org/charts/com=
bo.html" style=3D"text-decoration-line:none" target=3D"_blank"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;text-decorat=
ion-line:underline;vertical-align:baseline">https://wiki.yoctoproject.org/c=
harts/combo.html</span></a><span style=3D"font-size:11pt;font-family:Consol=
as,sans-serif;background-color:transparent;font-variant-numeric:normal;font=
-variant-east-asian:normal;font-variant-alternates:normal;vertical-align:ba=
seline">)</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font=
-size:11pt;font-family:Consolas,sans-serif;color:rgb(0,0,0);background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;vertical-align:baseline;white-space:pre-wrap">=
<p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" =
role=3D"presentation"><span style=3D"font-size:11pt;font-family:Arial,sans-=
serif;background-color:transparent;font-variant-numeric:normal;font-variant=
-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline">=
OE-Core/Poky Patch Metrics</span></p></li><ul style=3D"margin-top:0px;margi=
n-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:circle;font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparen=
t;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-a=
lternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"pres=
entation"><span style=3D"font-size:11pt;background-color:transparent;font-v=
ariant-numeric:normal;font-variant-east-asian:normal;font-variant-alternate=
s:normal;vertical-align:baseline">Total patches found: 1072 (last week 1098=
)</span></p></li><li dir=3D"ltr" style=3D"list-style-type:circle;font-size:=
11pt;font-family:Consolas,sans-serif;color:rgb(0,0,0);background-color:tran=
sparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-var=
iant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;font-family:Arial,sans-seri=
f;background-color:transparent;font-variant-numeric:normal;font-variant-eas=
t-asian:normal;font-variant-alternates:normal;vertical-align:baseline">Patc=
hes in the Pending State: 205 (19%) [last week 205 (19%)]</span></p></li></=
ul><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family=
:Consolas,sans-serif;color:rgb(0,0,0);background-color:transparent;font-var=
iant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:=
normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><a href=3D"https://autobuilder.yocto.io/pub/non-release/patchmetrics/" st=
yle=3D"text-decoration-line:none" target=3D"_blank"><span style=3D"font-siz=
e:11pt;font-family:Arial,sans-serif;background-color:transparent;font-varia=
nt-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:no=
rmal;text-decoration-line:underline;vertical-align:baseline">https://autobu=
ilder.yocto.io/pub/non-release/patchmetrics/</span></a></p></li></ul><br><p=
 dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><s=
pan style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);b=
ackground-color:transparent;font-variant-numeric:normal;font-variant-east-a=
sian:normal;font-variant-alternates:normal;vertical-align:baseline">YP 5.1 =
Milestone Dates:</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><=
li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Ari=
al,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-nu=
meric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;=
vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span s=
tyle=3D"font-size:11pt;background-color:transparent;font-variant-numeric:no=
rmal;font-variant-east-asian:normal;font-variant-alternates:normal;vertical=
-align:baseline">YP 5.1 M1 is in QA</span></p></li><li dir=3D"ltr" style=3D=
"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb=
(0,0,0);background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline=
;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:=
0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;=
background-color:transparent;font-variant-numeric:normal;font-variant-east-=
asian:normal;font-variant-alternates:normal;vertical-align:baseline">YP 5.1=
 M1 Release date 2024-05-31</span></p></li><li dir=3D"ltr" style=3D"list-st=
yle-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);=
background-color:transparent;font-variant-numeric:normal;font-variant-east-=
asian:normal;font-variant-alternates:normal;vertical-align:baseline;white-s=
pace:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;marg=
in-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;backgrou=
nd-color:transparent;font-variant-numeric:normal;font-variant-east-asian:no=
rmal;font-variant-alternates:normal;vertical-align:baseline">YP 5.1 M2 Buil=
d date=C2=A0 2024-07-08</span></p></li><li dir=3D"ltr" style=3D"list-style-=
type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);back=
ground-color:transparent;font-variant-numeric:normal;font-variant-east-asia=
n:normal;font-variant-alternates:normal;vertical-align:baseline;white-space=
:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-b=
ottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-c=
olor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal=
;font-variant-alternates:normal;vertical-align:baseline">YP 5.1 M2 Release =
date 2024-07-19</span></p></li><li dir=3D"ltr" style=3D"list-style-type:dis=
c;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-c=
olor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal=
;font-variant-alternates:normal;vertical-align:baseline;white-space:pre-wra=
p"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0p=
t" role=3D"presentation"><span style=3D"font-size:11pt;background-color:tra=
nsparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-va=
riant-alternates:normal;vertical-align:baseline">YP 5.1 M3 Build date=C2=A0=
 2024-08-26</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;fo=
nt-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color=
:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fon=
t-variant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" r=
ole=3D"presentation"><span style=3D"font-size:11pt;background-color:transpa=
rent;font-variant-numeric:normal;font-variant-east-asian:normal;font-varian=
t-alternates:normal;vertical-align:baseline">YP 5.1 M3 Release date 2024-09=
-06</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:=
11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpa=
rent;font-variant-numeric:normal;font-variant-east-asian:normal;font-varian=
t-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"p=
resentation"><span style=3D"font-size:11pt;background-color:transparent;fon=
t-variant-numeric:normal;font-variant-east-asian:normal;font-variant-altern=
ates:normal;vertical-align:baseline">YP 5.1 M4 Build date=C2=A0 2024-09-30<=
/span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt=
;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent=
;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-al=
ternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"prese=
ntation"><span style=3D"font-size:11pt;background-color:transparent;font-va=
riant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates=
:normal;vertical-align:baseline">YP 5.1 M4 Release date 2024-10-25</span></=
p></li></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;=
color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;f=
ont-variant-east-asian:normal;font-variant-alternates:normal;vertical-align=
:baseline">Upcoming dot releases:</span></p><ul style=3D"margin-top:0px;mar=
gin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparen=
t;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-a=
lternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"pres=
entation"><span style=3D"font-size:11pt;background-color:transparent;font-v=
ariant-numeric:normal;font-variant-east-asian:normal;font-variant-alternate=
s:normal;vertical-align:baseline">YP 4.0.19 is in QA.</span></p></li><li di=
r=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sa=
ns-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric=
:normal;font-variant-east-asian:normal;font-variant-alternates:normal;verti=
cal-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-heigh=
t:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline">YP 5.0.2 Build Date 2024-06-24</span></p></li><li dir=3D"ltr" =
style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;c=
olor:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-variant-alternates:normal;vertical-align:=
baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;mar=
gin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-si=
ze:11pt;background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline=
">YP 5.0.2 Release Date 2024-07-05</span></p></li><li dir=3D"ltr" style=3D"=
list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(=
0,0,0);background-color:transparent;font-variant-numeric:normal;font-varian=
t-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline;=
white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;b=
ackground-color:transparent;font-variant-numeric:normal;font-variant-east-a=
sian:normal;font-variant-alternates:normal;vertical-align:baseline">YP 4.0.=
20 Build Date 2024-07-15</span></p></li><li dir=3D"ltr" style=3D"list-style=
-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);bac=
kground-color:transparent;font-variant-numeric:normal;font-variant-east-asi=
an:normal;font-variant-alternates:normal;vertical-align:baseline;white-spac=
e:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-=
color:transparent;font-variant-numeric:normal;font-variant-east-asian:norma=
l;font-variant-alternates:normal;vertical-align:baseline">YP 4.0.20 Release=
 Date 2024-07-26</span></p></li><li dir=3D"ltr" style=3D"list-style-type:di=
sc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-=
color:transparent;font-variant-numeric:normal;font-variant-east-asian:norma=
l;font-variant-alternates:normal;vertical-align:baseline;white-space:pre-wr=
ap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0=
pt" role=3D"presentation"><span style=3D"font-size:11pt;background-color:tr=
ansparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-v=
ariant-alternates:normal;vertical-align:baseline">YP 5.0.3 Build Date 2024-=
08-12</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-siz=
e:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:trans=
parent;font-variant-numeric:normal;font-variant-east-asian:normal;font-vari=
ant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-a=
lternates:normal;vertical-align:baseline">YP 5.0.3 Release Date 2024-08-23<=
/span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt=
;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent=
;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-al=
ternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"prese=
ntation"><span style=3D"font-size:11pt;background-color:transparent;font-va=
riant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates=
:normal;vertical-align:baseline">YP 4.0.21 Build Date 2024-09-09</span></p>=
</li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-fami=
ly:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-vari=
ant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:n=
ormal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D=
"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><=
span style=3D"font-size:11pt;background-color:transparent;font-variant-nume=
ric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ve=
rtical-align:baseline">YP 4.0.21 Release Date 2024-09-20</span></p></li><li=
 dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial=
,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-nume=
ric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ve=
rtical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span sty=
le=3D"font-size:11pt;background-color:transparent;font-variant-numeric:norm=
al;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-a=
lign:baseline">YP 5.0.4 Build Date 2024-09-23</span></p></li><li dir=3D"ltr=
" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif=
;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;=
font-variant-east-asian:normal;font-variant-alternates:normal;vertical-alig=
n:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-=
size:11pt;background-color:transparent;font-variant-numeric:normal;font-var=
iant-east-asian:normal;font-variant-alternates:normal;vertical-align:baseli=
ne">YP 5.0.4 Release Date 2024-10-04</span></p></li><li dir=3D"ltr" style=
=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:=
rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-va=
riant-east-asian:normal;font-variant-alternates:normal;vertical-align:basel=
ine;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-t=
op:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11=
pt;background-color:transparent;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;font-variant-alternates:normal;vertical-align:baseline">YP =
4.0.22 Build Date 2024-10-14</span></p></li><li dir=3D"ltr" style=3D"list-s=
tyle-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0)=
;background-color:transparent;font-variant-numeric:normal;font-variant-east=
-asian:normal;font-variant-alternates:normal;vertical-align:baseline;white-=
space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;backgro=
und-color:transparent;font-variant-numeric:normal;font-variant-east-asian:n=
ormal;font-variant-alternates:normal;vertical-align:baseline">YP 4.0.22 Rel=
ease Date 2024-10-25</span></p></li><li dir=3D"ltr" style=3D"list-style-typ=
e:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgro=
und-color:transparent;font-variant-numeric:normal;font-variant-east-asian:n=
ormal;font-variant-alternates:normal;vertical-align:baseline;white-space:pr=
e-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;vertical-align:baseline">YP 5.0.5 Build Date 2=
024-11-11</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font=
-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:t=
ransparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-=
variant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" rol=
e=3D"presentation"><span style=3D"font-size:11pt;background-color:transpare=
nt;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-=
alternates:normal;vertical-align:baseline">YP 5.0.5 Release Date 2024-11-22=
</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparen=
t;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-a=
lternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"pres=
entation"><span style=3D"font-size:11pt;background-color:transparent;font-v=
ariant-numeric:normal;font-variant-east-asian:normal;font-variant-alternate=
s:normal;vertical-align:baseline">YP 4.0.23 Build Date 2024-11-18</span></p=
></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-fam=
ily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-var=
iant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:=
normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant-n=
umeric:normal;font-variant-east-asian:normal;font-variant-alternates:normal=
;vertical-align:baseline">YP 4.0.23 Release Date 2024-11-29</span></p></li>=
</ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:r=
gb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-var=
iant-east-asian:normal;font-variant-alternates:normal;vertical-align:baseli=
ne">The Yocto Project=E2=80=99s technical governance is through its Technic=
al Steering Committee, more information is available at:</span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><a hre=
f=3D"https://wiki.yoctoproject.org/wiki/TSC" style=3D"text-decoration-line:=
none" target=3D"_blank"><span style=3D"font-size:11pt;font-family:Arial,san=
s-serif;background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;text-decoration-line:un=
derline;vertical-align:baseline">https://wiki.yoctoproject.org/wiki/TSC</sp=
an></a></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;marg=
in-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;c=
olor:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-variant-alternates:normal;vertical-align:=
baseline">The Status reports are now stored on the wiki at: </span><a href=
=3D"https://wiki.yoctoproject.org/wiki/Weekly_Status" style=3D"text-decorat=
ion-line:none" target=3D"_blank"><span style=3D"font-size:11pt;font-family:=
Arial,sans-serif;background-color:transparent;font-variant-numeric:normal;f=
ont-variant-east-asian:normal;font-variant-alternates:normal;text-decoratio=
n-line:underline;vertical-align:baseline">https://wiki.yoctoproject.org/wik=
i/Weekly_Status</span></a></p><br><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family=
:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:nor=
mal;vertical-align:baseline">[If anyone has suggestions for other informati=
on you=E2=80=99d like to see on this weekly status update, let us know!]</s=
pan></p></span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"background-image:initi=
al;background-position:initial;background-repeat:initial"><span style=3D"fo=
nt-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">=C2=A0<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><i><span style=3D"font-size:16pt;co=
lor:purple">Stephen K. Jolley</span></i></b><span style=3D"font-size:12pt;f=
ont-family:Arial,sans-serif"><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-size:8pt;font-f=
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager</sp=
an></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><span></span><=
/span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings">*=C2=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;fon=
t-family:&quot;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=
=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal">:</span><span lang=3D"FR" style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span=
 lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif;color:blue"><span style=3D"color:rgb(17,85,204)"><a href=3D"mailto:ste=
phen.k.jolley@intel.com" target=3D"_blank">s</a><a href=3D"mailto:jolley.yp=
.pm@gmail.com" target=3D"_blank">jolley.yp.pm@gmail.com</a></span></span></=
u></p></div></div></div></div>
<br>
<br>
<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--00000000000088f5c2061bb26c31--

