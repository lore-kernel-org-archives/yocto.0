Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82734C3ABC3
	for <webhook@archiver.kernel.org>; Thu, 15 May 2025 04:34:06 +0000 (UTC)
Subject: mozjs 60.9 CVE issues fix.
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: IN (123.63.39.83)
X-Originating-Platform: Linux Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 May 2025 21:34:03 -0700
Message-ID: <yoeb.1747283643576382007.FPXh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YChexP5UI4bsdlGc6XSj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 May 2025 04:34:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65341

--YChexP5UI4bsdlGc6XSj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am currently working on CVE-related issues in the mozjs library that need=
 to be fixed for version 60.9. I am using the Dunfell branch, but upon comp=
aring it to the Gatesgarth branch, I noticed an additional patch is availab=
le. The patch file://0014-fallback-to-2011-C++-standard.patch has been remo=
ved, and 0014-remove-JS_VOLATIME_ARM.patch has been added instead.

Could you confirm whether these changes need to be applied to my local buil=
d as well? Additionally, I would like to understand the reason for removing=
 the fallback-to-2011 patch. If we retain it, could it lead to any issues?

I want to incorporate upstream patch changes related to the mozjs library. =
Since version 60.9 is a tar bundle and not a Git source, where can I find r=
elevant solutions and reference links? I have reviewed Bugzilla IDs, and th=
ey indicate that the issue has been fixed in example Firefox ESR78 and ESR1=
28 and few mentioned <91 (Is that mean below 91 all versions may effect cha=
nges). However, based on my understanding, adding those changes might resul=
t in dependency package version issues, such as requiring a more recent Pyt=
hon version (e.g., Python 3.10).

I would appreciate any clarification on this matter.

Thanks in advance.

Best regards,

Satish M

--YChexP5UI4bsdlGc6XSj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p><span>Hi Team,</span></p>
<p><span>I am currently working on CVE-related issues in the mozjs library =
that need to be fixed for version 60.9. I am using the Dunfell branch, but =
upon comparing it to the Gatesgarth branch, I noticed an additional patch i=
s available. The patch <code>file://0014-fallback-to-2011-C++-standard.patc=
h</code> has been removed, and <code>0014-remove-JS_VOLATIME_ARM.patch</cod=
e> has been added instead.</span></p>
<p><span>Could you confirm whether these changes need to be applied to my l=
ocal build as well? Additionally, I would like to understand the reason for=
 removing the fallback-to-2011 patch. If we retain it, could it lead to any=
 issues?</span></p>
<p><span>I want to incorporate upstream patch changes related to the mozjs =
library. Since version 60.9 is a tar bundle and not a Git source, where can=
 I find relevant solutions and reference links? I have reviewed Bugzilla ID=
s, and they indicate that the issue has been fixed in example Firefox ESR78=
 and ESR128 and few mentioned &lt;91 (Is that mean below 91 all versions ma=
y effect changes). However, based on my understanding, adding those changes=
 might result in dependency package version issues, such as requiring a mor=
e recent Python version (e.g., Python 3.10).</span></p>
<p><span>I would appreciate any clarification on this matter.</span></p>
<p><span>Thanks in advance.</span></p>
<p><span>Best regards, </span></p>
<p><span>Satish M</span></p>
</div>

--YChexP5UI4bsdlGc6XSj--

