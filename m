Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03290C433FE
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 10:24:08 +0000 (UTC)
Subject: Howto build packages for dependencies of an out of image recipe
 build.
To: yocto@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Letchworth Garden City, England, GB (86.16.192.236)
X-Originating-Platform: Linux Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Mar 2022 02:24:07 -0800
Message-ID: <qHzn.1646821447603268340.seYL@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OaCfdqSdBUiDNHjqpVW8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 10:24:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56401

--OaCfdqSdBUiDNHjqpVW8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We have our image and it is working as we need.
We have an apt repo setup and working so that we can install additional pac=
kages within a deployment of the image.
However when we manually bitbake additional packages (e.g bitbake my-option=
al-recipe) which we want to make available within this apt repository by de=
fault only the package for=C2=A0my-optional-recipe gets built, although all=
 the dependencies of=C2=A0my-optional-recipe get built, none of them are pa=
ckaged. how do we make sure all the dependencies have packages built?

Best Regards

Dan

--OaCfdqSdBUiDNHjqpVW8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We have our image and it is working as we need.<br />We have an apt repo se=
tup and working so that we can install additional packages within a deploym=
ent of the image.<br />However when we manually bitbake additional packages=
 (e.g bitbake my-optional-recipe) which we want to make available within th=
is apt repository by default only the package for&nbsp;my-optional-recipe g=
ets built, although all the dependencies of&nbsp;my-optional-recipe get bui=
lt, none of them are packaged. how do we make sure all the dependencies hav=
e packages built?<br /><br />Best Regards<br /><br />Dan

--OaCfdqSdBUiDNHjqpVW8--

