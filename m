Return-Path: <steve_evers@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82F03C77B7E
	for <webhook@archiver.kernel.org>; Thu,  1 Jun 2023 21:34:59 +0000 (UTC)
Subject: NetworkManager recipe installing both sysVinit script and systemd service ... which to use ?
To: yocto@lists.yoctoproject.org
From: steve_evers@hotmail.com
X-Originating-Location: Seattle, Washington, US (98.247.143.184)
X-Originating-Platform: Linux Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 01 Jun 2023 14:34:51 -0700
Message-ID: <7BUH.1685655291398024190.AWbR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NeGr3zEs3MgTT0XgNd9l"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Jun 2023 21:34:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60161

--NeGr3zEs3MgTT0XgNd9l
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a yocto distro using systemd as the service manager. In adding netwo=
rkmanager-nmcli (networkmanager_1.32.10.bb) I am getting both a sysVinit ne=
twork-manager script and its associated rc5 symlink as well as a systemd Ne=
tworkService.service installed. The sysVinit network-manager script launche=
s /usr/sbin/NetworkManager as a daemon.

I get an error during kernel init when it trys to start the systemd Network=
Service.service. I think this is because the sysVinit network-manager scrip=
t has been run time converted to a systemd service using systemd-sysv-gener=
ator ... so I have to paths to starting the /usr/sbin/NetworkManager servic=
e.

Should I be removing the sysVinit network-manager script to allow a clean s=
ystemd NetworkManager start? I suppose I can just remove it in a networkman=
ager_%.bbappend?

--NeGr3zEs3MgTT0XgNd9l
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have a yocto distro using systemd as the service manager. In adding =
networkmanager-nmcli (networkmanager_1.32.10.bb) I am getting both a sysVin=
it network-manager script and its associated rc5 symlink as well as a syste=
md NetworkService.service installed. The sysVinit network-manager script la=
unches /usr/sbin/NetworkManager as a daemon.</div>
<div>&nbsp;</div>
<div>I get an error during kernel init when it trys to start the systemd Ne=
tworkService.service. I think this is because the sysVinit network-manager =
script has been run time converted to a systemd service using systemd-sysv-=
generator ... so I have to paths to starting the /usr/sbin/NetworkManager s=
ervice.</div>
<div>&nbsp;</div>
<div>Should I be removing the sysVinit network-manager script to allow a cl=
ean systemd NetworkManager start? I suppose I can just remove it in a netwo=
rkmanager_%.bbappend?</div>

--NeGr3zEs3MgTT0XgNd9l--

