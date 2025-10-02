Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D941CAC5B8
	for <webhook@archiver.kernel.org>; Thu,  2 Oct 2025 05:41:24 +0000 (UTC)
Subject: Integrating VeraCrypt #debian #yocto
To: yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (147.161.171.70)
X-Originating-Platform: Windows Chrome 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Oct 2025 22:41:20 -0700
Message-ID: <lgSb.1759383680658462145.lMf8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0lO2TE10N27dIEIgunF1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Oct 2025 05:41:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65900

--0lO2TE10N27dIEIgunF1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

has anyone integrated VeraCrypt [1] in their Yocto environment and if so ca=
n you please share your experiences?
As far as I can read VeryCrypt has been forked from Truecrypt, which seems =
to have been seen as a "lawyer bomb" by Debian [2].
I also see there are very little (or rather none) sources on the Internet o=
f anyone using VeraCrypt in Yocto.

PS: I know there are better ways to encrypt data through dm-crypt, but the =
team was thinking about a more generic solution, hence my question.

Cheers,
Aleksandar

[1] https://github.com/veracrypt/VeraCrypt
[2] https://lists.debian.org/debian-legal/2006/06/msg00295.html

--0lO2TE10N27dIEIgunF1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>&nbsp;</div>
<div>has anyone integrated VeraCrypt [1] in their Yocto environment and if =
so can you please share your experiences?</div>
<div>As far as I can read VeryCrypt has been forked from Truecrypt, which s=
eems to have been seen as a "lawyer bomb" by Debian [2].</div>
<div>I also see there are very little (or rather none) sources on the Inter=
net of anyone using VeraCrypt in Yocto.&nbsp;</div>
<div>&nbsp;</div>
<div>PS: I know there are better ways to encrypt data through dm-crypt, but=
 the team was thinking about a more generic solution, hence my question.</d=
iv>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>Aleksandar</div>
<div>&nbsp;</div>
<div>[1] <a href=3D"https://github.com/veracrypt/VeraCrypt" target=3D"_blan=
k" rel=3D"noopener">https://github.com/veracrypt/VeraCrypt</a></div>
<div>[2] https://lists.debian.org/debian-legal/2006/06/msg00295.html</div>

--0lO2TE10N27dIEIgunF1--

