Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D38CBC4345F
	for <webhook@archiver.kernel.org>; Sat,  4 May 2024 10:55:54 +0000 (UTC)
Subject: Toaster for building an image from custom layer other than poky
To: yocto@lists.yoctoproject.org
From: dhanyalakshmi.k@priyarajaelectronics.com
X-Originating-Location: IN (49.249.50.110)
X-Originating-Platform: Linux Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 04 May 2024 02:26:05 -0700
Message-ID: <Hga1.1714814765426668305.KJVN@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5pPXaqPiMP8nXOjGj1Nw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 May 2024 10:55:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63032

--5pPXaqPiMP8nXOjGj1Nw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm working on yocto project, so i have to build an image for my layerscape=
 nxp card i.e., ls1012afrwy using toaster web interface. So to begin with t=
oaster i tried to build an image "core-image-minimal" from poky directory t=
hat works fine.Then i tried to build an image "ls-image-main" from my custo=
m directory i'm getting an error stating as below:
command: git fetch && git reset --hard "origin/N/A"=20
b"fatal: ambiguous argument 'origin/N/A': unknown revision or path not in t=
he working tree.\nUse '--' to separate paths from revisions, like this:\n'g=
it <command> [<revision>...] -- [<file>...]'\n"
The steps i followed to build an image and setting up of toaster is:

$ sudo apt install gawk wget git diffstat unzip texinfo gcc build-essential=
 chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutil=
s iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev python=
3-subunit mesa-common-dev zstd liblz4-tool file locales

$ sudo locale-gen en_US.UTF-8

$ mkdir distro
$ cd distro
$ repo init -u https://github.com/nxp-qoriq/yocto-sdk.git -b mickledore -m =
ls-6.1.55-2.2.0_distro.xml
$ repo sync

$ source =C2=A0distro-setup-env -m ls1012afrwy
$ bitbake ls-image-main

Above steps are for creating a distro for my layerscape card.

I followed toaster user manual for setting up of toaster.

Then in toaster UI:
I clicked on create new project and in release option i have used local yoc=
to release.
in machine =3D ls1012afrwydistro
distro =3D fsl-qoriq-distro

and imported meta-nxp-desktop and meta-freescale from local system.
Then tried building an image and i got the error as above.

Can anyone who knows how we can utilize the toaster ui to build an image fr=
om our own custom layers other than poky please do guide me.

Waiting for the reply.
Thank You.

--5pPXaqPiMP8nXOjGj1Nw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />I'm working on yocto project, so i have to build an image for m=
y layerscape nxp card i.e., ls1012afrwy using toaster web interface. So to =
begin with toaster i tried to build an image "core-image-minimal" from poky=
 directory that works fine.Then i tried to build an image "ls-image-main" f=
rom my custom directory i'm getting an error stating as below:<br />
<pre>command: git fetch &amp;&amp; git reset --hard "origin/N/A"=20
b"fatal: ambiguous argument 'origin/N/A': unknown revision or path not in t=
he working tree.\nUse '--' to separate paths from revisions, like this:\n'g=
it &lt;command&gt; [&lt;revision&gt;...] -- [&lt;file&gt;...]'\n"</pre>
<br />The steps i followed to build an image and setting up of toaster is:<=
br /><br />
<div class=3D"gmail_default">$ sudo apt install gawk wget git diffstat unzi=
p texinfo gcc build-essential chrpath socat cpio python3 python3-pip python=
3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libe=
gl1-mesa libsdl1.2-dev python3-subunit mesa-common-dev zstd liblz4-tool fil=
e locales&nbsp;</div>
<div class=3D"gmail_default">&nbsp;</div>
<div class=3D"gmail_default">$ sudo locale-gen en_US.UTF-8</div>
<div class=3D"gmail_default">&nbsp;</div>
<div class=3D"gmail_default">$ mkdir distro</div>
<div class=3D"gmail_default">$ cd distro<br />$ repo init -u <a href=3D"htt=
ps://github.com/nxp-qoriq/yocto-sdk.git">https://github.com/nxp-qoriq/yocto=
-sdk.git</a> -b mickledore -m ls-6.1.55-2.2.0_distro.xml<br />$ repo sync</=
div>
<div class=3D"gmail_default">&nbsp;</div>
<div class=3D"gmail_default">$ source &nbsp;distro-setup-env -m&nbsp;<span>=
ls1012afrwy</span></div>
<div class=3D"gmail_default">$ bitbake ls-image-main<br /><br /><span>Above=
 steps are for creating a distro for my layerscape card.<br /><br />I follo=
wed toaster user manual for setting up of toaster.<br /><br />Then in toast=
er UI:<br />I clicked on create new project and in release option i have us=
ed local yocto release.<br />in machine =3D ls1012afrwydistro<br />distro =
=3D fsl-qoriq-distro<br /><br />and imported meta-nxp-desktop and meta-free=
scale from local system.<br />Then tried building an image and i got the er=
ror as above.<br /><br />Can anyone who knows how we can utilize the toaste=
r ui to build an image from our own custom layers other than poky please do=
 guide me.<br /><br />Waiting for the reply.<br />Thank You.</span></div>

--5pPXaqPiMP8nXOjGj1Nw--

