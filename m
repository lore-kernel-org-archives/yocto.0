Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A770FC433EF
	for <webhook@archiver.kernel.org>; Fri, 10 Jun 2022 17:05:50 +0000 (UTC)
Subject: Re: Question about psuedo abort errors
To: yocto@lists.yoctoproject.org
From: "Rusty Howell" <rustyhowell@gmail.com>
X-Originating-Location: Provo, Utah, US (136.36.195.213)
X-Originating-Platform: Linux Firefox 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 10 Jun 2022 10:05:44 -0700
References: 
 <dbf9862962fa521be487b43664368587dc73052c.camel@linuxfoundation.org>
In-Reply-To: 
 <dbf9862962fa521be487b43664368587dc73052c.camel@linuxfoundation.org>
Message-ID: <6602.1654880744216726314@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zPCtMkNDNAEft5pjsr9s"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jun 2022 17:05:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57318

--zPCtMkNDNAEft5pjsr9s
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the response, Richard.=C2=A0=C2=A0 Is the pseudo database locate=
d inside TMPDIR?=C2=A0=C2=A0 I have deleted the TMPDIR at times to try to g=
et my build back to a working state. If the pseudo db is outside TMPDIR, th=
en that would be the most likely cause of this error. But I would think tha=
t other OSS recipes would generate this same error after I delete TMPDIR, n=
ot just my company ones.

--zPCtMkNDNAEft5pjsr9s
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the response, Richard.&nbsp;&nbsp; Is the pseudo database locate=
d inside TMPDIR?&nbsp;&nbsp; I have deleted the TMPDIR at times to try to g=
et my build back to a working state. If the pseudo db is outside TMPDIR, th=
en that would be the most likely cause of this error. But I would think tha=
t other OSS recipes would generate this same error after I delete TMPDIR, n=
ot just my company ones.

--zPCtMkNDNAEft5pjsr9s--

