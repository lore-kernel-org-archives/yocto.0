Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7427EC433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 07:54:15 +0000 (UTC)
Subject: How to manage disk space while working with Yocto?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Chrome 99
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Mar 2022 00:54:14 -0700
Message-ID: <Glxl.1647417254477654340.oyPL@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pNsVnX5CT5uUb2hscQAg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 07:54:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56456

--pNsVnX5CT5uUb2hscQAg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I am using Yocto for one of my project. I know that Yocto needs a good amou=
nt of disk space for build activities. And also I am working as non-root us=
er in Ubuntu 20.04. But I often run into space issues during build.

WARNING: The free space of [...]/tmp-glibc (overlay) is running low (0.555G=
B left)
ERROR: No new tasks can be executed since the disk space monitor action is =
"STOPTASKS"!
WARNING: The free space of [...]/downloads (overlay) is running low (0.555G=
B left)
ERROR: No new tasks can be executed since the disk space monitor action is =
"STOPTASKS"!
WARNING: The free space of [...]/sstate-cache (overlay) is running low (0.5=
55GB left)
ERROR: No new tasks can be executed since the disk space monitor action is =
"STOPTASKS"!

I have tried deleting $TMPDIR (build/tmp) , $SSTATE_DIR (build/sstate-cache=
) , $DL_DIR (build/downloads). But these things didn't help me.

Is there any way to allocate more space to user in Ubuntu? And also what is=
 the best practice for space usage while working with Yocto?

Can anyone please let me know how to resolve this issue?

Your help will be much appreciated.

Thanks in advance.

P.S: I working with Yocto "Honister" release. Please let me know if any inf=
o is missing here.

--pNsVnX5CT5uUb2hscQAg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br /><span style=3D"color: #232629; font-family: -apple-sy=
stem, BlinkMacSystemFont, Segoe UI, Liberation Sans, sans-serif;"><span sty=
le=3D"font-size: 15px;">I am using Yocto for one of my project. I know that=
 Yocto needs a good amount of disk space for build activities. And also I a=
m working as non-root user in Ubuntu 20.04. But I often run into space issu=
es during build.</span></span><br /><br />
<div><span style=3D"color: #232629; font-family: -apple-system, BlinkMacSys=
temFont, Segoe UI, Liberation Sans, sans-serif;"><span style=3D"font-size: =
15px;">WARNING: The free space of [...]/tmp-glibc (overlay) is running low =
(0.555GB left)</span></span></div>
<div><span style=3D"color: #232629; font-family: -apple-system, BlinkMacSys=
temFont, Segoe UI, Liberation Sans, sans-serif;"><span style=3D"font-size: =
15px;">ERROR: No new tasks can be executed since the disk space monitor act=
ion is "STOPTASKS"!</span></span></div>
<div><span style=3D"color: #232629; font-family: -apple-system, BlinkMacSys=
temFont, Segoe UI, Liberation Sans, sans-serif;"><span style=3D"font-size: =
15px;">WARNING: The free space of [...]/downloads (overlay) is running low =
(0.555GB left)</span></span></div>
<div><span style=3D"color: #232629; font-family: -apple-system, BlinkMacSys=
temFont, Segoe UI, Liberation Sans, sans-serif;"><span style=3D"font-size: =
15px;">ERROR: No new tasks can be executed since the disk space monitor act=
ion is "STOPTASKS"!</span></span></div>
<div><span style=3D"color: #232629; font-family: -apple-system, BlinkMacSys=
temFont, Segoe UI, Liberation Sans, sans-serif;"><span style=3D"font-size: =
15px;">WARNING: The free space of [...]/sstate-cache (overlay) is running l=
ow (0.555GB left)</span></span></div>
<div><span style=3D"color: #232629; font-family: -apple-system, BlinkMacSys=
temFont, Segoe UI, Liberation Sans, sans-serif;"><span style=3D"font-size: =
15px;">ERROR: No new tasks can be executed since the disk space monitor act=
ion is "STOPTASKS"!</span></span></div>
<br /><br />
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px; vert=
ical-align: baseline; box-sizing: inherit; clear: both; color: #232629;">I =
have tried deleting&nbsp;<code style=3D"margin: 0px; border: 0px; font-styl=
e: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inhe=
rit; line-height: inherit; font-family: var(--ff-mono); font-size: 13px; ve=
rtical-align: baseline; box-sizing: inherit; background-color: var(--black-=
075); white-space: pre-wrap; color: var(--black-800); border-radius: 3px;">=
$TMPDIR (build/tmp)</code>,&nbsp;<code style=3D"margin: 0px; border: 0px; f=
ont-style: inherit; font-variant: inherit; font-weight: inherit; font-stret=
ch: inherit; line-height: inherit; font-family: var(--ff-mono); font-size: =
13px; vertical-align: baseline; box-sizing: inherit; background-color: var(=
--black-075); white-space: pre-wrap; color: var(--black-800); border-radius=
: 3px;">$SSTATE_DIR (build/sstate-cache)</code>,&nbsp;<code style=3D"margin=
: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight=
: inherit; font-stretch: inherit; line-height: inherit; font-family: var(--=
ff-mono); font-size: 13px; vertical-align: baseline; box-sizing: inherit; b=
ackground-color: var(--black-075); white-space: pre-wrap; color: var(--blac=
k-800); border-radius: 3px;">$DL_DIR (build/downloads)</code>. But these th=
ings didn't help me.</p>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px; vert=
ical-align: baseline; box-sizing: inherit; clear: both; color: #232629;">Is=
 there any way to allocate more space to user in Ubuntu? And also what is t=
he best practice for space usage while working with Yocto?</p>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px; vert=
ical-align: baseline; box-sizing: inherit; clear: both; color: #232629;">Ca=
n anyone please let me know how to resolve this issue?<br /><br /></p>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px; vert=
ical-align: baseline; box-sizing: inherit; clear: both; color: #232629;">Yo=
ur help will be much appreciated.<br /><br /></p>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px; vert=
ical-align: baseline; box-sizing: inherit; clear: both; color: #232629;">Th=
anks in advance.<br /><br /></p>
<p style=3D"margin-bottom: 0px; padding: 0px; border: 0px; font-variant-num=
eric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; lin=
e-height: inherit; font-family: -apple-system, BlinkMacSystemFont, 'Segoe U=
I', 'Liberation Sans', sans-serif; font-size: 15px; vertical-align: baselin=
e; box-sizing: inherit; clear: both; color: #232629;">P.S: I working with Y=
octo "Honister" release. Please let me know if any info is missing here.</p=
>

--pNsVnX5CT5uUb2hscQAg--

