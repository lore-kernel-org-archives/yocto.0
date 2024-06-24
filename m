Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AF8DC2BD09
	for <webhook@archiver.kernel.org>; Mon, 24 Jun 2024 09:18:41 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.134360.1719209892851814339
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Jun 2024 23:18:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bUmu6IO1;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-7178727da84so1516632a12.0;
        Sun, 23 Jun 2024 23:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719209892; x=1719814692; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uLDnQ2BiChURWHgAGD6WWdNrswGGoPYQl87/Q2wponM=;
        b=bUmu6IO1EkJeWMtK3DwSB1DzqbAAKkAz7Nq4nS0TbZ1ElmHfguTkmvOxZIOH923YVN
         lZVd9guC6RYWdseUbjaXgqCeKDnzFrxCrpP0HluDi084DpNgk9NaWCZV2+/60vjLD4YM
         sn7j0Zo61Z5Bf9O/FZOkYfYbjMokZP+exweoOdrcjs3ToP2gEqSrJQqsqJsl3fyz52Xv
         ZdiZeR+wshUqUgIhrKdiQRfDfVeh2dniH2R+Ij8aS2SqCmFktRyw8NB/Qq3OJJbKNN0n
         F5A9FQ+ldUsiVevqqj2uomnA2g+9UdhLp5xglsXl1VaWi+gxfs8hhSkZlcn4qTD/BT5G
         EEdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719209892; x=1719814692;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uLDnQ2BiChURWHgAGD6WWdNrswGGoPYQl87/Q2wponM=;
        b=ApM+CGKl16UjzylbboxL2mDC8RSSc6xOLa18P2mmWaPtRKRInrHzFXwL6tpxmOnGyW
         eoFrHL2EKU9X86TKllCGZk2qXwPkFH27CEfkOOGBr08q0KTptc3+K+PHSxeXFCIvombi
         UteAmq1F63V42I2Qw4efgkeAqzfQN10+pZNdVPKxa1jI9yeTQqlpd6xOXnVMw2vAyJ34
         BCARIngCa4ArQ3xvSBjiK5LDXMCuC7K33YSwIasxWgaBKPvzyRueLTCbzcL2vDOmdNLG
         ZdFDaisCSh/tDUY42zXoYLpGyToavXg9Q9bguqp9j0/QJ2p8Vg0/fdbhtoTibi0cwx9y
         rrIw==
X-Forwarded-Encrypted: i=1; AJvYcCWrCexXnIPYMpT9qz0oy7zzIl7fb2H7A5qPZzbsuRsOLMJFOYDQAauKn8FBRDV+0aFMEliuI9+FFl+qSE51bZHp+FuyKdWyqEwSE908ETMQgEDYXA==
X-Gm-Message-State: AOJu0YxQfpzO+vaQNfUVEcWXYgXdbRX6zfN0aLMVdMJwsrdHecXdU60W
	KFziH/x/EhyVsHkFT20i3BQiGEjThs1Dco+bSM62MC8mReK6iazxN+g3y2zsjlOKYTh60ZV3H7Y
	SwIszHtDByC59BUquFy48AxO7ZwRfB0Re
X-Google-Smtp-Source: AGHT+IHfPtEKonV6sv5Hqp8OStWITlnrt8S29XMaNCmZBtngI1K2LpgO9XItF3McMqnNGFPImxFPhVENmuPYa14+g9s=
X-Received: by 2002:a17:90a:43c3:b0:2c4:e4a3:b83c with SMTP id
 98e67ed59e1d1-2c8504c81ffmr3228242a91.2.1719209891648; Sun, 23 Jun 2024
 23:18:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb-XZMRnfJuC66B=FoOhOXkvwfpsFDES2FH+Vcp61vR=_w@mail.gmail.com>
In-Reply-To: <CAK5yBb-XZMRnfJuC66B=FoOhOXkvwfpsFDES2FH+Vcp61vR=_w@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 24 Jun 2024 08:18:00 +0200
Message-ID: <CAGAf8Lwvx09=1Z4N6dx0tQYZfTnNyCSTox+eUGb8v12m1HOyTA@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Status 11 June 2024 (WW24)
To: yocto@lists.yoctoproject.org, sjolley.yp.pm@gmail.com, 
	Ross Burton <Ross.Burton@arm.com>
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e2e122061b9cbec8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Jun 2024 09:18:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63383

--000000000000e2e122061b9cbec8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ahhh... Now I see what is really going on under the hood! ;-)))

>>> Upcoming dot releases:
*>>> YP 5.0.2 Build Date 2024-06-24*

I see dead people! :-)))

Why this date? Because Fedora 40 JUST upgraded GCC 13.2 to GCC 14.1*!!!*


*The missing link!*

I expect Poky 5.0.2 to kick in within a half of the day!

Zee
*_______*



On Tue, Jun 11, 2024 at 4:53=E2=80=AFPM Stephen Jolley via lists.yoctoproje=
ct.org <
sjolley.yp.pm=3Dgmail.com@lists.yoctoproject.org> wrote:

> Current Dev Position: YP 5.1 M2
>
> Next Deadline: YP 5.1 M2 Build 8 July 2024
>
> Next Team Meetings:
>
>    -
>
>    Bug Triage meeting Thursday June 13th at 7:30 am PST (
>    https://zoom.us/j/454367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09)
>    -
>
>    Weekly Project Engineering Sync Tuesday June 11th at 8 am PST (
>    https://zoom.us/j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09)
>    <https://zoom.us/j/990892712>
>    -
>
>    Twitch -  See https://www.twitch.tv/theyoctojester
>
>
> Key Status/Updates:
>
>    -
>
>    YP 4.0.19 has been through QA and is due for release
>    -
>
>    YP 5.1 M1 rc2 is in QA
>    -
>
>    RFC patches for the CVE tooling changes have been posted, help in
>    review is appreciated
>    -
>
>    There are SPDX 3.0 patches ready for review on the mailing list
>    -
>
>    There are patches proposing that missing patch Upstream-Status entries
>    be a fatal QA error, this is likely to merge soon as there have been n=
o
>    objections to it.
>    -
>
>    We have a fix for the final Fedora 40 issue, thanks Victor.
>    -
>
>    We appreciate everyone fixing layers to work with master after recent
>    changes, the autobuilder health is looking greener, thanks!
>    -
>
>    The copy_unihashes function was dropped from bitbake after the locked
>    signature file improvements which simplifies further tooling work
>    -
>
>    There is discussion on openembedded-architecture about the details
>    around  configuration fragment tooling potentially being integrated in=
to
>    bitbake
>    -
>
>    There is an open letter the project has created related to the CVE/NVD
>    situation, more information is available here:
>    https://lists.openembedded.org/g/openembedded-architecture/message/199=
0
>
> Please consider signing this to show support for those changes.
>
> Signatures from small businesses/consultancies are as welcome as those
> from larger organizations as we want to demonstrate the breadth of the ne=
ed
> for these changes.
>
>    -
>
>    We continue to have trouble tracking down the rust reproducibility
>    problem in rustdoc.
>    -
>
>    Through post release upgrading our patch count reduced again and is
>    now the lowest level since July 2008!
>
>
> Ways to contribute:
>
>    -
>
>    As people are likely aware, the project has a number of components
>    which are either unmaintained, or have people with little to no time t=
rying
>    to keep them alive. These components include: devtool, toaster, wic, o=
eqa,
>    autobuilder, CROPs containers, pseudo and more. Many have open bugs. H=
elp
>    is welcome in trying to better look after these components!
>    -
>
>    There are bugs identified as possible for newcomers to the project:
>    https://wiki.yoctoproject.org/wiki/Newcomers
>    -
>
>    There are bugs that are currently unassigned for YP 5.1. See:
>    https://wiki.yoctoproject.org/wiki/Bug_Triage#Medium+_5.1_Unassigned_E=
nhancements/Bugs
>    -
>
>    We=E2=80=99d welcome new maintainers for recipes in OE-Core. Please se=
e the
>    list at:
>    http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/conf/distro/includ=
e/maintainers.inc
>    and discuss with the existing maintainer, or ask on the OE-Core mailin=
g
>    list. We will likely move a chunk of these to =E2=80=9CUnassigned=E2=
=80=9D soon to help
>    facilitate this.
>    -
>
>    Help is very much welcome in trying to resolve our autobuilder
>    intermittent issues. You can see the list of failures we=E2=80=99re co=
ntinuing to
>    see by searching for the =E2=80=9CAB-INT=E2=80=9D tag in bugzilla:
>    https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=3DAB-INT.
>    -
>
>    Help us resolve CVE issues: CVE metrics
>    <https://autobuilder.yocto.io/pub/non-release/patchmetrics/>
>    -
>
>    We have a growing number of bugs in bugzilla, any help with them is
>    appreciated.
>    -
>
>    Regarding bugs, even if you can=E2=80=99t fix a bug, submitting a fail=
ing test
>    case that can reproduce the issue significantly improves the chances i=
t
>    might get fixed.
>
>
> Tracking Metrics:
>
>    -
>
>    WDD 2774 (last week 2772) (
>    https://wiki.yoctoproject.org/charts/combo.html)
>    -
>
>    OE-Core/Poky Patch Metrics
>    -
>
>       Total patches found: 1072 (last week 1098)
>       -
>
>       Patches in the Pending State: 205 (19%) [last week 205 (19%)]
>       -
>
>    https://autobuilder.yocto.io/pub/non-release/patchmetrics/
>
>
> YP 5.1 Milestone Dates:
>
>    -
>
>    YP 5.1 M1 is in QA
>    -
>
>    YP 5.1 M1 Release date 2024-05-31
>    -
>
>    YP 5.1 M2 Build date  2024-07-08
>    -
>
>    YP 5.1 M2 Release date 2024-07-19
>    -
>
>    YP 5.1 M3 Build date  2024-08-26
>    -
>
>    YP 5.1 M3 Release date 2024-09-06
>    -
>
>    YP 5.1 M4 Build date  2024-09-30
>    -
>
>    YP 5.1 M4 Release date 2024-10-25
>
>
> Upcoming dot releases:
>
>    -
>
>    YP 4.0.19 is in QA.
>    -
>
>    YP 5.0.2 Build Date 2024-06-24
>    -
>
>    YP 5.0.2 Release Date 2024-07-05
>    -
>
>    YP 4.0.20 Build Date 2024-07-15
>    -
>
>    YP 4.0.20 Release Date 2024-07-26
>    -
>
>    YP 5.0.3 Build Date 2024-08-12
>    -
>
>    YP 5.0.3 Release Date 2024-08-23
>    -
>
>    YP 4.0.21 Build Date 2024-09-09
>    -
>
>    YP 4.0.21 Release Date 2024-09-20
>    -
>
>    YP 5.0.4 Build Date 2024-09-23
>    -
>
>    YP 5.0.4 Release Date 2024-10-04
>    -
>
>    YP 4.0.22 Build Date 2024-10-14
>    -
>
>    YP 4.0.22 Release Date 2024-10-25
>    -
>
>    YP 5.0.5 Build Date 2024-11-11
>    -
>
>    YP 5.0.5 Release Date 2024-11-22
>    -
>
>    YP 4.0.23 Build Date 2024-11-18
>    -
>
>    YP 4.0.23 Release Date 2024-11-29
>
>
> The Yocto Project=E2=80=99s technical governance is through its Technical=
 Steering
> Committee, more information is available at:
>
> https://wiki.yoctoproject.org/wiki/TSC
>
> The Status reports are now stored on the wiki at:
> https://wiki.yoctoproject.org/wiki/Weekly_Status
>
> [If anyone has suggestions for other information you=E2=80=99d like to se=
e on this
> weekly status update, let us know!]
>
> Thanks,
>
>
>
> *Stephen K. Jolley*
>
> *Yocto Project Program Manager*
>
> (    *Cell*:                (208) 244-4460
>
> * *Email*:                 *s
> <stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.co=
m>*
>
>=20
>
>

--000000000000e2e122061b9cbec8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ahhh... Now I see what is really going on under the hood! =
;-)))<br><br>&gt;&gt;&gt; Upcoming dot releases:<br><div><b><span style=3D"=
color:rgb(255,0,0)">&gt;&gt;&gt; YP 5.0.2 Build Date 2024-06-24</span></b><=
/div><br><div>I see dead people! :-)))</div><div><br></div><div>Why this da=
te? Because Fedora 40 JUST upgraded GCC 13.2 to GCC 14.1<b>!!!</b></div><di=
v><b><br></b></div><div><b><i><u>The missing link!</u><br></i></b></div><di=
v><b><br></b></div><div>I expect Poky 5.0.2 to kick in within a half of the=
 day!<b><br></b></div><div><b><br></b></div><div>Zee<b><br></b></div><div><=
b>_______</b></div><div><b><br></b></div></div><br><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 11, 2024 at 4:53=
=E2=80=AFPM Stephen Jolley via <a href=3D"http://lists.yoctoproject.org">li=
sts.yoctoproject.org</a> &lt;<a href=3D"http://sjolley.yp.pm">sjolley.yp.pm=
</a>=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.=
yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><span id=3D"m_2270391077743118021gmail-doc=
s-internal-guid-dda5e0df-7fff-de9c-770a-46f5fc7d3f05"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tr=
ansparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-v=
ariant-alternates:normal;vertical-align:baseline">Current Dev Position: YP =
5.1 M2</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif=
;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;=
font-variant-east-asian:normal;font-variant-alternates:normal;vertical-alig=
n:baseline">Next Deadline: YP 5.1 M2 Build 8 July 2024</span></p><br><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backg=
round-color:transparent;font-variant-numeric:normal;font-variant-east-asian=
:normal;font-variant-alternates:normal;vertical-align:baseline">Next Team M=
eetings:</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=
=3D"ltr" style=3D"list-style-type:disc;font-size:9.5pt;font-family:Arial,sa=
ns-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric=
:normal;font-variant-east-asian:normal;font-variant-alternates:normal;verti=
cal-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-heigh=
t:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline">Bug Triage meeting Thursday June 13th at 7:30 am PST (</span><=
a href=3D"https://zoom.us/j/454367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz0=
9" style=3D"text-decoration-line:none" target=3D"_blank"><span style=3D"fon=
t-size:11pt;background-color:transparent;font-variant-numeric:normal;font-v=
ariant-east-asian:normal;font-variant-alternates:normal;text-decoration-lin=
e:underline;vertical-align:baseline">https://zoom.us/j/454367603?pwd=3DZGxo=
a2ZXL3FkM3Y0bFd5aVpHVVZ6dz09</span></a><span style=3D"font-size:11pt;backgr=
ound-color:transparent;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-variant-alternates:normal;vertical-align:baseline">)</span></p>=
</li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:9.5pt;font-fam=
ily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-var=
iant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:=
normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant-n=
umeric:normal;font-variant-east-asian:normal;font-variant-alternates:normal=
;vertical-align:baseline">Weekly Project Engineering Sync Tuesday June 11th=
 at 8 am PST (</span><a href=3D"https://zoom.us/j/990892712?pwd=3DcHU1MjhoM=
2x6ck81bkcrYjRrcmJsUT09" style=3D"text-decoration-line:none" target=3D"_bla=
nk"><span style=3D"font-size:11pt;background-color:transparent;font-variant=
-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:norm=
al;text-decoration-line:underline;vertical-align:baseline">https://zoom.us/=
j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09</span></a><a href=3D"htt=
ps://zoom.us/j/990892712" style=3D"text-decoration-line:none" target=3D"_bl=
ank"><span style=3D"font-size:11pt;background-color:transparent;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:nor=
mal;text-decoration-line:underline;vertical-align:baseline">)</span></a></p=
></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:9.5pt;font-fa=
mily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-va=
riant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates=
:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant-n=
umeric:normal;font-variant-east-asian:normal;font-variant-alternates:normal=
;vertical-align:baseline">Twitch -=C2=A0 See </span><a href=3D"https://www.=
twitch.tv/theyoctojester" style=3D"text-decoration-line:none" target=3D"_bl=
ank"><span style=3D"font-size:11pt;background-color:transparent;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:nor=
mal;text-decoration-line:underline;vertical-align:baseline">https://www.twi=
tch.tv/theyoctojester</span></a><span style=3D"font-size:11pt;background-co=
lor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;=
font-variant-alternates:normal;vertical-align:baseline">=C2=A0</span></p></=
li></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;colo=
r:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-variant-alternates:normal;vertical-align:bas=
eline">Key Status/Updates:</span></p><ul style=3D"margin-top:0px;margin-bot=
tom:0px"><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-=
family:Arial,sans-serif;color:rgb(46,52,54);background-color:transparent;fo=
nt-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alter=
nates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presenta=
tion"><span style=3D"font-size:11pt;font-variant-numeric:normal;font-varian=
t-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline"=
>YP 4.0.19 has been through QA and is due for release</span></p></li><li di=
r=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sa=
ns-serif;color:rgb(46,52,54);background-color:transparent;font-variant-nume=
ric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ve=
rtical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span sty=
le=3D"font-size:11pt;font-variant-numeric:normal;font-variant-east-asian:no=
rmal;font-variant-alternates:normal;vertical-align:baseline">YP 5.1 M1 rc2 =
is in QA</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-=
size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tr=
ansparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-v=
ariant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-a=
lternates:normal;vertical-align:baseline">RFC patches for the CVE tooling c=
hanges have been posted, help in review is appreciated</span></p></li><li d=
ir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,s=
ans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeri=
c:normal;font-variant-east-asian:normal;font-variant-alternates:normal;vert=
ical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline">There are SPDX 3.0 patches ready for review on the mailing lis=
t</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11=
pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpare=
nt;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-=
alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"l=
tr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"pre=
sentation"><span style=3D"font-size:11pt;background-color:transparent;font-=
variant-numeric:normal;font-variant-east-asian:normal;font-variant-alternat=
es:normal;vertical-align:baseline">There are patches proposing that missing=
 patch Upstream-Status entries be a fatal QA error, this is likely to merge=
 soon as there have been no objections to it.</span></p></li><li dir=3D"ltr=
" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif=
;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;=
font-variant-east-asian:normal;font-variant-alternates:normal;vertical-alig=
n:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-=
size:11pt;background-color:transparent;font-variant-numeric:normal;font-var=
iant-east-asian:normal;font-variant-alternates:normal;vertical-align:baseli=
ne">We have a fix for the final Fedora 40 issue, thanks Victor.</span></p><=
/li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-famil=
y:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-varia=
nt-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:no=
rmal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><s=
pan style=3D"font-size:11pt;background-color:transparent;font-variant-numer=
ic:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ver=
tical-align:baseline">We appreciate everyone fixing layers to work with mas=
ter after recent changes, the autobuilder health is looking greener, thanks=
!</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11=
pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpare=
nt;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-=
alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"l=
tr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"pre=
sentation"><span style=3D"font-size:11pt;background-color:transparent;font-=
variant-numeric:normal;font-variant-east-asian:normal;font-variant-alternat=
es:normal;vertical-align:baseline">The copy_unihashes function was dropped =
from bitbake after the locked signature file improvements which simplifies =
further tooling work</span></p></li><li dir=3D"ltr" style=3D"list-style-typ=
e:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgro=
und-color:transparent;font-variant-numeric:normal;font-variant-east-asian:n=
ormal;font-variant-alternates:normal;vertical-align:baseline;white-space:pr=
e-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;vertical-align:baseline">There is discussion o=
n openembedded-architecture about the details around=C2=A0 configuration fr=
agment tooling potentially being integrated into bitbake</span></p></li><li=
 dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial=
,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-nume=
ric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ve=
rtical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span sty=
le=3D"font-size:11pt;background-color:transparent;font-variant-numeric:norm=
al;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-a=
lign:baseline">There is an open letter the project has created related to t=
he CVE/NVD situation, more information is available here: </span><a href=3D=
"https://lists.openembedded.org/g/openembedded-architecture/message/1990" s=
tyle=3D"text-decoration-line:none" target=3D"_blank"><span style=3D"font-si=
ze:11pt;background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;text-decoration-line:un=
derline;vertical-align:baseline">https://lists.openembedded.org/g/openembed=
ded-architecture/message/1990</span></a></p></li></ul><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-left:36pt;margin-top:0pt;margin-bottom:0pt"><sp=
an style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);ba=
ckground-color:transparent;font-variant-numeric:normal;font-variant-east-as=
ian:normal;font-variant-alternates:normal;vertical-align:baseline">Please c=
onsider signing this to show support for those changes.</span></p><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-left:36pt;margin-top:0pt;margin-bott=
om:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rg=
b(0,0,0);background-color:transparent;font-variant-numeric:normal;font-vari=
ant-east-asian:normal;font-variant-alternates:normal;vertical-align:baselin=
e">Signatures from small businesses/consultancies are as welcome as those f=
rom larger organizations as we want to demonstrate the breadth of the need =
for these changes.</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"=
><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:A=
rial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-=
numeric:normal;font-variant-east-asian:normal;font-variant-alternates:norma=
l;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"lin=
e-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span=
 style=3D"font-size:11pt;background-color:transparent;font-variant-numeric:=
normal;font-variant-east-asian:normal;font-variant-alternates:normal;vertic=
al-align:baseline">We continue to have trouble tracking down the rust repro=
ducibility problem in rustdoc.</span></p></li><li dir=3D"ltr" style=3D"list=
-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,=
0);background-color:transparent;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;font-variant-alternates:normal;vertical-align:baseline;whit=
e-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;backg=
round-color:transparent;font-variant-numeric:normal;font-variant-east-asian=
:normal;font-variant-alternates:normal;vertical-align:baseline">Through pos=
t release upgrading our patch count reduced again and is now the lowest lev=
el since July 2008!</span></p></li></ul><br><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;f=
ont-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alte=
rnates:normal;vertical-align:baseline">Ways to contribute:</span></p><ul st=
yle=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-styl=
e-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);ba=
ckground-color:transparent;font-variant-numeric:normal;font-variant-east-as=
ian:normal;font-variant-alternates:normal;vertical-align:baseline;white-spa=
ce:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin=
-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background=
-color:transparent;font-variant-numeric:normal;font-variant-east-asian:norm=
al;font-variant-alternates:normal;vertical-align:baseline">As people are li=
kely aware, the project has a number of components which are either unmaint=
ained, or have people with little to no time trying to keep them alive. The=
se components include: devtool, toaster, wic, oeqa, autobuilder, CROPs cont=
ainers, pseudo and more. Many have open bugs. Help is welcome in trying to =
better look after these components!</span></p></li><li dir=3D"ltr" style=3D=
"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb=
(0,0,0);background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline=
;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:=
0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;=
background-color:transparent;font-variant-numeric:normal;font-variant-east-=
asian:normal;font-variant-alternates:normal;vertical-align:baseline">There =
are bugs identified as possible for newcomers to the project: </span><a hre=
f=3D"https://wiki.yoctoproject.org/wiki/Newcomers" style=3D"text-decoration=
-line:none" target=3D"_blank"><span style=3D"font-size:11pt;background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;text-decoration-line:underline;vertical-align:=
baseline">https://wiki.yoctoproject.org/wiki/Newcomers</span></a></p></li><=
li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Ari=
al,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-nu=
meric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;=
vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span s=
tyle=3D"font-size:11pt;background-color:transparent;font-variant-numeric:no=
rmal;font-variant-east-asian:normal;font-variant-alternates:normal;vertical=
-align:baseline">There are bugs that are currently unassigned for YP 5.1. S=
ee: </span><a href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Medium+=
_5.1_Unassigned_Enhancements/Bugs" style=3D"text-decoration-line:none" targ=
et=3D"_blank"><span style=3D"font-size:11pt;background-color:transparent;fo=
nt-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alter=
nates:normal;text-decoration-line:underline;vertical-align:baseline">https:=
//wiki.yoctoproject.org/wiki/Bug_Triage#Medium+_5.1_Unassigned_Enhancements=
/Bugs</span></a></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font=
-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:t=
ransparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-=
variant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" rol=
e=3D"presentation"><span style=3D"font-size:11pt;background-color:transpare=
nt;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-=
alternates:normal;vertical-align:baseline">We=E2=80=99d welcome new maintai=
ners for recipes in OE-Core. Please see the list at: </span><a href=3D"http=
://git.yoctoproject.org/cgit.cgi/poky/tree/meta/conf/distro/include/maintai=
ners.inc" style=3D"text-decoration-line:none" target=3D"_blank"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;text-decorat=
ion-line:underline;vertical-align:baseline">http://git.yoctoproject.org/cgi=
t.cgi/poky/tree/meta/conf/distro/include/maintainers.inc</span></a><span st=
yle=3D"font-size:11pt;background-color:transparent;font-variant-numeric:nor=
mal;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-=
align:baseline"> and discuss with the existing maintainer, or ask on the OE=
-Core mailing list. We will likely move a chunk of these to =E2=80=9CUnassi=
gned=E2=80=9D soon to help facilitate this.</span></p></li><li dir=3D"ltr" =
style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;c=
olor:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-variant-alternates:normal;vertical-align:=
baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;mar=
gin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-si=
ze:11pt;background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline=
">Help is very much welcome in trying to resolve our autobuilder intermitte=
nt issues. You can see the list of failures we=E2=80=99re continuing to see=
 by searching for the =E2=80=9CAB-INT=E2=80=9D tag in bugzilla: </span><a h=
ref=3D"https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=3DAB-INT" =
style=3D"text-decoration-line:none" target=3D"_blank"><span style=3D"font-s=
ize:11pt;background-color:transparent;font-variant-numeric:normal;font-vari=
ant-east-asian:normal;font-variant-alternates:normal;text-decoration-line:u=
nderline;vertical-align:baseline">https://bugzilla.yoctoproject.org/buglist=
.cgi?quicksearch=3DAB-INT</span></a><span style=3D"font-size:11pt;backgroun=
d-color:transparent;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-variant-alternates:normal;vertical-align:baseline">.</span></p></l=
i><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:=
Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant=
-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:norm=
al;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"li=
ne-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><spa=
n style=3D"font-size:11pt;background-color:transparent;font-variant-numeric=
:normal;font-variant-east-asian:normal;font-variant-alternates:normal;verti=
cal-align:baseline">Help us resolve CVE issues: </span><a href=3D"https://a=
utobuilder.yocto.io/pub/non-release/patchmetrics/" style=3D"text-decoration=
-line:none" target=3D"_blank"><span style=3D"font-size:11pt;background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;text-decoration-line:underline;vertical-align:=
baseline">CVE metrics</span></a><span style=3D"font-size:11pt;background-co=
lor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;=
font-variant-alternates:normal;vertical-align:baseline">=C2=A0</span></p></=
li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family=
:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:nor=
mal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"l=
ine-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><sp=
an style=3D"font-size:11pt;background-color:transparent;font-variant-numeri=
c:normal;font-variant-east-asian:normal;font-variant-alternates:normal;vert=
ical-align:baseline">We have a growing number of bugs in bugzilla, any help=
 with them is appreciated.</span></p></li><li dir=3D"ltr" style=3D"list-sty=
le-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);b=
ackground-color:transparent;font-variant-numeric:normal;font-variant-east-a=
sian:normal;font-variant-alternates:normal;vertical-align:baseline;white-sp=
ace:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;backgroun=
d-color:transparent;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-variant-alternates:normal;vertical-align:baseline">Regarding bugs,=
 even if you can=E2=80=99t fix a bug, submitting a failing test case that c=
an reproduce the issue significantly improves the chances it might get fixe=
d.</span></p></li></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,=
sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numer=
ic:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ver=
tical-align:baseline">Tracking Metrics:</span></p><ul style=3D"margin-top:0=
px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:disc;font-si=
ze:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tran=
sparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-var=
iant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-a=
lternates:normal;vertical-align:baseline">WDD 2774 (last week 2772) </span>=
<span style=3D"font-size:11pt;font-family:Consolas,sans-serif;background-co=
lor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;=
font-variant-alternates:normal;vertical-align:baseline">(</span><a href=3D"=
https://wiki.yoctoproject.org/charts/combo.html" style=3D"text-decoration-l=
ine:none" target=3D"_blank"><span style=3D"font-size:11pt;background-color:=
transparent;font-variant-numeric:normal;font-variant-east-asian:normal;font=
-variant-alternates:normal;text-decoration-line:underline;vertical-align:ba=
seline">https://wiki.yoctoproject.org/charts/combo.html</span></a><span sty=
le=3D"font-size:11pt;font-family:Consolas,sans-serif;background-color:trans=
parent;font-variant-numeric:normal;font-variant-east-asian:normal;font-vari=
ant-alternates:normal;vertical-align:baseline">)</span></p></li><li dir=3D"=
ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Consolas,sans=
-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:n=
ormal;font-variant-east-asian:normal;font-variant-alternates:normal;vertica=
l-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D=
"font-size:11pt;font-family:Arial,sans-serif;background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alte=
rnates:normal;vertical-align:baseline">OE-Core/Poky Patch Metrics</span></p=
></li><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=
=3D"list-style-type:circle;font-size:11pt;font-family:Arial,sans-serif;colo=
r:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-variant-alternates:normal;vertical-align:bas=
eline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin=
-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:=
11pt;background-color:transparent;font-variant-numeric:normal;font-variant-=
east-asian:normal;font-variant-alternates:normal;vertical-align:baseline">T=
otal patches found: 1072 (last week 1098)</span></p></li><li dir=3D"ltr" st=
yle=3D"list-style-type:circle;font-size:11pt;font-family:Consolas,sans-seri=
f;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font=
-size:11pt;font-family:Arial,sans-serif;background-color:transparent;font-v=
ariant-numeric:normal;font-variant-east-asian:normal;font-variant-alternate=
s:normal;vertical-align:baseline">Patches in the Pending State: 205 (19%) [=
last week 205 (19%)]</span></p></li></ul><li dir=3D"ltr" style=3D"list-styl=
e-type:disc;font-size:11pt;font-family:Consolas,sans-serif;color:rgb(0,0,0)=
;background-color:transparent;font-variant-numeric:normal;font-variant-east=
-asian:normal;font-variant-alternates:normal;vertical-align:baseline;white-=
space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt" role=3D"presentation"><a href=3D"https://autobuilder.yocto.=
io/pub/non-release/patchmetrics/" style=3D"text-decoration-line:none" targe=
t=3D"_blank"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;bac=
kground-color:transparent;font-variant-numeric:normal;font-variant-east-asi=
an:normal;font-variant-alternates:normal;text-decoration-line:underline;ver=
tical-align:baseline">https://autobuilder.yocto.io/pub/non-release/patchmet=
rics/</span></a></p></li></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family=
:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:nor=
mal;vertical-align:baseline">YP 5.1 Milestone Dates:</span></p><ul style=3D=
"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type=
:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgrou=
nd-color:transparent;font-variant-numeric:normal;font-variant-east-asian:no=
rmal;font-variant-alternates:normal;vertical-align:baseline;white-space:pre=
-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-botto=
m:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-color=
:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fon=
t-variant-alternates:normal;vertical-align:baseline">YP 5.1 M1 is in QA</sp=
an></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;fo=
nt-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;fo=
nt-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alter=
nates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presenta=
tion"><span style=3D"font-size:11pt;background-color:transparent;font-varia=
nt-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:no=
rmal;vertical-align:baseline">YP 5.1 M1 Release date 2024-05-31</span></p><=
/li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-famil=
y:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-varia=
nt-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:no=
rmal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><s=
pan style=3D"font-size:11pt;background-color:transparent;font-variant-numer=
ic:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ver=
tical-align:baseline">YP 5.1 M2 Build date=C2=A0 2024-07-08</span></p></li>=
<li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Ar=
ial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-n=
umeric:normal;font-variant-east-asian:normal;font-variant-alternates:normal=
;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span =
style=3D"font-size:11pt;background-color:transparent;font-variant-numeric:n=
ormal;font-variant-east-asian:normal;font-variant-alternates:normal;vertica=
l-align:baseline">YP 5.1 M2 Release date 2024-07-19</span></p></li><li dir=
=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,san=
s-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:=
normal;font-variant-east-asian:normal;font-variant-alternates:normal;vertic=
al-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline">YP 5.1 M3 Build date=C2=A0 2024-08-26</span></p></li><li dir=
=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,san=
s-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:=
normal;font-variant-east-asian:normal;font-variant-alternates:normal;vertic=
al-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline">YP 5.1 M3 Release date 2024-09-06</span></p></li><li dir=3D"lt=
r" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-seri=
f;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font=
-size:11pt;background-color:transparent;font-variant-numeric:normal;font-va=
riant-east-asian:normal;font-variant-alternates:normal;vertical-align:basel=
ine">YP 5.1 M4 Build date=C2=A0 2024-09-30</span></p></li><li dir=3D"ltr" s=
tyle=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;co=
lor:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-variant-alternates:normal;vertical-align:b=
aseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-siz=
e:11pt;background-color:transparent;font-variant-numeric:normal;font-varian=
t-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline"=
>YP 5.1 M4 Release date 2024-10-25</span></p></li></ul><br><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"f=
ont-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;vertical-align:baseline">Upcoming dot releases=
:</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" =
style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;c=
olor:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;font-variant-alternates:normal;vertical-align:=
baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;mar=
gin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-si=
ze:11pt;background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline=
">YP 4.0.19 is in QA.</span></p></li><li dir=3D"ltr" style=3D"list-style-ty=
pe:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgr=
ound-color:transparent;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-variant-alternates:normal;vertical-align:baseline;white-space:p=
re-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-col=
or:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;f=
ont-variant-alternates:normal;vertical-align:baseline">YP 5.0.2 Build Date =
2024-06-24</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:=
transparent;font-variant-numeric:normal;font-variant-east-asian:normal;font=
-variant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p=
 dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" ro=
le=3D"presentation"><span style=3D"font-size:11pt;background-color:transpar=
ent;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant=
-alternates:normal;vertical-align:baseline">YP 5.0.2 Release Date 2024-07-0=
5</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11=
pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpare=
nt;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-=
alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"l=
tr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"pre=
sentation"><span style=3D"font-size:11pt;background-color:transparent;font-=
variant-numeric:normal;font-variant-east-asian:normal;font-variant-alternat=
es:normal;vertical-align:baseline">YP 4.0.20 Build Date 2024-07-15</span></=
p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-fa=
mily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-va=
riant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates=
:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant-n=
umeric:normal;font-variant-east-asian:normal;font-variant-alternates:normal=
;vertical-align:baseline">YP 4.0.20 Release Date 2024-07-26</span></p></li>=
<li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Ar=
ial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-n=
umeric:normal;font-variant-east-asian:normal;font-variant-alternates:normal=
;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span =
style=3D"font-size:11pt;background-color:transparent;font-variant-numeric:n=
ormal;font-variant-east-asian:normal;font-variant-alternates:normal;vertica=
l-align:baseline">YP 5.0.3 Build Date 2024-08-12</span></p></li><li dir=3D"=
ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-se=
rif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:norm=
al;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-a=
lign:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"fo=
nt-size:11pt;background-color:transparent;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-variant-alternates:normal;vertical-align:bas=
eline">YP 5.0.3 Release Date 2024-08-23</span></p></li><li dir=3D"ltr" styl=
e=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color=
:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-v=
ariant-east-asian:normal;font-variant-alternates:normal;vertical-align:base=
line;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:1=
1pt;background-color:transparent;font-variant-numeric:normal;font-variant-e=
ast-asian:normal;font-variant-alternates:normal;vertical-align:baseline">YP=
 4.0.21 Build Date 2024-09-09</span></p></li><li dir=3D"ltr" style=3D"list-=
style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0=
);background-color:transparent;font-variant-numeric:normal;font-variant-eas=
t-asian:normal;font-variant-alternates:normal;vertical-align:baseline;white=
-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;backgr=
ound-color:transparent;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-variant-alternates:normal;vertical-align:baseline">YP 4.0.21 Re=
lease Date 2024-09-20</span></p></li><li dir=3D"ltr" style=3D"list-style-ty=
pe:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgr=
ound-color:transparent;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-variant-alternates:normal;vertical-align:baseline;white-space:p=
re-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-col=
or:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;f=
ont-variant-alternates:normal;vertical-align:baseline">YP 5.0.4 Build Date =
2024-09-23</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:=
transparent;font-variant-numeric:normal;font-variant-east-asian:normal;font=
-variant-alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p=
 dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" ro=
le=3D"presentation"><span style=3D"font-size:11pt;background-color:transpar=
ent;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant=
-alternates:normal;vertical-align:baseline">YP 5.0.4 Release Date 2024-10-0=
4</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11=
pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpare=
nt;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-=
alternates:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"l=
tr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"pre=
sentation"><span style=3D"font-size:11pt;background-color:transparent;font-=
variant-numeric:normal;font-variant-east-asian:normal;font-variant-alternat=
es:normal;vertical-align:baseline">YP 4.0.22 Build Date 2024-10-14</span></=
p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-fa=
mily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-va=
riant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates=
:normal;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant-n=
umeric:normal;font-variant-east-asian:normal;font-variant-alternates:normal=
;vertical-align:baseline">YP 4.0.22 Release Date 2024-10-25</span></p></li>=
<li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Ar=
ial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-n=
umeric:normal;font-variant-east-asian:normal;font-variant-alternates:normal=
;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span =
style=3D"font-size:11pt;background-color:transparent;font-variant-numeric:n=
ormal;font-variant-east-asian:normal;font-variant-alternates:normal;vertica=
l-align:baseline">YP 5.0.5 Build Date 2024-11-11</span></p></li><li dir=3D"=
ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-se=
rif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:norm=
al;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-a=
lign:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"fo=
nt-size:11pt;background-color:transparent;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-variant-alternates:normal;vertical-align:bas=
eline">YP 5.0.5 Release Date 2024-11-22</span></p></li><li dir=3D"ltr" styl=
e=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color=
:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-v=
ariant-east-asian:normal;font-variant-alternates:normal;vertical-align:base=
line;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:1=
1pt;background-color:transparent;font-variant-numeric:normal;font-variant-e=
ast-asian:normal;font-variant-alternates:normal;vertical-align:baseline">YP=
 4.0.23 Build Date 2024-11-18</span></p></li><li dir=3D"ltr" style=3D"list-=
style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0=
);background-color:transparent;font-variant-numeric:normal;font-variant-eas=
t-asian:normal;font-variant-alternates:normal;vertical-align:baseline;white=
-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;backgr=
ound-color:transparent;font-variant-numeric:normal;font-variant-east-asian:=
normal;font-variant-alternates:normal;vertical-align:baseline">YP 4.0.23 Re=
lease Date 2024-11-29</span></p></li></ul><br><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt=
;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent=
;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-al=
ternates:normal;vertical-align:baseline">The Yocto Project=E2=80=99s techni=
cal governance is through its Technical Steering Committee, more informatio=
n is available at:</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt"><a href=3D"https://wiki.yoctoproject.org/wiki/=
TSC" style=3D"text-decoration-line:none" target=3D"_blank"><span style=3D"f=
ont-size:11pt;font-family:Arial,sans-serif;background-color:transparent;fon=
t-variant-numeric:normal;font-variant-east-asian:normal;font-variant-altern=
ates:normal;text-decoration-line:underline;vertical-align:baseline">https:/=
/wiki.yoctoproject.org/wiki/TSC</span></a></p><br><p dir=3D"ltr" style=3D"l=
ine-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:=
11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpa=
rent;font-variant-numeric:normal;font-variant-east-asian:normal;font-varian=
t-alternates:normal;vertical-align:baseline">The Status reports are now sto=
red on the wiki at: </span><a href=3D"https://wiki.yoctoproject.org/wiki/We=
ekly_Status" style=3D"text-decoration-line:none" target=3D"_blank"><span st=
yle=3D"font-size:11pt;font-family:Arial,sans-serif;background-color:transpa=
rent;font-variant-numeric:normal;font-variant-east-asian:normal;font-varian=
t-alternates:normal;text-decoration-line:underline;vertical-align:baseline"=
>https://wiki.yoctoproject.org/wiki/Weekly_Status</span></a></p><br><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backg=
round-color:transparent;font-variant-numeric:normal;font-variant-east-asian=
:normal;font-variant-alternates:normal;vertical-align:baseline">[If anyone =
has suggestions for other information you=E2=80=99d like to see on this wee=
kly status update, let us know!]</span></p></span><br><div dir=3D"ltr" clas=
s=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><p class=3D"MsoNorm=
al" style=3D"background-image:initial;background-position:initial;backgroun=
d-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-seri=
f">Thanks,<span></span></span></p>

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

--000000000000e2e122061b9cbec8--

