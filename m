Return-Path: <kfa@deif.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AA9BC3271E
	for <webhook@archiver.kernel.org>; Fri,  5 Jul 2024 14:50:48 +0000 (UTC)
Subject: Configuring gitlab runner for Yocto
To: yocto@lists.yoctoproject.org
From: "Kjeld Flarup" <kfa@deif.com>
X-Originating-Location: Skive, Central Jutland, DK (87.54.42.99)
X-Originating-Platform: Linux Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 05 Jul 2024 07:50:45 -0700
Message-ID: <ukdP.1720191045419684124.rRuE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IRjx42iMR4YTh26E8ZJ5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Jul 2024 14:50:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63439

--IRjx42iMR4YTh26E8ZJ5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I run =C2=A0Yocto builds in a gitlab runner, but it always does rebuilds of=
 some packages. Not all packages fortunately, but it always does a rootfs b=
uild.

When I do a fresh start with a git clone of my yocto manifest, and a bitbak=
e on my own PC. Everything is fetched from my sstate mirror.
By fresh, I mean that no tmp folder exists and has to be rebuild.

Thus I have some environment difference in the gitlab which causes Yocto to=
 do some rebuilds.

* I use the same docker container
* I tried to do the clone and build on the build server, but outside the gi=
tlab-runner. No rebuilds.
* I mapped a local disk into the containers /builds
* I removed git commands from recipes

Does anyone have some recommendations for configuring a gitlab runner for Y=
octo?

--
--
Regards
Kjeld Flarup
DEIF A/S

--IRjx42iMR4YTh26E8ZJ5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I run &nbsp;Yocto builds in a gitlab runner, but it always does rebuilds of=
 some packages. Not all packages fortunately, but it always does a rootfs b=
uild.<br /><br />When I do a fresh start with a git clone of my yocto manif=
est, and a bitbake on my own PC. Everything is fetched from my sstate mirro=
r.<br />By fresh, I mean that no tmp folder exists and has to be rebuild.<b=
r /><br />Thus I have some environment difference in the gitlab which cause=
s Yocto to do some rebuilds.<br /><br />
<ul>
<li>I use the same docker container</li>
<li>I tried to do the clone and build on the build server, but outside the =
gitlab-runner. No rebuilds.</li>
<li>I mapped a local disk into the containers /builds</li>
<li>I removed git commands from recipes</li>
</ul>
Does anyone have some recommendations for configuring a gitlab runner for Y=
octo?<br /><br /><br />-- <br />--<br />Regards&nbsp;<br />Kjeld Flarup<br =
/>DEIF A/S

--IRjx42iMR4YTh26E8ZJ5--

