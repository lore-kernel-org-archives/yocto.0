Return-Path: <koansoftware@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD9ED3C927
	for <webhook@archiver.kernel.org>; Sun, 20 Oct 2024 09:20:09 +0000 (UTC)
Subject: Re: [yocto] Question regarding executing an install script during the build of an image
To: "Felix Kuhlmann" <felix-kuhlmann@gmx.de>, yocto@lists.yoctoproject.org
From: "Marco Cavallini" <koansoftware@gmail.com>
X-Originating-Location: IT (95.229.48.41)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 20 Oct 2024 02:19:59 -0700
References: <ZxOc_m5GBfsY2Hhk@fedora>
In-Reply-To: <ZxOc_m5GBfsY2Hhk@fedora>
Message-ID: <15945.1729415999980937427@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="W3T6vsndSGFKGSBGv7z4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 20 Oct 2024 09:20:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64055

--W3T6vsndSGFKGSBGv7z4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Felix,
probably I don't have enough details to give you a complete hint.
However, the solution usually suggested is to create your own recipe, perha=
ps using "recipetool create" [1] and then adapt its content (this is what I=
 usually explain during my Yocto training courses).
Then you can include in your recipe the installation and the management of =
a launcher script and its systemd service for example (if you are using sys=
temd) [2].

[1] https://docs.yoctoproject.org/next/dev-manual/new-recipe.html?highlight=
=3Dsystemd
[2] https://wiki.koansoftware.com/index.php/Add_a_systemd_service_file_into=
_a_Yocto_image

Marco Cavallini
Yocto Project ambassador

--W3T6vsndSGFKGSBGv7z4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello Felix,</div>
<div>probably I don't have enough details to give you a complete hint.</div=
>
<div>However, the solution usually suggested is to create your own recipe, =
perhaps using "recipetool create" [1] and then adapt its content (this is w=
hat I usually explain during my Yocto training courses).</div>
<div>Then you can include in your recipe the installation and the managemen=
t of a launcher script and its systemd service for example (if you are usin=
g systemd) [2].</div>
<div>&nbsp;</div>
<div>[1] <a href=3D"https://docs.yoctoproject.org/next/dev-manual/new-recip=
e.html?highlight=3Dsystemd" target=3D"_blank" rel=3D"noopener">https://docs=
.yoctoproject.org/next/dev-manual/new-recipe.html?highlight=3Dsystemd</a></=
div>
<div>[2] <a href=3D"https://wiki.koansoftware.com/index.php/Add_a_systemd_s=
ervice_file_into_a_Yocto_image" target=3D"_blank" rel=3D"noopener">https://=
wiki.koansoftware.com/index.php/Add_a_systemd_service_file_into_a_Yocto_ima=
ge</a></div>
<div>&nbsp;</div>
<div>Marco Cavallini</div>
<div>Yocto Project ambassador</div>

--W3T6vsndSGFKGSBGv7z4--

