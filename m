Return-Path: <haimbachar2008@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7360EC5320E
	for <webhook@archiver.kernel.org>; Sun, 25 Aug 2024 13:26:03 +0000 (UTC)
Subject: fsbl recipe changed during migration from Zeus to Honister? #honister #zeus
To: yocto@lists.yoctoproject.org
From: "Haimbach" <haimbachar2008@gmail.com>
X-Originating-Location: Shelomi, Northern District, IL (193.169.71.243)
X-Originating-Platform: Linux Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 25 Aug 2024 06:26:01 -0700
Message-ID: <TahU.1724592361212592626.ihmJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="99hFz3mwnU2dkXGES5SJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Aug 2024 13:26:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63740

--99hFz3mwnU2dkXGES5SJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I've encounter a problem while try to append changes into FSBL recipe in th=
e Honister distribution.
Previously I've worked with Zeus distribution and successfully I was enable=
 to make changes to fsbl recipe via the fsbl_%.bbappend

But now on the Honister I try to follow the same process, but during the bu=
ild `bitbake fsbl` I got the next error:
"Nothing provides fsbl recipe"

While digging little bit more I found I should make the changes now to the =
fsbl-firmawre_%.bbappend instead of the fsbl_%.bbappend

someone can clarify this to me?

Regards,
Haim

--99hFz3mwnU2dkXGES5SJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello everyone,</div>
<div>&nbsp;</div>
<div>I've encounter a problem while try to append changes into FSBL recipe =
in the Honister distribution.</div>
<div>Previously I've worked with Zeus distribution and successfully I was e=
nable to make changes to fsbl recipe via the fsbl_%.bbappend</div>
<div>&nbsp;</div>
<div>But now on the Honister I try to follow the same process, but during t=
he build `bitbake fsbl` I got the next error:</div>
<div>"Nothing provides fsbl recipe"</div>
<div>&nbsp;</div>
<div>While digging little bit more I found I should make the changes now to=
 the fsbl-firmawre_%.bbappend instead of the fsbl_%.bbappend</div>
<div>&nbsp;</div>
<div>someone can clarify this to me?</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Haim</div>

--99hFz3mwnU2dkXGES5SJ--

