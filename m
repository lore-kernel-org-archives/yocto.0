Return-Path: <silvan.murer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61762C433EF
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 16:54:54 +0000 (UTC)
Subject: Specify systemd startup order for volatile-bind and network setup
To: yocto@lists.yoctoproject.org
From: "Silvan Murer" <silvan.murer@gmail.com>
X-Originating-Location: Courfaivre, Jura, CH (81.62.192.66)
X-Originating-Platform: Linux Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Dec 2021 08:54:54 -0800
Message-ID: <STRn.1639068894031045548.XZZJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6NbIkwyWZNyKjNJuTo71"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 16:54:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55537

--6NbIkwyWZNyKjNJuTo71
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have a read-only rootfs created with IMAGE_FEATURES:append=3Dread-only-ro=
otfs and a few files located in a read/write partition which are defined in=
 the volatile-bind recipe.
So far so good. But one file located in the rw partition is the network con=
figuration (/usr/lib/systemd/network/20-wired.network). Unfortunately the n=
etwork is loaded before the volatile-binds are mounted.
Does some one know, how to force volatile-bind to be mounted before the net=
work is initialized?

I'm using systemd and dunfell.

Thanks,
Silvan

--6NbIkwyWZNyKjNJuTo71
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I have a read-only rootfs created with <em>IMAGE_FEATURES:append=
=3Dread-only-rootfs</em> and a few files located in a read/write partition =
which are defined in the <em>volatile-bind</em> recipe.<br />So far so good=
. But one file located in the rw partition is the network configuration (/u=
sr/lib/systemd/network/20-wired.network). Unfortunately the network is load=
ed before the volatile-binds are mounted.<br />Does some one know, how to f=
orce volatile-bind to be mounted before the network is initialized?<br /><b=
r />I'm using systemd and dunfell.<br /><br />Thanks,<br />Silvan

--6NbIkwyWZNyKjNJuTo71--

