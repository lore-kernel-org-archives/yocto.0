Return-Path: <minecraft2048@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18B51C7EE23
	for <webhook@archiver.kernel.org>; Sat, 25 Feb 2023 07:14:46 +0000 (UTC)
Subject: Does python_poetry_core installs dependencies? #devtool #python
To: yocto@lists.yoctoproject.org
From: minecraft2048@gmail.com
X-Originating-Location: AU (220.237.174.148)
X-Originating-Platform: Linux Firefox 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 24 Feb 2023 23:14:42 -0800
Message-ID: <FABu.1677309282952960631.ZNJ5@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3s61o2uG5XyfacmsuMwL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Feb 2023 07:14:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59301

--3s61o2uG5XyfacmsuMwL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a python script with its dependencies managed by poetry, which have =
this pyproject.toml file:

[tool.poetry.dependencies]
python =3D "^3.10"
flask =3D "^2.2.3"
graphene =3D "^3.2.1"
graphql-server =3D "^3.0.0b5"
pyserial =3D "^3.5"
numpy =3D "^1.24.2"

I have a python s [tool.poetry.dependencies]
python =3D "^3.10"
flask =3D "^2.2.3"
graphene =3D "^3.2.1"
graphql-server =3D "^3.0.0b5"
pyserial =3D "^3.5"
numpy =3D "^1.24.2"
[tool.poetry.dependencies]
python =3D "^3.10"
flask =3D "^2.2.3"
graphene =3D "^3.2.1"
graphql-server =3D "^3.0.0b5"
pyserial =3D "^3.5"
numpy =3D "^1.24.2"

If I inherit python_poetry_core on my bitbake recipe file, and install it i=
nto my yocto image, will my python script get all its dependencies and work=
?
Or I still need to add the dependencies to RDEPENDS? How about virtualenvs?

--3s61o2uG5XyfacmsuMwL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a python script with its dependencies managed by poetry, which have =
this pyproject.toml file:<br /><br /><span style=3D"font-family: monospace;=
"><span style=3D"color: #000000; background-color: #ffffff;">[tool.poetry.d=
ependencies] </span><br />python =3D "^3.10" <br />flask =3D "^2.2.3" <br /=
>graphene =3D "^3.2.1" <br />graphql-server =3D "^3.0.0b5" <br />pyserial =
=3D "^3.5" <br />numpy =3D "^1.24.2"<br /><br /><br /></span>I have a pytho=
n s<span style=3D"font-family: monospace;"><span style=3D"color: #000000; b=
ackground-color: #ffffff;">[tool.poetry.dependencies] </span><br />python =
=3D "^3.10" <br />flask =3D "^2.2.3" <br />graphene =3D "^3.2.1" <br />grap=
hql-server =3D "^3.0.0b5" <br />pyserial =3D "^3.5" <br />numpy =3D "^1.24.=
2"<br /></span><span style=3D"font-family: monospace;"><span style=3D"color=
: #000000; background-color: #ffffff;">[tool.poetry.dependencies] </span><b=
r />python =3D "^3.10" <br />flask =3D "^2.2.3" <br />graphene =3D "^3.2.1"=
 <br />graphql-server =3D "^3.0.0b5" <br />pyserial =3D "^3.5" <br />numpy =
=3D "^1.24.2"<br /><br /></span>If I inherit python_poetry_core on my bitba=
ke recipe file, and install it into my yocto image, will my python script g=
et all its dependencies and work?<br />Or I still need to add the dependenc=
ies to RDEPENDS? How about virtualenvs?<br /><br /><span style=3D"font-fami=
ly: monospace;"><br /></span>

--3s61o2uG5XyfacmsuMwL--

