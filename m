Return-Path: <n.jeker@delisys.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7E7C433EF
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 13:37:39 +0000 (UTC)
Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de
 [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web08.9286.1657633055518334541
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 06:37:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 84-75-156-97.dclient.hispeed.ch ([84.75.156.97]
 helo=station.local); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1oBG4z-0006eu-Cf; Tue, 12 Jul 2022 15:37:33 +0200
Message-ID: <6b3d2b0146aeaf2c25e0440e7dd6aa0c17cb4a36.camel@delisys.ch>
Subject: Switching between multiple DISTROs without "contamination"
From: Nicolas Jeker <n.jeker@delisys.ch>
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Jul 2022 15:37:33 +0200
MIME-Version: 1.0
User-Agent: Evolution 3.44.3 
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1657633055;305cbe7c;
X-HE-SMSGID: 1oBG4z-0006eu-Cf
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 13:37:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57508

Hi all,

I'm currently using an additional layer and image to differentiate
between a release and development build (enabling NFS, SSH, root login,
etc.). To create a development build, I manually add the layer to
bblayers.conf. This works quite well, but feels a bit clumsy to
integrate into a CI/CD pipeline.

Per these past discussions here [1][2], I'm now trying to migrate to
multiple DISTROs, something like "mydistro" and "mydistro-dev".

While migrating some of the changes, I discovered that I run into
caching(?) issues. I have a recipe for an internal application and want
to include additional systemd service files in the development image.

What I did was this:

Added "application-dbg.service" to recipes-internal/application/files

Adapted application.bb recipe:

SRC_URI:append:mydistro-dev =3D " file://application-dbg.service"

do_install {
    # ...snip...
    # systemd service
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/application.service
${D}${systemd_system_unitdir}
}

do_install:append:mydistro-dev() {
    # debug systemd services
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/application-dbg.service
${D}${systemd_system_unitdir}
}


When I run "DISTRO=3Dmydistro-dev bitbake application" followed by
"DISTRO=3Dmydistro bitbake application", the debug service file is still
present in the package. This seems to be caused by the "image"
directory in the recipe WORKDIR not being cleaned between subsequent
do_install runs. Is this expected behaviour? What's the best solution?

Kind regards,
Nicolas

[1]:
https://lore.kernel.org/yocto/CAH9dsRiArf_9GgQS4hCg5=3DJ_Jk6cd3eiGaOiQd788+=
iSLTuU+g@mail.gmail.com/
[2]:
https://lore.kernel.org/yocto/VI1PR0602MB3549F83AC93A53785DE48677D3FD9@VI1P=
R0602MB3549.eurprd06.prod.outlook.com/

