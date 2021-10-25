Return-Path: <bhstalel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE48AC433EF
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 12:38:44 +0000 (UTC)
Subject: How to iherit class based on a conditional variable? #sysvinit
 #systemd
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: El Kef, Gouvernorat de Kef, TN (197.2.221.121)
X-Originating-Platform: Linux Firefox 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 Oct 2021 05:38:44 -0700
Message-ID: <v8hs.1635165524206043434.Grp7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qScJUSs0FP4bic62Vpxo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 12:38:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55135

--qScJUSs0FP4bic62Vpxo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a recipe that installs a simple bash script to run on startup.
As you all know, there is systemd and sysvinit.
I need to add support for both init managers.

I can do :
SRC_URI_append =3D " ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'fi=
le://script.service', 'file://script.sh', d)}"

and I can do the same in all the tasks.

The problem is, that I need to inherit either systemd or update-rc.d

Is it possible to inherit them all, or how can I inherit something conditio=
nally ?

Thanks,
Talel

--qScJUSs0FP4bic62Vpxo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I have a recipe that installs a simple bash script to run=
 on startup.<br />As you all know, there is systemd and sysvinit.<br />I ne=
ed to add support for both init managers.<br /><br />I can do :<br />SRC_UR=
I_append =3D " ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://s=
cript.service', 'file://script.sh', d)}"<br /><br />and I can do the same i=
n all the tasks.<br /><br />The problem is, that I need to inherit either s=
ystemd or update-rc.d<br /><br />Is it possible to inherit them all, or how=
 can I inherit something conditionally ?<br /><br />Thanks,<br />Talel<br /=
>

--qScJUSs0FP4bic62Vpxo--

