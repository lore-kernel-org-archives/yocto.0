Return-Path: <sidali.teir@cysec.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CE1ED1BDC5
	for <webhook@archiver.kernel.org>; Mon,  4 Nov 2024 16:35:34 +0000 (UTC)
Subject: Set global variable based on recipes versions
To: yocto@lists.yoctoproject.org
From: "Sid-Ali" <sidali.teir@cysec.com>
X-Originating-Location: DZ (105.106.223.166)
X-Originating-Platform: Linux Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 04 Nov 2024 08:35:25 -0800
Message-ID: <ivJP.1730738125256770830.PSGR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uGOEnJCtgMQNKODsMCji"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 16:35:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64210

--uGOEnJCtgMQNKODsMCji
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello

I am struggling with a simple case but I cannot find a simple solution.

I want to set a global variable from a bbclass or from recipes (impossible =
right?).
My usecase is that I am installing multiple version of the same package int=
o my image and I need *at my build time* to get access to a variable with t=
he list of versions installed.

For example, my package is named pkg. I created the following recipes:

pkg-1.1_1.1.12.bb
pkg-1.2_1.2.4.bb
pkg-1.3_1.3.9.bb

That way I installed the versions 1.1, 1.2 and 1.3.

I tried having a global inherit of a bbclass that addhandler on a specific =
event (ParseRecipe) but I cannot set a global variable that will be used fr=
om recipes.

is there a way to get the list of packages that are going to be installed i=
n the image from an event or variable? I could do the parsing afterwards.

Thanks

--uGOEnJCtgMQNKODsMCji
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello</div>
<div>&nbsp;</div>
<div>I am struggling with a simple case but I cannot find a simple solution=
.</div>
<div>&nbsp;</div>
<div>I want to set a global variable from a bbclass or from recipes (imposs=
ible right?).</div>
<div>My usecase is that I am installing multiple version of the same packag=
e into my image and I need <span style=3D"text-decoration: underline;"><str=
ong>at my build time</strong></span> to get access to a variable with the l=
ist of versions installed.</div>
<div>&nbsp;</div>
<div>For example, my package is named pkg. I created the following recipes:=
</div>
<div>&nbsp;</div>
<div>pkg-1.1_1.1.12.bb</div>
<div>pkg-1.2_1.2.4.bb
<div>pkg-1.3_1.3.9.bb</div>
<div>&nbsp;</div>
<div>That way I installed the versions 1.1, 1.2 and 1.3.</div>
<div>&nbsp;</div>
<div>I tried having a global inherit of a bbclass that addhandler on a spec=
ific event (ParseRecipe) but I cannot set a global variable that will be us=
ed from recipes.</div>
<div>&nbsp;</div>
<div>is there a way to get the list of packages that are going to be instal=
led in the image from an event or variable? I could do the parsing afterwar=
ds.</div>
<div>&nbsp;</div>
<div>Thanks</div>
</div>

--uGOEnJCtgMQNKODsMCji--

