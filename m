Return-Path: <sidali.teir@cysec.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D74D1BDEC
	for <webhook@archiver.kernel.org>; Mon,  4 Nov 2024 19:53:46 +0000 (UTC)
Subject: Re: [yocto] Set global variable based on recipes versions
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Sid-Ali" <sidali.teir@cysec.com>
X-Originating-Location: DZ (105.106.223.166)
X-Originating-Platform: Linux Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 04 Nov 2024 11:53:37 -0800
References: <CANNYZj-81+zMMgT0cbjcP5OdR5rjBMaZeJKJMvcQwxdjBiE=hA@mail.gmail.com>
In-Reply-To: <CANNYZj-81+zMMgT0cbjcP5OdR5rjBMaZeJKJMvcQwxdjBiE=hA@mail.gmail.com>
Message-ID: <32414.1730750017778983201@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Dr3QMnpRLG9vCOjpx3Gj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 19:53:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64217

--Dr3QMnpRLG9vCOjpx3Gj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> But adding a recipe to a layer will not add it to any image. You still
> need to place it explicitly in a list somewhere.
>=20

Yes you are absolutely right, I would need the variable that contains list =
of the versions (in my example: VAR =3D "1.1 1.2 1.3") for the installed pa=
ckages and not for the included recipes.
If I understood correctly, you are suggesting this:

in distro or config file:
PKGS_INSTALL =3D "pkg-1.1 pkg-1.2 pkg-1.3"
PKGS_VER =3D "${@some python code to get the versions in a list for PKGS_IN=
STALL variable}"

in my image recipe:
IMAGE_INSTALL:append =3D " ${PKGS_INSTALL}"

>=20
> perhaps you can explain a bit more what you really want to achieve.
> You wrote you want to have it in a global variable, but to what purpose:
> Do you need to use it one recipe?
>=20
>=20

Yes the purpose is to use it in another recipe.
I am installing multiple version of the package and I have an update recipe=
 based on swupdate that will have these versions listed in a file so that I=
 can ONLY trigger updates based on some logics that are linked to these ver=
sions.

>=20
> My guess is that you don't know how many versions of pkg-*
>=20

Right

>=20
> IMAGE_INSTALL:append =3D " ${variable_containing_all_my_pkg}"
>=20

This is the same suggestion as above right?

>=20
> If you just need to have the number of installed packages pkg-* you could
> just parse the build folder *after* you finished the Yocto build, but tha=
t
> would be outside the bitbake process...
>=20

Unfortunately I would not be able to do that because the update is generate=
d during build so I would need this information before.

Of course I can simply write the versions in a specfic variable and update =
it when I add/remove a new version but I was hoping to find a more generic =
and specific way of doing that.

--Dr3QMnpRLG9vCOjpx3Gj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div>But adding a recipe to a layer will not add it to any image. You still=
 need to place it explicitly in a list somewhere.</div>
</blockquote>
<div>Yes you are absolutely right, I would need the variable that contains =
list of the versions (in my example: VAR =3D "1.1 1.2 1.3") for the install=
ed packages and not for the included recipes.</div>
<div>If I understood correctly, you are suggesting this:</div>
<div>&nbsp;</div>
<div><span style=3D"text-decoration: underline;">in distro or config file:<=
/span></div>
<div>PKGS_INSTALL =3D "pkg-1.1 pkg-1.2 pkg-1.3"&nbsp;</div>
<div>PKGS_VER =3D "${@some python code to get the versions in a list for PK=
GS_INSTALL variable}"</div>
<div>&nbsp;</div>
<div><span style=3D"text-decoration: underline;">in my image recipe:</span>=
</div>
<div>IMAGE_INSTALL:append =3D " ${PKGS_INSTALL}"</div>
<blockquote>
<div>
<div>perhaps you can explain a bit more what you really want to achieve.<br=
 />You wrote you want to have it in a global variable, but to what purpose:=
</div>
<div>Do you need to use it one recipe?</div>
<div>&nbsp;</div>
</div>
</blockquote>
<div>Yes the purpose is to use it in another recipe.</div>
<div>I am installing multiple version of the package and I have an update r=
ecipe based on swupdate that will have these versions listed in a file so t=
hat I can ONLY trigger updates based on some logics that are linked to thes=
e versions.</div>
<blockquote>
<div>
<div>My guess is that you don't know how many versions of pkg-*</div>
</div>
</blockquote>
<div>Right</div>
<blockquote>
<div>
<div>IMAGE_INSTALL:append =3D " ${variable_containing_all_my_pkg}"</div>
</div>
</blockquote>
<div>This is the same suggestion as above right?</div>
<blockquote>
<div>
<div>If you just need to have the number of installed packages pkg-* you co=
uld just parse the build folder *after* you finished the Yocto build, but t=
hat would be outside the bitbake process...</div>
</div>
</blockquote>
<div>Unfortunately I would not be able to do that because the update is gen=
erated during build so I would need this information before.</div>
<div>&nbsp;</div>
<div>Of course I can simply write the versions in a specfic variable and up=
date it when I add/remove a new version but I was hoping to find a more gen=
eric and specific way of doing that.</div>

--Dr3QMnpRLG9vCOjpx3Gj--

