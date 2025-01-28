Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31390C0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 03:45:45 +0000 (UTC)
Subject: Re: [yocto] [scarthgap]- unable to build image due to Nothing Provides error
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.177)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2025 19:45:41 -0800
References: <aba92c6d-924a-4747-bb66-c8338b334b97@gmail.com>
In-Reply-To: <aba92c6d-924a-4747-bb66-c8338b334b97@gmail.com>
Message-ID: <29362.1738035941944973180@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tI2ZJ5Iin6FpQ07DJSOZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 03:45:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64649

--tI2ZJ5Iin6FpQ07DJSOZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Gyorgy,

Yes i do get an error when building util-liunx, but its due to incompatible=
 license.

build@ubuntu-bionic:~/project/build$ bitbake util-linux
Loading cache: 100% |######################################################=
################################################| Time: 0:00:04
Loaded 5080 entries from dependency cache.
Parsing recipes: 100% |####################################################=
################################################| Time: 0:00:02
Parsing of 3026 .bb files complete (3023 cached, 3 parsed). 5083 targets, 5=
37 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

*ERROR: Nothing RPROVIDES 'grep' (but /home/build/project/meta/recipes-core=
/util-linux/util-linux_2.39.3.bb RDEPENDS on or otherwise requires it)*
*grep was skipped: it has incompatible license(s): GPL-3.0-only*
*NOTE: Runtime target 'grep' is unbuildable, removing...*
*Missing or unbuildable dependency chain was: ['grep']*
*ERROR: Required build target 'util-linux' has no buildable providers.*
*Missing or unbuildable dependency chain was: ['util-linux', 'grep']

* Ganesh

--tI2ZJ5Iin6FpQ07DJSOZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Gyorgy,<br /><br />Yes i do get an error when building util-liunx, =
but its due to incompatible license.<br /><br />build@ubuntu-bionic:~/proje=
ct/build$ bitbake util-linux<br />Loading cache: 100% |####################=
###########################################################################=
#######| Time: 0:00:04<br />Loaded 5080 entries from dependency cache.<br /=
>Parsing recipes: 100% |###################################################=
#################################################| Time: 0:00:02<br />Parsi=
ng of 3026 .bb files complete (3023 cached, 3 parsed). 5083 targets, 537 sk=
ipped, 0 masked, 0 errors.<br />NOTE: Resolving any missing task queue depe=
ndencies<br /><br /><strong>ERROR: Nothing RPROVIDES 'grep' (but /home/buil=
d/project/meta/recipes-core/util-linux/util-linux_2.39.3.bb RDEPENDS on or =
otherwise requires it)</strong><br /><strong>grep was skipped: it has incom=
patible license(s): GPL-3.0-only</strong><br /><strong>NOTE: Runtime target=
 'grep' is unbuildable, removing...</strong><br /><strong>Missing or unbuil=
dable dependency chain was: ['grep']</strong><br /><strong>ERROR: Required =
build target 'util-linux' has no buildable providers.</strong><br /><strong=
>Missing or unbuildable dependency chain was: ['util-linux', 'grep']<br /><=
br /></strong>Ganesh</div>

--tI2ZJ5Iin6FpQ07DJSOZ--

