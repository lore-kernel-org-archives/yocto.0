Return-Path: <j.ignatius@yahoo.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04AC2C43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 12:55:32 +0000 (UTC)
Subject: Get target machine
To: yocto@lists.yoctoproject.org
From: "Iggy" <j.ignatius@yahoo.co.uk>
X-Originating-Location: Richmond, England, GB (90.216.150.214)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 01 Dec 2022 04:55:25 -0800
Message-ID: <wvJS.1669899325904673732.ekuV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="j4FU2Mb3Kv3o1cOH6nf0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 12:55:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58704

--j4FU2Mb3Kv3o1cOH6nf0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a .inc file that contains this information:

# Set the MACHINE string, expected to eventually replace the long list of
# build settings below
EXTRA_OECMAKE +=3D "-DRDK_MACHINE=3D${@d.getVar('MACHINE', False)} "

# Set the region and platform type (defaults to Xi6 and UK)
EXTRA_OECMAKE_append_xione-uk =3D " -DRDK_PLATFORM=3DXI1 -DREGION=3DUK "
EXTRA_OECMAKE_append_xione-us =3D " -DRDK_PLATFORM=3DXI1 -DREGION=3DUK "

EXTRA_OECMAKE_append_llama-uk =3D " -DRDK_PLATFORM=3DLLAMA -DREGION=3DUK "
EXTRA_OECMAKE_append_llama-us =3D " -DRDK_PLATFORM=3DLLAMA -DREGION=3DUK "

I understand that the append lines=C2=A0add extra parameters to the make ca=
ll. How does Yocto know which platform to use? I mean how does it choose xi=
one-uk or llama-us for instance?

Plus is there a variable that captures the target name, i.e. "xione-uk", "x=
ione-us", etc?

--j4FU2Mb3Kv3o1cOH6nf0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I have a .inc file that contains this information:<br /><br =
/>
<div># Set the MACHINE string, expected to eventually replace the long list=
 of</div>
<div># build settings below</div>
<div>EXTRA_OECMAKE +=3D "-DRDK_MACHINE=3D${@d.getVar('MACHINE', False)} "</=
div>
<div>&nbsp;</div>
<div># Set the region and platform type (defaults to Xi6 and UK)</div>
<div>EXTRA_OECMAKE_append_xione-uk =3D " -DRDK_PLATFORM=3DXI1 -DREGION=3DUK=
 "</div>
<div>EXTRA_OECMAKE_append_xione-us =3D " -DRDK_PLATFORM=3DXI1 -DREGION=3DUK=
 "</div>
<div>&nbsp;</div>
<div>EXTRA_OECMAKE_append_llama-uk =3D " -DRDK_PLATFORM=3DLLAMA -DREGION=3D=
UK "</div>
<div>EXTRA_OECMAKE_append_llama-us =3D " -DRDK_PLATFORM=3DLLAMA -DREGION=3D=
UK "</div>
<div><br />I understand that the append lines&nbsp;add extra parameters to =
the make call. How does Yocto know which platform to use? I mean how does i=
t choose xione-uk or llama-us for instance?<br /><br />Plus is there a vari=
able that captures the target name, i.e. "xione-uk", "xione-us", etc?</div>
<div>&nbsp;</div>

--j4FU2Mb3Kv3o1cOH6nf0--

