Return-Path: <sven@svenschwermer.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D33DC4332F
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 14:56:04 +0000 (UTC)
Subject: Add user to group that's created in other recipe
To: yocto@lists.yoctoproject.org
From: "Sven" <sven@svenschwermer.de>
X-Originating-Location: Oslo, Oslo County, NO (95.130.220.46)
X-Originating-Platform: Linux Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Nov 2022 06:55:59 -0800
Message-ID: <dF0b.1669820159069031281.m3lb@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 14:56:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58680

Hi,

I have intermittent problems with a recipe that creates a user that is memb=
er of groups that are created by a different recipe. This is the recipe tha=
t creates the groups:

# recipe-a.bb
inherit useradd
USERADD_PACKAGES =3D "${PN}"
GROUPADD_PARAM:${PN} =3D "--system gpio;--system i2c"

This is the recipe that creates the user:

# recipe-b.bb
inherit useradd
USERADD_PACKAGES =3D "${PN}"
GROUPADD_PARAM:${PN} =3D "--system mygroup"
GROUPS =3D "dialout,mygroup,gpio,i2c"
USERADD_PARAM:${PN} =3D "--system --no-create-home --shell /bin/false --no-=
user-group --groups ${GROUPS} myuser"
DEPENDS =3D "recipe-a"

I guess it's also worth pointing out, that I use useradd-static:
USERADDEXTENSION =3D "useradd-staticids"
USERADD_ERROR_DYNAMIC =3D "error"
USERADD_UID_TABLES =3D "files/passwd"
USERADD_GID_TABLES =3D "files/group"

Every now and then I get and error in recipe_b's do_package_setscene task w=
here useradd complains that one of the groups provided by recipe_a does not=
 exist. This appears to be a race condition since most of the times, this w=
orks OK. I was under the impression that specifying DEPENDS=3D"recipe-a" in=
 recipe_b.bb would be enough to declare this dependency. What am I doing wr=
ong?

Best regards,
Sven

