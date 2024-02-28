Return-Path: <patrick.huesmann@desy.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F22C5C47DD9
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 15:16:04 +0000 (UTC)
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in version strings
To: Alexander Kanavin <alex.kanavin@gmail.com>,yocto@lists.yoctoproject.org
From: patrick.huesmann@desy.de
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (84.162.109.92)
X-Originating-Platform: Linux Firefox 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Feb 2024 07:15:57 -0800
References: <CANNYZj9cRM0-MsC9+Dda1+4fatmRDYVOm5t=gATfO=_+W7V2QQ@mail.gmail.com>
In-Reply-To: <CANNYZj9cRM0-MsC9+Dda1+4fatmRDYVOm5t=gATfO=_+W7V2QQ@mail.gmail.com>
Message-ID: <31790.1709133357541065771@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VdyUGTJmlBB7aZbVt37I"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 15:16:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62637

--VdyUGTJmlBB7aZbVt37I
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

As far as I can see, the SRCPV / AUTOINC logic works on a per recipe basis =
(not per package), right?

So when my recipe is divided into subpackages with a dedicated source revis=
ion for each, my only choice is to either split it into multiple recipes or=
 use=C2=A0 SRCREV_FORMAT to build a summarized SRCREV from the subpackages =
revisions ... correct?

--VdyUGTJmlBB7aZbVt37I
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

As far as I can see, the SRCPV / AUTOINC logic works on a per recipe basis =
(not per package), right?<br /><br />So when my recipe is divided into subp=
ackages with a dedicated source revision for each, my only choice is to eit=
her split it into multiple recipes or use&nbsp; SRCREV_FORMAT to build a su=
mmarized SRCREV from the subpackages revisions ... correct?

--VdyUGTJmlBB7aZbVt37I--

