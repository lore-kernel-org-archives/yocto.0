Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 251ECC63797
	for <webhook@archiver.kernel.org>; Sun,  5 Feb 2023 04:15:25 +0000 (UTC)
Subject: Re: error when try to use sudo command in recipe
To: yocto@lists.yoctoproject.org
From: "SIMON BABY" <simonkbaby@gmail.com>
X-Originating-Location: Los Angeles, California, US (108.184.2.131)
X-Originating-Platform: Windows Chrome 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 04 Feb 2023 20:15:18 -0800
References: <3db8e6a5ee0f9dd0afecef56bba62bee283885b7.camel@linuxfoundation.org>
In-Reply-To: <3db8e6a5ee0f9dd0afecef56bba62bee283885b7.camel@linuxfoundation.org>
Message-ID: <32073.1675570518496655471@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gHfEQV7ED32xi8Kqdjef"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 05 Feb 2023 04:15:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59165

--gHfEQV7ED32xi8Kqdjef
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,
Thank you for the reply.
I was trying to add the layer https://github.com/savoirfairelinux/meta-embe=
dded-containers in my yocto build. Below recipe uses sudo commands.

https://github.com/savoirfairelinux/meta-embedded-containers/blob/b131baa90=
291c159d3a725b8d66786c85964556c/recipes-support/container-image/container-i=
mage.bb

while building it fails at sudo command and getting the error below.

sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid bit set

Regards
Simon

--gHfEQV7ED32xi8Kqdjef
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,<br />Thank you for the reply.<br />&nbsp;I was trying to add th=
e layer&nbsp;<a href=3D"https://github.com/savoirfairelinux/meta-embedded-c=
ontainers" target=3D"_blank" rel=3D"noopener">https://github.com/savoirfair=
elinux/meta-embedded-containers</a>&nbsp;in my yocto build. Below recipe us=
es sudo commands.&nbsp;<br /><br /><a href=3D"https://github.com/savoirfair=
elinux/meta-embedded-containers/blob/b131baa90291c159d3a725b8d66786c8596455=
6c/recipes-support/container-image/container-image.bb" target=3D"_blank" re=
l=3D"noopener">https://github.com/savoirfairelinux/meta-embedded-containers=
/blob/b131baa90291c159d3a725b8d66786c85964556c/recipes-support/container-im=
age/container-image.bb</a><br /><br />while building it fails at sudo comma=
nd and getting the error below.<br /><br /><span style=3D"white-space: pre-=
wrap;">sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid bit <=
/span><span style=3D"white-space: pre-wrap;">set<br /><br /></span>Regards<=
br />Simon

--gHfEQV7ED32xi8Kqdjef--

