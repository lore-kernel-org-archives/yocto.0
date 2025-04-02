Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E96C28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 05:31:27 +0000 (UTC)
Subject: Re: [yocto] Replace Bash with Busybox
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (14.98.167.76)
X-Originating-Platform: Linux Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Apr 2025 22:31:17 -0700
References: <CAMKF1srf5Q0vvmr1e3RSKRDNu_3TD+jJL4Sb-DvyGTUDxE0KpA@mail.gmail.com>
In-Reply-To: <CAMKF1srf5Q0vvmr1e3RSKRDNu_3TD+jJL4Sb-DvyGTUDxE0KpA@mail.gmail.com>
Message-ID: <19208.1743571877535931497@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iNOhmphQtobBNQPO60wI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 05:31:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65061

--iNOhmphQtobBNQPO60wI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

If I keep these lines in *layer.conf* instead of *local.conf* , will it wor=
k? I added the following lines to the *layer.conf* file:

IMAGE_INSTALL +=3D "busybox"
VIRTUAL-RUNTIME_shell =3D "busybox"
IMAGE_INSTALL_remove =3D "bash"
BAD_RECOMMENDATIONS +=3D "bash"

However, when I run the command *bitbake -g my-image && cat pn-buildlist | =
grep bash ,*

Bash is still present.

My actual requirement I need to upgrade busybox replace bash with busybox a=
nd remove bash.

Regards,
Sateesh

--iNOhmphQtobBNQPO60wI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>If I keep these lines in <code><strong>layer.conf</strong></code> inst=
ead of <strong><code>local.conf</code></strong>, will it work? I added the =
following lines to the <code><strong>layer.conf</strong></code> file:</div>
<div>
<div>&nbsp;</div>
<div>IMAGE_INSTALL +=3D "busybox"</div>
<div>VIRTUAL-RUNTIME_shell =3D "busybox"</div>
<div>IMAGE_INSTALL_remove =3D "bash"</div>
<div>BAD_RECOMMENDATIONS +=3D "bash"</div>
</div>
<div>&nbsp;</div>
<div>However, when I run the command <strong><code>bitbake -g my-image &amp=
;&amp; cat pn-buildlist | grep bash</code>,</strong></div>
<div>&nbsp;</div>
<div>Bash is still present.</div>
<div>&nbsp;</div>
<div>My actual requirement I need to upgrade busybox replace bash with busy=
box and remove bash.</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Sateesh</div>

--iNOhmphQtobBNQPO60wI--

