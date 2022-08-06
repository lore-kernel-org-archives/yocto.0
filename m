Return-Path: <kuzemkoyocto@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A45C19F2D
	for <webhook@archiver.kernel.org>; Sat,  6 Aug 2022 09:28:33 +0000 (UTC)
Subject: Re: [Need help] How to add one package to build directory of another
 package
To: yocto@lists.yoctoproject.org
From: "Kuzemko Aleksandr" <kuzemkoyocto@gmail.com>
X-Originating-Location: Vinnytsia, Vinnytsya Oblast, UA (178.74.234.29)
X-Originating-Platform: Linux Firefox 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 06 Aug 2022 02:28:31 -0700
References: 
 <CAMKF1srmUCWZVSixpjBTOG6w4HNXmHXQCMcWEdK+q_qqZ2EemQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srmUCWZVSixpjBTOG6w4HNXmHXQCMcWEdK+q_qqZ2EemQ@mail.gmail.com>
Message-ID: <8987.1659778111655068649@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ShlnYg96r7ZhVXF2SI4U"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 06 Aug 2022 09:28:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57789

--ShlnYg96r7ZhVXF2SI4U
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks, now it works.

Another question. I have
DEPENDS =3D "espeak flite pulseaudio libdotconf glib-2.0 libtool gettext"
and
EXTRA_OECONF =3D " --with-espeak --with-flite --without-ibmtts --without-na=
s --with-alsa --with-pulse "
Is it possible define espeak flite as option? For example if I in local.con=
f define something speech-dispatcher[espeak] it will disable from DEPENDS f=
lite depends and in EXTRA_OECONF it wil be as --withot-flite

--ShlnYg96r7ZhVXF2SI4U
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks, now it works.<br /><br />Another question. I have <br />DEPENDS =3D=
 "espeak flite pulseaudio libdotconf glib-2.0 libtool gettext"<br />and <br=
 />EXTRA_OECONF =3D " --with-espeak --with-flite --without-ibmtts --without=
-nas --with-alsa --with-pulse "<br />Is it possible define espeak flite as =
option? For example if I in local.conf define something speech-dispatcher[e=
speak] it will disable from DEPENDS flite depends and in EXTRA_OECONF it wi=
l be as --withot-flite<br />

--ShlnYg96r7ZhVXF2SI4U--

