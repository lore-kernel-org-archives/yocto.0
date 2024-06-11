Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41F76C27C65
	for <webhook@archiver.kernel.org>; Tue, 11 Jun 2024 19:04:34 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.1300.1718123972949594015
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jun 2024 09:39:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IMfP5W2D;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2c2fe7f07c4so2385820a91.2;
        Tue, 11 Jun 2024 09:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718123972; x=1718728772; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ij7BZQ19ObIEpBeTtuxGj30Hzv0Tia2wFwmuo8e/Wk=;
        b=IMfP5W2D/ah6Xy4GVJJMi4Xa6Nm76yiZk/8Qw1sWjQe+KhuJyw++miVg1qnPE5cOtR
         y92F9J7pmNqJTlSs1yr30q8lxAR3CA2vDgFGQC3L0x4rHaCaBr8zfzd1FYKdxmGDjULR
         tx8oQPgpQJZ/q+SMydbYAZH3bOV5JIVXLzJXDeDMeADcGoMOzh4ZcQHBEbWJoGce5or9
         /4S3GtMNm1jh0Xl4mB9SApoGrKSbgrlsLbyIBhHoBvSo/+9/L3CrRU+ZutSW4jH5Zcqs
         YLaR/2na/LaybeUs69Cl9rnyVhL9ouF1CvZbzwQVY3pbrWV9h35h/ThWj0qWq5vXKeqq
         ixtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718123972; x=1718728772;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ij7BZQ19ObIEpBeTtuxGj30Hzv0Tia2wFwmuo8e/Wk=;
        b=dXhbwyk9/X+taI4jjrSGfNczcLCiWaaxvhQE3/nQtIGORShzSo98q9dLnQDhansrTc
         xPmLYP8nGnC0QMMTRXOVhKCgyf5fAGllVrpRwb5UM1JBKpljIZkZKDm+VmOxCCiw0sGJ
         4n8ydQV9Xnkj3j57O/cvYLnIQbVHgQPqGMjbZPLKL+nmdaM3/TFUV6whU48ATdOs6tbE
         vY4fQWmu45PlXOU9V+4cVCBsIM2GH2DuBC45aatChDxuV5s04gehaFZr9eSC83ZvlZ+l
         +093lmgXdhuoTB5X+lXYU36+YzLhlyeyeXlkW2ncheGAXpHQB1ax1qwt454HnPWqLO/V
         809w==
X-Forwarded-Encrypted: i=1; AJvYcCWt0XC5oj3m52gwNXCBHAx2Ai0ERGic1o6WA4kYX0zIf47AJMyyABi7cD7HKGnWC/X5SYAvTlFl2EuHM/P53Khr11xLJu8zbbUNhaIeapqOoyYT3A==
X-Gm-Message-State: AOJu0YzeZHn1oDD6NppD/dKrbi247MxwGhwoF+vUbi19j1cGlsyRe0dH
	UrJkI2WxT+E7WwuYTlw4671ik+56LCNyBXqnin8GdB6n7CFQ9eVHmbwVmmDM5sGITfMBedPtcZg
	uU2j2LLwda2Ln9WFSK+qo1GVt8TigjnIEM5k=
X-Google-Smtp-Source: AGHT+IEyiuO3XRp7yuj7D/piCkIyCBI0tZPdiRpbH88/mxiC1hd+rPrV1rrAHMI6QlSJPRlYb+q3sL+j2YxdU7yNa3w=
X-Received: by 2002:a17:90b:30d5:b0:2c3:245:8b37 with SMTP id
 98e67ed59e1d1-2c30245918amr6086927a91.33.1718123971875; Tue, 11 Jun 2024
 09:39:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb-XZMRnfJuC66B=FoOhOXkvwfpsFDES2FH+Vcp61vR=_w@mail.gmail.com>
In-Reply-To: <CAK5yBb-XZMRnfJuC66B=FoOhOXkvwfpsFDES2FH+Vcp61vR=_w@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 11 Jun 2024 18:39:20 +0200
Message-ID: <CAGAf8LyRq4rUgZoSLmWQmU-U+WC0myJkM7_vYxN1v6AZ0rXHjw@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Status 11 June 2024 (WW24)
To: yocto@lists.yoctoproject.org, sjolley.yp.pm@gmail.com
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jun 2024 19:04:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63322

Hello Stephen,

If you allow me... Few questions, mainly to clarify things. For laics like =
me.

> We have a fix for the final Fedora 40 issue, thanks Victor.

This is this problem with the GCC 14.1 compiler, correct?

So, as my understanding is, the YP 5.0.2 Build Date 2024-06-24 will
include GCC 14.1 package?

Or maybe YP 5.0.2 Release Date 2024-07-05 will introduce it?

It seems to me that the difference between these dates is a testing
time, for the YOCTO testers and for the YOCTO community to finalize YP
5.0.2?

So, seems logically to me that the YP 5.0.2 Build Date 2024-06-24
introduces the GCC 14.1 package?

Thank you,
Zee
_______


On Tue, Jun 11, 2024 at 4:53=E2=80=AFPM Stephen Jolley via
lists.yoctoproject.org
<sjolley.yp.pm=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Current Dev Position: YP 5.1 M2
>
> Next Deadline: YP 5.1 M2 Build 8 July 2024
>
>
> Next Team Meetings:
>
> Bug Triage meeting Thursday June 13th at 7:30 am PST (https://zoom.us/j/4=
54367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09)
>
> Weekly Project Engineering Sync Tuesday June 11th at 8 am PST (https://zo=
om.us/j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09)
>
> Twitch -  See https://www.twitch.tv/theyoctojester
>
>
> Key Status/Updates:
>
> YP 4.0.19 has been through QA and is due for release
>
> YP 5.1 M1 rc2 is in QA
>
> RFC patches for the CVE tooling changes have been posted, help in review =
is appreciated
>
> There are SPDX 3.0 patches ready for review on the mailing list
>
> There are patches proposing that missing patch Upstream-Status entries be=
 a fatal QA error, this is likely to merge soon as there have been no objec=
tions to it.
>
> We have a fix for the final Fedora 40 issue, thanks Victor.
>
> We appreciate everyone fixing layers to work with master after recent cha=
nges, the autobuilder health is looking greener, thanks!
>
> The copy_unihashes function was dropped from bitbake after the locked sig=
nature file improvements which simplifies further tooling work
>
> There is discussion on openembedded-architecture about the details around=
  configuration fragment tooling potentially being integrated into bitbake
>
> There is an open letter the project has created related to the CVE/NVD si=
tuation, more information is available here: https://lists.openembedded.org=
/g/openembedded-architecture/message/1990
>
> Please consider signing this to show support for those changes.
>
> Signatures from small businesses/consultancies are as welcome as those fr=
om larger organizations as we want to demonstrate the breadth of the need f=
or these changes.
>
> We continue to have trouble tracking down the rust reproducibility proble=
m in rustdoc.
>
> Through post release upgrading our patch count reduced again and is now t=
he lowest level since July 2008!
>
>
> Ways to contribute:
>
> As people are likely aware, the project has a number of components which =
are either unmaintained, or have people with little to no time trying to ke=
ep them alive. These components include: devtool, toaster, wic, oeqa, autob=
uilder, CROPs containers, pseudo and more. Many have open bugs. Help is wel=
come in trying to better look after these components!
>
> There are bugs identified as possible for newcomers to the project: https=
://wiki.yoctoproject.org/wiki/Newcomers
>
> There are bugs that are currently unassigned for YP 5.1. See: https://wik=
i.yoctoproject.org/wiki/Bug_Triage#Medium+_5.1_Unassigned_Enhancements/Bugs
>
> We=E2=80=99d welcome new maintainers for recipes in OE-Core. Please see t=
he list at: http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/conf/distro=
/include/maintainers.inc and discuss with the existing maintainer, or ask o=
n the OE-Core mailing list. We will likely move a chunk of these to =E2=80=
=9CUnassigned=E2=80=9D soon to help facilitate this.
>
> Help is very much welcome in trying to resolve our autobuilder intermitte=
nt issues. You can see the list of failures we=E2=80=99re continuing to see=
 by searching for the =E2=80=9CAB-INT=E2=80=9D tag in bugzilla: https://bug=
zilla.yoctoproject.org/buglist.cgi?quicksearch=3DAB-INT.
>
> Help us resolve CVE issues: CVE metrics
>
> We have a growing number of bugs in bugzilla, any help with them is appre=
ciated.
>
> Regarding bugs, even if you can=E2=80=99t fix a bug, submitting a failing=
 test case that can reproduce the issue significantly improves the chances =
it might get fixed.
>
>
> Tracking Metrics:
>
> WDD 2774 (last week 2772) (https://wiki.yoctoproject.org/charts/combo.htm=
l)
>
> OE-Core/Poky Patch Metrics
>
> Total patches found: 1072 (last week 1098)
>
> Patches in the Pending State: 205 (19%) [last week 205 (19%)]
>
> https://autobuilder.yocto.io/pub/non-release/patchmetrics/
>
>
> YP 5.1 Milestone Dates:
>
> YP 5.1 M1 is in QA
>
> YP 5.1 M1 Release date 2024-05-31
>
> YP 5.1 M2 Build date  2024-07-08
>
> YP 5.1 M2 Release date 2024-07-19
>
> YP 5.1 M3 Build date  2024-08-26
>
> YP 5.1 M3 Release date 2024-09-06
>
> YP 5.1 M4 Build date  2024-09-30
>
> YP 5.1 M4 Release date 2024-10-25
>
>
> Upcoming dot releases:
>
> YP 4.0.19 is in QA.
>
> YP 5.0.2 Build Date 2024-06-24
>
> YP 5.0.2 Release Date 2024-07-05
>
> YP 4.0.20 Build Date 2024-07-15
>
> YP 4.0.20 Release Date 2024-07-26
>
> YP 5.0.3 Build Date 2024-08-12
>
> YP 5.0.3 Release Date 2024-08-23
>
> YP 4.0.21 Build Date 2024-09-09
>
> YP 4.0.21 Release Date 2024-09-20
>
> YP 5.0.4 Build Date 2024-09-23
>
> YP 5.0.4 Release Date 2024-10-04
>
> YP 4.0.22 Build Date 2024-10-14
>
> YP 4.0.22 Release Date 2024-10-25
>
> YP 5.0.5 Build Date 2024-11-11
>
> YP 5.0.5 Release Date 2024-11-22
>
> YP 4.0.23 Build Date 2024-11-18
>
> YP 4.0.23 Release Date 2024-11-29
>
>
> The Yocto Project=E2=80=99s technical governance is through its Technical=
 Steering Committee, more information is available at:
>
> https://wiki.yoctoproject.org/wiki/TSC
>
>
> The Status reports are now stored on the wiki at: https://wiki.yoctoproje=
ct.org/wiki/Weekly_Status
>
>
> [If anyone has suggestions for other information you=E2=80=99d like to se=
e on this weekly status update, let us know!]
>
>
> Thanks,
>
>
>
> Stephen K. Jolley
>
> Yocto Project Program Manager
>
> (    Cell:                (208) 244-4460
>
> * Email:                 sjolley.yp.pm@gmail.com
>
>
>=20
>

