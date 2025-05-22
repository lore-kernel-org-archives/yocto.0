Return-Path: <rroyce@textronsystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8421C54E65
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 13:02:09 +0000 (UTC)
Subject: Re: [yocto] Do_package is changing permissions of files
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: rroyce@textronsystems.com
X-Originating-Location: US (151.165.212.38)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 May 2025 06:02:01 -0700
References: <CANNYZj-ee1PYLRvQY1KiNboHjD+yw3N6fVh6kBc0pLmXdSbW=Q@mail.gmail.com>
In-Reply-To: <CANNYZj-ee1PYLRvQY1KiNboHjD+yw3N6fVh6kBc0pLmXdSbW=Q@mail.gmail.com>
Message-ID: <26223.1747918921618014153@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7hOHF1ZpBnWeJbqrvsLg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 13:02:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65398

--7hOHF1ZpBnWeJbqrvsLg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

That was what i thought as well from the docs and looking through do_packag=
e.

Any ideas for what could be changing file permissions in S?

Some info about what i'm running
Scarthgap
creating RPM packages
generating SPDX
using the archiver to capture content of S

The files affected appear to be the same files that are placed in WORKDIR/p=
ackage/src/debug/PV/
It looks like it is only grabbing .h and .cpp files from S and placing in t=
hat directory. These files then end up with permissions set to 644. Somehow=
 the original files in S also get set to 644 around the same time. I'm hopi=
ng you have an idea of what might be going on.

--7hOHF1ZpBnWeJbqrvsLg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>That was what i thought as well from the docs and looking through do_p=
ackage.</div>
<div>&nbsp;</div>
<div>Any ideas for what could be changing file permissions in S?</div>
<div>&nbsp;</div>
<div>Some info about what i'm running</div>
<div>Scarthgap</div>
<div>creating RPM packages</div>
<div>generating SPDX</div>
<div>using the archiver to capture content of S</div>
<div>&nbsp;</div>
<div>The files affected appear to be the same files that are placed in WORK=
DIR/package/src/debug/PV/</div>
<div>It looks like it is only grabbing .h and .cpp files from S and placing=
 in that directory. These files then end up with permissions set to 644. So=
mehow the original files in S also get set to 644 around the same time. I'm=
 hoping you have an idea of what might be going on.</div>

--7hOHF1ZpBnWeJbqrvsLg--

