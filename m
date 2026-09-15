Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8BCEC88E75
	for <webhook@archiver.kernel.org>; Tue, 15 Sep 2026 14:52:27 +0000 (UTC)
Received: from mail-pz2-f12.google.com (mail-pz2-f12.google.com [74.125.228.12])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.25141.1789483946536354803
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Sep 2026 07:52:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=WZtIdJsh;
 spf=pass (domain: gmail.com, ip: 74.125.228.12, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pz2-f12.google.com with SMTP id d2e1a72fcca58-85469b2e1d7so2694611b3a.0
        for <yocto@lists.yoctoproject.org>; Tue, 15 Sep 2026 07:52:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789483946; cv=none;
        d=google.com; s=arc-20260327;
        b=hVUWsPXOAvg1L5eAiX9JtVdZvAhEs/YeBw5v7C9zG2/1ejlnradKGqGYhBn4OwycdH
         0KF82cUBwMWwLaEbVFRrCmnuWFxZj8YQkmnIz5sKHOh8cRDBzclclgyrDNalJipPDugx
         j3bJymPWYjmtdsDTvNx75Hs+8oQROanrafNdbXsPQva8eXGOG7zEdkxaKP/KuO6flor+
         0UetG01v3wz9hErb5p6wUrJIQIHKlhZFwe4PYhYWvysZsLeiPE6eN7egg0hMoWxxqA/g
         efzOxoF4YZL5dTnwZbV2iSKN7Jf9aCZE+Nd/xVDlYaA4r3UNyCttq2XEdO3DM5fMORVk
         UptA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=cwAH6fCDqwuuJuHnkgPmG8zptBDJFVCWHo2FxaCj4+A=;
        fh=o/Rz/wHjkEPQzjeT84wFAd2PuiZZ0xTjUSMI95g/gEc=;
        b=ED6JGdQzOiJc8gE3Pul+GUSqlSCdQuZptvpORCD0qtG/srTD8gI/oqHxeeHTJRBO9r
         yw5LuPqIwbx/ld4S8obWjs/bHPBEONzrtZ2jed8wYoANr3J1pN4H+At4edV55b4ZfmbA
         mOk9XoHUTIGf+/jamUIO/YcRym5qZ6SW+7Ug0pB6xZRq+UCv/ji+pofaHJxu+TmffLm+
         p2YUwDsANvdev8KBUy471RPIgDFHJoMF7So+H4cmgAVdhUsmzVcdiBMSAGqSEx87Vj2H
         4fvdMlQvWHmG8Rxn7VhkANlCKyyiUw6svjKGJAc8J3QSh/9bSNtmfMSVmqqgPYZZlIjq
         KbRw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789483946; x=1790088746; darn=lists.yoctoproject.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=cwAH6fCDqwuuJuHnkgPmG8zptBDJFVCWHo2FxaCj4+A=;
        b=WZtIdJshlPnk3z49KWs7zEADEVovgLUfQVYBT0l7SfITOAn36/lrRsZGiCIWaaooYe
         VlhouYBLyl6g7vV0o3LxuoQFU7Y5kdjtuen16nP2cj/moD9vdGGwo3NGroS4KLtFjN+k
         q5bD5pt4xHITCJZEOuK+LGQRkS+TeMGDuRP0WDj/stsLkaOVaW7nXZL4eGS4If1TXSy9
         TJyK/jJJ4ERLQ4rxxA7qqUxbCJZb0zR0lux9LYfLVB1ccK1Ioq+Vfyua+rw0Z9pM1vC0
         gnq3v3kc4R/zZ6DtdLeQEGrFUpWrvLee8/jhC+6Mk4dcrw73RUNfmlhkfQUag42Bdvg6
         Y1fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789483946; x=1790088746;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cwAH6fCDqwuuJuHnkgPmG8zptBDJFVCWHo2FxaCj4+A=;
        b=1qBj8OYTSuUwDkOdYSx8HWgCHi0IM+o4brIKA6WFqzoBcvfFdaWjDPtBGUWtypPG4J
         CnMzkp3rEvrODiupI5Vqoy4yIxQ4Jnz33U17+2CQ5g/XhP5jzq6Mrxtz5x12WmZIX1SO
         iBtWZwIXVI9xb8rJW05DeCuxUfTUienmm78rL0qrYhpS+yJeCQFfDBKVG8bvk8d8BD4L
         twYHxqcKfX+6X9VwFAKiPCs4MZkekN90/mLIXge+8FlCAKeZRuN/zg9f+Il0LSRLcmzl
         MNVBAUnKY2iYrtGT505WPLnbdlRRgdfUjp0iQFM4kwuFGCBIjSgi9ibjtMt1biljCuFj
         7uWw==
X-Gm-Message-State: AFuF++mJns0mbTxOWL+ixqG0vB3fwXNQ00ebTotO3/P9qGVw8Ifm0a6d
	kCD76WyDD8XQqxJ5MmCeOXMbmLEej3wZN2y0jBoEwiW/dFcBNSTOo/4o/eoEpssGDxZSIteSOb2
	k4qtt7woCEeRko6yml4gQ533XP1UQ85M4pnwx
X-Gm-Gg: AYBFou2VspyZv0A3kzAKaf1mJ0HGHdvRHgNxrz615UrvX9g8xDsr4DsurGOIUlCnRNw
	N9pYPxhFYUODFTscKdT2qGqQvd1kr86EEEk2z1kS/6dsvGpd7iVoHBGHga6mkM3CGTSSisnfJVR
	G9RGxePTtx7+S6DPAPfH7TO47WwX73l6T5AOlQP/pNQeM2kzTw1KxLp6bDSzHUMbeci75N3cTeS
	SHAv7CD1V1kW4KoqIJ9o2Tu/zyn/nclHWvLt/sIFrxWBfKT80ELP2dSL7X4/N5CV4JOmpG3d+/E
	1qPsUdNypsNsZOxrSyM9IHlRsYZJWo8BgngdlUw1runMieVsQkUQhGJOtggtJs9KcaZ/yxmSbBk
	jjmc80alPNfjpG1Oh+yG2VjTV9lNEVX0Nzdd6F2eE/dcDO264zxbE2Twe9bT6vhvbKnpRMraO3r
	PXq1hrzgQXYEZk34+P/s9o4Eu7FRoNPdwnTaprzK2AKCuSwwjz/0qJmVwN0IMrsbgtIHXjBhzO9
	a/++0onj9Fum1sK/NJ/9PJ+1ChTK2ZEXBG9
X-Received: by 2002:a05:6a21:113:b0:3da:b761:80c0 with SMTP id
 adf61e73a8af0-3db4064ebaamr20330011637.14.1789483944367; Tue, 15 Sep 2026
 07:52:24 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 15 Sep 2026 07:52:12 -0700
X-Gm-Features: AcwNN1WUgHs4VTbo8B2xda-aH6vC23KkxDe0kh3_9mTjD043R-JWfyEe6ytoslw
Message-ID: <CAK5yBb_i-7yaEz_Ten=FzOhKM0cvsjcsfvfdR++bHcEpOjvd1w@mail.gmail.com>
Subject: Yocto Project Status 15 September 2026 (WW38)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d5dc57065b86b2e1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Sep 2026 14:52:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66723

--000000000000d5dc57065b86b2e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Current Dev Position: YP 6.1 M4 - Stabilisation (Bug Fixing)

Next Deadline: YP 6.1 M4: w/c 2026-10-12

Next Team Meetings:

   -

   Bug Triage meeting - Thursday 17th Sept. 7:30am PDT (
   https://zoom.us/j/454367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09)
   -

   Weekly Project Engineering Sync  - Tuesday 15th Sept. 8am PDT (
   https://zoom.us/j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09)
   <https://zoom.us/j/990892712>
   -

   Yocto Project Patch Review - Thursday 17th Sept. 10am GMT and Monday
   21st Sept. 9am PDT (
   https://zoom.us/j/97762397148?pwd=3D1xk0iC9hp9SjEonaTaONwTb6iWry4Eb.1)


Project data dashboard: https://dashboard.yoctoproject.org/

Key Status/Updates:

   -

   YP 5.0.20 is due for release
   -

   YP 6.1 M3 is in QA
   -

   We have removed much of the github.com usage in bitbake-selftest which
   is improving autobuilder connectivity issues. Some references remain, se=
e
   the link below.
   -

   There is a possibility that openssl 4.0 is causing TLS issues in git
   connection requests in CI. Help/insight welcome.
   -

   There is a vblank kernel warning message causing problems in CI with the
   7.2 kernel.
   -

   Given the limited number of people working on bug fixing, the number of
   issues likely to be fixed in M4 is low and we are considering speeding u=
p
   M4 by a few weeks, allowing more time for 6.2 M1 and for the release to =
be
   built by ELC in Prague.
   -

   AI scrapers and bots continue to impact the infrastructure, taking huge
   amounts of time for our sysadmins and with a significant cost impact to =
the
   project.
   -

   Adrian has made significant improvements to the IDE integration with
   devtool which have now merged, thanks!
   -

   There are issues which are in a position where others could now help:
   -

      Matchbox-wm segfault/xserver restart
      -

      aarch64/x86-64 build host contamination/reproducibility issue -
      thanks for the work and fixes so far on this.
      -

      See Richard=E2=80=99s email on the list
      https://lists.openembedded.org/g/openembedded-core/topic/areas_we_cou=
ld_do_with/121159956
      which details some others too

We get a lot of comments about these being hard to reproduce or work on, in
both cases, these have specific well defined things which need to be done
and a basic understanding of what the issue relates to, if not the actual
fix.

Want to contribute? We would appreciate help with the following areas:

   -

   We have several open issues for pseudo and limited maintainer time to
   work on them. Help from someone familiar with systems programming in C
   would be greatly appreciated.
   https://bugzilla.yoctoproject.org/buglist.cgi?list_id=3D661406&priority=
=3DHigh&priority=3DMedium%2B&product=3DPseudo&query_format=3Dadvanced&resol=
ution=3D---
   -

   There are a large number of intermittent failures on our autobuilder,
   any help with investigating, reproducing or solving these issues would b=
e
   welcome! https://valkyrie.yocto.io/pub/non-release/abint/
   -

   Many recipes in openembedded-core would benefit from a new recipe
   maintainer. Please look at
   https://git.openembedded.org/openembedded-core/tree/meta/conf/distro/inc=
lude/maintainers.inc
   and see if you can adopt any of the unassigned recipes.
   -

   For more ways to contribute, see
   https://docs.google.com/document/d/18oxKWxLorfF813h82mK6yKTIHeBp_-9owFuC=
WbzgjOk/edit?usp=3Dsharing


New to the project?

   -

   We have a list of issues we think are good places to start contributing:
   https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=3DNEWCOMER


Tracking Metrics:

   -

   WDD 2647 (last week 2622) (
   https://wiki.yoctoproject.org/charts/combo.html)
   -

   OE-Core/Poky Patch Metrics
   -

      Total patches found: 1054 (last week 1050)
      -

      Patches in the Pending State: 135 (13%) [last week 136 (13%)]
      -

      https://valkyrie.yocto.io/pub/non-release/patchmetrics/


Upcoming development releases:

   -

   6.1 M3: is in QA.
   -

      Release Date: w/c 2026-09-14
      -

   6.1.0:
   -

      Build Date (M4): w/c 2026-10-12
      -

      Release Date: w/c 2026-11-02


Upcoming dot releases:

   -

   YP 5.0.20 is due for release.
   -

      Release Date w/c 2026-08-31
      -

   YP 6.0.4
   -

      Build Date w/c 2026-09-28
      -

      Release Date w/c 2026-10-12
      -

   YP 5.0.21
   -

      Build Date w/c 2026-10-05
      -

      Release Date w/c 2026-10-19
      -

   For future release dates, see
   https://wiki.yoctoproject.org/wiki/Release_calendar


The Yocto Project=E2=80=99s technical governance is through its Technical S=
teering
Committee, more information is available at:

https://wiki.yoctoproject.org/wiki/TSC

The Status reports are stored on the wiki at:
https://wiki.yoctoproject.org/wiki/Weekly_Status

[If anyone has suggestions for other information you=E2=80=99d like to see =
on this
weekly status update, let us know!]

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>=
*

--000000000000d5dc57065b86b2e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span id=3D"gmail-docs-internal-guid-50cc1603-7fff-43=
dc-5218-036b4b1639ad"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-=
serif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;ver=
tical-align:baseline;white-space:pre-wrap">Current Dev Position: YP 6.1 M4 =
- Stabilisation (Bug Fixing)</span></p><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-f=
amily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-v=
ariant:normal;vertical-align:baseline;white-space:pre-wrap">Next Deadline: =
YP 6.1 M4: w/c 2026-10-12</span></p><br><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-=
family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-=
variant:normal;vertical-align:baseline;white-space:pre-wrap">Next Team Meet=
ings:</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"l=
tr" style=3D"list-style-type:disc;font-size:9.5pt;font-family:Arial,sans-se=
rif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;verti=
cal-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"fo=
nt-size:11pt;background-color:transparent;font-variant:normal;vertical-alig=
n:baseline;white-space:pre-wrap">Bug Triage meeting - Thursday 17th Sept. 7=
:30am PDT (</span><a href=3D"https://zoom.us/j/454367603?pwd=3DZGxoa2ZXL3Fk=
M3Y0bFd5aVpHVVZ6dz09" style=3D"text-decoration:none"><span style=3D"font-si=
ze:11pt;background-color:transparent;font-variant:normal;text-decoration:un=
derline;vertical-align:baseline;white-space:pre-wrap">https://zoom.us/j/454=
367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09</span></a><span style=3D"font=
-size:11pt;background-color:transparent;font-variant:normal;vertical-align:=
baseline;white-space:pre-wrap">)</span></p></li><li dir=3D"ltr" style=3D"li=
st-style-type:disc;font-size:9.5pt;font-family:Arial,sans-serif;color:rgb(0=
,0,0);background-color:transparent;font-variant:normal;vertical-align:basel=
ine;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;ba=
ckground-color:transparent;font-variant:normal;vertical-align:baseline;whit=
e-space:pre-wrap">Weekly Project Engineering Sync=C2=A0 - Tuesday 15th Sept=
. 8am PDT (</span><a href=3D"https://zoom.us/j/990892712?pwd=3DcHU1MjhoM2x6=
ck81bkcrYjRrcmJsUT09" style=3D"text-decoration:none"><span style=3D"font-si=
ze:11pt;background-color:transparent;font-variant:normal;text-decoration:un=
derline;vertical-align:baseline;white-space:pre-wrap">https://zoom.us/j/990=
892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09</span></a><a href=3D"https://=
zoom.us/j/990892712" style=3D"text-decoration:none"><span style=3D"font-siz=
e:11pt;background-color:transparent;font-variant:normal;text-decoration:und=
erline;vertical-align:baseline;white-space:pre-wrap">)</span></a></p></li><=
li dir=3D"ltr" style=3D"list-style-type:disc;font-size:9.5pt;font-family:Ar=
ial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant:n=
ormal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span =
style=3D"font-size:11pt;background-color:transparent;font-variant:normal;ve=
rtical-align:baseline;white-space:pre-wrap">Yocto Project Patch Review - Th=
ursday 17th Sept. 10am GMT and Monday 21st Sept. 9am PDT (</span><a href=3D=
"https://zoom.us/j/97762397148?pwd=3D1xk0iC9hp9SjEonaTaONwTb6iWry4Eb.1" sty=
le=3D"text-decoration:none"><span style=3D"font-size:11pt;background-color:=
transparent;font-variant:normal;text-decoration:underline;vertical-align:ba=
seline;white-space:pre-wrap">https://zoom.us/j/97762397148?pwd=3D1xk0iC9hp9=
SjEonaTaONwTb6iWry4Eb.1</span></a><span style=3D"font-size:11pt;background-=
color:transparent;font-variant:normal;vertical-align:baseline;white-space:p=
re-wrap">)</span></p></li></ul><br><p dir=3D"ltr" style=3D"line-height:1.38=
;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-famil=
y:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-varia=
nt:normal;vertical-align:baseline;white-space:pre-wrap">Project data dashbo=
ard: </span><a href=3D"https://dashboard.yoctoproject.org/" style=3D"text-d=
ecoration:none"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;=
background-color:transparent;font-variant:normal;text-decoration:underline;=
vertical-align:baseline;white-space:pre-wrap">https://dashboard.yoctoprojec=
t.org/</span></a><span style=3D"font-size:11pt;font-family:Arial,sans-serif=
;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vertical=
-align:baseline;white-space:pre-wrap">=C2=A0</span></p><br><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"f=
ont-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-colo=
r:transparent;font-variant:normal;vertical-align:baseline;white-space:pre-w=
rap">Key Status/Updates:</span></p><ul style=3D"margin-top:0px;margin-botto=
m:0px"><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-fa=
mily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-va=
riant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant:n=
ormal;vertical-align:baseline;white-space:pre-wrap">YP 5.0.20 is due for re=
lease</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-siz=
e:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:trans=
parent;font-variant:normal;vertical-align:baseline;white-space:pre"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">YP 6.1 =
M3 is in QA</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;fo=
nt-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color=
:transparent;font-variant:normal;vertical-align:baseline;white-space:pre"><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" r=
ole=3D"presentation"><span style=3D"font-size:11pt;background-color:transpa=
rent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">We h=
ave removed much of the <a href=3D"http://github.com">github.com</a> usage =
in bitbake-selftest which is improving autobuilder connectivity issues. Som=
e references remain, see the link below.</span></p></li><li dir=3D"ltr" sty=
le=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;colo=
r:rgb(0,0,0);background-color:transparent;font-variant:normal;vertical-alig=
n:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin=
-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:=
11pt;background-color:transparent;font-variant:normal;vertical-align:baseli=
ne;white-space:pre-wrap">There is a possibility that openssl 4.0 is causing=
 TLS issues in git connection requests in CI. Help/insight welcome.</span><=
/p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-f=
amily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-v=
ariant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant:n=
ormal;vertical-align:baseline;white-space:pre-wrap">There is a vblank kerne=
l warning message causing problems in CI with the 7.2 kernel.</span></p></l=
i><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:=
Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant=
:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"li=
ne-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><spa=
n style=3D"font-size:11pt;background-color:transparent;font-variant:normal;=
vertical-align:baseline;white-space:pre-wrap">Given the limited number of p=
eople working on bug fixing, the number of issues likely to be fixed in M4 =
is low and we are considering speeding up M4 by a few weeks, allowing more =
time for 6.2 M1 and for the release to be built by ELC in Prague.</span></p=
></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-fam=
ily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-var=
iant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant:n=
ormal;vertical-align:baseline;white-space:pre-wrap">AI scrapers and bots co=
ntinue to impact the infrastructure, taking huge amounts of time for our sy=
sadmins and with a significant cost impact to the project.</span></p></li><=
li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Ari=
al,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant:no=
rmal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span s=
tyle=3D"font-size:11pt;background-color:transparent;font-variant:normal;ver=
tical-align:baseline;white-space:pre-wrap">Adrian has made significant impr=
ovements to the IDE integration with devtool which have now merged, thanks!=
</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparen=
t;font-variant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"pres=
entation"><span style=3D"font-size:11pt;background-color:transparent;font-v=
ariant:normal;vertical-align:baseline;white-space:pre-wrap">There are issue=
s which are in a position where others could now help:</span></p></li><ul s=
tyle=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-sty=
le-type:circle;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0)=
;background-color:transparent;font-variant:normal;vertical-align:baseline;w=
hite-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;backgro=
und-color:transparent;font-variant:normal;vertical-align:baseline;white-spa=
ce:pre-wrap">Matchbox-wm segfault/xserver restart</span></p></li><li dir=3D=
"ltr" style=3D"list-style-type:circle;font-size:11pt;font-family:Arial,sans=
-serif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;ve=
rtical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D=
"font-size:11pt;background-color:transparent;font-variant:normal;vertical-a=
lign:baseline;white-space:pre-wrap">aarch64/x86-64 build host contamination=
/reproducibility issue - thanks for the work and fixes so far on this.</spa=
n></p></li><li dir=3D"ltr" style=3D"list-style-type:circle;font-size:11pt;f=
ont-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;f=
ont-variant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" =
style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"present=
ation"><span style=3D"font-size:11pt;background-color:transparent;font-vari=
ant:normal;vertical-align:baseline;white-space:pre-wrap">See Richard=E2=80=
=99s email on the list </span><a href=3D"https://lists.openembedded.org/g/o=
penembedded-core/topic/areas_we_could_do_with/121159956" style=3D"text-deco=
ration:none"><span style=3D"font-size:11pt;background-color:transparent;fon=
t-variant:normal;text-decoration:underline;vertical-align:baseline;white-sp=
ace:pre-wrap">https://lists.openembedded.org/g/openembedded-core/topic/area=
s_we_could_do_with/121159956</span></a><span style=3D"font-size:11pt;backgr=
ound-color:transparent;font-variant:normal;vertical-align:baseline;white-sp=
ace:pre-wrap"> which details some others too</span></p></li></ul></ul><p di=
r=3D"ltr" style=3D"line-height:1.38;margin-left:36pt;margin-top:0pt;margin-=
bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;colo=
r:rgb(0,0,0);background-color:transparent;font-variant:normal;vertical-alig=
n:baseline;white-space:pre-wrap">We get a lot of comments about these being=
 hard to reproduce or work on, in both cases, these have specific well defi=
ned things which need to be done and a basic understanding of what the issu=
e relates to, if not the actual fix.</span></p><br><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size=
:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transp=
arent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Wan=
t to contribute? We would appreciate help with the following areas:</span><=
/p><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"=
list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(=
0,0,0);background-color:transparent;font-variant:normal;vertical-align:base=
line;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;b=
ackground-color:transparent;font-variant:normal;vertical-align:baseline;whi=
te-space:pre-wrap">We have several open issues for pseudo and limited maint=
ainer time to work on them. Help from someone familiar with systems program=
ming in C would be greatly appreciated. </span><a href=3D"https://bugzilla.=
yoctoproject.org/buglist.cgi?list_id=3D661406&amp;priority=3DHigh&amp;prior=
ity=3DMedium%2B&amp;product=3DPseudo&amp;query_format=3Dadvanced&amp;resolu=
tion=3D---" style=3D"text-decoration:none"><span style=3D"font-size:11pt;ba=
ckground-color:transparent;font-variant:normal;text-decoration:underline;ve=
rtical-align:baseline;white-space:pre-wrap">https://bugzilla.yoctoproject.o=
rg/buglist.cgi?list_id=3D661406&amp;priority=3DHigh&amp;priority=3DMedium%2=
B&amp;product=3DPseudo&amp;query_format=3Dadvanced&amp;resolution=3D---</sp=
an></a></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparen=
t;font-variant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"pres=
entation"><span style=3D"font-size:11pt;background-color:transparent;font-v=
ariant:normal;vertical-align:baseline;white-space:pre-wrap">There are a lar=
ge number of intermittent failures on our autobuilder, any help with invest=
igating, reproducing or solving these issues would be welcome! </span><a hr=
ef=3D"https://valkyrie.yocto.io/pub/non-release/abint/" style=3D"text-decor=
ation:none"><span style=3D"font-size:11pt;background-color:transparent;font=
-variant:normal;text-decoration:underline;vertical-align:baseline;white-spa=
ce:pre-wrap">https://valkyrie.yocto.io/pub/non-release/abint/</span></a></p=
></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-fam=
ily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-var=
iant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant:n=
ormal;vertical-align:baseline;white-space:pre-wrap">Many recipes in openemb=
edded-core would benefit from a new recipe maintainer. Please look at </spa=
n><a href=3D"https://git.openembedded.org/openembedded-core/tree/meta/conf/=
distro/include/maintainers.inc" style=3D"text-decoration:none"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant:normal;text-de=
coration:underline;vertical-align:baseline;white-space:pre-wrap">https://gi=
t.openembedded.org/openembedded-core/tree/meta/conf/distro/include/maintain=
ers.inc</span></a><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant:normal;vertical-align:baseline;white-space:pre-wrap"> and se=
e if you can adopt any of the unassigned recipes.</span></p></li><li dir=3D=
"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-s=
erif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vert=
ical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.=
38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"f=
ont-size:11pt;background-color:transparent;font-variant:normal;vertical-ali=
gn:baseline;white-space:pre-wrap">For more ways to contribute, see </span><=
a href=3D"https://docs.google.com/document/d/18oxKWxLorfF813h82mK6yKTIHeBp_=
-9owFuCWbzgjOk/edit?usp=3Dsharing" style=3D"text-decoration:none"><span sty=
le=3D"font-size:11pt;background-color:transparent;font-variant:normal;text-=
decoration:underline;vertical-align:baseline;white-space:pre-wrap">https://=
docs.google.com/document/d/18oxKWxLorfF813h82mK6yKTIHeBp_-9owFuCWbzgjOk/edi=
t?usp=3Dsharing</span></a></p></li></ul><br><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;f=
ont-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;f=
ont-variant:normal;vertical-align:baseline;white-space:pre-wrap">New to the=
 project?</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=
=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,san=
s-serif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;v=
ertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant:normal;vertica=
l-align:baseline;white-space:pre-wrap">We have a list of issues we think ar=
e good places to start contributing: </span><a href=3D"https://bugzilla.yoc=
toproject.org/buglist.cgi?quicksearch=3DNEWCOMER" style=3D"text-decoration:=
none"><span style=3D"font-size:11pt;background-color:transparent;font-varia=
nt:normal;text-decoration:underline;vertical-align:baseline;white-space:pre=
-wrap">https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=3DNEWCOMER=
</span></a></p></li></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Aria=
l,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant:nor=
mal;vertical-align:baseline;white-space:pre-wrap">Tracking Metrics:</span><=
/p><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"=
list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(=
0,0,0);background-color:transparent;font-variant:normal;vertical-align:base=
line;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;b=
ackground-color:transparent;font-variant:normal;vertical-align:baseline;whi=
te-space:pre-wrap">WDD 2647 (last week 2622) </span><span style=3D"font-siz=
e:11pt;font-family:Consolas,sans-serif;background-color:transparent;font-va=
riant:normal;vertical-align:baseline;white-space:pre-wrap">(</span><a href=
=3D"https://wiki.yoctoproject.org/charts/combo.html" style=3D"text-decorati=
on:none"><span style=3D"font-size:11pt;background-color:transparent;font-va=
riant:normal;text-decoration:underline;vertical-align:baseline;white-space:=
pre-wrap">https://wiki.yoctoproject.org/charts/combo.html</span></a><span s=
tyle=3D"font-size:11pt;font-family:Consolas,sans-serif;background-color:tra=
nsparent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">=
)</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11=
pt;font-family:Consolas,sans-serif;color:rgb(0,0,0);background-color:transp=
arent;font-variant:normal;vertical-align:baseline;white-space:pre"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;font-family:Arial,sans-seri=
f;background-color:transparent;font-variant:normal;vertical-align:baseline;=
white-space:pre-wrap">OE-Core/Poky Patch Metrics</span></p></li><ul style=
=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-t=
ype:circle;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);bac=
kground-color:transparent;font-variant:normal;vertical-align:baseline;white=
-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-=
color:transparent;font-variant:normal;vertical-align:baseline;white-space:p=
re-wrap">Total patches found: 1054 (last week 1050)</span></p></li><li dir=
=3D"ltr" style=3D"list-style-type:circle;font-size:11pt;font-family:Arial,s=
ans-serif;color:rgb(0,0,0);background-color:transparent;font-variant:normal=
;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant:normal;vertica=
l-align:baseline;white-space:pre-wrap">Patches in the Pending State: 135 (1=
3%) [last week 136 (13%)]</span></p></li><li dir=3D"ltr" style=3D"list-styl=
e-type:circle;font-size:11pt;font-family:Consolas,sans-serif;color:rgb(0,0,=
0);background-color:transparent;font-variant:normal;vertical-align:baseline=
;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt" role=3D"presentation"><a href=3D"https://valkyrie.yocto.i=
o/pub/non-release/patchmetrics/" style=3D"text-decoration:none"><span style=
=3D"font-size:11pt;font-family:Arial,sans-serif;background-color:transparen=
t;font-variant:normal;text-decoration:underline;vertical-align:baseline;whi=
te-space:pre-wrap">https://valkyrie.yocto.io/pub/non-release/patchmetrics/<=
/span></a></p></li></ul></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:=
Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant=
:normal;vertical-align:baseline;white-space:pre-wrap">Upcoming development =
releases:</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=
=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,san=
s-serif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;v=
ertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant:normal;vertica=
l-align:baseline;white-space:pre-wrap">6.1 M3: is in QA.</span></p></li><ul=
 style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-s=
tyle-type:circle;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,=
0);background-color:transparent;font-variant:normal;vertical-align:baseline=
;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;backg=
round-color:transparent;font-variant:normal;vertical-align:baseline;white-s=
pace:pre-wrap">Release Date: w/c 2026-09-14</span></p></li></ul><li dir=3D"=
ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-se=
rif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;verti=
cal-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"fo=
nt-size:11pt;background-color:transparent;font-variant:normal;vertical-alig=
n:baseline;white-space:pre-wrap">6.1.0:</span></p></li><ul style=3D"margin-=
top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:circle;=
font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-col=
or:transparent;font-variant:normal;vertical-align:baseline;white-space:pre"=
><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"=
 role=3D"presentation"><span style=3D"font-size:11pt;background-color:trans=
parent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Bu=
ild Date (M4): w/c 2026-10-12</span></p></li><li dir=3D"ltr" style=3D"list-=
style-type:circle;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0=
,0);background-color:transparent;font-variant:normal;vertical-align:baselin=
e;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;=
margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;back=
ground-color:transparent;font-variant:normal;vertical-align:baseline;white-=
space:pre-wrap">Release Date: w/c 2026-11-02</span></p></li></ul></ul><br><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><=
span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);=
background-color:transparent;font-variant:normal;vertical-align:baseline;wh=
ite-space:pre-wrap">Upcoming dot releases:</span></p><ul style=3D"margin-to=
p:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:disc;font=
-size:11pt;font-family:Arial,sans-serif;background-color:transparent;font-v=
ariant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;font-variant:normal;vertical-align:baseline=
;white-space:pre-wrap">YP 5.0.20 is due</span><span style=3D"font-size:11pt=
;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vertical=
-align:baseline;white-space:pre-wrap"> for release</span><span style=3D"fon=
t-size:11pt;font-variant:normal;vertical-align:baseline;white-space:pre-wra=
p">.</span></p></li><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=
=3D"ltr" style=3D"list-style-type:circle;font-size:11pt;font-family:Arial,s=
ans-serif;background-color:transparent;font-variant:normal;vertical-align:b=
aseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11p=
t;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Release=
 Date w/c 2026-08-31</span></p></li></ul><li dir=3D"ltr" style=3D"list-styl=
e-type:disc;font-size:11pt;font-family:Arial,sans-serif;background-color:tr=
ansparent;font-variant:normal;vertical-align:baseline;white-space:pre"><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;font-variant:normal;vertica=
l-align:baseline;white-space:pre-wrap">YP 6.0.4</span></p></li><ul style=3D=
"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type=
:circle;font-size:11pt;font-family:Arial,sans-serif;background-color:transp=
arent;font-variant:normal;vertical-align:baseline;white-space:pre"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;font-variant:normal;vertica=
l-align:baseline;white-space:pre-wrap">Build Date w/c 2026-09-28</span></p>=
</li><li dir=3D"ltr" style=3D"list-style-type:circle;font-size:11pt;font-fa=
mily:Arial,sans-serif;background-color:transparent;font-variant:normal;vert=
ical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.=
38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"f=
ont-size:11pt;font-variant:normal;vertical-align:baseline;white-space:pre-w=
rap">Release Date w/c 2026-10-12</span></p></li></ul><li dir=3D"ltr" style=
=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;backgr=
ound-color:transparent;font-variant:normal;vertical-align:baseline;white-sp=
ace:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;font-variant:n=
ormal;vertical-align:baseline;white-space:pre-wrap">YP 5.0.21</span></p></l=
i><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"l=
ist-style-type:circle;font-size:11pt;font-family:Arial,sans-serif;backgroun=
d-color:transparent;font-variant:normal;vertical-align:baseline;white-space=
:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom=
:0pt" role=3D"presentation"><span style=3D"font-size:11pt;font-variant:norm=
al;vertical-align:baseline;white-space:pre-wrap">Build Date w/c 2026-10-05<=
/span></p></li><li dir=3D"ltr" style=3D"list-style-type:circle;font-size:11=
pt;font-family:Arial,sans-serif;background-color:transparent;font-variant:n=
ormal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span =
style=3D"font-size:11pt;font-variant:normal;vertical-align:baseline;white-s=
pace:pre-wrap">Release Date w/c 2026-10-19</span></p></li></ul><li dir=3D"l=
tr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-ser=
if;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vertic=
al-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38=
;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"fon=
t-size:11pt;background-color:transparent;font-variant:normal;vertical-align=
:baseline;white-space:pre-wrap">For future release dates, see </span><a hre=
f=3D"https://wiki.yoctoproject.org/wiki/Release_calendar" style=3D"text-dec=
oration:none"><span style=3D"font-size:11pt;background-color:transparent;fo=
nt-variant:normal;text-decoration:underline;vertical-align:baseline;white-s=
pace:pre-wrap">https://wiki.yoctoproject.org/wiki/Release_calendar</span></=
a></p></li></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt=
;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-se=
rif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;verti=
cal-align:baseline;white-space:pre-wrap">The Yocto Project=E2=80=99s techni=
cal governance is through its Technical Steering Committee, more informatio=
n is available at:</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt"><a href=3D"https://wiki.yoctoproject.org/wiki/=
TSC" style=3D"text-decoration:none"><span style=3D"font-size:11pt;font-fami=
ly:Arial,sans-serif;background-color:transparent;font-variant:normal;text-d=
ecoration:underline;vertical-align:baseline;white-space:pre-wrap">https://w=
iki.yoctoproject.org/wiki/TSC</span></a></p><br><p dir=3D"ltr" style=3D"lin=
e-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11=
pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpare=
nt;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">The St=
atus reports are stored on the wiki at: </span><a href=3D"https://wiki.yoct=
oproject.org/wiki/Weekly_Status" style=3D"text-decoration:none"><span style=
=3D"font-size:11pt;font-family:Arial,sans-serif;background-color:transparen=
t;font-variant:normal;text-decoration:underline;vertical-align:baseline;whi=
te-space:pre-wrap">https://wiki.yoctoproject.org/wiki/Weekly_Status</span><=
/a></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-b=
ottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color=
:rgb(0,0,0);background-color:transparent;font-variant:normal;vertical-align=
:baseline;white-space:pre-wrap">[If anyone has suggestions for other inform=
ation you=E2=80=99d like to see on this weekly status update, let us know!]=
</span></p></span><br class=3D"gmail-Apple-interchange-newline"></div><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"background-=
image:initial;background-position:initial;background-repeat:initial"><span =
style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span><=
/span></p>

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

--000000000000d5dc57065b86b2e1--

