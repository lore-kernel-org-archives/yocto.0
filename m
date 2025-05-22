Return-Path: <Joshua.Schueler@tesat.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AF91C54E65
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 10:59:09 +0000 (UTC)
Subject: Re: [yocto] sstate-cache: Ignore ERROR_QA entry for local build
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: =?UTF-8?B?Sm9zaHVhIFNjaMO8bGVy?= <Joshua.Schueler@tesat.de>
X-Originating-Location: =?UTF-8?B?RMO8c3NlbGRvcmYsIE5vcnRoIFJoaW5lLVdlc3RwaGFsaWEsIERF?= (62.156.155.14)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 May 2025 03:59:07 -0700
References: <CANNYZj-kZ8JHWVCcgQENsyOgPPB_BZF4vAD3jdKJzLrKmFZz0w@mail.gmail.com>
In-Reply-To: <CANNYZj-kZ8JHWVCcgQENsyOgPPB_BZF4vAD3jdKJzLrKmFZz0w@mail.gmail.com>
Message-ID: <2503.1747911547474751353@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 10:59:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65395

Hi Alexander,
I think you misunderstood my question. We have CI-servers, which build our =
images and populate a common sstate-cache mounted via NFS. The same sstate-=
cache is available read-only via http to our developer machines to help qui=
ckly build the images and test new recipes.
Recently, I discovered that my developer machine rebuilds the whole image a=
nd does not reuse the sstate-cache populated by the CI. Using bitbake-diffs=
igs I tracked this down to the ERROR_QA variable, which I modify in my loca=
l.conf, as I do not need the "version-going-backwards" warning/error (I'm r=
elying on the CI to catch that).

Now I'm trying to get my build to reuse the global sstate-cache despite my =
changed ERROR_QA variable, for which I tried the following solution:
ERROR_QA:remove =3D "version-going-backwards"
ERROR_QA[vardepvalue] =3D "${ERROR_QA} version-going-backwards"
However, this does not seem to do the trick. The question now is: How can I=
 get my local build to reuse the global sstate-cache despite the changed ER=
ROR_QA variable?

- Joshua

