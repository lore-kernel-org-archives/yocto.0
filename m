Return-Path: <ccasciato@21sw.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1488C369D5
	for <webhook@archiver.kernel.org>; Mon, 28 Apr 2025 14:45:09 +0000 (UTC)
Subject: Re: [yocto] [selinux] can't start Kernel Logging Service when enable SELinux on sytemd
To: bxchen@ambarella.com, yocto@lists.yoctoproject.org
From: "Clayton Casciato" <ccasciato@21sw.us>
X-Originating-Location: Denver, Colorado, US (174.29.216.122)
X-Originating-Platform: Linux Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Apr 2025 07:45:02 -0700
References: <Aq4V.1745384885522710707.FhR5@lists.yoctoproject.org>
In-Reply-To: <Aq4V.1745384885522710707.FhR5@lists.yoctoproject.org>
Message-ID: <25979.1745851502999218437@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MsruUh86WR5hjb0nLgE0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Apr 2025 14:45:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65259

--MsruUh86WR5hjb0nLgE0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Use a permissive policy for debugging.

--

Having more context (e.g. PATH, SYSCALL, CWD) would help (ausearch).

You may need to disable service auto-startup to gather these details (and t=
hat may or may not work).
Remove properties like "WantedBy" and "Before" and then manually start them=
.

--

I've generally found Fedora's policy to be an excellent reference, as SELin=
ux (fork) is enabled by default: https://github.com/fedora-selinux/selinux-=
policy

Clayton Casciato

--MsruUh86WR5hjb0nLgE0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Use a permissive policy for debugging.</div>
<div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<div>Having more context (e.g. PATH, SYSCALL, CWD) would help (ausearch).</=
div>
<div>&nbsp;</div>
<div>You may need to disable service auto-startup to gather these details (=
and that may or may not work).</div>
<div>Remove properties like "WantedBy" and "Before" and then manually start=
 them.</div>
<div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<div>I've generally found Fedora's policy to be an excellent reference, as =
SELinux (fork) is enabled by default: <a href=3D"https://github.com/fedora-=
selinux/selinux-policy" target=3D"_blank" rel=3D"noopener">https://github.c=
om/fedora-selinux/selinux-policy</a></div>
<div>&nbsp;</div>
<div>Clayton Casciato</div>

--MsruUh86WR5hjb0nLgE0--

