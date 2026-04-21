Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3155FF8FA8D
	for <webhook@archiver.kernel.org>; Tue, 21 Apr 2026 14:48:46 +0000 (UTC)
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.33125.1776782923355142769
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Apr 2026 07:48:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=EZBit6VY;
 spf=pass (domain: gmail.com, ip: 74.125.82.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2d9916deb14so7914282eec.0
        for <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 07:48:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776782922; cv=none;
        d=google.com; s=arc-20240605;
        b=TRIpUitq20JYuZc82rqjlU1tasxsRsRokBe5On9Eq/RldPKfyUHi7Vi5sdZOnyOHa2
         /rtzP19oAosS1SpnBUhSW82UBgcxcOECAjEVawTrz/7s7I1Lgh8d5FSO40AVMfuAygX4
         2KMbb4NGW1G+rhbSYeHBilPVOgqz/oTSuE6NjWrZpZz3VRKtq11tHhn6JtFAFHhXhLgm
         /PS6OeocT5ebXKktgRbdZelRiaG18XbuOn5M2Yxfkml0oyPZOSHoMQ/OVcRCaP2prad0
         xgJtipXucqpOtuM/6z7Q7hXTQFraFeoGtElaHI0Eq3HOBcyrEKBIc4Wznyjl/4UeH0Wt
         CL0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=HxpseMvJxabtIoAwEstOTanavmx4p+IAp8n4qoUkJO0=;
        fh=o/Rz/wHjkEPQzjeT84wFAd2PuiZZ0xTjUSMI95g/gEc=;
        b=i6M1jeBFxGSBINXD3g1FMMlcxh/JgiYKrfxqYrMHAMVL+81p621ZBztR8+iFX1tVC0
         T8jTOCXf3xsVXOXxMiDHZELXSn8pwG3i5N4VbopYaNpTIKunFbS8aZ3MZKr16DeY/T5i
         K4go1CcHJ77mRRuzg3roF98bZ3T82ePxaUC6ZwDiVk0Fyq0Los47Y6p4SKr9CSyZcfbf
         Int8QWLHZwBLx4lrtOyljsO2lkEBaQyWyqLTe02WgAU6rMU0SpNBgIGW78jUWzyOux08
         d30xunTBMUVde2Fm9QHVqbuhql4CPyxMo9yUHFXIrigY1P3zCUEfDDNiS0Kt/yvWUVy7
         ebZw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776782922; x=1777387722; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HxpseMvJxabtIoAwEstOTanavmx4p+IAp8n4qoUkJO0=;
        b=EZBit6VYgGqpXhlVbqFqd7UaJ2sV+TI0k16ntM6HbEyorSkeMbLK1/5F6OcT/2YFUN
         jkSn5Y0tW9YRkf9JVkJvHLmnH1Mu+MDTKngrmvzx+69xFg14mparTRJY02dprdnMr6hr
         3wRiRw0hZ4Wqg8yqkbaqCY1Bqh0c9K+KpHguNH/cNQY31JBvS2paZMhxdPwGJOPA3eee
         cY7xtxl30f41D8H+1gkkJnq2zHsiiYRoHxC6sTDBE4Pa/EZiEvZqUpF9XPZUF/YCIZdT
         +OSls5fVilV5d4djgakVZyCkjAFSAFPstFs4L9fNspiO3lm93w8A7pV+ysVVxdnLcxLj
         be0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776782922; x=1777387722;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HxpseMvJxabtIoAwEstOTanavmx4p+IAp8n4qoUkJO0=;
        b=ArSemDy+lnsE5+LLxs8hwA5h8SSX1DJSXSDkQTfv7fwKFTKqCyXbZwKNNoH6PwUfE/
         IlKvBBTxZA3V3GuncMg/Ht3Ypj5b/V1eoZZZLEJVwK0HyZqkHeXnmZ4qaq8ruoihFbku
         24yjmxOz/7NB2fzrUWC1iZlAWNh1n297QV3G7GsWRyruXa7agH2GOiiz/V22QOznpHB6
         U79biDWaZJbw4awBuMW1qNdLlr3vHcz+739km+MtOG+/5YcmtntPuxPEIw8lJYROF9xe
         ZFAeNbmM2fNF7rYUZcEGjfchVqO8GDwFexTQ0013sxMNFIxVrOXZgpEu/Du7Hs/Wd9ZN
         RdNQ==
X-Gm-Message-State: AOJu0Yy0TYrx025kQ4uip8+N7ffDkjswdF7XTalxUWY5ObBgOiaj1lLW
	XLIngwjP1wmH/GbMW2U2Ju7mxcNz8gyHXK0AINGnHNZaSOTLwl7wRWUtf952mBJsSWTy+5r9jEy
	P236K6Qp5ylWkyy3Lh787iY8YS607syQn3ocB
X-Gm-Gg: AeBDietH7I4sLfrCPYJ/AnKyoShzNcUSLmPd7ReEW99e5TKFzRJMIZfe8pCJyDvK2z+
	2nvY8M8vChJpawngObYo4WWBGrV/mGeFnvjZp5LMo1guzqVQitNt2M4LFzlu68pLAURnDZsZp1r
	9tc3QiBiDd9i9ESGl7BM2q3kTuhv0Z/aSD3ShRJjeOjgUXHAL0Qx1AW1su6YsJfwlZgvPUqkvWK
	71jthCRf/wu8BVlpUtaVGCfd4ySGFNutWAjlSpyfx2jM5600KwuZC2OB1p8ncs34RvmSq9yhvZt
	IBJW67lXudEp7v0tBjOeAsPldW8IjUTJ7pV0VeGyPCSRkS5lRtYl0h2O5AqvMjylUgbGUXgzR08
	Ra4y7qThL/7Mbdc2iWsEGRa7R5ylNBKpn+bVY5ba1LITcluUPQaJVvvfxZiTGKbmxxRPdCin8aP
	Wqw598vk+nFjDEYeqZ
X-Received: by 2002:a05:7300:7491:b0:2df:7b88:a1b0 with SMTP id
 5a478bee46e88-2e4873f31a7mr10916782eec.27.1776782922120; Tue, 21 Apr 2026
 07:48:42 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 21 Apr 2026 07:48:30 -0700
X-Gm-Features: AQROBzCWDi78QhAAiJIuGYoAJHOJ1EhxH_mZQroz39-TIdDxuoOUBwvfYK7GYX8
Message-ID: <CAK5yBb-iZeCLspo=C-Z7qrNhh8_ig2hGkCGRgU9ODq1XgNeDcQ@mail.gmail.com>
Subject: Yocto Project Status 21 April 2026 (WW17)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ea82af064ff9822d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 14:48:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66426

--000000000000ea82af064ff9822d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Current Dev Position: YP 6.0 M4

Next Deadline: YP 6.0 M4 Build Date 2026-04-20

Next Team Meetings:

   -

   Bug Triage meeting - Thursday 23rd Apr. 7:30am PDT (
   https://zoom.us/j/454367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09)
   -

   Weekly Project Engineering Sync  - Tuesday 21st Apr. 8am PDT (
   https://zoom.us/j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09)
   <https://zoom.us/j/990892712>
   -

   Yocto Project Patch Review - Thursday 23rd Apr. 10am GMT and Monday 27th
   Apr. 9am PDT (https://zoom.us/j/9776239
   <https://zoom.us/j/97762397148?pwd=3D1xkiC9hp9SjEonaTaONwTb6iWry4Eb.1>7
   148?pwd=3D1xk0iC9hp9SjEonaTaONwTb6iWry4Eb.1
   <https://zoom.us/j/97762397148?pwd=3D1xkiC9hp9SjEonaTaONwTb6iWry4Eb.1>)


Project data dashboard: https://dashboard.yoctoproject.org/

Key Status/Updates:

   -

   YP 5.0.17 was released
   -

   YP 6.0 M3 was released
   -

   YP 4.0.35 is in QA
   -

   YP 6.0 M4 is due to build
   -

   We continue to triage the CVEs being reported by the new tooling.
   -

   Various fixes have merged or are planned to merge before the M4 release
   build:
   -

      Various CVE issue resolutions from CVE triage
      -

      Reproducibility issues with strace/apr-util
      -

      Make race in groff
      -

      Shadow-native tallylog issue fix
      -

      Upgrade of barebox to align with an LTS release
      -

      Implementation of a wrapper for openat2, fixing Fedora 44 beta build
      failures
      -

      Sbom-cve-check upgrade (along with dependencies)
      -

   Issues still pending:
   -

      32bit x86 kvm seemingly broken with certain CPU features (#16074
      <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16074>)
      -

      Intermittent qemu boot failures of qemuarmv5 (and possibly qemuarm)
      since the last kernel upgrade
      -

      Intermittent wic failures on the autobuilder
      -

   At this point we will likely run the release build as the remaining
   issues aren=E2=80=99t critical to end users and we have no clear timefra=
me for
   resolution of them
   -

   git:// protocol access to git.yoctoproject.org and git.openembeded.org
   is deprecated and going forward https:// URLs should be used to access
   git repositories. We are aiming to discontinue git protocol use.
   -

   We=E2=80=99re working through the backlog of patches and intermittent bu=
ild
   failures are still problematic. We continue to struggle for bandwidth fo=
r
   changes needing in depth review/feedback. This could impact features mak=
ing
   it into the LTS.
   -

   The final whinlatter build is happening this week.


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

   WDD 2790 (last week 2777) (
   https://wiki.yoctoproject.org/charts/combo.html)
   -

   OE-Core/Poky Patch Metrics
   -

      Total patches found: 1078 (last week 1072)
      -

      Patches in the Pending State: 146 (14%) [last week 147 (14%)]
      -

      https://valkyrie.yocto.io/pub/non-release/patchmetrics/


Upcoming dot releases:

   -

   YP 5.0.17 has been released.
   -

   YP 4.0.35 is in QA.
   -

   YP 5.3.4
   -

      Build Date  2026-04-20
      -

      Release Date 2026-05-06
      -

   For future release dates, see
   https://wiki.yoctoproject.org/wiki/Release_calendar


The Yocto Project=E2=80=99s technical governance is through its Technical S=
teering
Committee, more information is available at:

https://wiki.yoctoproject.org/wiki/TSC

The Status reports are now stored on the wiki at:
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

--000000000000ea82af064ff9822d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span id=3D"gmail-docs-internal-guid-c79bbad8-7fff-6e=
57-88d6-1475bda10e3e"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-=
serif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;ver=
tical-align:baseline;white-space:pre-wrap">Current Dev Position: YP 6.0 M4<=
/span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:=
rgb(0,0,0);background-color:transparent;font-variant:normal;vertical-align:=
baseline;white-space:pre-wrap">Next Deadline: YP 6.0 M4 Build Date </span><=
span style=3D"font-size:11pt;font-family:Arial,sans-serif;font-variant:norm=
al;vertical-align:baseline;white-space:pre-wrap">2026-04-20</span></p><br><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><=
span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);=
background-color:transparent;font-variant:normal;vertical-align:baseline;wh=
ite-space:pre-wrap">Next Team Meetings:</span></p><ul style=3D"margin-top:0=
px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:disc;font-si=
ze:9.5pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tra=
nsparent;font-variant:normal;vertical-align:baseline;white-space:pre"><p di=
r=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Bug Tri=
age meeting - Thursday 23rd Apr. 7:30am PDT (</span><a href=3D"https://zoom=
.us/j/454367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09" style=3D"text-decor=
ation:none"><span style=3D"font-size:11pt;background-color:transparent;font=
-variant:normal;text-decoration:underline;vertical-align:baseline;white-spa=
ce:pre-wrap">https://zoom.us/j/454367603?pwd=3DZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6=
dz09</span></a><span style=3D"font-size:11pt;background-color:transparent;f=
ont-variant:normal;vertical-align:baseline;white-space:pre-wrap">)</span></=
p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:9.5pt;font-f=
amily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-v=
ariant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant:n=
ormal;vertical-align:baseline;white-space:pre-wrap">Weekly Project Engineer=
ing Sync=C2=A0 - Tuesday 21st Apr. 8am PDT (</span><a href=3D"https://zoom.=
us/j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsUT09" style=3D"text-decora=
tion:none"><span style=3D"font-size:11pt;background-color:transparent;font-=
variant:normal;text-decoration:underline;vertical-align:baseline;white-spac=
e:pre-wrap">https://zoom.us/j/990892712?pwd=3DcHU1MjhoM2x6ck81bkcrYjRrcmJsU=
T09</span></a><a href=3D"https://zoom.us/j/990892712" style=3D"text-decorat=
ion:none"><span style=3D"font-size:11pt;background-color:transparent;font-v=
ariant:normal;text-decoration:underline;vertical-align:baseline;white-space=
:pre-wrap">)</span></a></p></li><li dir=3D"ltr" style=3D"list-style-type:di=
sc;font-size:9.5pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background=
-color:transparent;font-variant:normal;vertical-align:baseline;white-space:=
pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:=
0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-color:t=
ransparent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap=
">Yocto Project Patch Review - Thursday 23rd Apr. 10am GMT and Monday 27th =
Apr. 9am PDT (</span><a href=3D"https://zoom.us/j/97762397148?pwd=3D1xkiC9h=
p9SjEonaTaONwTb6iWry4Eb.1" style=3D"text-decoration:none"><span style=3D"fo=
nt-size:11pt;background-color:transparent;font-variant:normal;text-decorati=
on:underline;vertical-align:baseline;white-space:pre-wrap">https://zoom.us/=
j/9776239</span></a><span style=3D"font-size:11pt;background-color:transpar=
ent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">7</sp=
an><a href=3D"https://zoom.us/j/97762397148?pwd=3D1xkiC9hp9SjEonaTaONwTb6iW=
ry4Eb.1" style=3D"text-decoration:none"><span style=3D"font-size:11pt;backg=
round-color:transparent;font-variant:normal;text-decoration:underline;verti=
cal-align:baseline;white-space:pre-wrap">148?pwd=3D1xk0iC9hp9SjEonaTaONwTb6=
iWry4Eb.1</span></a><span style=3D"font-size:11pt;background-color:transpar=
ent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">)</sp=
an></p></li></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-s=
erif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vert=
ical-align:baseline;white-space:pre-wrap">Project data dashboard: </span><a=
 href=3D"https://dashboard.yoctoproject.org/" style=3D"text-decoration:none=
"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;background-col=
or:transparent;font-variant:normal;text-decoration:underline;vertical-align=
:baseline;white-space:pre-wrap">https://dashboard.yoctoproject.org/</span><=
/a><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0=
,0);background-color:transparent;font-variant:normal;vertical-align:baselin=
e;white-space:pre-wrap">=C2=A0</span></p><br><p dir=3D"ltr" style=3D"line-h=
eight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;=
font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;=
font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Key Statu=
s/Updates:</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=
=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,san=
s-serif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;v=
ertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant:normal;vertica=
l-align:baseline;white-space:pre-wrap">YP 5.0.17 was released</span></p></l=
i><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:=
Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant=
:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"li=
ne-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><spa=
n style=3D"font-size:11pt;background-color:transparent;font-variant:normal;=
vertical-align:baseline;white-space:pre-wrap">YP 6.0 M3 was released</span>=
</p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-=
family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-=
variant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" styl=
e=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentatio=
n"><span style=3D"font-size:11pt;background-color:transparent;font-variant:=
normal;vertical-align:baseline;white-space:pre-wrap">YP 4.0.35 is in QA</sp=
an></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;fo=
nt-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;fo=
nt-variant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presenta=
tion"><span style=3D"font-size:11pt;background-color:transparent;font-varia=
nt:normal;vertical-align:baseline;white-space:pre-wrap">YP 6.0 M4 is due to=
 build</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-si=
ze:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tran=
sparent;font-variant:normal;vertical-align:baseline;white-space:pre"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">We cont=
inue to triage the CVEs being reported by the new tooling.</span></p></li><=
li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Ari=
al,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant:no=
rmal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span s=
tyle=3D"font-size:11pt;background-color:transparent;font-variant:normal;ver=
tical-align:baseline;white-space:pre-wrap">Various fixes have merged or are=
 planned to merge before the M4 release build:</span></p></li><ul style=3D"=
margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:=
circle;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgro=
und-color:transparent;font-variant:normal;vertical-align:baseline;white-spa=
ce:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-colo=
r:transparent;font-variant:normal;vertical-align:baseline;white-space:pre-w=
rap">Various CVE issue resolutions from CVE triage</span></p></li><li dir=
=3D"ltr" style=3D"list-style-type:circle;font-size:11pt;font-family:Arial,s=
ans-serif;color:rgb(0,0,0);background-color:transparent;font-variant:normal=
;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant:normal;vertica=
l-align:baseline;white-space:pre-wrap">Reproducibility issues with strace/a=
pr-util</span></p></li><li dir=3D"ltr" style=3D"list-style-type:circle;font=
-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:t=
ransparent;font-variant:normal;vertical-align:baseline;white-space:pre"><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" rol=
e=3D"presentation"><span style=3D"font-size:11pt;background-color:transpare=
nt;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Make r=
ace in groff</span></p></li><li dir=3D"ltr" style=3D"list-style-type:circle=
;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-co=
lor:transparent;font-variant:normal;vertical-align:baseline;white-space:pre=
"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
" role=3D"presentation"><span style=3D"font-size:11pt;background-color:tran=
sparent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">S=
hadow-native tallylog issue fix</span></p></li><li dir=3D"ltr" style=3D"lis=
t-style-type:circle;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0=
,0,0);background-color:transparent;font-variant:normal;vertical-align:basel=
ine;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;ba=
ckground-color:transparent;font-variant:normal;vertical-align:baseline;whit=
e-space:pre-wrap">Upgrade of barebox to align with an LTS release</span></p=
></li><li dir=3D"ltr" style=3D"list-style-type:circle;font-size:11pt;font-f=
amily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-v=
ariant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation=
"><span style=3D"font-size:11pt;background-color:transparent;font-variant:n=
ormal;vertical-align:baseline;white-space:pre-wrap">Implementation of a wra=
pper for openat2, fixing Fedora 44 beta build failures</span></p></li><li d=
ir=3D"ltr" style=3D"list-style-type:circle;font-size:11pt;font-family:Arial=
,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant:norm=
al;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span sty=
le=3D"font-size:11pt;background-color:transparent;font-variant:normal;verti=
cal-align:baseline;white-space:pre-wrap">Sbom-cve-check upgrade (along with=
 dependencies)</span></p></li></ul><li dir=3D"ltr" style=3D"list-style-type=
:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgrou=
nd-color:transparent;font-variant:normal;vertical-align:baseline;white-spac=
e:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-botto=
m:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-color=
:transparent;font-variant:normal;vertical-align:baseline;white-space:pre-wr=
ap">Issues still pending:</span></p></li><ul style=3D"margin-top:0px;margin=
-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:circle;font-size:11pt=
;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent=
;font-variant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"prese=
ntation"><span style=3D"font-size:11pt;background-color:transparent;font-va=
riant:normal;vertical-align:baseline;white-space:pre-wrap">32bit x86 kvm se=
emingly broken with certain CPU features (</span><a href=3D"https://bugzill=
a.yoctoproject.org/show_bug.cgi?id=3D16074" style=3D"text-decoration:none">=
<span style=3D"font-size:11pt;background-color:transparent;font-variant:nor=
mal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap"=
>#16074</span></a><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">)</span=
></p></li><li dir=3D"ltr" style=3D"list-style-type:circle;font-size:11pt;fo=
nt-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;fo=
nt-variant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presenta=
tion"><span style=3D"font-size:11pt;background-color:transparent;font-varia=
nt:normal;vertical-align:baseline;white-space:pre-wrap">Intermittent qemu b=
oot failures of qemuarmv5 (and possibly qemuarm) since the last kernel upgr=
ade</span></p></li><li dir=3D"ltr" style=3D"list-style-type:circle;font-siz=
e:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:trans=
parent;font-variant:normal;vertical-align:baseline;white-space:pre"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Intermi=
ttent wic failures on the autobuilder</span></p></li></ul><li dir=3D"ltr" s=
tyle=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;co=
lor:rgb(0,0,0);background-color:transparent;font-variant:normal;vertical-al=
ign:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-siz=
e:11pt;background-color:transparent;font-variant:normal;vertical-align:base=
line;white-space:pre-wrap">At this point we will likely run the release bui=
ld as the remaining issues aren=E2=80=99t critical to end users and we have=
 no clear timeframe for resolution of them</span></p></li><li dir=3D"ltr" s=
tyle=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;co=
lor:rgb(0,0,0);background-color:transparent;font-variant:normal;vertical-al=
ign:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-siz=
e:11pt;background-color:transparent;font-variant:normal;vertical-align:base=
line;white-space:pre-wrap">git:// protocol access to </span><a href=3D"http=
://git.yoctoproject.org" style=3D"text-decoration:none"><span style=3D"font=
-size:11pt;background-color:transparent;font-variant:normal;text-decoration=
:underline;vertical-align:baseline;white-space:pre-wrap">git.yoctoproject.o=
rg</span></a><span style=3D"font-size:11pt;background-color:transparent;fon=
t-variant:normal;vertical-align:baseline;white-space:pre-wrap"> and </span>=
<a href=3D"http://git.openembeded.org" style=3D"text-decoration:none"><span=
 style=3D"font-size:11pt;background-color:transparent;font-variant:normal;t=
ext-decoration:underline;vertical-align:baseline;white-space:pre-wrap">git.=
openembeded.org</span></a><span style=3D"font-size:11pt;background-color:tr=
ansparent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap"=
> is deprecated and going forward https:// URLs should be used to access gi=
t repositories. We are aiming to discontinue git protocol use.</span></p></=
li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family=
:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-varian=
t:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"l=
ine-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><sp=
an style=3D"font-size:11pt;background-color:transparent;font-variant:normal=
;vertical-align:baseline;white-space:pre-wrap">We=E2=80=99re working throug=
h the backlog of patches and intermittent build failures are still problema=
tic. We continue to struggle for bandwidth for changes needing in depth rev=
iew/feedback. This could impact features making it into the LTS.</span></p>=
</li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-fami=
ly:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-vari=
ant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D=
"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><=
span style=3D"font-size:11pt;background-color:transparent;font-variant:norm=
al;vertical-align:baseline;white-space:pre-wrap">The final whinlatter build=
 is happening this week.</span></p></li></ul><br><p dir=3D"ltr" style=3D"li=
ne-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:1=
1pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpar=
ent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Want =
to contribute? We would appreciate help with the following areas:</span></p=
><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"li=
st-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,=
0,0);background-color:transparent;font-variant:normal;vertical-align:baseli=
ne;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt=
;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;bac=
kground-color:transparent;font-variant:normal;vertical-align:baseline;white=
-space:pre-wrap">We have several open issues for pseudo and limited maintai=
ner time to work on them. Help from someone familiar with systems programmi=
ng in C would be greatly appreciated. </span><a href=3D"https://bugzilla.yo=
ctoproject.org/buglist.cgi?list_id=3D661406&amp;priority=3DHigh&amp;priorit=
y=3DMedium%2B&amp;product=3DPseudo&amp;query_format=3Dadvanced&amp;resoluti=
on=3D---" style=3D"text-decoration:none"><span style=3D"font-size:11pt;back=
ground-color:transparent;font-variant:normal;text-decoration:underline;vert=
ical-align:baseline;white-space:pre-wrap">https://bugzilla.yoctoproject.org=
/buglist.cgi?list_id=3D661406&amp;priority=3DHigh&amp;priority=3DMedium%2B&=
amp;product=3DPseudo&amp;query_format=3Dadvanced&amp;resolution=3D---</span=
></a></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;=
font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;=
font-variant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr"=
 style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presen=
tation"><span style=3D"font-size:11pt;background-color:transparent;font-var=
iant:normal;vertical-align:baseline;white-space:pre-wrap">There are a large=
 number of intermittent failures on our autobuilder, any help with investig=
ating, reproducing or solving these issues would be welcome! </span><a href=
=3D"https://valkyrie.yocto.io/pub/non-release/abint/" style=3D"text-decorat=
ion:none"><span style=3D"font-size:11pt;background-color:transparent;font-v=
ariant:normal;text-decoration:underline;vertical-align:baseline;white-space=
:pre-wrap">https://valkyrie.yocto.io/pub/non-release/abint/</span></a></p><=
/li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-famil=
y:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-varia=
nt:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><s=
pan style=3D"font-size:11pt;background-color:transparent;font-variant:norma=
l;vertical-align:baseline;white-space:pre-wrap">Many recipes in openembedde=
d-core would benefit from a new recipe maintainer. Please look at </span><a=
 href=3D"https://git.openembedded.org/openembedded-core/tree/meta/conf/dist=
ro/include/maintainers.inc" style=3D"text-decoration:none"><span style=3D"f=
ont-size:11pt;background-color:transparent;font-variant:normal;text-decorat=
ion:underline;vertical-align:baseline;white-space:pre-wrap">https://git.ope=
nembedded.org/openembedded-core/tree/meta/conf/distro/include/maintainers.i=
nc</span></a><span style=3D"font-size:11pt;background-color:transparent;fon=
t-variant:normal;vertical-align:baseline;white-space:pre-wrap"> and see if =
you can adopt any of the unassigned recipes.</span></p></li><li dir=3D"ltr"=
 style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;=
color:rgb(0,0,0);background-color:transparent;font-variant:normal;vertical-=
align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-s=
ize:11pt;background-color:transparent;font-variant:normal;vertical-align:ba=
seline;white-space:pre-wrap">For more ways to contribute, see </span><a hre=
f=3D"https://docs.google.com/document/d/18oxKWxLorfF813h82mK6yKTIHeBp_-9owF=
uCWbzgjOk/edit?usp=3Dsharing" style=3D"text-decoration:none"><span style=3D=
"font-size:11pt;background-color:transparent;font-variant:normal;text-decor=
ation:underline;vertical-align:baseline;white-space:pre-wrap">https://docs.=
google.com/document/d/18oxKWxLorfF813h82mK6yKTIHeBp_-9owFuCWbzgjOk/edit?usp=
=3Dsharing</span></a></p></li></ul><br><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-f=
amily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-v=
ariant:normal;vertical-align:baseline;white-space:pre-wrap">New to the proj=
ect?</span></p><ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"lt=
r" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-seri=
f;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vertica=
l-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font=
-size:11pt;background-color:transparent;font-variant:normal;vertical-align:=
baseline;white-space:pre-wrap">We have a list of issues we think are good p=
laces to start contributing: </span><a href=3D"https://bugzilla.yoctoprojec=
t.org/buglist.cgi?quicksearch=3DNEWCOMER" style=3D"text-decoration:none"><s=
pan style=3D"font-size:11pt;background-color:transparent;font-variant:norma=
l;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap">h=
ttps://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=3DNEWCOMER</span><=
/a></p></li></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-s=
erif;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vert=
ical-align:baseline;white-space:pre-wrap">Tracking Metrics:</span></p><ul s=
tyle=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-sty=
le-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);b=
ackground-color:transparent;font-variant:normal;vertical-align:baseline;whi=
te-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;backgroun=
d-color:transparent;font-variant:normal;vertical-align:baseline;white-space=
:pre-wrap">WDD 2790 (last week 2777) </span><span style=3D"font-size:11pt;f=
ont-family:Consolas,sans-serif;background-color:transparent;font-variant:no=
rmal;vertical-align:baseline;white-space:pre-wrap">(</span><a href=3D"https=
://wiki.yoctoproject.org/charts/combo.html" style=3D"text-decoration:none">=
<span style=3D"font-size:11pt;background-color:transparent;font-variant:nor=
mal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap"=
>https://wiki.yoctoproject.org/charts/combo.html</span></a><span style=3D"f=
ont-size:11pt;font-family:Consolas,sans-serif;background-color:transparent;=
font-variant:normal;vertical-align:baseline;white-space:pre-wrap">)</span><=
/p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-f=
amily:Consolas,sans-serif;color:rgb(0,0,0);background-color:transparent;fon=
t-variant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" st=
yle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentat=
ion"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;background-=
color:transparent;font-variant:normal;vertical-align:baseline;white-space:p=
re-wrap">OE-Core/Poky Patch Metrics</span></p></li><ul style=3D"margin-top:=
0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:circle;font=
-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:t=
ransparent;font-variant:normal;vertical-align:baseline;white-space:pre"><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" rol=
e=3D"presentation"><span style=3D"font-size:11pt;background-color:transpare=
nt;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Total =
patches found: 1078 (last week 1072)</span></p></li><li dir=3D"ltr" style=
=3D"list-style-type:circle;font-size:11pt;font-family:Arial,sans-serif;colo=
r:rgb(0,0,0);background-color:transparent;font-variant:normal;vertical-alig=
n:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin=
-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:=
11pt;background-color:transparent;font-variant:normal;vertical-align:baseli=
ne;white-space:pre-wrap">Patches in the Pending State: 146 (14%) [last week=
 147 (14%)]</span></p></li><li dir=3D"ltr" style=3D"list-style-type:circle;=
font-size:11pt;font-family:Consolas,sans-serif;color:rgb(0,0,0);background-=
color:transparent;font-variant:normal;vertical-align:baseline;white-space:p=
re"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0=
pt" role=3D"presentation"><a href=3D"https://valkyrie.yocto.io/pub/non-rele=
ase/patchmetrics/" style=3D"text-decoration:none"><span style=3D"font-size:=
11pt;font-family:Arial,sans-serif;background-color:transparent;font-variant=
:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-w=
rap">https://valkyrie.yocto.io/pub/non-release/patchmetrics/</span></a></p>=
</li></ul></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;=
margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-ser=
if;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vertic=
al-align:baseline;white-space:pre-wrap">Upcoming dot releases:</span></p><u=
l style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-=
style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0=
);background-color:transparent;font-variant:normal;vertical-align:baseline;=
white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;backgr=
ound-color:transparent;font-variant:normal;vertical-align:baseline;white-sp=
ace:pre-wrap">YP 5.0.17 has been released.</span></p></li><li dir=3D"ltr" s=
tyle=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;co=
lor:rgb(0,0,0);background-color:transparent;font-variant:normal;vertical-al=
ign:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-siz=
e:11pt;background-color:transparent;font-variant:normal;vertical-align:base=
line;white-space:pre-wrap">YP 4.0.35 is in QA.</span></p></li><li dir=3D"lt=
r" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-seri=
f;color:rgb(0,0,0);background-color:transparent;font-variant:normal;vertica=
l-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font=
-size:11pt;background-color:transparent;font-variant:normal;vertical-align:=
baseline;white-space:pre-wrap">YP 5.3.4</span></p></li><ul style=3D"margin-=
top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:circle;=
font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-col=
or:transparent;font-variant:normal;vertical-align:baseline;white-space:pre"=
><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"=
 role=3D"presentation"><span style=3D"font-size:11pt;background-color:trans=
parent;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Bu=
ild Date </span><span style=3D"font-size:11pt;color:rgb(34,34,34);font-vari=
ant:normal;vertical-align:baseline;white-space:pre-wrap">=C2=A02026-04-20=
=C2=A0</span></p></li><li dir=3D"ltr" style=3D"list-style-type:circle;font-=
size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tr=
ansparent;font-variant:normal;vertical-align:baseline;white-space:pre"><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant:normal;vertical-align:baseline;white-space:pre-wrap">Release=
 Date </span><span style=3D"font-size:11pt;color:rgb(34,34,34);font-variant=
:normal;vertical-align:baseline;white-space:pre-wrap">2026-05-06</span></p>=
</li></ul><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font=
-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font=
-variant:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" sty=
le=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentati=
on"><span style=3D"font-size:11pt;background-color:transparent;font-variant=
:normal;vertical-align:baseline;white-space:pre-wrap">For future release da=
tes, see </span><a href=3D"https://wiki.yoctoproject.org/wiki/Release_calen=
dar" style=3D"text-decoration:none"><span style=3D"font-size:11pt;backgroun=
d-color:transparent;font-variant:normal;text-decoration:underline;vertical-=
align:baseline;white-space:pre-wrap">https://wiki.yoctoproject.org/wiki/Rel=
ease_calendar</span></a></p></li></ul><br><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;fon=
t-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;fon=
t-variant:normal;vertical-align:baseline;white-space:pre-wrap">The Yocto Pr=
oject=E2=80=99s technical governance is through its Technical Steering Comm=
ittee, more information is available at:</span></p><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt"><a href=3D"https://wiki.=
yoctoproject.org/wiki/TSC" style=3D"text-decoration:none"><span style=3D"fo=
nt-size:11pt;font-family:Arial,sans-serif;background-color:transparent;font=
-variant:normal;text-decoration:underline;vertical-align:baseline;white-spa=
ce:pre-wrap">https://wiki.yoctoproject.org/wiki/TSC</span></a></p><br><p di=
r=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span=
 style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);back=
ground-color:transparent;font-variant:normal;vertical-align:baseline;white-=
space:pre-wrap">The Status reports are now stored on the wiki at: </span><a=
 href=3D"https://wiki.yoctoproject.org/wiki/Weekly_Status" style=3D"text-de=
coration:none"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;b=
ackground-color:transparent;font-variant:normal;text-decoration:underline;v=
ertical-align:baseline;white-space:pre-wrap">https://wiki.yoctoproject.org/=
wiki/Weekly_Status</span></a></p><br><p dir=3D"ltr" style=3D"line-height:1.=
38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-fam=
ily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-var=
iant:normal;vertical-align:baseline;white-space:pre-wrap">[If anyone has su=
ggestions for other information you=E2=80=99d like to see on this weekly st=
atus update, let us know!]</span></p></span><br class=3D"gmail-Apple-interc=
hange-newline"></div><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><p class=3D"MsoNo=
rmal" style=3D"background-image:initial;background-position:initial;backgro=
und-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-se=
rif">Thanks,<span></span></span></p>

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

--000000000000ea82af064ff9822d--

