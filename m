Return-Path: <patrick.huesmann@desy.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 310F6C5478C
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 12:25:44 +0000 (UTC)
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in version strings
To: Alexander Kanavin <alex.kanavin@gmail.com>,yocto@lists.yoctoproject.org
From: patrick.huesmann@desy.de
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (84.162.109.92)
X-Originating-Platform: Linux Firefox 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Feb 2024 04:25:35 -0800
References: <CANNYZj8EOwTf9nba0Od1A=u5_Lf5EunFS-_oZbO_o0MFDCbuKg@mail.gmail.com>
In-Reply-To: <CANNYZj8EOwTf9nba0Od1A=u5_Lf5EunFS-_oZbO_o0MFDCbuKg@mail.gmail.com>
Message-ID: <31790.1709123135792907274@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="373MOHms6Rhq6lO8Czqa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 12:25:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62631

--373MOHms6Rhq6lO8Czqa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I'm using PRSERV and the PR is also incrementing in the example I've shown;=
 this doesn't help as the PV of the older version is considered newer due t=
o the commit hash - in this case the PR is never evaluated.

Patrick

--373MOHms6Rhq6lO8Czqa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,<br /><br />I'm using PRSERV and the PR is also incrementing in the=
 example I've shown; this doesn't help as the PV of the older version is co=
nsidered newer due to the commit hash - in this case the PR is never evalua=
ted.<br /><br />Patrick

--373MOHms6Rhq6lO8Czqa--

