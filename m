Return-Path: <sebastian@mapped.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF23C433F5
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 14:32:36 +0000 (UTC)
Subject: #golang Build tools required during go generate
To: yocto@lists.yoctoproject.org
From: sebastian@mapped.com
X-Originating-Location: Offenbach, Hesse, DE (109.125.75.94)
X-Originating-Platform: Mac Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 05 Nov 2021 07:32:35 -0700
Message-ID: <JnQS.1636122755681200580.kFay@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vf2oZWbcUBFJlPFS2C96"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 14:32:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55250

--vf2oZWbcUBFJlPFS2C96
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi yoto-devs/users,

in order to get a golang application to run which relies on `go generate` c=
alls I wrote special recipes for this tools and include them in my original=
 recipe. However I always get a segmentation fault.
In the tools (which happens to be based on golang too) I use [1] in the rec=
ipes and in the recipe I want to use them I include them via [2].
However if for example enter the dev-shell or during build I get a segmenta=
tion fault although the binary seems to be compiled for the right architect=
ure (host-amd64).
Is there something wrong I try to use that?

Sebastian

[1]
inherit go-mod
BBCLASSEXTEND =3D "native"
[2]
DEPENDS +=3D "random-go-tool-needed-by-recipe-native"

--vf2oZWbcUBFJlPFS2C96
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi yoto-devs/users,<br /><br />in order to get a golang application to run =
which relies on `go generate` calls I wrote special recipes for this tools =
and include them in my original recipe. However I always get a segmentation=
 fault.<br />In the tools (which happens to be based on golang too) I use [=
1] in the recipes and in the recipe I want to use them I include them via [=
2].<br />However if for example enter the dev-shell or during build I get a=
 segmentation fault although the binary seems to be compiled for the right =
architecture (host-amd64).<br />Is there something wrong I try to use that?=
<br /><br />Sebastian<br /><br />[1]<br />
<div>inherit go-mod</div>
<div>BBCLASSEXTEND =3D "native"<br />[2]<br />DEPENDS +=3D "random-go-tool-=
needed-by-recipe-native"</div>

--vf2oZWbcUBFJlPFS2C96--

