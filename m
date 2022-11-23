Return-Path: <apoplawski@kan-therm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5F9C4332F
	for <webhook@archiver.kernel.org>; Wed, 23 Nov 2022 08:41:13 +0000 (UTC)
Subject: Re: pseudo issue in kirkstone
To: yocto@lists.yoctoproject.org
From: apoplawski@kan-therm.com
X-Originating-Location: Knorydy, Podlasie, PL (130.180.193.206)
X-Originating-Platform: Windows Firefox 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Nov 2022 00:41:08 -0800
References: <CAAfyv353AYvWGFeSskMzxUEgDvqf7YJEPAdf0B5w0z0avMjs6Q@mail.gmail.com>
In-Reply-To: <CAAfyv353AYvWGFeSskMzxUEgDvqf7YJEPAdf0B5w0z0avMjs6Q@mail.gmail.com>
Message-ID: <27363.1669192868414660557@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xps95wFB0d17ck0weFo9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Nov 2022 08:41:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58622

--xps95wFB0d17ck0weFo9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a similar problem. First, you need to disable pseudo before executin=
g.
On begin of the line containing sudo cryptsetup add environment variable
definition: PSEUDO_DISABLED=3D1. This, however, does not solve the problem
of executing sudo. I've noticed from the recipe point of view, all files yo=
u don't own
are nobody:nogroup. This happens whether the task is in fakeroot or not.

--
Adam Pop=C5=82awski

--xps95wFB0d17ck0weFo9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I have a similar problem. First, you need to disable pseudo =
before executing. <br />On begin of the line containing sudo cryptsetup add=
 environment variable <br />definition: PSEUDO_DISABLED=3D1. This, however,=
 does not solve the problem <br />of executing sudo. I've noticed from the =
recipe point of view, all files you don't own <br />are nobody:nogroup. Thi=
s happens whether the task is in fakeroot or not.<br /><br />-- <br />Adam =
Pop=C5=82awski

--xps95wFB0d17ck0weFo9--

