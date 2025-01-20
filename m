Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9AEC02181
	for <webhook@archiver.kernel.org>; Mon, 20 Jan 2025 13:56:03 +0000 (UTC)
Subject: Re: [yocto] [scarthgap] Gplv2 layer incompatibility
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: AU (167.103.2.98)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 20 Jan 2025 05:55:58 -0800
References: <CANNYZj9+w=Hx3Mk9SSadNXEov5W2Q-Ph-o0wHNmJtrPDA5_+GQ@mail.gmail.com>
In-Reply-To: <CANNYZj9+w=Hx3Mk9SSadNXEov5W2Q-Ph-o0wHNmJtrPDA5_+GQ@mail.gmail.com>
Message-ID: <7007.1737381358013660726@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Tc61t0AphJrTvZMkM9wn"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Jan 2025 13:56:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64591

--Tc61t0AphJrTvZMkM9wn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Removed meta-gplv2 from bblayers.conf

facing below error when ran bitbake
build@ubuntu-bionic:~/project/build$ bitbake
ERROR: Unable to parse /home/build/project/bitbake/lib/bb/parse/parse_py/BB=
Handler.py
Traceback (most recent call last):
File "/home/build/project/bitbake/lib/bb/parse/parse_py/BBHandler.py", line=
 71, in inherit(files=3D['image-mklibs'], fn=3D'configuration INHERITs', li=
neno=3D0, d=3D<bb.data_smart.DataSmart object at 0x7f9f45137190>, deferred=
=3DFalse):
if not os.path.exists(file):
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0raise ParseError("Could not inhe=
rit file %s" % (file), fn, lineno)
*bb.parse.ParseError: ParseError in configuration INHERITs: Could not inher=
it file classes/image-mklibs.bbclass

* to resolve the issue removed the *image-mklibs* from *local.conf.sample* =
as support for it is being removed from honister
is there anything to do with *BBHandler.py* from were the error is thrown?

--Tc61t0AphJrTvZMkM9wn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Removed meta-gplv2 from bblayers.conf<br /><br />facing below error wh=
en ran bitbake</div>
<div>build@ubuntu-bionic:~/project/build$ bitbake<br />ERROR: Unable to par=
se /home/build/project/bitbake/lib/bb/parse/parse_py/BBHandler.py<br />Trac=
eback (most recent call last):<br />&nbsp; File "/home/build/project/bitbak=
e/lib/bb/parse/parse_py/BBHandler.py", line 71, in inherit(files=3D['image-=
mklibs'], fn=3D'configuration INHERITs', lineno=3D0, d=3D&lt;bb.data_smart.=
DataSmart object at 0x7f9f45137190&gt;, deferred=3DFalse):<br />&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if not os.path.exists(file):<br />&nbs=
p; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;raise ParseError("C=
ould not inherit file %s" % (file), fn, lineno)</div>
<div><strong>bb.parse.ParseError: ParseError in configuration INHERITs: Cou=
ld not inherit file classes/image-mklibs.bbclass<br /><br /></strong>to res=
olve the issue removed the&nbsp;<strong>image-mklibs&nbsp;</strong>from <st=
rong>local.conf.sample&nbsp;</strong>as support for it is being removed fro=
m honister&nbsp;<br />is there anything to do with <strong>BBHandler.py&nbs=
p;</strong> from were the error is thrown?</div>

--Tc61t0AphJrTvZMkM9wn--

